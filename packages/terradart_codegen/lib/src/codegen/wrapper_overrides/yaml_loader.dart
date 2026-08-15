import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'loader_errors.dart';
import 'wrapper_override.dart';

/// Result of [YamlOverrideLoader.load] / `loadWrapperOverrides`, split by
/// [WrapperOverrideKind].
///
/// Phase 4.1 introduces the resource / data source split so the new
/// `DataSourceWrapperEmitter` can be wired alongside the existing
/// `WrapperEmitter` without forcing the latter to take an `if (kind == ...)`
/// dependency. The free function [loadWrapperOverrides] returns this struct
/// directly; callers pick the half they need
/// (`WrapperEmitter(overrides: loaded.resources)` etc.).
class LoadedOverrides {
  /// Creates a [LoadedOverrides] from already-split resource / data source
  /// maps.
  const LoadedOverrides({
    required this.resources,
    required this.dataSources,
  });

  /// Override entries with [WrapperOverrideKind.resource].
  final Map<String, WrapperOverride> resources;

  /// Override entries with [WrapperOverrideKind.dataSource].
  final Map<String, WrapperOverride> dataSources;

  /// All entries flattened into a single map (for tests / introspection).
  ///
  /// Throws [StateError] when a terraform type exists in both halves
  /// (resource / data-source twins). Iterate [entries] or use [asLintMap]
  /// instead — colliding keys must not silently overwrite.
  Map<String, WrapperOverride> get all {
    final overlap =
        resources.keys.toSet().intersection(dataSources.keys.toSet());
    if (overlap.isNotEmpty) {
      throw StateError(
        'LoadedOverrides.all is undefined for ${overlap.length} '
        'resource/data-source twin key(s). Iterate .entries or use '
        'asLintMap().',
      );
    }
    return {...resources, ...dataSources};
  }

  /// Resource overrides plus data-source overrides. Twin terraform types
  /// appear twice (once per kind).
  Iterable<MapEntry<String, WrapperOverride>> get entries sync* {
    yield* resources.entries;
    yield* dataSources.entries;
  }

  /// Total curated overrides (resources + data sources).
  int get length => resources.length + dataSources.length;

  /// Bag for lint / debt tools that need a unique map key per override.
  ///
  /// Colliding data-source keys are stored as `data.<tfType>` so they
  /// never overwrite the resource twin. Non-colliding data sources keep
  /// their terraform type key (`google_project`).
  Map<String, WrapperOverride> asLintMap() => {
        ...resources,
        for (final e in dataSources.entries)
          resources.containsKey(e.key) ? 'data.${e.key}' : e.key: e.value,
      };
}

/// Override YAML file stem for [terraformType] / [kind].
///
/// Resources: `<terraformType>`. Data sources: `data_<terraformType>`,
/// except the legacy `google_project` data-source file which stays
/// unprefixed.
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

/// Terraform type encoded by an override file stem and its parsed [kind].
///
/// `data_google_compute_network` + `kind: data_source` →
/// `google_compute_network`. Legacy `google_project.yaml` keeps its stem.
String terraformTypeFromOverrideStem(
  String stem,
  WrapperOverrideKind kind,
) {
  if (kind == WrapperOverrideKind.dataSource &&
      stem.startsWith('data_') &&
      stem.length > 5) {
    return stem.substring('data_'.length);
  }
  return stem;
}

/// Loads override YAML files under [rootDir] into a [LoadedOverrides]
/// keyed by terraform type.
///
/// Resource files are `<terraformType>.yaml`. Data-source twins use
/// `data_<terraformType>.yaml` so they do not overwrite the resource
/// file; the loader strips the `data_` prefix after reading `kind`.
/// The legacy `google_project.yaml` data-source file keeps its stem.
///
/// Validation:
/// - File names must match `^[a-z][a-z0-9_]*$`.
/// - Top-level keys must be in the allowed set (20 axes — 16 wrapper axes
///   plus the 4 Phase 4.1 axes: `kind`, `outputDir`, `schemaStubBodyMode`,
///   `fileLeadingComment`).
/// - `nestedTypeExcludes` requires `deriveNestedTypes: true` (checked eagerly,
///   like the `argMapOrder`-must-permute-`paramOrder` rule below).
/// - `List<String>` fields must not be empty and entries must be strings.
/// - `Map<String, String>` fields' values must be strings.
/// - `customSlots[x].paramDeclaration` and `customSlots[x].argMapEntry`
///   are required and must be strings; no other keys allowed.
/// - When both `paramOrder` and `argMapOrder` are set, `argMapOrder` must
///   be a permutation of `paramOrder`.
/// - `kind` is one of `resource` (default) or `data_source`.
class YamlOverrideLoader {
  YamlOverrideLoader({required this.rootDir});

