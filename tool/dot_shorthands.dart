import 'dart:io';

/// Rewrites generated example code to Dart 3.10 dot shorthands where the
/// argument has a static type: `TfArg.literal(...)` / `RefTo.literal(...)`
/// (and `.variable` / `.expression`) become `.literal(...)`, and a value of
/// one of [enums] becomes `.value`. Every argument the leftover generators
/// write is a typed constructor parameter, a list element of one, or the
/// value inside such a `.literal`, so the context type is always known.
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

/// The enum names declared under [libDir] (a provider package's `lib/src`).
Set<String> packageEnums(String libDir) => {
  for (final file in Directory(libDir).listSync(recursive: true))
    if (file is File && file.path.endsWith('.dart'))
      for (final m in RegExp(
        r'^enum (\w+)',
        multiLine: true,
      ).allMatches(file.readAsStringSync()))
        m[1]!,
};
