import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import '../codegen/codegen_entry.dart' as lib;
import 'exit_codes.dart';

/// Value object describing a parsed `terradart codegen` invocation.
///
/// Pure data. Validation lives in [CodegenCommand.run]; dispatch lives in
/// [CodegenExecutor].
class CodegenInvocation {
  const CodegenInvocation({
    required this.provider,
    required this.outputDir,
    this.providerVersion,
    this.services,
    this.source,
  });

  /// e.g. `hashicorp/google`. Required.
  final String provider;

  /// e.g. `5.32.0`. Null = use registry latest (stamped as empty banner).
  final String? providerVersion;

  /// Output directory for generated `.dart` files.
  final String outputDir;

  /// Optional service filter (e.g. `['pubsub', 'storage']`). Null = all
  /// services in the provider.
  final List<String>? services;

  /// Optional path to a local Magic Modules / schema source checkout.
  /// Null = let the generator clone it itself (not yet implemented in
  /// v0.0.x; the executor surfaces a `dataError` exit code when source is
  /// omitted).
  final String? source;
}

/// Indirection so the command can be tested without invoking real codegen.
abstract interface class CodegenExecutor {
  Future<int> run(CodegenInvocation invocation);
}

class CodegenCommand extends Command<int> {
  CodegenCommand({CodegenExecutor? executor})
      : _executor = executor ?? const _DefaultCodegenExecutor() {
    argParser
      ..addOption(
        'provider',
        abbr: 'p',
        help: 'Terraform provider id, e.g. "hashicorp/google". Required.',
        valueHelp: 'NAMESPACE/NAME',
      )
      ..addOption(
        'version',
        help: 'Provider version (e.g. 5.32.0). Defaults to registry latest.',
        valueHelp: 'SEMVER',
      )
      ..addOption(
        'output',
        abbr: 'o',
        help: 'Output directory for generated Dart files.',
        valueHelp: 'DIR',
        defaultsTo: 'terradart_generated',
      )
      ..addOption(
        'services',
        help: 'Comma-separated service filter (e.g. "pubsub,storage"). '
            'Default = generate every service the provider exposes.',
        valueHelp: 'svc1,svc2,...',
      )
      ..addOption(
        'source',
        help: 'Optional path to a local schema/MM YAML checkout. If '
            'omitted, the generator fetches it itself.',
        valueHelp: 'PATH',
      );
  }

  final CodegenExecutor _executor;

  @override
  String get name => 'codegen';

  @override
  String get description =>
      'Read a Terraform provider schema and emit terradart Dart bindings.';

  @override
  Future<int> run() async {
    final results = argResults!;
    final provider = results['provider'] as String?;
    if (provider == null || provider.isEmpty) {
      usageException('--provider is required.');
    }
    _validateProviderId(provider);

    final invocation = CodegenInvocation(
      provider: provider,
      providerVersion: results['version'] as String?,
      outputDir: results['output'] as String,
      services: _parseServices(results['services'] as String?),
      source: results['source'] as String?,
    );

    try {
      return await _executor.run(invocation);
    } on FormatException catch (e) {
      stderr.writeln('terradart codegen: input data error: ${e.message}');
      return CliExitCodes.dataError;
    } on FileSystemException catch (e) {
      stderr.writeln(
        'terradart codegen: filesystem error: ${e.message} (${e.path})',
      );
      return CliExitCodes.dataError;
    }
  }

