const express = require("express");

const response = require("../../network/response");
const controller = require("./index");

const router = express.Router();

router.post("/login", login);

async function login(req, res, next) {
  try {
    const { token, permisos } = await controller.login(
      req.body.usuario,
      req.body.password
    );
    let statusCode;
    switch (permisos) {
      case 1:
        statusCode = 250;
        break;
      case 2:
        statusCode = 251;
        break;
      case 3:
        statusCode = 252;
        break;
      default:
        statusCode = 200; // Código de estado por defecto si 'permisos' no es 1, 2 o 3
    }
    response.success(req, res, token, statusCode);
  } catch (err) {
    res.status(401).send({ error: "Contraseña incorrecta" });
  }
}

module.exports = router;
