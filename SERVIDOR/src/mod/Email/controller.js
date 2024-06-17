const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "usuarios"; // Cambia "cliente" a "noticias"

module.exports = function (dbInject) {
  let bd = dbInject;

  if (!bd) {
    bd = require("../../DB/mysql");
  }

  function all() {
    return db.all(TABLE);
  }

  function one(id) {
    return db.one(TABLE, id);
  }

  function add(body) {
    const newAviso = {
      id: body.id,
      contrasena: body.contrasena,
    };
    return db.add(TABLE, newAviso);
  }

  function remove(body) {
    return db.remove(TABLE, body);
  }

  function getLastFour() {
    return db.getLastFour(TABLE);
  }

  function callUpdateByEmail(email, data) {
    return db.updateByEmail("usuarios", email, data);
  }

  return {
    all,
    one,
    add,
    remove,
    getLastFour,
    callUpdateByEmail,
  };
};
