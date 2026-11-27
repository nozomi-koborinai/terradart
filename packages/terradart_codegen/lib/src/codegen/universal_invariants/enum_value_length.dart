import 'dart:io';

import 'enum_extractor.dart';

class EnumValueLength {
  static List<String> scan({
    required String rootDir,
    required int minLength,
    Set<String> allowList = const {},
    Set<String>? enumNames,
  }) {
    final violations = <String>[];
    final dir = Directory(rootDir);
    if (!dir.existsSync()) return violations;

    for (final entity in dir.listSync(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) continue;
      final source = entity.readAsStringSync();
      for (final e in const EnumExtractor().extract(source)) {
        if (enumNames != null && !enumNames.contains(e.name)) continue;
        for (final MapEntry(key: member, :value) in e.members.entries) {
          if (allowList.contains(member)) continue;
          if (_spells(member, value)) continue;
          if (member.length < minLength) {
            violations.add(
              '${entity.path}: enum ${e.name}.$member '
              '(length ${member.length} < $minLength)',
            );
          }
        }
      }
    }
    return violations;
  }
}

bool _spells(String member, String value) =>
    member.replaceAll('_', '').toLowerCase() ==
    value.replaceAll(RegExp('[^A-Za-z0-9]'), '').toLowerCase();