  static final RegExp _providerIdPattern =
      RegExp(r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$');

  void _validateProviderId(String id) {
    if (!_providerIdPattern.hasMatch(id)) {
      usageException(
        'Invalid --provider "$id". Expected "namespace/name" with '
        'lowercase letters, digits, or hyphens (e.g. "hashicorp/google").',
      );
    }
  }

  static List<String>? _parseServices(String? raw) {
    if (raw == null || raw.trim().isEmpty) return null;
    final parts =
        raw.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
    return parts.isEmpty ? null : parts;
  }
}

/// Bridges the user-facing CLI flags to the library `runCodegen` API.
///
/// The library API takes a [schemaJsonPath] and a `Map<String, String>` of
/// MM YAML paths keyed by Terraform resource name. The CLI surfaces a more
/// user-friendly `--source` directory model. This executor expects
/// [CodegenInvocation.source] to point at a directory with the layout:
///
/// ```
/// <source>/
///   schema.json                     # terraform providers schema -json
///   mm/<resource_name>.yaml         # optional Magic Modules overrides
/// ```
///
/// The `--services` filter is applied as a substring match on Terraform
/// resource names (e.g. `pubsub` matches `google_pubsub_topic`).
class _DefaultCodegenExecutor implements CodegenExecutor {
  const _DefaultCodegenExecutor();

  @override
  Future<int> run(CodegenInvocation invocation) async {
    final source = invocation.source;
    if (source == null || source.isEmpty) {
      throw const FormatException(
        '--source is required in v0.0.x. Pass a directory containing '
        'schema.json (and optional mm/*.yaml). Automatic registry '
        'fetch is deferred to a future plan.',
      );
    }

    final schemaPath = p.join(source, 'schema.json');
    if (!File(schemaPath).existsSync()) {
      throw FormatException(
        'expected schema.json at "$schemaPath".',
      );
    }

    // Discover MM YAML files (`mm/<resource>.yaml`).
    final mmYamlPaths = <String, String>{};
    final mmDir = Directory(p.join(source, 'mm'));
    if (mmDir.existsSync()) {
      for (final entity in mmDir.listSync()) {
        if (entity is! File) continue;
        final base = p.basenameWithoutExtension(entity.path);
        final ext = p.extension(entity.path).toLowerCase();
        if (ext != '.yaml' && ext != '.yml') continue;
        mmYamlPaths[base] = entity.path;
      }
    }

    // Build optional resource filter from --services.
    Iterable<String>? onlyResources;
    final services = invocation.services;
    if (services != null && services.isNotEmpty) {
      // Read schema.json to discover resource names so we can filter by
      // service token without re-implementing the parser logic.
      final schemaSrc = await File(schemaPath).readAsString();
      final allResources = _DefaultCodegenExecutor.extractResourceNames(
        schemaSrc,
      );
      onlyResources = allResources.where((String r) {
        return services.any((svc) => _resourceMatchesService(r, svc));
      }).toList();
    }

    await lib.runCodegen(
      schemaJsonPath: schemaPath,
      mmYamlPaths: mmYamlPaths,
      outputDir: invocation.outputDir,
      providerVersion: invocation.providerVersion ?? '',
      onlyResources: onlyResources,
    );
    return CliExitCodes.success;
  }

  /// Extract resource keys from a `terraform providers schema -json`
  /// payload. We walk every `resource_schemas` map under each provider
  /// entry. Failure to parse yields an empty list so the caller can
  /// gracefully fall back to "no filter".
  @visibleForTesting
  static List<String> extractResourceNames(String schemaJson) {
    final names = <String>{};
    try {
      final root = jsonDecode(schemaJson);
      if (root is! Map) return const [];
      final providerSchemas = root['provider_schemas'];
      if (providerSchemas is! Map) return const [];
      for (final entry in providerSchemas.entries) {
        final value = entry.value;
        if (value is! Map) continue;
        final resources = value['resource_schemas'];
        if (resources is! Map) continue;
        for (final key in resources.keys) {
          if (key is String) names.add(key);
        }
      }
    } on FormatException {
      return const [];
    }
    return names.toList();
  }

  static bool _resourceMatchesService(String resource, String service) {
    // Match by underscore-bounded segment so "pubsub" matches
    // `google_pubsub_topic` but not `google_published_things`.
    final tokens = resource.split('_');
    return tokens.contains(service);
  }
}
