import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import '../exactly_one_types.dart';
import 'loader_errors.dart';
import 'wrapper_override.dart';

class LoadedOverrides {
  const LoadedOverrides({required this.resources, required this.dataSources});

  final Map<String, WrapperOverride> resources;

  final Map<String, WrapperOverride> dataSources;

  Map<String, WrapperOverride> get all {
    final overlap = resources.keys.toSet().intersection(
      dataSources.keys.toSet(),
    );
    if (overlap.isNotEmpty) {
      throw StateError(
        'LoadedOverrides.all is undefined for ${overlap.length} '
        'resource/data-source twin key(s). Iterate .entries or use '
        'asLintMap().',
      );
    }
    return {...resources, ...dataSources};
  }

  Iterable<MapEntry<String, WrapperOverride>> get entries sync* {
    yield* resources.entries;
    yield* dataSources.entries;
  }

  int get length => resources.length + dataSources.length;

  Map<String, WrapperOverride> of(WrapperOverrideKind kind) => switch (kind) {
    WrapperOverrideKind.resource => resources,
    WrapperOverrideKind.dataSource => dataSources,
  };

  String lintKey(String terraformType, WrapperOverrideKind kind) =>
      kind == WrapperOverrideKind.dataSource &&
          resources.containsKey(terraformType)
      ? 'data.$terraformType'
      : terraformType;

  Map<String, WrapperOverride> asLintMap() => {
    ...resources,
    for (final e in dataSources.entries)
      lintKey(e.key, WrapperOverrideKind.dataSource): e.value,
  };
}

String overrideFileStem({
  required String terraformType,
  required WrapperOverrideKind kind,
}) {
  if (kind == WrapperOverrideKind.dataSource &&
      terraformType != 'google_project') {
    return 'data_$terraformType';
  }
  return terraformType;
}

String terraformTypeFromOverrideStem(String stem, WrapperOverrideKind kind) {
  if (kind == WrapperOverrideKind.dataSource &&
      stem.startsWith('data_') &&
      stem.length > 5) {
    return stem.substring('data_'.length);
  }
  return stem;
}

class YamlOverrideLoader {
  YamlOverrideLoader({required this.rootDir});

  final String rootDir;

  static final RegExp _terraformTypePattern = RegExp(r'^[a-z][a-z0-9_]*$');

  static const Set<String> _allowedTopLevelKeys = {
    'paramOrder',
    'argMapOrder',
    'extraGetters',
    'requiredParams',
    'dartTypeOverrides',
    'deprecatedParams',
    'extraImports',
    'extraSensitiveFields',
    'prelude',
    'deriveEnums',
    'deriveOutputGetters',
    'deriveClassDoc',
    'curatedDoc',
    'customSlots',
    'deriveNestedTypes',
    'nestedTypeExcludes',
    'dedupeNestedTypes',
    'deriveExactlyOne',
    'sealedNames',
    'typeNames',
    'enumValues',
    'exactlyOneOf',
    'atMostOneOf',
    'unsealedGroups',
    'kind',
    'outputDir',
    'schemaStubBodyMode',
    'fileLeadingComment',
  };

  static const Set<String> _resourceOnlyAxes = {
    'prelude',
    'customSlots',
    'deprecatedParams',
  };

  static const Set<String> _allowedCustomSlotKeys = {
    'paramDeclaration',
    'argMapEntry',
    'migrate',
  };

  static const Set<String> _allowedMigrateHintKeys = {'kind', 'reason'};

