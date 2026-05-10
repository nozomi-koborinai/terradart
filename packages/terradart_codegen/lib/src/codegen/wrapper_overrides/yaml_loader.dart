import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'wrapper_override.dart';

/// Loads `<terraformType>.yaml` files under [rootDir] into a registry
/// keyed by terraform type. The file name stem is used as the key.
///
/// Validation:
/// - File names must match `^[a-z][a-z0-9_]*$`.
/// - Top-level keys must be in the allowed set (11 axis).
/// - `List<String>` fields must not be empty and entries must be strings.
/// - `Map<String, String>` fields' values must be strings.
/// - `customSlots[x].paramDeclaration` and `customSlots[x].argMapEntry`
///   are required and must be strings; no other keys allowed.
/// - When both `paramOrder` and `argMapOrder` are set, `argMapOrder` must
///   be a permutation of `paramOrder`.
class YamlOverrideLoader {
  YamlOverrideLoader({required this.rootDir});

  final String rootDir;

  static final RegExp _terraformTypePattern = RegExp(r'^[a-z][a-z0-9_]*$');

  static const Set<String> _allowedTopLevelKeys = {
    'classDocComment',
    'paramOrder',
    'argMapOrder',
    'extraGetters',
    'schemaStubComment',
    'requiredParams',
    'dartTypeOverrides',
    'deprecatedParams',
    'extraImports',
    'prelude',
    'customSlots',
  };

  static const Set<String> _allowedCustomSlotKeys = {
    'paramDeclaration',
    'argMapEntry',
  };

  Map<String, WrapperOverride> load() {
    final dir = Directory(rootDir);
    if (!dir.existsSync()) {
      throw StateError(
        'YamlOverrideLoader: rootDir does not exist: $rootDir',
      );
    }
    final yamlFiles = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.yaml'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

    final result = <String, WrapperOverride>{};
    for (final file in yamlFiles) {
      final terraformType = p.basenameWithoutExtension(file.path);
      if (!_terraformTypePattern.hasMatch(terraformType)) {
        throw FormatException(
          'YamlOverrideLoader: invalid terraform type "$terraformType" '
          '(file: ${file.path})',
        );
      }
      final src = file.readAsStringSync();
      final yaml = loadYaml(src, sourceUrl: Uri.file(file.path));
      if (yaml == null) {
        result[terraformType] = const WrapperOverride();
        continue;
      }
      if (yaml is! YamlMap) {
        throw FormatException(
          '${file.path}: top-level must be a YAML mapping',
        );
      }
      result[terraformType] = _parseOverride(yaml, file.path);
    }
    return result;
  }

  WrapperOverride _parseOverride(YamlMap yaml, String filePath) {
    for (final key in yaml.keys) {
      if (key is! String || !_allowedTopLevelKeys.contains(key)) {
        throw FormatException(
          '$filePath: unknown top-level key: $key '
          '(allowed: $_allowedTopLevelKeys)',
        );
      }
    }
    final paramOrder = _readStringList(yaml, 'paramOrder', filePath);
    final argMapOrder = _readStringList(yaml, 'argMapOrder', filePath);
    if (paramOrder != null && argMapOrder != null) {
      final p = paramOrder.toSet();
      final a = argMapOrder.toSet();
      if (p.length != a.length || !p.containsAll(a)) {
        throw FormatException(
          '$filePath: argMapOrder must be a permutation of paramOrder',
        );
      }
    }
    return WrapperOverride(
      classDocComment: _readString(yaml, 'classDocComment', filePath),
      paramOrder: paramOrder,
      argMapOrder: argMapOrder,
      extraGetters: _readString(yaml, 'extraGetters', filePath),
      schemaStubComment: _readString(yaml, 'schemaStubComment', filePath),
      requiredParams: _readStringList(yaml, 'requiredParams', filePath),
      dartTypeOverrides: _readStringMap(yaml, 'dartTypeOverrides', filePath),
      deprecatedParams: _readStringMap(yaml, 'deprecatedParams', filePath),
      extraImports: _readStringList(yaml, 'extraImports', filePath),
      prelude: _readString(yaml, 'prelude', filePath),
      customSlots: _readCustomSlots(yaml, filePath),
    );
  }

  String? _readString(YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! String) {
      throw FormatException(
        '$filePath: "$key" must be a string',
      );
    }
    return v;
  }

  List<String>? _readStringList(YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! YamlList) {
      throw FormatException(
        '$filePath: "$key" must be a list',
      );
    }
    if (v.isEmpty) {
      throw FormatException(
        '$filePath: "$key" must not be empty',
      );
    }
    final out = <String>[];
    for (final item in v) {
      if (item is! String) {
        throw FormatException(
          '$filePath: "$key" entries must be strings (found: $item)',
        );
      }
      out.add(item);
    }
    return out;
  }

  Map<String, String>? _readStringMap(
      YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! YamlMap) {
      throw FormatException(
        '$filePath: "$key" must be a mapping',
      );
    }
    final out = <String, String>{};
    for (final entry in v.entries) {
      final k = entry.key;
      final val = entry.value;
      if (k is! String) {
        throw FormatException(
          '$filePath: "$key" keys must be strings',
        );
      }
      if (val is! String) {
        throw FormatException(
          '$filePath: "$key.$k" must be a string',
        );
      }
      out[k] = val;
    }
    return out;
  }

  Map<String, CustomSlot>? _readCustomSlots(YamlMap yaml, String filePath) {
    final v = yaml['customSlots'];
    if (v == null) return null;
    if (v is! YamlMap) {
      throw FormatException(
        '$filePath: "customSlots" must be a mapping',
      );
    }
    final out = <String, CustomSlot>{};
    for (final entry in v.entries) {
      final slotName = entry.key;
      final slotMap = entry.value;
      if (slotName is! String) {
        throw FormatException(
          '$filePath: "customSlots" keys must be strings',
        );
      }
      if (slotMap is! YamlMap) {
        throw FormatException(
          '$filePath: customSlots["$slotName"] must be a mapping',
        );
      }
      for (final k in slotMap.keys) {
        if (!_allowedCustomSlotKeys.contains(k)) {
          throw FormatException(
            '$filePath: customSlots["$slotName"] has unknown key: $k '
            '(allowed: $_allowedCustomSlotKeys)',
          );
        }
      }
      final paramDecl = slotMap['paramDeclaration'];
      final argMap = slotMap['argMapEntry'];
      if (paramDecl is! String) {
        throw FormatException(
          '$filePath: customSlots["$slotName"].paramDeclaration is required '
          'and must be a string',
        );
      }
      if (argMap is! String) {
        throw FormatException(
          '$filePath: customSlots["$slotName"].argMapEntry is required '
          'and must be a string',
        );
      }
      out[slotName] = CustomSlot(
        paramDeclaration: paramDecl,
        argMapEntry: argMap,
      );
    }
    return out;
  }
}
