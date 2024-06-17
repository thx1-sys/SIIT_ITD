const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "Materias";

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
      titulo: body.titulo,
      subtitulo: body.subtitulo,
      descripcion: body.descripcion,
      contenido: body.contenido,
      imagen_url: body.imagen_url,
    };
    return db.add(TABLE, newNoticia);
  }

  function remove(body) {
    return db.remove(TABLE, body);
  }

  function getLastFour() {
    return db.getLastFour(TABLE);
  }

  function getMateriasPorCarrera(carrera_id) {
    return db.getMateriasPorCarrera(carrera_id);
  }

  return {
    all,
    one,
    add,
    remove,
    getLastFour,
    getMateriasPorCarrera,
  };
};
