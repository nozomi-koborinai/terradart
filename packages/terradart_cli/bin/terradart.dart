import 'dart:io';

import 'package:terradart_cli/terradart_cli.dart';

Future<void> main(List<String> arguments) async {
  exitCode = await runTerradart(arguments);
}
