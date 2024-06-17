const express = require("express");
const morgan = require("morgan");
const config = require("./config");
const cors = require("cors"); // Importa cors

const error = require("./network/errors");

const client = require("./mod/client/rute");
const users = require("./mod/users/rute");
const auth = require("./mod/auth/rute");
const news = require("./mod/news/rute");
const aviso = require("./mod/aviso/rute");
const dateScho = require("./mod/DateScho/rute");
const Calendar = require("./mod/Calendar/rute");
const Chat = require("./mod/Chat/rute");
const Email = require("./mod/Email/rute");
const Usuarios = require("./mod/usuarios/rute");
const anuncios = require("./mod/anuncios/rute");
const alumno = require("./mod/alumno/rute");
const grupos = require("./mod/Grupos/rute");

const app = express();

// * middlewares
app.use(morgan("dev"));
app.use(cors()); // Usa el middleware cors
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// * configration
app.set("port", config.app.port);

// * routes
app.use("/api/client", client);
app.use("/api/users", users);
app.use("/api/auth", auth);
app.use("/api/news", news);
app.use("/api/aviso", aviso);
app.use("/api/dateSho", dateScho);
app.use("/api/calendar", Calendar);
app.use("/api/chat", Chat);
app.use("/api/email", Email);
app.use("/api/usuarios", Usuarios);
app.use("/api/anuncios", anuncios);
app.use("/api/datastudent", alumno);
app.use("/api/grupos", grupos);

app.use(error);

module.exports = app;
