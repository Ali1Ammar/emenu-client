// ignore_for_file: avoid_print

debugLog(e, s) {
  print(e.toString());
  print(s.toString());
}

log(e){
  print(e);
}

catchAndLogError(dynamic Function() call) async {
  try {
    return await call();
  } catch (e, s) {
    debugLog(e, s);
  }
}
