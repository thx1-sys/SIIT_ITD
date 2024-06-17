const express = require("express");

const seguridad = require("./seguridad");
const response = require("../../network/response");
const controller = require("./index");

const router = express.Router();

router.get("/", all);
router.get("/:id", one);
router.post("/", add);
router.put("/", remove);

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