  LoadedOverrides load({String? only}) {
    final dir = Directory(rootDir);
    if (!dir.existsSync()) {
      throw StateError('YamlOverrideLoader: rootDir does not exist: $rootDir');
    }
    final List<File> yamlFiles;
    if (only != null) {
      yamlFiles = _resolveOnlyFiles(only);
    } else {
      yamlFiles =
          dir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.yaml'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));
    }

    final errors = <LoaderError>[];
    final resources = <String, WrapperOverride>{};
    final dataSources = <String, WrapperOverride>{};

    for (final file in yamlFiles) {
      final stem = p.basenameWithoutExtension(file.path);
      if (!_terraformTypePattern.hasMatch(stem)) {
        throw FormatException(
          'YamlOverrideLoader: invalid terraform type "$stem" '
          '(file: ${file.path})',
        );
      }
      final src = file.readAsStringSync();
      final yaml = loadYaml(src, sourceUrl: Uri.file(file.path));
      if (yaml == null) {
        errors.add(
          LoaderError(
            code: LoaderErrorCode.outputDirRequired,
            message: 'outputDir is required, e.g. "outputDir: pubsub".',
            filePath: file.path,
            line: 1,
            column: 1,
            hint: 'Add `outputDir: <dir>` as a top-level key.',
          ),
        );
        continue;
      }
      if (yaml is! YamlMap) {
        throw FormatException('${file.path}: top-level must be a YAML mapping');
      }
      final override = _parseOverride(yaml, file.path, errors);
      if (override == null) continue;
      if (override.kind == WrapperOverrideKind.resource &&
          stem.startsWith('data_')) {
        throw FormatException(
          'YamlOverrideLoader: resource override cannot use the data_ '
          'file prefix (file: ${file.path})',
        );
      }
      final terraformType = terraformTypeFromOverrideStem(stem, override.kind);
      if (!_terraformTypePattern.hasMatch(terraformType)) {
        throw FormatException(
          'YamlOverrideLoader: invalid terraform type "$terraformType" '
          '(file: ${file.path})',
        );
      }
      final target = override.kind == WrapperOverrideKind.dataSource
          ? dataSources
          : resources;
      if (target.containsKey(terraformType)) {
        throw FormatException(
          'YamlOverrideLoader: duplicate ${override.kind.name} override '
          'for "$terraformType" (file: ${file.path})',
        );
      }
      target[terraformType] = override;
    }

    if (errors.isNotEmpty) {
      LoaderErrorReport(errors: errors).fatal();
    }

    return LoadedOverrides(resources: resources, dataSources: dataSources);
  }

  List<File> _resolveOnlyFiles(String only) {
    final files = <File>[];
    final exact = File(p.join(rootDir, '$only.yaml'));
    if (exact.existsSync()) files.add(exact);
    if (!only.startsWith('data_')) {
      final twin = File(p.join(rootDir, 'data_$only.yaml'));
      if (twin.existsSync()) files.add(twin);
    }
    if (files.isEmpty) {
      throw StateError(
        'YamlOverrideLoader: --only target not found: ${exact.path}',
      );
    }
    return files;
  }

