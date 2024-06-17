const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "user";
const auth = require("../auth");

module.exports = function (dbTnyect) {
  let bd = dbTnyect;

  if (!bd) {
    bd = require("../../DB/mysql");
  }

  function all() {
    return db.all(TABLE);
  }

  function one(id) {
    return db.one(TABLE, id);
  }

  async function login(usuario, password) {
    const data = await db.query(TABLE, { usuario: usuario });

    return bcrypt.compare(password, data.password).then((result) => {
      if (result) {
        return auth.login(data.id);
      } else {
        throw new Error("Información no válida");
      }
    });
  }

  async function add(body) {
    const user = {
      id: body.id,
      nombre: body.nombre,
      activo: body.activo,
    };

    const response = await db.add(TABLE, user);
    var insertId = 0;
    if (body.id) {
      insertId = response.insertId;
    } else {
      insertId = body.id;
    }

    let response2 = " ";

    if (body.usuario || body.password) {
      response2 = await auth.add({
        id: insertId,
        usuario: body.usuario,
        password: body.password,
        permisos: body.permisos,
      });
    }

    return response2;
  }

  function remove(body) {
    return db.remove(TABLE, body);
  }

  return {
    all,
    one,
    add,
    remove,
  };
};
