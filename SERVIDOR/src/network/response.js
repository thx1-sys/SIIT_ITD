exports.success = function (req, res, msg, state) {
  const statusCode = state || 200;
  const statusMessage = msg || "";
  res.status(state).send({
    error: false,
    status: statusCode,
    body: statusMessage,
  });
};

exports.error = function (req, res, msg, state) {
  const statusCode = state || 500;
  const statusMessage = msg || "Error interno del servidor";
  res.status(state).send({
    error: true,
    status: state,
    body: msg,
  });
};
