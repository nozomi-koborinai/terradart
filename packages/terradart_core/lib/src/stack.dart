import 'dart:convert';
import 'dart:io';

import 'app_export.dart';
import 'data.dart';
import 'duplicate_resource_error.dart';
import 'resource.dart';
import 'synth/stack_synth.dart';

/// Lightweight backend hook — concrete classes (`GcsBackend`, `S3Backend`)
/// live in provider-specific packages. The core `Stack` only stores the
/// value and exposes a discriminator for synth's `terraform { backend ... }`
/// emitter.
abstract interface class StackBackend {
  /// Backend type tag, e.g. `'gcs'`, `'s3'`, `'local'`. Synth uses this
  /// as the JSON key under `terraform.backend.<type>`.
  String get backendType;

  /// Backend-specific config block contents (bucket, prefix, etc.).
  Map<String, Object?> toTfJson();
}

/// Coordination interface between `Stack` (in this package) and concrete
/// providers (e.g. `GoogleProvider` in `terradart_google`). Concrete
/// providers implement every getter using their baked-in constants from
/// Stage 2 codegen.
abstract interface class StackProvider {
  /// Short provider name, e.g. `'google'`. Used as the JSON key under
  /// `provider.<providerName>`.
  String get providerName;

  /// Source identifier in form `<namespace>/<name>`, e.g. `'hashicorp/google'`.
  /// `GoogleProvider` returns `kProviderSource`. Synth emits this under
  /// `terraform.required_providers.<providerName>.source`.
  String get source;

  /// Version constraint string, e.g. `'~> 7.0'`. `GoogleProvider` returns
  /// `kProviderVersionConstraint`. Synth emits this under
  /// `terraform.required_providers.<providerName>.version`.
  String get versionConstraint;

  /// Provider-specific config args (project, region, credentials, etc.) as
  /// JSON-encodable map. The returned map is copied verbatim into the
  /// `provider.<providerName>` block. Empty map for unparameterized
  /// providers.
  Map<String, Object?> get configArgs;

  /// Optional alias for multi-provider scenarios (e.g.
  /// `provider "google" { alias = "secondary" }`). v0.0.x returns null = no
  /// alias.
  String? get providerAlias => null;

  /// Backwards-compat shim for tests / earlier callers that invoked
  /// `toTfJson()` directly. Returns the same map as `configArgs`.
  Map<String, Object?> toTfJson() => configArgs;
}

