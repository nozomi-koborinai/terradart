import 'package:meta/meta.dart';

import 'app_export.dart';
import 'data.dart';
import 'duplicate_resource_error.dart';
import 'resource.dart';

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
/// register them via `add` / `addData`. `StackSynth.synth(stack)` walks the
/// internal collections to emit Terraform JSON.
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
abstract class Stack {
  Stack({
    required List<StackProvider> providers,
    StackBackend? backend,
  })  : _providers = List<StackProvider>.unmodifiable(providers),
        _backend = backend;

  final List<StackProvider> _providers;

  // Insertion-ordered for deterministic JSON emission.
  final Map<_DedupKey, Resource<dynamic>> _resources = {};
  final Map<_DedupKey, Data<dynamic>> _dataSources = {};

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
  List<Resource<dynamic>> get resources =>
      List<Resource<dynamic>>.unmodifiable(_resources.values);
  List<Data<dynamic>> get dataSources =>
      List<Data<dynamic>>.unmodifiable(_dataSources.values);

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
  T add<T extends Resource<dynamic>>(T resource) {
    if (resource is Data) {
      throw ArgumentError(
        'Use Stack.addData() to register a Data<S>, not Stack.add().',
      );
    }
    final key = _DedupKey(
      resource.kind,
      resource.terraformType,
      resource.localName,
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
  T addData<T extends Data<dynamic>>(T data) {
    final key = _DedupKey(data.kind, data.terraformType, data.localName);
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

  /// Synth entry point. Subclasses typically delegate to
  /// `StackSynth.synth(this)` and write the result to disk.
  ///
  /// `outDir`: filesystem directory for `.tf.json` output.
  Future<void> synth({required String outDir});
}

@immutable
final class _DedupKey {
  const _DedupKey(this.kind, this.type, this.localName);

  final ResourceKind kind;
  final String type;
  final String localName;

  @override
  bool operator ==(Object other) =>
      other is _DedupKey &&
      other.kind == kind &&
      other.type == type &&
      other.localName == localName;

  @override
  int get hashCode => Object.hash(kind, type, localName);
}
