function error(msg, coce) {
  let e = new Error(msg);
  if (code) {
    e.statusCode = code;
  }

  return e;
}

module.exports = error;