  WrapperOverride? _parseOverride(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    for (final key in yaml.keys) {
      if (key == 'classDocComment') {
        throw FormatException(
          '$filePath: `classDocComment` is retired — the class doc derives '
          'from the IR. Set `deriveClassDoc: true` and move artisanal prose '
          'to `curatedDoc`.',
        );
      }
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
    final deriveNestedTypes =
        _readBool(yaml, 'deriveNestedTypes', filePath) ?? false;
    final nestedTypeExcludes = _readStringList(
      yaml,
      'nestedTypeExcludes',
      filePath,
    );
    if (nestedTypeExcludes != null && !deriveNestedTypes) {
      throw FormatException(
        '$filePath: nestedTypeExcludes requires deriveNestedTypes: true. Set '
        '`deriveNestedTypes: true` on this override, or remove '
        '`nestedTypeExcludes`.',
      );
    }
    final dedupeNestedTypes =
        _readBool(yaml, 'dedupeNestedTypes', filePath) ?? false;
    if (dedupeNestedTypes && !deriveNestedTypes) {
      throw FormatException(
        '$filePath: dedupeNestedTypes requires deriveNestedTypes: true. Set '
        '`deriveNestedTypes: true` on this override, or remove '
        '`dedupeNestedTypes`.',
      );
    }
    final kind = _parseKind(yaml, filePath, errors);
    if (kind == null) return null;
    final outputDir = _parseOutputDir(yaml, filePath, errors);
    final schemaStubBodyMode = _parseSchemaStubBodyMode(yaml, filePath, errors);
    final fileLeadingComment = _parseFileLeadingComment(yaml, filePath, errors);

    if (kind == WrapperOverrideKind.dataSource &&
        outputDir != null &&
        outputDir != 'data') {
      final node = yaml.nodes['outputDir']!;
      final span = node.span;
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirMismatchForDataSource,
          message:
              'data sources must live under "data/" directory '
              '(got "$outputDir").',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
    }

    if (kind == WrapperOverrideKind.dataSource) {
      for (final axis in _resourceOnlyAxes) {
        final axisNode = yaml.nodes[axis];
        if (axisNode != null) {
          final span = axisNode.span;
          errors.add(
            LoaderError(
              code: LoaderErrorCode.axisNotAllowedForDataSource,
              message: 'axis "$axis" is not allowed for kind: data_source.',
              filePath: filePath,
              line: span.start.line + 1,
              column: span.start.column + 1,
              hint:
                  'Allowed axes for data sources: '
                  '${_allowedTopLevelKeys.difference(_resourceOnlyAxes).join(', ')}.',
            ),
          );
        }
      }
    }

    if (outputDir == null) return null;
    return WrapperOverride(
      kind: kind,
      outputDir: outputDir,
      schemaStubBodyMode: schemaStubBodyMode,
      fileLeadingComment: fileLeadingComment,
      paramOrder: paramOrder,
      argMapOrder: argMapOrder,
      extraGetters: _readString(yaml, 'extraGetters', filePath),
      requiredParams: _readStringList(yaml, 'requiredParams', filePath),
      dartTypeOverrides: _readStringMap(yaml, 'dartTypeOverrides', filePath),
      deprecatedParams: _readStringMap(yaml, 'deprecatedParams', filePath),
      extraImports: _readStringList(yaml, 'extraImports', filePath),
      extraSensitiveFields: _readStringList(
        yaml,
        'extraSensitiveFields',
        filePath,
      ),
      prelude: _readString(yaml, 'prelude', filePath),
      deriveEnums: _readBool(yaml, 'deriveEnums', filePath) ?? false,
      deriveOutputGetters:
          _readBool(yaml, 'deriveOutputGetters', filePath) ?? false,
      deriveClassDoc: _readBool(yaml, 'deriveClassDoc', filePath) ?? false,
      curatedDoc: _readString(yaml, 'curatedDoc', filePath),
      customSlots: _readCustomSlots(yaml, filePath),
      deriveNestedTypes: deriveNestedTypes,
      nestedTypeExcludes: nestedTypeExcludes,
      dedupeNestedTypes: dedupeNestedTypes,
      deriveExactlyOne: _readBool(yaml, 'deriveExactlyOne', filePath) ?? false,
      sealedNames: _readSealedNames(yaml, filePath),
      typeNames: _readTypeNames(yaml, filePath),
      enumValues: _readEnumValues(yaml, filePath),
      exactlyOneOf: _readGroups(yaml, 'exactlyOneOf', filePath),
      atMostOneOf: _readGroups(yaml, 'atMostOneOf', filePath),
      unsealedGroups: _readUnsealedGroups(yaml, filePath),
    );
  }

  Map<String, String>? _readUnsealedGroups(YamlMap yaml, String filePath) {
    final reasons = _readStringMap(yaml, 'unsealedGroups', filePath);
    if (reasons == null) return null;
    for (final MapEntry(:key, :value) in reasons.entries) {
      if (sealedGroupKey(key).length < 2) {
        throw FormatException(
          '$filePath: unsealedGroups key "$key" must list the group\'s '
          'members, comma-separated.',
        );
      }
      if (value.trim().isEmpty) {
        throw FormatException(
          '$filePath: unsealedGroups "$key" needs the reason the group '
          'stays unsealed.',
        );
      }
    }
    return reasons;
  }

  List<String>? _readGroups(YamlMap yaml, String key, String filePath) {
    final groups = _readStringList(yaml, key, filePath);
    if (groups == null) return null;
    for (final g in groups) {
      if (sealedGroupKey(g).length < 2) {
        throw FormatException(
          '$filePath: $key entry "$g" must list two or more members, '
          'comma-separated.',
        );
      }
    }
    return groups;
  }

  static final RegExp _sealedConcept = RegExp(r'^[a-z][a-z0-9]*(_[a-z0-9]+)*$');

  Map<String, String>? _readSealedNames(YamlMap yaml, String filePath) {
    final names = _readStringMap(yaml, 'sealedNames', filePath);
    if (names == null) return null;
    for (final MapEntry(:key, :value) in names.entries) {
      if (sealedGroupKey(key).length < 2) {
        throw FormatException(
          '$filePath: sealedNames key "$key" must list the group\'s members, '
          'comma-separated.',
        );
      }
      if (!_sealedConcept.hasMatch(value)) {
        throw FormatException(
          '$filePath: sealedNames "$key" is "$value"; use a snake_case '
          'concept name (code, name_or_id).',
        );
      }
    }
    return names;
  }

  static final RegExp _inputPath = RegExp(r'^[a-z0-9_]+(\.[a-z0-9_]+)*$');
  static final RegExp _typeName = RegExp(r'^[A-Z][A-Za-z0-9]*$');

  Map<String, String>? _readTypeNames(YamlMap yaml, String filePath) {
    final names = _readStringMap(yaml, 'typeNames', filePath);
    if (names == null) return null;
    for (final MapEntry(:key, :value) in names.entries) {
      if (!_inputPath.hasMatch(key)) {
        throw FormatException(
          '$filePath: typeNames key "$key" must be a dotted input path '
          '(cool_access.tiering_policy).',
        );
      }
      if (!_typeName.hasMatch(value)) {
        throw FormatException(
          '$filePath: typeNames "$key" is "$value"; use a PascalCase Dart '
          'type name.',
        );
      }
    }
    return names;
  }

  Map<String, List<String>>? _readEnumValues(YamlMap yaml, String filePath) {
    final node = yaml['enumValues'];
    if (node == null) return null;
    if (node is! YamlMap || node.isEmpty) {
      throw FormatException(
        '$filePath: enumValues must be a non-empty map from an input path '
        'to its values.',
      );
    }
    final out = <String, List<String>>{};
    for (final MapEntry(:key, :value) in node.entries) {
      if (key is! String || !_inputPath.hasMatch(key)) {
        throw FormatException(
          '$filePath: enumValues key "$key" must be a dotted input path '
          '(entities.entity_name).',
        );
      }
      if (value is! YamlList ||
          value.isEmpty ||
          value.any((v) => v is! String || v.isEmpty)) {
        throw FormatException(
          '$filePath: enumValues "$key" must be a non-empty list of strings.',
        );
      }
      final values = [for (final v in value) v as String];
      if (values.toSet().length != values.length) {
        throw FormatException(
          '$filePath: enumValues "$key" lists a value twice.',
        );
      }
      out[key] = values;
    }
    return out;
  }

  WrapperOverrideKind? _parseKind(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    final node = yaml.nodes['kind'];
    if (node == null) return WrapperOverrideKind.resource;
    final v = node.value;
    if (v is! String) {
      final span = node.span;
      errors.add(
        LoaderError(
          code: LoaderErrorCode.unknownKind,
          message:
              'kind must be a string ("resource" or "data_source"); '
              'got ${v.runtimeType}.',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
      return null;
    }
    switch (v) {
      case 'resource':
        return WrapperOverrideKind.resource;
      case 'data_source':
        return WrapperOverrideKind.dataSource;
    }
    final span = node.span;
    errors.add(
      LoaderError(
        code: LoaderErrorCode.unknownKind,
        message: 'unknown kind "$v". Allowed: resource, data_source.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
        hint: 'Set `kind: resource` or `kind: data_source`.',
      ),
    );
    return null;
  }

  String? _parseOutputDir(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    final node = yaml.nodes['outputDir'];
    if (node == null) {
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirRequired,
          message: 'outputDir is required, e.g. "outputDir: pubsub".',
          filePath: filePath,
          line: 1,
          column: 1,
          hint: 'Add `outputDir: <dir>` as a top-level key.',
        ),
      );
      return null;
    }
    final v = node.value;
    final span = node.span;
    if (v is! String) {
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirInvalid,
          message: 'outputDir must be a string; got ${v.runtimeType}.',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
      return null;
    }
    final trimmed = v.trim();
    if (trimmed.isEmpty) {
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirRequired,
          message: 'outputDir is required, e.g. "outputDir: pubsub".',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
          hint: 'Add `outputDir: <dir>` as a top-level key.',
        ),
      );
      return null;
    }
    if (trimmed.contains('/') ||
        trimmed.contains(r'\') ||
        trimmed == '..' ||
        trimmed == '.') {
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirInvalid,
          message:
              'outputDir must be a single directory name '
              r'(no /, \, .., or .). Got "'
              '$trimmed".',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
      return null;
    }
    return trimmed;
  }

