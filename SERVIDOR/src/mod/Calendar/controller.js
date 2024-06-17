const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "calendario_escolar"; // Cambia "cliente" a "noticias"

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
      actividad: body.actividad,
      fecha_inicio: body.fecha_inicio,
      fecha_fin: body.fecha_fin,
    };
    return db.add(TABLE, newNoticia);
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
