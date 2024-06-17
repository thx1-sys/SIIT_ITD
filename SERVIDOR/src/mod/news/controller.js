const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "noticias"; // Cambia "cliente" a "noticias"

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
    const newNoticia = {
      id: body.id,
      titulo: body.titulo,
      subtitulo: body.subtitulo,
      descripcion: body.descripcion,
      contenido: body.contenido,
      imagen_url: body.imagen_url,
      url: body.url,
      activo: body.activo,
    };
    return db.add(TABLE, newNoticia);
  }

  function remove(body) {
    return db.remove(TABLE, body);
  }

  function getLastFour() {
    return db.getLastFour(TABLE);
  }

  function getLastOne() {
    return db.getLastOne(TABLE);
  }

  function getLastThree() {
    return db.getLastThree(TABLE);
  }

  return {
    all,
    one,
    add,
    remove,
    getLastFour,
    getLastOne,
    getLastThree,
  };
};
