const mysql = require("mysql");
const config = require("../config");
const e = require("express");

const dbconf = {
  host: config.mysql.host,
  user: config.mysql.user,
  password: config.mysql.password,
  database: config.mysql.database,
};

let connection;

async function conMysql() {
  if (!connection) {
    connection = mysql.createConnection(dbconf);
    connection.connect((err) => {
      if (err) {
        console.log("[Error connecting to database]", err);
        return;
      }
      console.log("Database connection established");
    });

    connection.on("error", (err) => {
      console.log("[Database error]", err);
      if (err.code === "PROTOCOL_CONNECTION_LOST") {
        console.log("Reconnecting to database");
        conMysql();
      } else {
        throw err;
      }
    });
  }
  return connection;
}

conMysql();

async function all(table, next) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(`SELECT * FROM ${table}`, (err, data) => {
        return err ? reject(err) : resolve(data);
      });
    });
  } catch (error) {
    console.error(error);
    next(error);
  }
}

async function one(table, id, next) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(`SELECT * FROM ${table} WHERE id=${id}`, (err, data) => {
        return err ? reject(err) : resolve(data);
      });
    });
  } catch (error) {
    console.error(error);
    next(error);
  }
}

async function insert(table, data) {
  return new Promise((resolve, reject) => {
    const columns = Object.keys(data).join(", ");
    const placeholders = Object.keys(data)
      .map(() => "?")
      .join(", ");
    const query = `INSERT INTO ${table} (${columns}) VALUES (${placeholders})`;
    connection.query(query, Object.values(data), (err, result) => {
      if (err) {
        return reject(err);
      }
      return resolve(result);
    });
  });
}

async function update(table, data) {
  return new Promise((resolve, reject) => {
    const { id, ...updateData } = data;
    const query = `UPDATE ${table} SET ? WHERE id = ?`;
    connection.query(query, [updateData, id], (err, result) => {
      return err ? reject(err) : resolve(result);
    });
  });
}

async function add(table, data) {
  console.log(
    `add called with data: ${JSON.stringify(data)}, id: ${data && data.id}`
  );
  if (data && data.id) {
    console.log(`Checking if id ${data.id} exists in table ${table}`);
    const exists = await new Promise((resolve, reject) => {
      const query = `SELECT * FROM ${table} WHERE id = ?`;
      connection.query(query, [data.id], (err, result) => {
        if (err) {
          return reject(err);
        }
        return resolve(result.length > 0);
      });
    });

    console.log(`Exists: ${exists}`);

    if (exists) {
      console.log(`Updating id ${data.id} in table ${table}`);
      return update(table, data);
    }
  }
  console.log(`Inserting new row into table ${table}`);
  return insert(table, data);
}

async function remove(table, id, next) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `DELETE FROM ${table} WHERE id = ?`,
        [id],
        (err, result) => {
          if (err) {
            return reject(err);
          }
          if (result.affectedRows === 0) {
            return reject(new Error("No record found with this id"));
          }
          return resolve(result);
        }
      );
    });
  } catch (error) {
    console.error(error);
    next(error);
  }
}

function query(tabla, consulta) {
  return new Promise((resolve, reject) => {
    connection.query(
      `SELECT * FROM ${tabla} WHERE ?`,
      consulta,
      (error, result) => {
        return error ? reject(error) : resolve(result);
      }
    );
  });
}

async function getLastFour(table) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `SELECT * FROM ${table} WHERE activo = 1 ORDER BY id DESC LIMIT 4`,
        (err, data) => {
          if (err) {
            console.error(err);
            throw err;
          }
          return resolve(data);
        }
      );
    });
  } catch (error) {
    console.error(error);
    throw error;
  }
}

async function getLastOne(table) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `SELECT * FROM ${table} WHERE activo = 1 ORDER BY id DESC LIMIT 1`,
        (err, data) => {
          if (err) {
            console.error(err);
            throw err;
          }
          return resolve(data[0]); // Devuelve solo el primer (y único) elemento
        }
      );
    });
  } catch (error) {
    console.error(error);
    throw error;
  }
}

async function getLastThree(table) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `SELECT * FROM ${table} WHERE activo = 1 ORDER BY id DESC LIMIT 3`,
        (err, data) => {
          if (err) {
            console.error(err);
            throw err;
          }
          return resolve(data); // Devuelve los últimos 3 elementos
        }
      );
    });
  } catch (error) {
    console.error(error);
    throw error;
  }
}

async function getMateriasPorCarrera(carrera_id) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `SELECT * FROM Materias WHERE carrera_id = ?`,
        [carrera_id],
        (err, data) => {
          if (err) {
            console.error(err);
            throw err;
          }
          return resolve(data); // Devuelve todas las materias de la misma carrera
        }
      );
    });
  } catch (error) {
    console.error(error);
    throw error;
  }
}

async function updateByEmail(table, email, data) {
  return new Promise((resolve, reject) => {
    const query = `UPDATE ${table} SET ? WHERE correo = ?`;
    connection.query(query, [data, email], (err, result) => {
      return err ? reject(err) : resolve(result);
    });
  });
}

async function oneByUsuarioId(table, usuario_id, next) {
  try {
    return await new Promise((resolve, reject) => {
      connection.query(
        `SELECT * FROM ${table} WHERE usuario_id=${usuario_id}`,
        (err, data) => {
          return err ? reject(err) : resolve(data);
        }
      );
    });
  } catch (error) {
    console.error(error);
    next(error);
  }
}

// async function one(table, id, next) {
//   try {
//     return await new Promise((resolve, reject) => {
//       connection.query(`SELECT * FROM ${table} WHERE id=${id}`, (err, data) => {
//         return err ? reject(err) : resolve(data);
//       });
//     });
//   } catch (error) {
//     console.error(error);
//     next(error);
//   }
// }

module.exports = {
  all,
  one,
  add,
  update,
  remove,
  query,
  getLastFour,
  getLastOne,
  getLastThree,
  getMateriasPorCarrera,
  insert,
  updateByEmail,
  oneByUsuarioId,
};