  SchemaStubBodyMode _parseSchemaStubBodyMode(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    final node = yaml.nodes['schemaStubBodyMode'];
    if (node == null) return SchemaStubBodyMode.nosuchmethod;
    final v = node.value;
    final span = node.span;
    if (v is! String) {
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirInvalid,
          message:
              'schemaStubBodyMode must be a string '
              '("nosuchmethod" or "bare"); got ${v.runtimeType}.',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
      return SchemaStubBodyMode.nosuchmethod;
    }
    switch (v) {
      case 'nosuchmethod':
        return SchemaStubBodyMode.nosuchmethod;
      case 'bare':
        return SchemaStubBodyMode.bare;
    }
    errors.add(
      LoaderError(
        code: LoaderErrorCode.outputDirInvalid,
        message:
            'unknown schemaStubBodyMode "$v". '
            'Allowed: nosuchmethod, bare.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
        hint:
            'Set `schemaStubBodyMode: nosuchmethod` or '
            '`schemaStubBodyMode: bare`.',
      ),
    );
    return SchemaStubBodyMode.nosuchmethod;
  }

  String? _parseFileLeadingComment(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    final node = yaml.nodes['fileLeadingComment'];
    if (node == null) return null;
    final v = node.value;
    if (v is! String) {
      final span = node.span;
      errors.add(
        LoaderError(
          code: LoaderErrorCode.outputDirInvalid,
          message:
              'fileLeadingComment must be a string (block scalar); '
              'got ${v.runtimeType}.',
          filePath: filePath,
          line: span.start.line + 1,
          column: span.start.column + 1,
        ),
      );
      return null;
    }
    return v;
  }