/// User-extended IaC composition root.
///
/// User subclasses construct resources inside their own constructor and
/// register them via `add` / `addData`. `synth()` returns the in-memory
/// [SynthResult] bundle (Terraform JSON map plus any generated Dart
/// constants source); `writeTo(outDir)` persists that bundle to disk.
///
/// Coordination surface for synth and concrete providers:
///
/// - `addExport(...)` / `appExports` — register Dart-side constants for the
///   synth-time AppExport emitter to write into a `.dart` file.
/// - `setAppExportsOutputPath(...)` / `appExportsOutputPath` — destination
///   path for the generated `.dart` constants file.
/// - `setRequiredVersion(...)` / `requiredVersion` — overrides the default
///   `>= 1.11.0` Terraform version constraint (Terraform 1.11+ is required
///   for write-only argument support).
/// - `setBackend(...)` / `backend` — late binding for backend config
///   (alternative to passing it via constructor; useful when backend
///   config depends on values resolved during stack construction).
abstract base class Stack {
  Stack({
    required List<StackProvider> providers,
    StackBackend? backend,
    this.devMode = false,
  })  : _providers = List<StackProvider>.unmodifiable(providers),
        _backend = backend;

  /// When true, synth-time injection flips `deletion_protection` to
  /// `false` on any registered resource whose
  /// `Resource.$supportsDeletionProtection` is true and that did not
  /// explicitly set the field. (The capability getter is added in the
  /// next commit.) Intended for dogfood / sample apps; production
  /// stacks leave this false (the provider default of `true` then
  /// applies).
  final bool devMode;

  final List<StackProvider> _providers;

  // Insertion-ordered for deterministic JSON emission.
  final Map<_DedupKey, Resource> _resources = {};
  final Map<_DedupKey, Data> _dataSources = {};

  // ---- Coordination state (synth consumes) --------------------------------

  /// Mutable so `setBackend` can replace it post-construction.
  StackBackend? _backend;

  /// Synth's AppExport emitter reads this in Pass 2. Insertion-ordered
  /// map so generated `app_exports.g.dart` has stable output.
  final Map<String, AppExport> _appExports = {};

  String? _appExportsOutputPath;

  /// Default Terraform version constraint (1.11+ is required for
  /// write-only argument support).
  String _requiredVersion = '>= 1.11.0';

  // ---- Public read-only views (synth reads these) ------------------------

  List<StackProvider> get providers => _providers;
  StackBackend? get backend => _backend;
  List<Resource> get resources =>
      List<Resource>.unmodifiable(_resources.values);
  List<Data> get dataSources => List<Data>.unmodifiable(_dataSources.values);

  /// Read-only map of registered exports, keyed by user-supplied name.
  /// Insertion order is preserved for deterministic generated output.
  Map<String, AppExport> get appExports =>
      Map<String, AppExport>.unmodifiable(_appExports);

  /// Output path for synth's `.dart` constants file. Null means "do not
  /// emit a constants file" (the default behavior).
  String? get appExportsOutputPath => _appExportsOutputPath;

  /// Terraform version constraint for `terraform { required_version }`.
  /// Defaults to `'>= 1.11.0'`.
  String get requiredVersion => _requiredVersion;

  // ---- Coordination mutators ---------------------------------------------

  /// Register an export for synth's AppExport emitter. Order is preserved
  /// for deterministic output. Throws [ArgumentError] if `name` is already
  /// registered (catch typos / collisions early).
  void addExport(String name, AppExport export) {
    if (_appExports.containsKey(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'AppExport "$name" is already registered on this Stack.',
      );
    }
    _appExports[name] = export;
  }

  /// Set destination path for the generated `.dart` constants file.
  void setAppExportsOutputPath(String path) => _appExportsOutputPath = path;

  /// Override the default `>= 1.11.0` version constraint.
  void setRequiredVersion(String constraint) => _requiredVersion = constraint;

  /// Late-bind backend (alternative to passing via constructor).
  /// Replaces any existing backend.
  void setBackend(StackBackend backend) => _backend = backend;

  // ---- Resource registration ---------------------------------------------

  /// Register a resource. Returns the same instance for fluent assignment.
  T add<T extends Resource>(T resource) {
    if (resource is Data) {
      throw ArgumentError(
        'Use Stack.addData() to register a Data, not Stack.add().',
      );
    }
    final key = (
      kind: resource.kind,
      type: resource.terraformType,
      localName: resource.localName,
    );
    if (_resources.containsKey(key) || _dataSources.containsKey(key)) {
      throw DuplicateResourceError(
        kind: resource.kind,
        terraformType: resource.terraformType,
        localName: resource.localName,
      );
    }
    _resources[key] = resource;
    return resource;
  }

  /// Register a data source. Returns the same instance.
  T addData<T extends Data>(T data) {
    final key = (
      kind: data.kind,
      type: data.terraformType,
      localName: data.localName,
    );
    if (_resources.containsKey(key) || _dataSources.containsKey(key)) {
      throw DuplicateResourceError(
        kind: data.kind,
        terraformType: data.terraformType,
        localName: data.localName,
      );
    }
    _dataSources[key] = data;
    return data;
  }

  /// Synthesise this Stack into an in-memory [SynthResult] bundle.
  ///
  /// Pure / side-effect-free: produces the Terraform JSON map plus any
  /// generated Dart constants source as values, without touching the
  /// filesystem. Use [writeTo] to persist the result to disk under a
  /// chosen output directory.
  ///
  /// `stackName` overrides the generated Dart class name when AppExports
  /// are emitted. Defaults to the runtime type name of the Stack
  /// subclass (e.g. `OrdersStack` → `OrdersStackExports`).
  SynthResult synth({String? stackName}) =>
      StackSynth.synth(this, stackName: stackName);

  /// Synthesise this Stack and write the result to [outDir].
  ///
  /// Always writes `${outDir}/main.tf.json` with two-space indentation,
  /// creating [outDir] recursively if it does not exist. When
  /// AppExports produced Dart constants AND
  /// [setAppExportsOutputPath] was called, also writes the generated
  /// constants file at that path (creating its parent directories
  /// recursively).
  ///
  /// Throws [StateError] when exports were registered via [addExport]
  /// but no output path was set via [setAppExportsOutputPath] — the
  /// generated constants would otherwise be silently dropped.
  Future<void> writeTo(String outDir) async {
    final result = synth();

    // Guard before any I/O so the failure mode is atomic — a writeTo call
    // that throws StateError must NOT have produced a partial main.tf.json
    // on disk. Otherwise users see a confusing tf-out/ directory next to
    // the exception and assume the synth half-succeeded.
    if (result.dartConstants != null && result.dartConstantsPath == null) {
      throw StateError(
        'AppExport constants were registered (addExport called) '
        'but no output path was set. Call '
        'setAppExportsOutputPath() in your Stack constructor '
        'before writeTo().',
      );
    }

    await Directory(outDir).create(recursive: true);
    await File('$outDir/main.tf.json').writeAsString(
      const JsonEncoder.withIndent('  ').convert(result.tfJson),
    );

    if (result.dartConstants != null) {
      final f = File(result.dartConstantsPath!);
      await f.parent.create(recursive: true);
      await f.writeAsString(result.dartConstants!);
    }
  }
}

typedef _DedupKey = ({ResourceKind kind, String type, String localName});
