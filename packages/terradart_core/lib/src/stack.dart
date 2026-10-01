import 'dart:convert';
import 'dart:io';

import 'app_constant.dart';
import 'app_exports.dart';
import 'dart_source.dart';
import 'dart_value_type.dart';
import 'data.dart';
import 'duplicate_resource_error.dart';
import 'module_call.dart';
import 'resource.dart';
import 'tf_arg.dart';
import 'tf_moved.dart';
import 'tf_output.dart';
import 'tf_variable.dart';
import 'synth/app_exports_emitter.dart';
import 'synth/stack_synth.dart';
import 'synth/stack_validator.dart';
import 'synth/synth_issue.dart';

/// Lightweight backend hook. Core ships `GcsBackend`, `S3Backend`, and
/// `LocalBackend`; anything else implements this interface in the caller.
/// The `Stack` only stores the value and exposes a discriminator for
/// synth's `terraform { backend ... }` emitter.
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

  /// Provider alias (`provider "google" { alias = "eu" }`), or `null` for
  /// the default configuration of [providerName].
  ///
  /// Register one provider per configuration: at most one default and any
  /// number of aliases per name. Synth then emits every configuration of the
  /// name as a list under `provider.<providerName>`, the aliased ones
  /// carrying their `alias`, and a resource selects one with the `provider`
  /// meta-argument (`provider: 'google.eu'`). Aliases share the name's
  /// `required_providers` entry, so [source] and [versionConstraint] must
  /// agree across them.
  String? get alias;

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
}

