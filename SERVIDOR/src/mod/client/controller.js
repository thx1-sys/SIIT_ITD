const db = require("../../DB/mysql");
const express = require("express");
const response = require("../../network/response");

const TABLE = "cliente";

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

  function add(body) {
    return db.add(TABLE, body);
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
