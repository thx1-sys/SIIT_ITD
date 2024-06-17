const express = require("express");
const nodemailer = require("nodemailer");

const response = require("../../network/response");
const controller = require("./index");

const router = express.Router();

const db = require("../../DB/mysql");

const TABLE = "avisos"; // Cambia "cliente" a "noticias"

router.get("/", all);
router.get("/:id", one);
router.post("/", add);
router.put("/", remove);
router.post("/send-email", sendEmail);

function generateRandomString(length = 5) {
  return Math.random().toString(36).substr(2, length);
}

async function sendEmail(req, res) {
  try {
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false,
      auth: {
        user: "institutotecnologicodurangoema@gmail.com",
        pass: "iwdt ptwt yqph lhat",
      },
    });

    let recipientEmail = req.query.email;
    let code = req.query.code; // Get the code from the query parameters

    // Actualiza el campo 'codito' en la base de datos
    const data = { codigo: code };
    await controller.callUpdateByEmail(recipientEmail, data);

    let info = await transporter.sendMail({
      from: recipientEmail,
      to: recipientEmail,
      subject: "Restablecimiento de Contraseña ",
      text: `Hola inegrante del itd, tu código de verificación es: ${code}`,
      html: `
      <!DOCTYPE html>
      <html>
        <head>
          <style>
            body {
              font-family: Arial, sans-serif;
              margin: 0;
              padding: 0;
              background-color: #f0f0f0;
            }
            .email-container {
              width: 100%;
              max-width: 600px;
              margin: 0 auto;
              background-color: #ffffff;
              padding: 20px;
              box-sizing: border-box;
            }
            .email-header {
              text-align: center;
            }
            .email-header img {
              max-width: 70px;
            }
            .email-body {
              margin-top: 20px;
            }
          </style>
        </head>
        <body>
          <div class="email-container">
            <div class="email-header">
              <img src="https://www.cocyted.mx/PNPC/logos/logoITD.png" alt="Logo" />
              <h1>Solicitud de restablecimiento de contraseña</h1>
            </div>
            <div class="email-body">
              <p>Hola,</p>
              <p>
                Hemos recibido una solicitud para restablecer tu contraseña. Aquí está
                tu código de verificación:
              </p>
              <h2 style="text-align: center">${code}</h2>
              <p>
                Si no solicitaste un restablecimiento de contraseña, por favor ignora
                este correo electrónico o contacta al soporte si tienes alguna
                pregunta.
              </p>
              <p>Email,</p>
              <p>${recipientEmail}</p>
            </div>
          </div>
        </body>
      </html>
      `,
    });

    res.sendStatus(200);
  } catch (error) {
    console.log(error);
    response.error(req, res, error.message, 500);
  }
}

async function all(req, res) {
  try {
    const items = await controller.all();
    response.success(req, res, items, 200); // corrected here
  } catch (error) {
    response.error(req, res, error.message, 500);
  }
}

async function one(req, res) {
  try {
    const items = await controller.one(req.params.id);
    response.success(req, res, items, 200); // corrected here
  } catch (error) {
    response.error(req, res, error.message, 500);
  }
}

async function add(req, res) {
  try {
    const item = await controller.add(req.body);
    response.success(
      req,
      res,
      `Item ${JSON.stringify(item)} successfully added`,
      201
    );
  } catch (error) {
    response.error(req, res, error.message, 500);
  }
}

async function remove(req, res) {
  try {
    const item = await controller.remove(req.body.id);
    response.success(req, res, "Item removed successfully", 200);
  } catch (error) {
    response.error(
      req,
      res,
      error.message,
      error.message === "No record found with this id" ? 404 : 500
    );
  }
}
module.exports = router;
