import 'dart:io';

import 'package:path/path.dart' as p;

final RegExp providerIdPattern = RegExp(
  r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$',
);

String readProviderVersion(String source) {
  final file = File(p.join(source, 'provider_version.txt'));
  if (!file.existsSync()) return '';
  return file.readAsStringSync().trim();
}

File? resolveSchemaFile(String source, String resourceName) {
  final canonical = File(p.join(source, 'schema.json'));
  if (canonical.existsSync()) return canonical;
  final perResource = File(
    p.join(source, 'schema', '${resourceName}_v7.schema.json'),
  );
  if (perResource.existsSync()) return perResource;
  return null;
}
