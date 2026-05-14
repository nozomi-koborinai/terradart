import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';

/// Scans the IR's attribute descriptions for the prose-form "Possible
/// values: A, B, C" pattern that MM authors sometimes use in lieu of a
/// structured `enum_values:` block.
///
/// Used by `wrap-promote` as a fallback enum-source when the MM yaml does
/// not declare `enum_values:` for a field but the description happens to
/// list the values out loud. The extractor is conservative on purpose —
/// matches require ≥2 comma-separated tokens that look enum-like (alpha
/// + underscore + digit, length ≤ 40 chars each) — so prose lists of
/// arbitrary string examples (URL templates, region names with commas,
/// etc.) do not get mistaken for enums.
///
/// Output paths are dotted (e.g. `'private_visibility_config.networks.network_url'`)
/// so they line up with `mm.fieldOverrides` keys.
class ProseEnumExtractor {
  const ProseEnumExtractor();

  /// Match `Possible values:` (case-sensitive, MM convention) followed by
  /// the comma-separated list segment, terminated by the first `.`,
  /// newline, or end-of-string. Capture group 1 is the raw value list.
  static final RegExp _possibleValuesPattern = RegExp(
    r'Possible values:\s*([^.\n]+?)(?:\.|\n|$)',
  );

  /// Each extracted token must look enum-like: alpha + digits + underscore
  /// only, 1-40 chars. Rejects URL fragments, dotted addresses, anything
  /// containing whitespace.
  static final RegExp _enumTokenPattern =
      RegExp(r'^[A-Za-z][A-Za-z0-9_]{0,39}$');

  /// Returns a map from dotted field path to the extracted enum value
  /// list, for every attribute whose description matches the prose
  /// pattern and yields ≥2 enum-like tokens. Fields that do not match
  /// are omitted (the map will not contain `null` lists).
  Map<String, List<String>> extract(ResourceDef def) {
    final result = <String, List<String>>{};
    _walk(def.root.attributes, def.root.nestedBlocks, '', result);
    return result;
  }

  void _walk(
    List<Attribute> attrs,
    List<NestedBlockDef> nested,
    String prefix,
    Map<String, List<String>> sink,
  ) {
    for (final a in attrs) {
      final desc = a.description;
      if (desc == null) continue;
      final values = _extractValues(desc);
      if (values == null) continue;
      final key = prefix.isEmpty ? a.name : '$prefix.${a.name}';
      sink[key] = values;
    }
    for (final n in nested) {
      final nextPrefix = prefix.isEmpty ? n.name : '$prefix.${n.name}';
      _walk(n.block.attributes, n.block.nestedBlocks, nextPrefix, sink);
    }
  }

  /// Returns the enum-token list from [desc], or `null` if no usable
  /// match was found.
  List<String>? _extractValues(String desc) {
    final match = _possibleValuesPattern.firstMatch(desc);
    if (match == null) return null;
    final raw = match.group(1) ?? '';
    final tokens =
        raw.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
    if (tokens.length < 2) return null;
    for (final t in tokens) {
      if (!_enumTokenPattern.hasMatch(t)) return null;
    }
    return tokens;
  }
}
