const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "datos_alumno"; // Cambia "cliente" a "noticias"

module.exports = function (dbInject) {
  let bd = dbInject;

  if (!bd) {
    bd = require("../../DB/mysql");
  }

  function all() {
    return db.all(TABLE);
  }

  function oneByUsuarioId(usuario_id) {
    return db.oneByUsuarioId(TABLE, usuario_id);
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
    add,
    remove,
    getLastFour,
    oneByUsuarioId,
  };
};
