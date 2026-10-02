import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';

Future<void> main(List<String> argv) async {
  stderr.writeln(migrateExecutableDeprecation);
  exitCode = await runMigrateCli(argv);
}