/// User-extended IaC composition root.
///
/// User subclasses construct resources inside their own constructor and
/// register them via `add`. `synth()` returns the in-memory
/// [SynthResult] bundle (Terraform JSON map plus the generated Dart source
/// for [appExports]); `writeTo(outDir)` persists that bundle to disk.
///
/// Coordination surface for synth and concrete providers:
///
/// - `addOutput(...)` / `outputs` — `output "<name>" { ... }` blocks, and
///   the getters of the generated `<name>Outputs` reader in the
///   [appExports] file, which the app builds from `terraform output -json`
///   (`fromTerraformJson`) or its environment (`fromEnvironment`).
/// - `addConstant(...)` / `constants` — `static const` values of the
///   generated `<name>Constants` class, written to the [appExports] file.
/// - `setRequiredVersion(...)` / `requiredVersion` — overrides the default
///   `>= 1.11.0` Terraform version constraint (Terraform 1.11+ is required
///   for write-only argument support).
/// - `setBackend(...)` / `backend` — late binding for backend config
///   (alternative to passing it via constructor; useful when backend
///   config depends on values resolved during stack construction).
/// - `addVariable(...)` / `variables` — `variable "<name>" { ... }`
///   declarations backing the `TfArg.variable` references in this
///   stack. `addExternalVariable(...)` / `externalVariables` covers
///   names declared in a hand-written file instead.
/// - `addExternalBlock(...)` / `externalBlocks` — resources, data sources
///   and module calls a hand-written file declares, which this stack may
///   reference without holding.
/// - `validate()` — every [SynthIssue] that keeps the stack from
///   synthesizing; `synth()` throws them as one [SynthException].
/// - `addMoved(...)` / `moved` — `moved { from = ... to = ... }` entries
///   that carry existing state across a resource rename.
/// - `addModule(...)` / `modules` — `module "<name>" { ... }` calls, whose
///   outputs other resources read through [ModuleCall.output].
abstract base class Stack {
  Stack({
    required List<StackProvider> providers,
    StackBackend? backend,
    this.appExports,
    this.devMode = false,
  }) : _providers = List<StackProvider>.unmodifiable(providers),
       _backend = backend;

  /// When true, synth-time injection flips `deletion_protection` to
  /// `false` on any registered resource whose
  /// `Resource.supportsDeletionProtection` is true and that did not
  /// explicitly set the field. Intended for dogfood / sample apps;
  /// production stacks leave this false (the provider default of
  /// `true` then applies).
  final bool devMode;

  /// The Dart file application code imports, holding the [constants].
  /// `null` writes no file, and then [addConstant] throws.
  final AppExports? appExports;

  final List<StackProvider> _providers;

  // Insertion-ordered for deterministic JSON emission.
  final Map<_DedupKey, Resource> _resources = {};
  final Map<_DedupKey, Data> _dataSources = {};
  final Map<String, ModuleCall> _modules = {};

  // ---- Coordination state (synth consumes) --------------------------------

  /// Mutable so `setBackend` can replace it post-construction.
  StackBackend? _backend;

  /// Insertion-ordered so the generated file and `output` block are stable.
  final Map<String, AppConstant<Object?>> _constants = {};
  final Map<String, TfOutput<Object?>> _outputs = {};

  /// Insertion-ordered so the emitted `variable` block is stable.
  final Map<String, TfVariable> _variables = {};

  /// Names declared outside synth output — see [addExternalVariable].
  final Set<String> _externalVariables = {};

  /// Block addresses declared outside synth output — see
  /// [addExternalBlock].
  final Set<String> _externalBlocks = {};

  /// Insertion-ordered so the emitted `moved` list is stable.
  final List<TfMoved> _moved = [];

  /// Default Terraform version constraint (1.11+ is required for
  /// write-only argument support).
  String _requiredVersion = '>= 1.11.0';

  // ---- Public read-only views (synth reads these) ------------------------

  List<StackProvider> get providers => _providers;
  StackBackend? get backend => _backend;
  List<Resource> get resources =>
      List<Resource>.unmodifiable(_resources.values);
  List<Data> get dataSources => List<Data>.unmodifiable(_dataSources.values);

  /// The `module` calls registered with [addModule], in registration order.
  List<ModuleCall> get modules =>
      List<ModuleCall>.unmodifiable(_modules.values);

  /// The constants registered with [addConstant], by name, in registration
  /// order.
  Map<String, AppConstant<Object?>> get constants =>
      Map<String, AppConstant<Object?>>.unmodifiable(_constants);

  /// The outputs registered with [addOutput], by name, in registration
  /// order.
  Map<String, TfOutput<Object?>> get outputs =>
      Map<String, TfOutput<Object?>>.unmodifiable(_outputs);

  /// Read-only map of declared Terraform variables, keyed by variable
  /// name. Insertion order is preserved for deterministic output.
  Map<String, TfVariable> get variables =>
      Map<String, TfVariable>.unmodifiable(_variables);

  /// Read-only view of variable names declared outside synth output.
  /// Synth accepts references to these but emits no block for them.
  Set<String> get externalVariables =>
      Set<String>.unmodifiable(_externalVariables);

  /// Read-only view of block addresses declared outside synth output.
  /// Synth accepts references to these but emits nothing for them.
  Set<String> get externalBlocks => Set<String>.unmodifiable(_externalBlocks);

  /// The `moved` entries registered with [addMoved], in registration order.
  List<TfMoved> get moved => List<TfMoved>.unmodifiable(_moved);

  /// Terraform version constraint for `terraform { required_version }`.
  /// Defaults to `'>= 1.11.0'`.
  String get requiredVersion => _requiredVersion;

  // ---- Coordination mutators ---------------------------------------------

  /// Declare `output "<name>" { value = <value> }`.
  ///
  /// ```dart
  /// addOutput('orders_topic_id', topic.id);
  /// addOutput('service_url', service.uri, description: 'Cloud Run URL');
  /// addOutput('db_password', secret.secretData, sensitive: true);
  /// ```
  ///
  /// With [appExports] set, a non-sensitive output is also a getter of the
  /// generated `<name>Outputs` reader, named in lowerCamelCase
  /// (`ordersTopicId`) and read from the environment variable in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID`). A sensitive output has no
  /// getter: read a secret from its secret store instead.
  ///
  /// Throws [ArgumentError] when [name] is not a Terraform identifier, is already
  /// registered, or [value] reads a sensitive field and [sensitive] is
  /// `false` (Terraform rejects that output at plan); and, with [appExports]
  /// set, when its getter is not a Dart identifier or its getter or
  /// environment variable is another output's.
  void addOutput<T>(
    String name,
    TfArg<T> value, {
    String? description,
    bool sensitive = false,
  }) {
    if (!isTerraformIdentifier(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'must be a Terraform identifier (letters, digits, underscores and '
            'hyphens; not starting with a digit), e.g. "orders_topic_id"',
      );
    }
    if (_outputs.containsKey(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Output "$name" is already registered on this Stack.',
      );
    }
    if (!sensitive) {
      final field = _sensitiveFieldRead(value);
      if (field != null) {
        throw ArgumentError.value(
          name,
          'name',
          'Output "$name" reads the sensitive field $field; pass '
              'sensitive: true.',
        );
      }
    }
    if (appExports != null && !sensitive) _checkReaderNames(name);
    _outputs[name] = TfOutput<T>(
      value,
      description: description,
      sensitive: sensitive,
    );
  }

  /// The environment of an app that reads this Stack's outputs with the
  /// generated reader's `fromEnvironment`: the variable of each
  /// non-sensitive output registered so far (or of each output in [only]),
  /// in registration order, and its value — the output's value for a
  /// `String` output, its JSON for any other.
  ///
  /// ```dart
  /// addOutput('orders_topic_id', topic.id);
  /// final service = add(GoogleCloudRunV2Service(
  ///   localName: 'orders',
  ///   name: .literal('orders'),
  ///   location: .literal('asia-northeast1'),
  ///   template: CloudRunV2ServiceTemplate(containers: [
  ///     .new(
  ///       image: .literal(image),
  ///       env: [
  ///         for (final MapEntry(:key, :value) in outputEnvironment().entries)
  ///           .new(
  ///             name: .literal(key),
  ///             source: .value(value),
  ///           ),
  ///       ],
  ///     ),
  ///   ]),
  /// ));
  /// addOutput('service_uri', service.uri);
  /// ```
  ///
  /// Register the outputs that read the service itself after the call: a
  /// resource whose environment references its own attributes is a
  /// Terraform cycle.
  ///
  /// Throws [StateError] when the Stack has no [appExports] file (no reader
  /// reads the environment), and [ArgumentError] when a name in [only] is
  /// not a registered non-sensitive output, or an output has no environment
  /// value (a `null` literal, or a non-`String` output whose JSON is not one
  /// interpolation).
  Map<String, TfArg<String>> outputEnvironment({Iterable<String>? only}) {
    if (appExports == null) {
      throw StateError(
        'outputEnvironment() is read by the generated reader: pass '
        "appExports: AppExports('lib/generated/<stack>.g.dart') to the "
        'Stack constructor.',
      );
    }
    final names =
        only?.toList() ??
        [
          for (final MapEntry(:key, :value) in _outputs.entries)
            if (!value.sensitive) key,
        ];
    for (final name in names) {
      final o = _outputs[name];
      if (o == null || o.sensitive) {
        throw ArgumentError.value(
          name,
          'only',
          o == null
              ? 'Output "$name" is not registered on this Stack (yet).'
              : 'Output "$name" is sensitive; read it from its secret store.',
        );
      }
    }
    return Map.fromEntries(
      names.map((name) => AppExportsEmitter.environmentEntry(this, name)),
    );
  }

  /// Members every generated reader has, which no getter may shadow.
  static const _readerMembers = {
    'hashCode',
    'runtimeType',
    'toString',
    'noSuchMethod',
  };

  /// Throws when the output [name] would not map to its own getter and
  /// environment variable in the generated reader.
  void _checkReaderNames(String name) {
    final getter = outputGetterName(name);
    if (!isDartIdentifier(getter) || _readerMembers.contains(getter)) {
      throw ArgumentError.value(
        name,
        'name',
        'Output "$name" would be the reader getter "$getter", which is not a '
            'usable Dart identifier; rename the output, e.g. "${name}_value".',
      );
    }
    final variable = outputEnvironmentName(name);
    for (final MapEntry(key: other, value: o) in _outputs.entries) {
      if (o.sensitive) continue;
      if (outputGetterName(other) == getter) {
        throw ArgumentError.value(
          name,
          'name',
          'Outputs "$other" and "$name" would both be the reader getter '
              '"$getter"; rename one.',
        );
      }
      if (outputEnvironmentName(other) == variable) {
        throw ArgumentError.value(
          name,
          'name',
          'Outputs "$other" and "$name" would both be read from the '
              'environment variable $variable; rename one.',
        );
      }
    }
  }

  /// `owner.attr` when [value] references a field its owner marks
  /// sensitive, else `null`.
  static String? _sensitiveFieldRead(TfArg<Object?> value) {
    final (owner, attr) = switch (value) {
      AttributeRef(:final owner, :final attr) => (owner, attr),
      DataRef(:final owner, :final attr) => (owner, attr),
      _ => (null, null),
    };
    // ignore: invalid_use_of_protected_member
    if (owner is Resource && owner.sensitiveFields.contains(attr)) {
      return '${owner.tfAddress}.$attr';
    }
    return null;
  }

  /// Declare `static const <T> <name>` in the generated `<name>Constants`
  /// class of the [appExports] file.
  ///
  /// ```dart
  /// addConstant('ordersTopicName', .ref(topic.name));
  /// addConstant('maxRetries', .value(5));
  /// addConstant('apiBase', .fromEnvironment('API_BASE_URL'));
  /// ```
  ///
  /// Throws [StateError] when the Stack has no [appExports] file, and
  /// [ArgumentError] when [name] is not a public Dart identifier or is
  /// already registered, [T] is not a supported type, a `.value` is not a
  /// value of [T], or a `.ref` names no single attribute. Whether a `.ref`
  /// attribute is a literal is checked at synth, once every resource is
  /// registered.
  void addConstant<T>(String name, AppConstant<T> constant) {
    if (appExports == null) {
      throw StateError(
        'addConstant("$name") needs a file to write the constant to: pass '
        "appExports: AppExports('lib/generated/<stack>.g.dart') to the "
        'Stack constructor.',
      );
    }
    if (!isDartIdentifier(name) || name.startsWith('_')) {
      throw ArgumentError.value(
        name,
        'name',
        'must be a public Dart identifier (letters, digits and underscores; '
            'not a reserved word or private), e.g. "ordersTopicName"',
      );
    }
    if (_constants.containsKey(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Constant "$name" is already registered on this Stack.',
      );
    }
    final type = constant.valueType;
    if (type == null) {
      throw ArgumentError.value(
        constant,
        'constant',
        'Constant "$name" has type $T; supported: $supportedDartValueTypes.',
      );
    }
    switch (constant) {
      case ValueConstant(:final value) when !type.conforms(value):
        throw ArgumentError.value(
          value,
          'constant',
          'Constant "$name" value is not a ${type.source} with a Dart '
              'literal (non-finite numbers have none).',
        );
      case RefConstant(ref: ResourceRef()):
        throw ArgumentError.value(
          constant,
          'constant',
          'Constant "$name" references a whole resource; reference one '
              'attribute, e.g. .ref(topic.name).',
        );
      default:
        break;
    }
    _constants[name] = constant;
  }

  /// Declare a `variable "<name>" { ... }` block, making
  /// `TfArg.variable('<name>')` references in this stack resolvable.
  /// Order is preserved for deterministic output. Throws
  /// [ArgumentError] if `name` is not a Terraform identifier or is already
  /// declared.
  void addVariable(String name, TfVariable variable) {
    _checkVariableName(name);
    if (_variables.containsKey(name) || _externalVariables.contains(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Variable "$name" is already declared on this Stack.',
      );
    }
    _variables[name] = variable;
  }

  /// Record a `moved { from = <from> to = <to> }` block: the state object
  /// at [from] now belongs to the resource at [to], so a rename (or a
  /// `count` / `for_each` instance unrolled into its own resource) keeps
  /// its state instead of being destroyed and re-created. Addresses are
  /// written as Terraform writes them (`google_pubsub_topic.orders[0]`,
  /// `module.events.google_pubsub_topic.orders`).
  ///
  /// Throws [ArgumentError] when either address is empty, both are the
  /// same, or [from] was already recorded. Synth checks that [to] names a
  /// resource of this Stack (or lies inside a `module.` call).
  void addMoved(String from, String to) {
    if (from.trim().isEmpty) {
      throw ArgumentError.value(from, 'from', 'must not be empty');
    }
    if (to.trim().isEmpty) {
      throw ArgumentError.value(to, 'to', 'must not be empty');
    }
    if (from == to) {
      throw ArgumentError.value(to, 'to', 'must differ from "from"');
    }
    if (_moved.any((m) => m.from == from)) {
      throw ArgumentError.value(
        from,
        'from',
        'A moved block from "$from" is already recorded on this Stack.',
      );
    }
    _moved.add(TfMoved(from: from, to: to));
  }

  /// Accept `TfArg.variable('<name>')` references to a variable declared
  /// in a hand-written file beside the generated `main.tf.json`, without
  /// emitting a block for it.
  ///
  /// Terraform merges every `.tf` / `.tf.json` file in the module
  /// directory, so a hand-written `variables.tf` is a legitimate way to
  /// declare inputs — and the only way to express what [TfVariable] does
  /// not model, such as `validation { ... }` blocks. Emitting a second
  /// declaration for the same name would be a duplicate-variable error,
  /// so this registers the name for the reference check alone.
  ///
  /// Prefer [addVariable] when the declaration can live in Dart: it keeps
  /// the whole module in one place, and the block travels with the stack.
  ///
  /// Throws [ArgumentError] if `name` is not a Terraform identifier or is
  /// already registered by either [addVariable] or this method.
  void addExternalVariable(String name) {
    _checkVariableName(name);
    if (_variables.containsKey(name) || _externalVariables.contains(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Variable "$name" is already declared on this Stack.',
      );
    }
    _externalVariables.add(name);
  }

  static void _checkVariableName(String name) {
    if (isTerraformIdentifier(name)) return;
    throw ArgumentError.value(
      name,
      'name',
      'must be a Terraform identifier (letters, digits, underscores and '
          'hyphens; not starting with a digit), e.g. "db_password"',
    );
  }

  /// Accept references to a block declared in a hand-written file beside
  /// the generated `main.tf.json` — `google_pubsub_topic.legacy`,
  /// `data.google_project.current` or `module.network` — without emitting
  /// it.
  ///
  /// Synth reports a reference to a block that is not registered on the
  /// Stack as an [UnregisteredReference]: usually a resource that was
  /// built but never passed to [add]. A block Terraform reads from another
  /// file of the module directory is the legitimate exception, the
  /// counterpart of [addExternalVariable] for variables.
  ///
  /// Throws [ArgumentError] when [address] is not a block address
  /// (`<type>.<name>`, `data.<type>.<name>` or `module.<name>`) or is
  /// already registered.
  void addExternalBlock(String address) {
    if (!_blockAddress.hasMatch(address)) {
      throw ArgumentError.value(
        address,
        'address',
        'must be a block address: <type>.<name>, data.<type>.<name> or '
            'module.<name>',
      );
    }
    if (!_externalBlocks.add(address)) {
      throw ArgumentError.value(
        address,
        'address',
        'Block "$address" is already declared external on this Stack.',
      );
    }
  }

  static final RegExp _blockAddress = RegExp(
    r'^(?:data\.[A-Za-z][A-Za-z0-9_]*\.|module\.|'
    r'(?!data\.|module\.)[A-Za-z][A-Za-z0-9_]*\.)[A-Za-z_][A-Za-z0-9_-]*$',
  );

  /// Override the default `>= 1.11.0` version constraint.
  void setRequiredVersion(String constraint) => _requiredVersion = constraint;

  /// Late-bind backend (alternative to passing via constructor).
  /// Replaces any existing backend.
  void setBackend(StackBackend backend) => _backend = backend;

  // ---- Resource registration ---------------------------------------------

  /// Register a resource or data source. Returns the same instance for
  /// fluent assignment.
  ///
  /// Throws [ArgumentError] when its `localName` is not a Terraform
  /// identifier, and [DuplicateResourceError] when its address is already
  /// registered.
  T add<T extends Resource>(T block) {
    _checkLocalName(block.localName, block.tfAddress);
    final key = (
      kind: block.kind,
      type: block.terraformType,
      localName: block.localName,
    );
    if (_resources.containsKey(key) || _dataSources.containsKey(key)) {
      throw DuplicateResourceError(
        kind: block.kind,
        terraformType: block.terraformType,
        localName: block.localName,
      );
    }
    if (block is Data) {
      _dataSources[key] = block;
    } else {
      _resources[key] = block;
    }
    return block;
  }

  /// Register a `module "<localName>" { ... }` call. Returns the same
  /// instance, so the call site can read the module's outputs from it:
  ///
  /// ```dart
  /// final sa = addModule(ModuleCall(
  ///   localName: 'sa_bff',
  ///   source: '../modules/service_account',
  ///   inputs: {'account_id': .literal('app-bff-sa')},
  /// ));
  /// addOutput('bff_member', sa.output<String>('member'));
  /// ```
  ///
  /// Throws [DuplicateModuleError] when a call of the same
  /// [ModuleCall.localName] is already registered — Terraform addresses both
  /// as `module.<localName>`.
  T addModule<T extends ModuleCall>(T call) {
    _checkLocalName(call.localName, call.tfAddress);
    if (_modules.containsKey(call.localName)) {
      throw DuplicateModuleError(call.localName);
    }
    _modules[call.localName] = call;
    return call;
  }

  static void _checkLocalName(String localName, String address) {
    if (isTerraformIdentifier(localName)) return;
    throw ArgumentError.value(
      localName,
      'localName',
      '$address: must be a Terraform identifier (letters, digits, '
          'underscores and hyphens; not starting with a digit), e.g. '
          '"orders_topic"',
    );
  }

  /// Every [SynthIssue] that keeps this Stack from synthesizing, in Stack
  /// order — empty when [synth] would succeed. [synth] and [writeTo] run
  /// the same checks and throw them as one [SynthException]; call this to
  /// inspect them without the throw, e.g. in a test.
  ///
  /// ```dart
  /// void report(Stack stack) {
  ///   for (final issue in stack.validate()) {
  ///     print(issue);
  ///   }
  /// }
  /// ```
  List<SynthIssue> validate() => StackValidator.validate(this);

  /// Synthesise this Stack into an in-memory [SynthResult] bundle.
  ///
  /// Pure / side-effect-free: produces the Terraform JSON map plus the
  /// generated Dart source for [appExports] as values, without touching the
  /// filesystem. Use [writeTo] to persist the result to disk under a
  /// chosen output directory.
  ///
  /// Throws a [SynthException] listing every [SynthIssue] (see [validate])
  /// when the Stack cannot be synthesized.
  SynthResult synth() => StackSynth.synth(this);

  /// Synthesise this Stack and write the result to [outDir].
  ///
  /// Always writes `${outDir}/main.tf.json` with two-space indentation,
  /// creating [outDir] recursively if it does not exist. With [appExports]
  /// set, also writes the generated Dart file at its path (creating its
  /// parent directories), rewritten in full on every synth so a removed
  /// constant or output never survives in it. Synth runs before any write,
  /// so a failure leaves both files untouched.
  Future<void> writeTo(String outDir) async {
    final result = synth();

    await Directory(outDir).create(recursive: true);
    await File(
      '$outDir/main.tf.json',
    ).writeAsString(const JsonEncoder.withIndent('  ').convert(result.tfJson));

    final path = result.dartSourcePath;
    final source = result.dartSource;
    if (path != null && source != null) {
      final f = File(path);
      await f.parent.create(recursive: true);
      await f.writeAsString(source);
    }
  }
}

typedef _DedupKey = ({ResourceKind kind, String type, String localName});
