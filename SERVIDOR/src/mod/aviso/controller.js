const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "avisos"; // Cambia "cliente" a "noticias"

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
      url: body.url,
      titulo: body.titulo,
      descripcion: body.descripcion,
      estado: body.estado,
    };
    return db.add(TABLE, newAviso);
  }

  function remove(body) {
    return db.remove(TABLE, body);
  }

  function getLastFour() {
    return db.getLastFour(TABLE);
  }

  return {
    all,
    one,
    add,
    remove,
    getLastFour,
  };
};
