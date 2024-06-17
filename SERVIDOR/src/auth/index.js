const dotenv = require("dotenv");
const jwt = require("jsonwebtoken");
const config = require("../config");
const error = require("../middleware/error");

dotenv.config();

const secret = config.jwt.secret;

function assigToken(data) {
  return jwt.sign(data, secret);
}

function verificarToken(token) {
  return jwt.verify(token, secret);
}

const checkToken = {
  confirm: function (req) {
    const decodificado = decodeHeader(req);

    if (decodificado.id !== id) {
      throw error("No tienes permisos para hacer esto", 401);
    }
  },
};

function getToken(auth) {
  if (!auth) {
    throw error("No viene token", 401);
  }

  if (auth.indexOf("Bearer ") === -1) {
    throw error("Formato invalido", 401);
  }

  let token = auth.replace("Bearer ", "");
  return token;
}

function decodeHeader(req) {
  const authorization = req.headers.authorization || "";
  const token = getToken(authorization);
  const decoded = verificarToken(token);

  req.user = decoded;

  return decoded;
}

module.exports = {
  assigToken,
  checkToken,
};
