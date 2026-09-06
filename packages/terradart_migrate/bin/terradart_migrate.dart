import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';

Future<void> main(List<String> argv) async {
  exitCode = await runMigrateCli(argv);
}
