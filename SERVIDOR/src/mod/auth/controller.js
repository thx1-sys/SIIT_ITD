const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");
const TABLE = "auth";
const auth = require("../../auth");
const bcrypt = require("bcrypt");

module.exports = function (dbTnyect) {
  let bd = dbTnyect;

  if (!bd) {
    bd = require("../../DB/mysql");
  }

  // async function login(usuario, password) {
  //   const data = await db.query(TABLE, { usuario: usuario });

  //   if (data.length > 0) {
  //     return bcrypt.compare(password, data[0].password).then((result) => {
  //       if (result) {
  //         // Devuelve el token y los permisos
  //         return {
  //           token: auth.assigToken({ ...data[0] }),
  //           permisos: data[0].permisos,
  //         };
  //       } else {
  //         throw new Error("Información no válida");
  //       }
  //     });
  //   } else {
  //     throw new Error("Usuario no encontrado");
  //   }
  // }

  async function login(usuario, password) {
    const data = await db.query(TABLE, { usuario: usuario });

    if (data.length > 0) {
      if (password === data[0].password) {
        // Devuelve el token y los permisos
        return {
          token: auth.assigToken({ ...data[0] }),
          permisos: data[0].permisos,
        };
      } else {
        throw new Error("Información no válida");
      }
    } else {
      throw new Error("Usuario no encontrado");
    }
  }

  async function add(data) {
    const authData = {
      id: data.id,
    };

    if (data.usuario) {
      authData.usuario = data.usuario;
    }

    if (data.password) {
      authData.password = await bcrypt.hash(data.password.toString(), 5);
    }

    return db.add(TABLE, authData);
  }

  return {
    add,
    login,
  };
};
