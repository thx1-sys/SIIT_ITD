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
      nombre: body.nombre,
      apellido_paterno: body.apellido_paterno,
      apellido_materno: body.apellido_materno,
      correo: body.correo,
      codigo: body.codigo,
      contrasena: body.contrasena,
      imagen_perfil: body.imagen_perfil,
      tipo_de_usuario: body.tipo_de_usuario,
      permiso: body.permiso,
      activo: body.activo,
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