  final String rootDir;

  static final RegExp _terraformTypePattern = RegExp(r'^[a-z][a-z0-9_]*$');

  static const Set<String> _allowedTopLevelKeys = {
    // Wrapper axes (Phase 2.x, minus the Plan 5.X-retired
    // `schemaStubComment` axis and the A4-retired `classDocComment` axis —
    // class docs derive from the IR + `curatedDoc` now).
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
    // 4 Phase 4.1 axes (kind dispatch + emitter routing).
    'kind',
    'outputDir',
    'schemaStubBodyMode',
    'fileLeadingComment',
  };

  static const Set<String> _allowedCustomSlotKeys = {
    'paramDeclaration',
    'argMapEntry',
  };

  /// Loads every `*.yaml` under [rootDir] and returns the parsed entries
  /// split by [WrapperOverrideKind].
  ///
  /// Throws [LoaderErrorReport] when one or more entries fail validation
  /// against the Phase 4.1 axes:
  /// - E101 unknown `kind` value
  /// - E102 `outputDir` missing or empty
  /// - E103 `outputDir` malformed, or non-string `schemaStubBodyMode` /
  ///   `fileLeadingComment`, or unknown `schemaStubBodyMode`
  /// - E104 `kind: data_source` with `outputDir != 'data'`
  /// - E201 resource-only axis present on a `data_source` entry
  ///
  /// Existing axis validation (paramOrder, customSlots, etc.) still throws
  /// [FormatException] eagerly for backwards compatibility with Phase 2.x
  /// callers; those failures short-circuit before the [LoaderErrorReport]
  /// is assembled.
  ///
  /// [only], when non-null, restricts the scan to that terraform type
  /// (and its `data_<type>.yaml` twin when present). Passing a
  /// `data_<type>` stem loads only that data-source file. Sibling yamls
  /// are not even opened, so an unstripped `wrap-promote` marker block
  /// in a peer file no longer aborts the load. Throws [StateError] if no
  /// matching file exists.
  LoadedOverrides load({String? only}) {
    final dir = Directory(rootDir);
    if (!dir.existsSync()) {
      throw StateError(
        'YamlOverrideLoader: rootDir does not exist: $rootDir',
      );
    }
    final List<File> yamlFiles;
    if (only != null) {
      yamlFiles = _resolveOnlyFiles(only);
    } else {
      yamlFiles = dir
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
        // Empty yaml: outputDir is required (E102) — there is no node to
        // attach a span to, so we point at line 1, column 1.
        errors.add(LoaderError(
          code: LoaderErrorCode.outputDirRequired,
          message: 'outputDir is required, e.g. "outputDir: pubsub".',
          filePath: file.path,
          line: 1,
          column: 1,
          hint: 'Add `outputDir: <dir>` as a top-level key.',
        ));
        continue;
      }
      if (yaml is! YamlMap) {
        throw FormatException(
          '${file.path}: top-level must be a YAML mapping',
        );
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

    return LoadedOverrides(
      resources: resources,
      dataSources: dataSources,
    );
  }

  /// Resolves `--only` to one or two yaml files: the exact stem, plus the
  /// `data_<stem>` twin when [only] is a bare terraform type.
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

  /// Parses one yaml mapping into a [WrapperOverride].
  ///
  /// Phase 4.1 axes (kind / outputDir / schemaStubBodyMode /
  /// fileLeadingComment) are routed through [errors] via [LoaderError] so
  /// the loader can collect every failure in one pass. Legacy axes still
  /// throw [FormatException] eagerly (preserved from Phase 2.x).
  ///
  /// Returns `null` when a fatal Phase 4.1 axis violation prevents
  /// constructing a [WrapperOverride] (e.g. unknown kind value); the entry
  /// is dropped from the [LoadedOverrides] in that case.
  WrapperOverride? _parseOverride(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    for (final key in yaml.keys) {
      if (key == 'classDocComment') {
        // Retired axis (2026-07 doc wave): fail loudly with the migration
        // path instead of the generic unknown-key error, so the axis cannot
        // quietly come back.
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
    final nestedTypeExcludes =
        _readStringList(yaml, 'nestedTypeExcludes', filePath);
    if (nestedTypeExcludes != null && !deriveNestedTypes) {
      // Mirrors the retired-`classDocComment` style above: fail loudly at
      // load time instead of silently accepting dead config the emitter
      // would never consult (`nestedTypeExcludes` only has an effect inside
      // the `deriveNestedTypes` codegen gate).
      throw FormatException(
        '$filePath: nestedTypeExcludes requires deriveNestedTypes: true. Set '
        '`deriveNestedTypes: true` on this override, or remove '
        '`nestedTypeExcludes`.',
      );
    }
    final kind = _parseKind(yaml, filePath, errors);
    if (kind == null) return null;
    final outputDir = _parseOutputDir(yaml, filePath, errors);
    final schemaStubBodyMode = _parseSchemaStubBodyMode(yaml, filePath, errors);
    final fileLeadingComment = _parseFileLeadingComment(yaml, filePath, errors);

    // E104: data sources must live under "data/" — keeps the wrap pipeline's
    // fan-out predictable and matches the hand-written `data/` directory.
    if (kind == WrapperOverrideKind.dataSource &&
        outputDir != null &&
        outputDir != 'data') {
      final node = yaml.nodes['outputDir']!;
      final span = node.span;
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirMismatchForDataSource,
        message: 'data sources must live under "data/" directory '
            '(got "$outputDir").',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
    }

    // E201: data sources reject resource-only axes. Listed axes are the ones
    // the data source emitter has no slot for; surfacing them at load time
    // beats silently dropping verbatim Dart at emit time.
    //
    // Plan 5.X (v0.5.0-dev): `schemaStubComment` is no longer a recognized
    // top-level key (its host stub class is retired), so it's already
    // rejected by the top-level allowed-keys check above — keeping it out
    // of this resource-only list avoids a duplicate / unreachable branch.
    if (kind == WrapperOverrideKind.dataSource) {
      const resourceOnlyAxes = <String>[
        'prelude',
        'customSlots',
        'deprecatedParams',
      ];
      for (final axis in resourceOnlyAxes) {
        final axisNode = yaml.nodes[axis];
        if (axisNode != null) {
          final span = axisNode.span;
          errors.add(LoaderError(
            code: LoaderErrorCode.axisNotAllowedForDataSource,
            message: 'axis "$axis" is not allowed for kind: data_source.',
            filePath: filePath,
            line: span.start.line + 1,
            column: span.start.column + 1,
            hint: 'Allowed axes for data sources: kind, outputDir, '
                'schemaStubBodyMode, fileLeadingComment, '
                'paramOrder, argMapOrder, requiredParams, '
                'dartTypeOverrides, extraImports, extraGetters.',
          ));
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
      // Plan 5.X: `schemaStubComment` is retired — no read here.
      requiredParams: _readStringList(yaml, 'requiredParams', filePath),
      dartTypeOverrides: _readStringMap(yaml, 'dartTypeOverrides', filePath),
      deprecatedParams: _readStringMap(yaml, 'deprecatedParams', filePath),
      extraImports: _readStringList(yaml, 'extraImports', filePath),
      extraSensitiveFields:
          _readStringList(yaml, 'extraSensitiveFields', filePath),
      prelude: _readString(yaml, 'prelude', filePath),
      deriveEnums: _readBool(yaml, 'deriveEnums', filePath) ?? false,
      deriveOutputGetters:
          _readBool(yaml, 'deriveOutputGetters', filePath) ?? false,
      deriveClassDoc: _readBool(yaml, 'deriveClassDoc', filePath) ?? false,
      curatedDoc: _readString(yaml, 'curatedDoc', filePath),
      customSlots: _readCustomSlots(yaml, filePath),
      deriveNestedTypes: deriveNestedTypes,
      nestedTypeExcludes: nestedTypeExcludes,
    );
  }

  /// Resolves the `kind` axis. Default: [WrapperOverrideKind.resource].
  ///
  /// Returns `null` (and appends an [LoaderErrorCode.unknownKind] entry to
  /// [errors]) when the value is neither `resource` nor `data_source`.
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
      errors.add(LoaderError(
        code: LoaderErrorCode.unknownKind,
        message: 'kind must be a string ("resource" or "data_source"); '
            'got ${v.runtimeType}.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
      return null;
    }
    switch (v) {
      case 'resource':
        return WrapperOverrideKind.resource;
      case 'data_source':
        return WrapperOverrideKind.dataSource;
    }
    final span = node.span;
    errors.add(LoaderError(
      code: LoaderErrorCode.unknownKind,
      message: 'unknown kind "$v". Allowed: resource, data_source.',
      filePath: filePath,
      line: span.start.line + 1,
      column: span.start.column + 1,
      hint: 'Set `kind: resource` or `kind: data_source`.',
    ));
    return null;
  }

  /// Resolves the `outputDir` axis. Strict required (Phase 4.1):
  ///
  /// - Missing or empty -> [LoaderErrorCode.outputDirRequired] (E102),
  ///   pointing at line 1 / column 1 when missing entirely or at the value
  ///   span when the string is empty / whitespace.
  /// - Non-string value -> [LoaderErrorCode.outputDirInvalid] (E103) at the
  ///   value span.
  /// - Contains `/`, `\`, equals `..` or `.` -> E103 at the value span. The
  ///   value must be a single POSIX directory name; nested paths and parent
  ///   refs are forbidden so the wrap pipeline can join paths predictably.
  ///
  /// Returns `null` when validation fails (caller drops the entry).
  String? _parseOutputDir(
    YamlMap yaml,
    String filePath,
    List<LoaderError> errors,
  ) {
    final node = yaml.nodes['outputDir'];
    if (node == null) {
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirRequired,
        message: 'outputDir is required, e.g. "outputDir: pubsub".',
        filePath: filePath,
        line: 1,
        column: 1,
        hint: 'Add `outputDir: <dir>` as a top-level key.',
      ));
      return null;
    }
    final v = node.value;
    final span = node.span;
    if (v is! String) {
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirInvalid,
        message: 'outputDir must be a string; got ${v.runtimeType}.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
      return null;
    }
    final trimmed = v.trim();
    if (trimmed.isEmpty) {
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirRequired,
        message: 'outputDir is required, e.g. "outputDir: pubsub".',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
        hint: 'Add `outputDir: <dir>` as a top-level key.',
      ));
      return null;
    }
    if (trimmed.contains('/') ||
        trimmed.contains(r'\') ||
        trimmed == '..' ||
        trimmed == '.') {
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirInvalid,
        message: 'outputDir must be a single directory name '
            r'(no /, \, .., or .). Got "'
            '$trimmed".',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
      return null;
    }
    return trimmed;
  }

  /// Resolves the `schemaStubBodyMode` axis. Default:
  /// [SchemaStubBodyMode.nosuchmethod].
  ///
  /// Strict (Phase 4.1):
  /// - Non-string value -> [LoaderErrorCode.outputDirInvalid] (E103, reused
  ///   for axis-value-shape errors per Task 4 plan) at the value span.
  /// - Unknown string -> same E103 at the value span; allowed values are
  ///   `nosuchmethod` and `bare`.
  ///
  /// Falls back to [SchemaStubBodyMode.nosuchmethod] when an error is
  /// recorded so downstream emitter wiring stays type-safe; the
  /// [LoaderErrorReport] aborts the run before the value is consumed.
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
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirInvalid,
        message: 'schemaStubBodyMode must be a string '
            '("nosuchmethod" or "bare"); got ${v.runtimeType}.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
      return SchemaStubBodyMode.nosuchmethod;
    }
    switch (v) {
      case 'nosuchmethod':
        return SchemaStubBodyMode.nosuchmethod;
      case 'bare':
        return SchemaStubBodyMode.bare;
    }
    errors.add(LoaderError(
      code: LoaderErrorCode.outputDirInvalid,
      message: 'unknown schemaStubBodyMode "$v". '
          'Allowed: nosuchmethod, bare.',
      filePath: filePath,
      line: span.start.line + 1,
      column: span.start.column + 1,
      hint: 'Set `schemaStubBodyMode: nosuchmethod` or '
          '`schemaStubBodyMode: bare`.',
    ));
    return SchemaStubBodyMode.nosuchmethod;
  }

  /// Resolves the `fileLeadingComment` axis. Default: `null` (no comment).
  ///
  /// Strict (Phase 4.1):
  /// - Non-string value -> [LoaderErrorCode.outputDirInvalid] (E103, reused
  ///   for axis-value-shape errors per Task 4 plan) at the value span.
  ///
  /// The block-scalar parsing (e.g. `|-` chomp) is delegated to the YAML
  /// library, so the returned string preserves whatever line breaks the
  /// author wrote (typically `\n` between lines, no trailing newline when
  /// `|-` is used). The emitter is responsible for prefixing each line
  /// with `// ` at write time.
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
      errors.add(LoaderError(
        code: LoaderErrorCode.outputDirInvalid,
        message: 'fileLeadingComment must be a string (block scalar); '
            'got ${v.runtimeType}.',
        filePath: filePath,
        line: span.start.line + 1,
        column: span.start.column + 1,
      ));
      return null;
    }
    return v;
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
