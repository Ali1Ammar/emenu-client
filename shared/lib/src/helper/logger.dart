debugLog(e, s) {
  log(e.toString());
  log(s.toString());
}

log(e){
  log(e);
}

catchAndLogError(dynamic Function() call) async {
  try {
    return await call();
  } catch (e, s) {
    debugLog(e, s);
  }
}
