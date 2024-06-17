const auth = require("../../auth");

module.exports = function checkauth(req, res, next) {
  function middleware(req, res, next) {
    const id = req.body.id;
    auth.checkToken.confirm(req, id);
    next();
  }
  return middleware;
};
