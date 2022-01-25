class CheckServer implements Exception {
  @override
  String toString() {
    return "check server connection";
  }
}

class BadRequrest implements Exception {
  final String msg;

  BadRequrest(this.msg);
  @override
  String toString() => msg;
}
