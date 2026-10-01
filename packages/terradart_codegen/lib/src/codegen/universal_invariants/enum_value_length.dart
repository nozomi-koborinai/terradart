import 'dart:io';

import 'enum_extractor.dart';

/// Gate 8: every enum value identifier across `terradart_google` should
/// be at least [minLength] characters UNLESS the value is in [allowList].
///
/// The intent is to catch abbreviation-style enum values like `.lt`,
/// `.gt`, `.eq`, `.le`, `.ge`, `.ne` and force the verbose-natural form
/// (`.lessThan`, `.greaterThan`, etc.). However, many short enum
/// identifiers in `terradart_google` are legitimate industry-standard
/// acronyms (`tcp`, `udp`, `ssl`, `ga`, `on`, `off`, etc.) that mirror
/// the Terraform wire value — these should NOT be renamed. The
/// [allowList] excludes them from the violation list.
///
/// A short member that spells its own Terraform value (`a` for `A`, `v1`
/// for `V1`, `in_` for `IN`) mirrors the wire value and passes too; the
/// gate flags a short member abbreviated from a longer value.
///
/// Returns an empty list when all enum values conform (i.e. are either
/// >= [minLength] characters, in the allow-list, or their own value). When [enumNames] is
/// given, only the enums it names are checked.
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
