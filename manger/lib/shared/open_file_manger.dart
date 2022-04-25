import 'dart:io';

openFileManger(String path) {
  if (Platform.isWindows) {
    Process.run("explorer.exe", [path]);
  } else if (Platform.isLinux) {
    Process.run("xdg-open", [path]);
  } else if (Platform.isMacOS) {
    Process.run("open", [path]);
  } else {
    throw UnimplementedError(
        "only desktop os are supported (windwos,linux,macos)");
  }
}