  String? _readString(YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! String) {
      throw FormatException('$filePath: "$key" must be a string');
    }
    return v;
  }

  bool? _readBool(YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! bool) {
      throw FormatException(
        '$filePath: "$key" must be a boolean (true or false)',
      );
    }
    return v;
  }

  List<String>? _readStringList(YamlMap yaml, String key, String filePath) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! YamlList) {
      throw FormatException('$filePath: "$key" must be a list');
    }
    if (v.isEmpty) {
      throw FormatException('$filePath: "$key" must not be empty');
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
    YamlMap yaml,
    String key,
    String filePath,
  ) {
    final v = yaml[key];
    if (v == null) return null;
    if (v is! YamlMap) {
      throw FormatException('$filePath: "$key" must be a mapping');
    }
    final out = <String, String>{};
    for (final entry in v.entries) {
      final k = entry.key;
      final val = entry.value;
      if (k is! String) {
        throw FormatException('$filePath: "$key" keys must be strings');
      }
      if (val is! String) {
        throw FormatException('$filePath: "$key.$k" must be a string');
      }
      out[k] = val;
    }
    return out;
  }

  Map<String, CustomSlot>? _readCustomSlots(YamlMap yaml, String filePath) {
    final v = yaml['customSlots'];
    if (v == null) return null;
    if (v is! YamlMap) {
      throw FormatException('$filePath: "customSlots" must be a mapping');
    }
    final out = <String, CustomSlot>{};
    for (final entry in v.entries) {
      final slotName = entry.key;
      final slotMap = entry.value;
      if (slotName is! String) {
        throw FormatException('$filePath: "customSlots" keys must be strings');
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
        migrate: _readMigrateHint(slotMap['migrate'], slotName, filePath),
      );
    }
    return out;
  }

  MigrateHint? _readMigrateHint(Object? raw, String slotName, String filePath) {
    if (raw == null) return null;
    if (raw is! YamlMap) {
      throw FormatException(
        '$filePath: customSlots["$slotName"].migrate must be a mapping',
      );
    }
    for (final k in raw.keys) {
      if (!_allowedMigrateHintKeys.contains(k)) {
        throw FormatException(
          '$filePath: customSlots["$slotName"].migrate has unknown key: $k '
          '(allowed: $_allowedMigrateHintKeys)',
        );
      }
    }
    final kind = raw['kind'];
    if (kind != 'manual') {
      throw FormatException(
        '$filePath: customSlots["$slotName"].migrate.kind must be "manual" '
        '(got: $kind)',
      );
    }
    final reason = raw['reason'];
    if (reason is! String || reason.trim().isEmpty) {
      throw FormatException(
        '$filePath: customSlots["$slotName"].migrate.reason is required and '
        'must be a non-empty string',
      );
    }
    return MigrateHint.manual(reason: reason.trim());
  }
}
