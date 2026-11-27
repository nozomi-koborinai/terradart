import 'dart:io';

String dotShorthands(String code, Set<String> enums) {
  final out = code.replaceAllMapped(
    RegExp(r'\b(?:TfArg|RefTo)\.(literal|variable|expression)\('),
    (m) => '.${m[1]}(',
  );
  return out.replaceAllMapped(
    RegExp(r'\b([A-Z]\w*)\.([a-z]\w*)\b(?!\s*\()'),
    (m) => enums.contains(m[1]) ? '.${m[2]}' : m[0]!,
  );
}

Set<String> packageEnums(String libDir) => {
  for (final file in Directory(libDir).listSync(recursive: true))
    if (file is File && file.path.endsWith('.dart'))
      for (final m in RegExp(
        r'^extension type const (\w+)\._',
        multiLine: true,
      ).allMatches(file.readAsStringSync()))
        m[1]!,
};
