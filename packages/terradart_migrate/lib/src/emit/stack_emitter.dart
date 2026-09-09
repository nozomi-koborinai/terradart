/// Emits one Terraform module as a Dart `Stack`.
library;

import 'package:terradart_appwrite/provider.dart'
    show kAppwriteProviderVersionConstraint;
import 'package:terradart_cloudflare/provider.dart'
    show kCloudflareProviderVersionConstraint;
import 'package:terradart_core/terradart_core.dart' show ModuleCall, TfTimeouts;
import 'package:terradart_google/provider.dart' show kProviderVersionConstraint;
import 'package:terradart_google_beta/provider.dart'
    show kBetaProviderVersionConstraint;
import 'package:terradart_hcl/terradart_hcl.dart';

import '../migrate_manifest.dart';
import '../report.dart';
import 'blocker.dart';
import 'body_map.dart';
import 'context.dart';
import 'dart_literal.dart';
import 'expand.dart';
import 'module_wrapper.dart';
import 'naming.dart';
import 'tf_expr.dart';
import 'value_emitter.dart';

/// One statement of the Stack constructor body, tagged with the block it
/// came from so `--merge-envs` can line two environments' bodies up.
final class StackStatement {
  const StackStatement({
    required this.tag,
    required this.text,
    this.uses = const {},
    this.declaresLocal = false,
    this.dartType,
  });

  /// What the statement stands for: a block address
  /// (`google_pubsub_topic.orders`, `module.sa`), `variable.<name>`,
  /// `output.<name>`, `moved:<statement>`, `terraform.required_version`.
  /// Two environments that produce the same tag produce the same statement,
  /// or the merge refuses.
  final String tag;

  /// The Dart source: one statement, or one `//` comment line.
  final String text;

  /// Addresses whose Dart local this statement reads.
  final Set<String> uses;

  /// True when the statement declares its own block's Dart local
  /// (`final orders = add(...)`).
  final bool declaresLocal;

  /// The Dart type of that local (`GooglePubsubTopic`), for a merged Stack
  /// that has to declare it ahead of the `if` that assigns it.
  final String? dartType;
}

/// The Dart source of a migrated module: the Stack class body pieces the
/// caller assembles into files, plus its report.
final class EmittedStack {
  const EmittedStack({
    required this.stackClass,
    required this.source,
    required this.packages,
    required this.report,
    this.hasStack = true,
    this.moduleWrappers = const {},
    this.usesWorkspace = false,
    this.statements = const [],
    this.imports = const [],
    this.ctorInit = '',
    this.envSlotTypes = const {},
    this.envValueSources = const {},
    this.envImports = const [],
  });

  final String stackClass;

  /// The complete `lib/<stack>.dart` source (unformatted); empty when
  /// [hasStack] is false.
  final String source;

  /// False when nothing in the module translates — no resource became Dart
  /// and no known provider is declared — so no Stack is generated and every
  /// block stays in Terraform.
  final bool hasStack;

  /// Provider packages the Stack imports, in import order.
  final List<String> packages;

  /// File stems of the generated local-module wrappers this Stack imports
  /// (`service_account_module`), for the caller to write beside it.
  final Set<String> moduleWrappers;

  /// The constructor body, statement by statement, in the order [source]
  /// writes them; the merged-environment emitter lines these up.
  final List<StackStatement> statements;

  /// True when the Stack takes a `workspace` parameter: something in it
  /// read `terraform.workspace` and `--lift-workspace` was on.
  final bool usesWorkspace;

  /// The `import` lines [source] opens with, `terradart_core` included.
  final List<String> imports;

  /// The `super(...)` arguments (`providers: [...], backend: ...`).
  final String ctorInit;

  /// `env.<field>` → the Dart type the argument it filled expects.
  final Map<String, String> envSlotTypes;

  /// `env.<field>` → the Dart source of this module's value for it, where a
  /// plain literal will not do (an enum member).
  final Map<String, String> envValueSources;

  /// `import` lines the constants' own types need (the barrel exporting an
  /// enum a lifted argument takes), for the file declaring them.
  final List<String> envImports;
  final MigrationReport report;
}

/// A provider factory recipe: package, class, Terraform argument → Dart
/// parameter (values are plain Dart literals, never `TfArg`).
final class _ProviderRecipe {
  const _ProviderRecipe(
    this.package,
    this.className,
    this.args,
    this.pin, {
    this.barrel = 'provider',
  });

  final String package;
  final String className;
  final Map<String, String> args;

  /// The version constraint the package emits.
  final String pin;

  /// The barrel that exports [className].
  final String barrel;
}

const _providerRecipes = <String, _ProviderRecipe>{
  'google': _ProviderRecipe('terradart_google', 'GoogleProvider', {
    'project': 'project',
    'region': 'region',
    'zone': 'zone',
  }, kProviderVersionConstraint),
  'google-beta': _ProviderRecipe(
    'terradart_google_beta',
    'GoogleBetaProvider',
    {'project': 'project', 'region': 'region', 'zone': 'zone'},
    kBetaProviderVersionConstraint,
  ),
  'appwrite': _ProviderRecipe('terradart_appwrite', 'AppwriteProvider', {
    'endpoint': 'endpoint',
    'project_id': 'projectId',
    'organization_id': 'organizationId',
    'self_signed': 'selfSigned',
    'http_timeout_seconds': 'httpTimeoutSeconds',
  }, kAppwriteProviderVersionConstraint),
  'cloudflare': _ProviderRecipe('terradart_cloudflare', 'CloudflareProvider', {
    'base_url': 'baseUrl',
    'email': 'email',
    'user_agent_operator_suffix': 'userAgentOperatorSuffix',
  }, kCloudflareProviderVersionConstraint),
  // Hand-written in terradart_google next to TimeSleep (`time.dart`).
  'time': _ProviderRecipe(
    'terradart_google',
    'TimeProvider',
    {},
    '~> 0.12',
    barrel: 'time',
  ),
};

/// Meta-arguments and blocks a resource may carry that have no synth path.
const _blockedMeta = <String, String>{
  'dynamic': 'dynamic blocks have no synth path',
  'provisioner': 'provisioner blocks have no synth path',
  'connection': 'connection blocks have no synth path',
};

final class _Emitted {
  _Emitted({
    required this.address,
    required this.tfType,
    required this.dartName,
    required this.call,
    required this.dartType,
    required this.usesWorkspace,
    required this.usedTargets,
    required this.usedVariables,
    required this.package,
    required this.barrel,
    this.providerName,
    this.isModule = false,
    this.moduleProviders = const [],
    this.wrapperFile,
  });

  final String address;
  final String tfType;
  final String dartName;

  /// True for an `addModule(...)` statement: [package] / [barrel] are empty
  /// and the type prefix implies no provider.
  final bool isModule;

  /// Provider names a module call's `providers = { ... }` map selects, which
  /// the Stack must register.
  final List<String> moduleProviders;

  /// The generated wrapper library the call's class comes from
  /// (`service_account_module`), or `null` for a bare `ModuleCall`.
  final String? wrapperFile;

  /// The provider the block's `provider` meta-argument selects (`google`
  /// of `google.eu`, `google-beta`), or `null` for the type's default.
  final String? providerName;

  /// `add(...)` / `addData(...)` without the `final x =` prefix.
  final String call;

  /// What `add(...)` returns: the class the call constructs.
  final String dartType;

  /// True when the block read the Stack's `workspace` parameter.
  final bool usesWorkspace;
  final Set<String> usedTargets;
  final Set<String> usedVariables;
  final String package;
  final String barrel;
}

/// Emits a [TfModule] as one Stack class.
final class StackEmitter {
  StackEmitter(
    this.module, {
    required this.ctx,
    required this.moduleName,
    required this.stackClass,
    required this.stackFile,
    required this.version,
    this.childModule = false,
    this.allowTodo = false,
    this.localModules = const {},
    this.envValues = const {},
    this.forceLocals = const {},
    this.reservedNames = const {},
    this.liftWorkspace = false,
  });

  final TfModule module;
  final EmitContext ctx;
  final String moduleName;
  final String stackClass;

  /// `lib/<stack_file>.dart`, for the app-exports path.
  final String stackFile;
  final String version;

  /// Child-module mode, for a directory a `module` block's `source` points
  /// at: providers are registered without configuration so synth emits only
  /// `required_providers`, and provider configurations and a backend found
  /// in the module stay in Terraform.
  final bool childModule;

  /// Write a `TODO` comment per block that stays in Terraform into the Stack
  /// (the caller then writes no sidecar, and the plan differs until the
  /// TODOs are ported by hand).
  final bool allowTodo;

  /// Call name → the typed wrapper of the local module directory its
  /// `source` points at, for the calls whose callee the scan resolved. A
  /// call with no entry here becomes a bare `ModuleCall`.
  final Map<String, LocalModule> localModules;

  /// `--merge-envs`: block address → top-level argument → the Dart
  /// expression (`env.assetsName`) to emit in place of the literal this
  /// environment writes, for arguments the environments disagree on.
  /// Addressed as `variable.<name>`, `provider.<name>[.<alias>]` and
  /// `terraform.backend` too.
  final Map<String, Map<String, String>> envValues;

  /// Addresses that get a Dart local even when nothing in *this* module
  /// reads them — another merged environment does.
  final Set<String> forceLocals;

  /// Identifiers no Dart local may take (`env`, in a merged Stack).
  final Set<String> reservedNames;

  /// `--lift-workspace`: `terraform.workspace` becomes the Stack's
  /// `workspace` parameter, so the synthesized JSON names one workspace
  /// instead of deferring to `terraform workspace select`.
  final bool liftWorkspace;

  /// `env.<field>` → the Dart type of the argument it filled.
  final _envSlotTypes = <String, String>{};

  /// `env.<field>` → this module's Dart source for it, and the import its
  /// type needs; both empty unless a lifted argument takes an enum.
  final _envValueSources = <String, String>{};
  final _envImports = <String>{};

  /// Wrapper libraries the Stack ended up importing.
  final _moduleWrappers = <String>{};

  /// Provider local names the Stack registers (`google`, `time`, ...).
  final _registeredProviders = <String>[];

  /// Blocks unrolled from a literal `count` / `for_each`, by their address
  /// as written; filled by [_blocksInOrder].
  final _expansions = <String, Expansion>{};

  /// Points references at the unrolled instances; empty when nothing was
  /// unrolled.
  var _rewriter = ReferenceRewriter(const []);

  static const _noStackReason =
      'nothing in this directory translates, so no Stack is generated; the '
      'block stays as written';

  final _kept = <KeptItem>[];
  final _migrated = <MigratedItem>[];
  final _warnings = <String>[];

  EmittedStack emit() {
    for (final v in module.variables) {
      ctx.declaredVariables.add(v.name);
    }

    // A literal count / for_each is unrolled into one block per instance
    // (#663). Translation stays resource-atomic: one instance that cannot
    // become Dart rolls the whole block back to "kept as written", and the
    // module is emitted again without that expansion.
    final refused = <String, String>{};
    late List<_BlockInfo> blocks;
    late Map<String, String> dartNames;
    var kept = <String, String>{};
    var emitted = <String, _Emitted>{};
    while (true) {
      blocks = _blocksInOrder(refused);
      final names = NameAllocator(
        reserved: {...reservedNames, if (liftWorkspace) 'workspace'},
      );
      dartNames = <String, String>{
        for (final b in blocks)
          b.address: names.allocate(
            b.name,
            suffix: NameAllocator.typeSuffix(b.type),
          ),
      };

      // Resource-atomic translation to a fixpoint: a resource that
      // references a kept resource may need to be kept too (depends_on), so
      // re-run until the kept set is stable.
      kept = <String, String>{};
      while (true) {
        ctx.targets.clear();
        ctx.moduleTargets.clear();
        ctx.resetPass();
        for (final b in blocks) {
          if (kept.containsKey(b.address)) continue;
          if (b.call != null) {
            ctx.moduleTargets[b.address] = ModuleTarget(
              address: b.address,
              dartName: dartNames[b.address]!,
              local: localModules[b.name],
            );
            continue;
          }
          final hit = ctx.lookup(b.type, b.kind);
          if (hit == null) continue;
          ctx.targets[b.address] = EmitTarget(
            address: b.address,
            dartName: dartNames[b.address]!,
            entry: hit.entry,
            manifest: hit.manifest,
            isData: b.isData,
          );
        }
        final nextKept = <String, String>{};
        emitted = {};
        for (final b in blocks) {
          try {
            emitted[b.address] = _emitBlock(b, dartNames[b.address]!);
          } on MigrateBlocker catch (e) {
            nextKept[b.address] = e.reason;
          }
        }
        if (nextKept.keys.toSet().containsAll(kept.keys) &&
            kept.keys.toSet().containsAll(nextKept.keys)) {
          kept = nextKept;
          break;
        }
        kept = nextKept;
      }

      var rolledBack = false;
      for (final ex in _expansions.values) {
        for (final inst in ex.item.instances) {
          final reason = kept[inst.to];
          if (reason == null) continue;
          refused[ex.address] = 'instance ${inst.from}: $reason';
          rolledBack = true;
          break;
        }
      }
      if (!rolledBack) break;
    }

    final referenced = <String>{};
    final usedVariables = <String>{};
    _moduleWrappers.clear();
    for (final e in emitted.values) {
      referenced.addAll(e.usedTargets);
      usedVariables.addAll(e.usedVariables);
      if (e.isModule) {
        final wrapper = e.wrapperFile;
        if (wrapper != null) _moduleWrappers.add(wrapper);
        continue;
      }
      ctx.import(e.package, e.barrel);
    }

    final body = <StackStatement>[];
    void write(String tag, String text) =>
        body.add(StackStatement(tag: tag, text: text));
    final ctorInit = StringBuffer();

    // --- providers ------------------------------------------------------
    final providerNames = <String>[
      ...module.requiredProviders.keys,
      for (final p in module.providers)
        if (!module.requiredProviders.containsKey(p.name)) p.name,
    ];
    for (final e in emitted.values) {
      if (e.isModule) {
        // A module call implies no provider of its own — the child module
        // declares what it needs; only an explicit `providers = { ... }`
        // hands one of this Stack's configurations down.
        for (final name in e.moduleProviders) {
          if (!providerNames.contains(name)) providerNames.add(name);
        }
        continue;
      }
      final needed = e.providerName ?? _defaultProviderFor(e.package, e.tfType);
      if (!providerNames.contains(needed)) providerNames.add(needed);
    }
    final providerExprs = <String>[];
    for (final name in providerNames) {
      final recipe = _providerRecipes[name];
      if (recipe == null) {
        _keep('provider.$name', 'provider "$name" has no TerraDart factory');
        continue;
      }
      final configs = module.providers.where((p) => p.name == name).toList();
      final defaults = childModule
          ? const <ProviderBlock>[]
          : configs.where((p) => p.alias == null).toList();
      final aliases = childModule
          ? const <ProviderBlock>[]
          : configs.where((p) => p.alias != null).toList();
      if (childModule) {
        for (final p in configs) {
          _keep(
            p.alias == null ? 'provider.$name' : 'provider.$name.${p.alias}',
            'a provider configuration inside a child module stays in '
            'Terraform; the Stack only registers the provider',
          );
        }
      }
      if (defaults.length > 1) {
        _warnings.add(
          'provider "$name" is configured ${defaults.length} times; only the '
          'first configuration is migrated',
        );
      }
      final config = defaults.isEmpty
          ? (args: const <String>[], isConst: true)
          : _providerArgs(recipe, name, defaults.first);
      final args = config.args;
      final pinned = module.requiredProviders[name];
      final wanted = pinned == null ? null : objectMap(pinned)?['version'];
      final wantedText = wanted?.constantString;
      if (wantedText != null && wantedText != recipe.pin) {
        _warnings.add(
          'required_providers.$name pins "$wantedText"; the Stack emits the '
          '${recipe.package} pin "${recipe.pin}"',
        );
      }
      ctx.import(recipe.package, recipe.barrel);
      providerExprs.add(
        '${config.isConst ? 'const ' : ''}'
        '${recipe.className}(${args.join(', ')})',
      );
      _registeredProviders.add(name);
      if (!childModule || configs.isEmpty) {
        _migrated.add(MigratedItem(address: 'provider.$name'));
      }
      // Every aliased configuration of the name is registered too, with
      // its alias; a resource selects it with `provider: 'name.alias'`.
      for (final p in aliases) {
        final alias = p.alias!;
        final aliasConfig = _providerArgs(recipe, '$name.$alias', p);
        final aliasArgs = ['alias: ${dartString(alias)}', ...aliasConfig.args];
        providerExprs.add(
          '${aliasConfig.isConst ? 'const ' : ''}'
          '${recipe.className}(${aliasArgs.join(', ')})',
        );
        _migrated.add(MigratedItem(address: 'provider.$name.$alias'));
      }
    }
    ctorInit.write('providers: [${providerExprs.join(', ')}]');
    // No provider registered means no resource translated and no known
    // provider declared: a Stack would synthesize an empty configuration,
    // so the directory stays Terraform and every block is kept as written.
    // A root that only calls modules is the exception — it declares no
    // provider of its own, and synth accepts that.
    final noStack =
        providerExprs.isEmpty && !emitted.values.any((e) => e.isModule);

    // --- backend ----------------------------------------------------------
    final backendExpr = noStack
        ? _keptBackend(_noStackReason)
        : childModule
        ? _keptBackend(
            'a backend inside a child module is ignored by Terraform; kept '
            'as written',
          )
        : _backend();
    if (backendExpr != null) ctorInit.write(', backend: $backendExpr');

    // --- terraform settings ---------------------------------------------
    for (final t in module.terraform) {
      final values = objectMap(bodyAsObject(t.body)) ?? {};
      for (final key in values.keys) {
        switch (key) {
          case 'required_version':
            final v = values[key]!.constantString;
            if (noStack) {
              _keep('terraform.required_version', _noStackReason);
            } else if (v == null) {
              _keep('terraform.required_version', 'not a literal');
            } else {
              write(
                'terraform.required_version',
                'setRequiredVersion(${dartString(v)});',
              );
              _migrated.add(
                const MigratedItem(address: 'terraform.required_version'),
              );
            }
          case 'required_providers' || 'backend':
            break;
          case 'cloud':
            _keep(
              'terraform.cloud',
              'Terraform Cloud settings stay in Terraform',
            );
          default:
            _keep('terraform.$key', 'no synth path for "terraform.$key"');
        }
      }
    }

    // --- variables ------------------------------------------------------
    for (final v in module.variables) {
      if (noStack) {
        _keep('variable.${v.name}', _noStackReason);
        continue;
      }
      final stmt = _variable(v);
      if (stmt != null) {
        write('variable.${v.name}', stmt);
        _migrated.add(MigratedItem(address: 'variable.${v.name}'));
      }
    }
    for (final name in usedVariables) {
      if (!noStack && !ctx.declaredVariables.contains(name)) {
        write('variable.$name', 'addExternalVariable(${dartString(name)});');
        _warnings.add(
          'variable "$name" is referenced but not declared in this module; '
          'declared as external',
        );
      }
    }

    // --- outputs (resolved first: an export keeps its target's Dart local) --
    final outputStatements = <StackStatement>[];
    for (final o in module.outputs) {
      if (noStack) {
        _keep('output.${o.name}', _noStackReason);
        continue;
      }
      final export = _output(o);
      if (export != null) {
        outputStatements.add(
          StackStatement(
            tag: 'output.${o.name}',
            text: export.statement,
            uses: {export.address},
          ),
        );
        _migrated.add(MigratedItem(address: 'output.${o.name}'));
      }
    }
    referenced.addAll(_outputRefs);
    // A local another environment reads keeps its `final x =` here too, so
    // the merged Stack's bodies still line up statement for statement.
    referenced.addAll(forceLocals);

    // --- resources and data sources -------------------------------------
    for (final b in blocks) {
      final e = emitted[b.address];
      if (e == null) {
        _kept.add(KeptItem(address: b.address, reason: kept[b.address]!));
        continue;
      }
      if (noStack) {
        // A directory whose only translatable block is a `module` call has
        // no provider to register, so there is no Stack to hold it.
        _kept.add(KeptItem(address: b.address, reason: _noStackReason));
        continue;
      }
      final declares = referenced.contains(b.address);
      final assign = declares ? 'final ${e.dartName} = ' : '';
      body.add(
        StackStatement(
          tag: b.address,
          text: '$assign${e.call};',
          uses: e.usedTargets,
          declaresLocal: declares,
          dartType: e.dartType,
        ),
      );
      _migrated.add(
        MigratedItem(
          address: b.address,
          dartName: referenced.contains(b.address) ? e.dartName : null,
        ),
      );
    }

    // --- moved: unrolled instances keep their state, and the module's own
    // moved blocks follow their targets into the Stack ---------------------
    final movedFroms = <String>{};
    for (final ex in _expansions.values) {
      if (ex.isData) continue;
      for (final inst in ex.item.instances) {
        write(
          'moved.${inst.from}',
          'addMoved(${dartString(inst.from)}, ${dartString(inst.to)});',
        );
        movedFroms.add(inst.from);
      }
    }
    final translatedMoved = <OpaqueBlock>{};
    for (final o in module.opaque) {
      if (o.type != 'moved' || o.block.labels.isNotEmpty || noStack) continue;
      try {
        for (final stmt in _moved(o, movedFroms, emitted)) {
          write('moved:$stmt', stmt);
        }
        translatedMoved.add(o);
      } on MigrateBlocker catch (e) {
        _keep('moved', e.reason);
        translatedMoved.add(o);
      }
    }

    body.addAll(outputStatements);
    if (outputStatements.isNotEmpty) {
      write(
        'appExports',
        'setAppExportsOutputPath(${dartString('lib/generated/$stackFile.app.dart')});',
      );
    }

    // --- everything else stays in Terraform ------------------------------
    for (final l in module.locals) {
      _keep('local.${l.name}', 'locals stay in Terraform (see #672)');
    }
    for (final o in module.opaque) {
      if (translatedMoved.contains(o)) continue;
      final labels = o.block.labels.map((l) => '.${l.text}').join();
      _keep('${o.type}$labels', 'no synth path for "${o.type}" blocks');
    }
    for (final a in module.strayAttributes) {
      _keep(a.name, 'a top-level attribute is not valid Terraform');
    }
    for (final w in module.warnings) {
      _warnings.add(w.toString());
    }

    if (allowTodo && !noStack && _kept.isNotEmpty) {
      write(
        'todo',
        '// TODO(terradart-migrate): ${_kept.length} block(s) stay '
            'untranslated with no sidecar (--allow-todo); the plan differs until '
            'they are ported by hand.',
      );
      for (final k in _kept) {
        write(
          'todo.${k.address}',
          '// TODO(terradart-migrate): ${k.address}: ${k.reason}',
        );
      }
    }

    // --- assemble ---------------------------------------------------------
    final usesWorkspace = emitted.values.any((e) => e.usesWorkspace);
    final parameters = usesWorkspace ? '{required String workspace}' : '';
    final packages = ctx.imports.keys.toList()..sort();
    final wrappers = noStack
        ? const <String>[]
        : (_moduleWrappers.toList()..sort());
    final imports = <String>[
      "import 'package:terradart_core/terradart_core.dart';",
      for (final p in packages)
        for (final barrel in (ctx.imports[p]!.toList()..sort()))
          "import 'package:$p/$barrel.dart';",
      // The wrappers live beside the Stack in `lib/` of the same package.
      for (final w in wrappers) "import '$w.dart';",
    ];
    final src = StringBuffer()
      ..writeln(
        '/// $stackClass — migrated from `$moduleName` by terradart-migrate $version.',
      )
      ..writeln('///')
      ..writeln(
        '/// One Stack per Terraform module directory. Resource addresses are',
      )
      ..writeln(
        '/// preserved, so `terraform plan` against the existing state reports',
      )
      ..writeln('/// no changes once the sidecar is in place.')
      ..writeln('library;')
      ..writeln()
      ..writeln(imports.join('\n'))
      ..writeln()
      ..writeln('final class $stackClass extends Stack {')
      ..writeln('  $stackClass($parameters) : super($ctorInit) {')
      ..writeln([for (final s in body) s.text].join('\n'))
      ..writeln('  }')
      ..writeln('}');

    ctx.warnings.addAll(_warnings);
    return EmittedStack(
      stackClass: stackClass,
      source: noStack ? '' : src.toString(),
      hasStack: !noStack,
      packages: packages,
      moduleWrappers: Set.unmodifiable(wrappers),
      usesWorkspace: usesWorkspace,
      statements: List.unmodifiable(body),
      imports: List.unmodifiable(imports),
      ctorInit: ctorInit.toString(),
      envSlotTypes: Map.unmodifiable(_envSlotTypes),
      envValueSources: Map.unmodifiable(_envValueSources),
      envImports: List.unmodifiable(_envImports.toList()..sort()),
      report: MigrationReport(
        module: moduleName,
        stackClass: stackClass,
        migrated: List.unmodifiable(_migrated),
        kept: List.unmodifiable(_kept),
        warnings: List.unmodifiable(ctx.warnings),
        packages: packages,
        providers: List.unmodifiable(_registeredProviders),
        expanded: List.unmodifiable([
          for (final e in _expansions.values) e.item,
        ]),
      ),
    );
  }

  void _keep(String address, String reason) {
    _kept.add(KeptItem(address: address, reason: reason));
  }

  /// `param: value` arguments of [recipe]'s constructor for the provider
  /// configuration [block] (`alias` excluded); anything the constructor
  /// cannot take is dropped with a warning naming [label].
  ({List<String> args, bool isConst}) _providerArgs(
    _ProviderRecipe recipe,
    String label,
    ProviderBlock block,
  ) {
    final args = <String>[];
    final overrides = envValues['provider.$label'] ?? const <String, String>{};
    var isConst = true;
    final values = objectMap(bodyAsObject(block.body)) ?? {};
    for (final entry in values.entries) {
      if (entry.key == 'alias') continue;
      final param = recipe.args[entry.key];
      final override = overrides[entry.key];
      if (param != null && override != null) {
        isConst = false;
        args.add('$param: $override');
        continue;
      }
      final json = jsonValue(entry.value);
      if (param == null) {
        _warnings.add(
          'provider "$label": argument "${entry.key}" has no '
          '${recipe.className} parameter and was dropped',
        );
        continue;
      }
      if (json is String && json.contains(r'${') ||
          json is List ||
          json is Map) {
        _warnings.add(
          'provider "$label": argument "${entry.key}" is not a literal and '
          'was dropped',
        );
        continue;
      }
      args.add('$param: ${dartValue(json)}');
    }
    return (args: args, isConst: isConst);
  }

  // -----------------------------------------------------------------------
  // Blocks
  // -----------------------------------------------------------------------

  _Emitted _emitBlock(_BlockInfo b, String dartName) {
    if (b.call != null) {
      // Same guard as the resource path below: a body the rewriter could not
      // point at the unrolled instances still names addresses that no longer
      // exist, so the call stays in Terraform.
      final blocker = b.expansionBlocker;
      if (blocker != null) throw MigrateBlocker(blocker);
      return _emitModuleCall(b, dartName);
    }
    final hit = ctx.lookup(b.type, b.kind);
    if (hit == null) {
      throw MigrateBlocker(
        'no curated factory for ${b.isData ? 'data source' : 'resource'} '
        'type "${b.type}" (request curation)',
      );
    }
    final entry = hit.entry;
    final manifest = hit.manifest;
    // A count / for_each that could not be unrolled, or a reference to an
    // instance that does not exist.
    final expansionBlocker = b.expansionBlocker;
    if (expansionBlocker != null) throw MigrateBlocker(expansionBlocker);
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final meta in _blockedMeta.keys) {
      if (values.containsKey(meta)) throw MigrateBlocker(_blockedMeta[meta]!);
    }
    // Synth enforces sensitive fields on resources only; mirror that.
    final emitter = ValueEmitter(
      ctx,
      manifest,
      sensitivePaths: b.isData
          ? const {}
          : ctx.sensitive.of(manifest.package, b.type, b.kind),
      envValues: envValues[b.address] ?? const {},
      liftWorkspace: liftWorkspace,
    );

    // Meta-arguments the base class takes.
    final extras = <String>[];
    String? providerName;
    final provider = values.remove('provider');
    if (provider != null) {
      // `provider = google.west` is a traversal in HCL and the string
      // "google.west" in tf.json; `google-beta` parses as one root either way.
      final selected = provider.constantString ?? hclSource(provider);
      final own = _defaultProviderFor(manifest.package, b.type);
      if (selected != own) {
        final dot = selected.indexOf('.');
        final name = dot < 0 ? selected : selected.substring(0, dot);
        final alias = dot < 0 ? null : selected.substring(dot + 1);
        if (!_providerRecipes.containsKey(name)) {
          throw MigrateBlocker(
            'provider = $selected: provider "$name" has no TerraDart factory',
          );
        }
        if (alias != null) {
          if (childModule) {
            throw MigrateBlocker(
              'provider = $selected: a provider alias inside a child module '
              'needs configuration_aliases, which the Stack cannot declare '
              'yet',
            );
          }
          final configured = module.providers.any(
            (p) => p.name == name && p.alias == alias,
          );
          if (!configured) {
            throw MigrateBlocker(
              'provider = $selected: this module has no provider "$name" '
              'block with alias = "$alias"',
            );
          }
        }
        providerName = name;
        extras.add('provider: ${dartString(selected)}');
      }
    }
    final dependsOn = values.remove('depends_on');
    if (dependsOn != null) {
      extras.add('dependsOn: ${_dependsOn(dependsOn, emitter)}');
    }
    final lifecycle = values.remove('lifecycle');
    if (lifecycle != null) {
      if (b.isData) {
        throw MigrateBlocker('lifecycle on a data source has no synth path');
      }
      extras.add('lifecycle: ${_lifecycle(lifecycle, emitter)}');
    }
    final timeouts = values.remove('timeouts');
    if (timeouts != null) {
      extras.add('timeouts: ${_timeouts(timeouts)}');
    }

    final level = BodyLevel(values, path: '');
    final args = emitter.emitArgs(entry.slots, level);
    level.checkClaimed();
    _envSlotTypes.addAll(emitter.envSlotTypes);
    _envValueSources.addAll(emitter.envValueSources);
    // A constant typed as one of the package's enums needs the barrel that
    // exports it wherever it is declared, not just here.
    if (emitter.envValueSources.isNotEmpty) {
      _envImports.add(
        "import 'package:${manifest.package}/${entry.barrel}.dart';",
      );
    }
    final ctor =
        '${entry.className}(localName: ${dartString(b.name)}'
        '${args.isEmpty ? '' : ', ${args.join(', ')}'}'
        '${extras.isEmpty ? '' : ', ${extras.join(', ')}'})';
    return _Emitted(
      address: b.address,
      tfType: b.type,
      dartName: dartName,
      call: '${b.isData ? 'addData' : 'add'}($ctor)',
      dartType: entry.className,
      usesWorkspace: emitter.usedWorkspace,
      usedTargets: emitter.usedTargets,
      usedVariables: emitter.usedVariables,
      package: manifest.package,
      barrel: entry.barrel,
      providerName: providerName,
    );
  }

  /// The empty manifest a module call's inputs are emitted against: its
  /// slots are plain scalars, so no enum or helper table is ever consulted.
  static const _moduleManifest = MigrateManifest(
    package: '',
    entries: [],
    helpers: {},
    enums: {},
  );

  /// `addModule(...)` for one `module "<name>" { ... }` call.
  ///
  /// The call becomes the local module's generated wrapper when the scan
  /// resolved its `source` to a directory in the tree, and a bare
  /// [ModuleCall] otherwise (a registry or git module, or a local path the
  /// scan did not see): either way the `source` is copied verbatim, so
  /// Terraform resolves it exactly as before against the mirrored `tf-out/`
  /// tree, and the plan address keeps its `module.<name>.` prefix.
  _Emitted _emitModuleCall(_BlockInfo b, String dartName) {
    final call = b.call!;
    // `_blockedMeta` is not consulted here: `dynamic` / `provisioner` /
    // `connection` / `timeouts` are not module meta-arguments, so a key of
    // that name is an ordinary input of the called module.
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final meta in const ['count', 'for_each']) {
      if (values.containsKey(meta)) {
        throw MigrateBlocker(
          'a $meta on a module call addresses its instances '
          '`module.${call.name}[...]`, which no ModuleCall output spells',
        );
      }
    }
    if (values.containsKey('lifecycle')) {
      throw MigrateBlocker('lifecycle on a module call has no synth path');
    }

    final sourceExpr = values.remove('source');
    if (sourceExpr == null) throw MigrateBlocker('the call has no "source"');
    final source = sourceExpr.constantString;
    if (source == null) {
      throw MigrateBlocker(
        'source = ${hclSource(sourceExpr)} is not a literal',
      );
    }
    final extras = <String>['localName: ${dartString(call.name)}'];
    extras.add('source: ${dartString(source)}');
    final versionExpr = values.remove('version');
    if (versionExpr != null) {
      final version = versionExpr.constantString;
      if (version == null) {
        throw MigrateBlocker(
          'version = ${hclSource(versionExpr)} is not a literal',
        );
      }
      extras.add('version: ${dartString(version)}');
    }

    final emitter = ValueEmitter(
      ctx,
      _moduleManifest,
      sensitivePaths: const {},
      envValues: envValues[b.address] ?? const {},
      liftWorkspace: liftWorkspace,
    );
    final moduleProviders = <String>[];
    final providers = values.remove('providers');
    if (providers != null) {
      extras.add(_moduleProviders(providers, moduleProviders));
    }
    final dependsOn = values.remove('depends_on');
    if (dependsOn != null) {
      extras.add('dependsOn: ${_dependsOn(dependsOn, emitter)}');
    }

    // Every name in `ModuleCall.reservedInputNames` is consumed or blocked
    // above, so what is left is the module's own variables — `provider`
    // included, which is a resource meta-argument, not a module one.
    final local = localModules[call.name];
    final level = BodyLevel(values, path: '');
    final String ctor;
    if (local == null) {
      // No wrapper: the inputs travel as an untyped `inputs` map, which is
      // exactly what Terraform passes down.
      final inputs = <String>[];
      for (final key in values.keys) {
        final expr = emitter.emitSlot(_input(key, 'Object?'), level);
        if (expr != null) inputs.add('${dartString(key)}: $expr');
      }
      if (inputs.isNotEmpty) extras.add('inputs: {${inputs.join(', ')}}');
      ctor = 'ModuleCall(${extras.join(', ')})';
    } else {
      final args = emitter.emitArgs([
        for (final i in local.inputs)
          _input(
            i.tfName,
            i.dartType,
            dartName: i.dartName,
            required: i.required,
          ),
      ], level);
      ctor =
          '${local.className}(${extras.join(', ')}'
          '${args.isEmpty ? '' : ', ${args.join(', ')}'})';
    }
    // An argument the module does not declare as a variable: Terraform would
    // reject it, and the wrapper has no parameter for it.
    level.checkClaimed();
    _envSlotTypes.addAll(emitter.envSlotTypes);
    return _Emitted(
      address: b.address,
      tfType: 'module',
      dartName: dartName,
      call: 'addModule($ctor)',
      dartType: local?.className ?? 'ModuleCall',
      usesWorkspace: emitter.usedWorkspace,
      usedTargets: emitter.usedTargets,
      usedVariables: emitter.usedVariables,
      package: '',
      barrel: '',
      isModule: true,
      moduleProviders: moduleProviders,
      wrapperFile: local?.fileStem,
    );
  }

  /// One module input as a manifest slot: always a `TfArg` scalar, since a
  /// module's variables have no nested-block structure to recover.
  static MigrateSlot _input(
    String tfName,
    String dartType, {
    String? dartName,
    bool required = false,
  }) => MigrateSlot(
    tfName: tfName,
    dartName: dartName ?? tfName,
    kind: MigrateSlotKind.scalar,
    required: required,
    dartType: dartType,
  );

  /// `providers: {'google': 'google.eu'}` — the Stack's configurations the
  /// call hands down, recorded in [selected] so they get registered.
  String _moduleProviders(Expr value, List<String> selected) {
    final m = objectMap(value);
    if (m == null) {
      throw MigrateBlocker('providers must be a map of provider references');
    }
    final entries = <String>[];
    for (final entry in m.entries) {
      final ref =
          entry.value.constantString ??
          (singleReference(entry.value) == null
              ? null
              : hclSource(singleReference(entry.value)!));
      if (ref == null) {
        throw MigrateBlocker(
          'providers.${entry.key} = ${hclSource(entry.value)} is not a '
          'provider reference',
        );
      }
      final dot = ref.indexOf('.');
      final name = dot < 0 ? ref : ref.substring(0, dot);
      final alias = dot < 0 ? null : ref.substring(dot + 1);
      if (!_providerRecipes.containsKey(name)) {
        throw MigrateBlocker(
          'providers.${entry.key} = $ref: provider "$name" has no TerraDart '
          'factory',
        );
      }
      if (alias != null) {
        if (childModule) {
          throw MigrateBlocker(
            'providers.${entry.key} = $ref: a provider alias inside a child '
            'module needs configuration_aliases, which the Stack cannot '
            'declare yet',
          );
        }
        final configured = module.providers.any(
          (p) => p.name == name && p.alias == alias,
        );
        if (!configured) {
          throw MigrateBlocker(
            'providers.${entry.key} = $ref: this module has no provider '
            '"$name" block with alias = "$alias"',
          );
        }
      }
      selected.add(name);
      entries.add('${dartString(entry.key)}: ${dartString(ref)}');
    }
    return 'providers: {${entries.join(', ')}}';
  }

  /// `addMoved(...)` statements for one of the module's own `moved` blocks.
  ///
  /// `to` is rewritten like any reference: a block that was unrolled yields
  /// one move per instance (`from[key]` → the instance's address). The target
  /// must be a resource the Stack registers (or lie in a `module.` call),
  /// since Terraform rejects a move onto an address the configuration does
  /// not declare — a block whose target stays in Terraform stays with it.
  List<String> _moved(
    OpaqueBlock o,
    Set<String> froms,
    Map<String, _Emitted> emitted,
  ) {
    final values = objectMap(bodyAsObject(o.body)) ?? {};
    for (final key in values.keys) {
      if (key != 'from' && key != 'to') {
        throw MigrateBlocker('moved.$key has no synth path');
      }
    }
    TraversalExpr address(String key) {
      final e = values[key];
      if (e == null) throw MigrateBlocker('moved block has no "$key"');
      final text = e.constantString;
      final t = text != null ? _traversalOf(text) : singleReference(e);
      if (t == null) {
        throw MigrateBlocker('moved.$key = ${hclSource(e)} is not an address');
      }
      return t;
    }

    final from = hclSource(address('from'));
    final toTraversal = address('to');
    final to = _rewriter.expr(toTraversal);
    final targets = <String>[];
    final moves = <(String, String)>[];
    switch (to) {
      case TraversalExpr():
        targets.add(hclSource(to));
        moves.add((from, hclSource(to)));
      case TupleExpr(:final elements):
        // `to` named a block that was unrolled: one move per instance.
        for (var i = 0; i < elements.length; i++) {
          final t = hclSource(elements[i]);
          targets.add(t);
          moves.add(('$from[$i]', t));
        }
      case ObjectExpr(:final items):
        for (final item in items) {
          final t = hclSource(item.value);
          targets.add(t);
          moves.add(('$from[${hclSource(item.key)}]', t));
        }
      default:
        throw MigrateBlocker('moved.to = ${hclSource(to)} is not an address');
    }
    for (final t in targets) {
      if (t.startsWith('module.')) continue;
      final parts = t.split('.');
      final base = parts.length >= 2
          ? '${parts[0]}.${parts[1].split('[').first}'
          : t;
      if (!emitted.containsKey(base)) {
        throw MigrateBlocker(
          'moved.to = $t: "$base" stays in Terraform, so the block does too',
        );
      }
    }
    final out = <String>[];
    for (final (f, t) in moves) {
      if (f == t) {
        throw MigrateBlocker('moved.from and moved.to are the same address');
      }
      if (!froms.add(f)) {
        throw MigrateBlocker('another moved block already moves "$f"');
      }
      out.add('addMoved(${dartString(f)}, ${dartString(t)});');
      _migrated.add(MigratedItem(address: 'moved.$f'));
    }
    return out;
  }

  String _dependsOn(Expr value, ValueEmitter emitter) {
    if (value is! TupleExpr) {
      throw MigrateBlocker('depends_on must be a list of addresses');
    }
    final out = <String>[];
    for (final e in value.elements) {
      final address =
          e.constantString ??
          (singleReference(e) == null ? null : hclSource(singleReference(e)!));
      if (address == null) {
        throw MigrateBlocker(
          'depends_on entry ${hclSource(e)} is not an address',
        );
      }
      final dartName =
          ctx.targets[address]?.dartName ??
          ctx.moduleTargets[address]?.dartName;
      if (dartName == null) {
        throw MigrateBlocker(
          'depends_on target "$address" is not migrated (a Dart dependency '
          'needs the Dart object)',
        );
      }
      emitter.usedTargets.add(address);
      out.add('ResourceDependency($dartName)');
    }
    return '[${out.join(', ')}]';
  }

  /// `timeouts: const TfTimeouts(create: '30m')` for a `timeouts { ... }`
  /// block. Terraform forbids references here — the values are literal Go
  /// duration strings — so nothing but a constant translates.
  String _timeouts(Expr value) {
    final m = objectMap(value);
    if (m == null) throw MigrateBlocker('timeouts is not a block');
    const operations = {
      'create': 'create',
      'read': 'read',
      'update': 'update',
      'delete': 'delete',
    };
    final args = <String>[];
    for (final entry in m.entries) {
      final param = operations[entry.key];
      if (param == null) {
        throw MigrateBlocker(
          'timeouts.${entry.key} is not a Terraform operation (create, read, '
          'update, delete)',
        );
      }
      final text = entry.value.constantString;
      if (text == null) {
        throw MigrateBlocker(
          'timeouts.${entry.key} = ${hclSource(entry.value)} is not a '
          'duration string',
        );
      }
      try {
        TfTimeouts(create: text).toTfJson();
      } on ArgumentError {
        throw MigrateBlocker(
          'timeouts.${entry.key} = "$text" is not a Terraform duration '
          'string (e.g. "30m")',
        );
      }
      args.add('$param: ${dartString(text)}');
    }
    if (args.isEmpty) throw MigrateBlocker('timeouts sets no operation');
    return 'const TfTimeouts(${args.join(', ')})';
  }

  String _lifecycle(Expr value, ValueEmitter emitter) {
    final m = objectMap(value);
    if (m == null) throw MigrateBlocker('lifecycle is not a block');
    final args = <String>[];
    for (final entry in m.entries) {
      switch (entry.key) {
        case 'create_before_destroy' || 'prevent_destroy':
          final v = entry.value;
          if (v is! LiteralExpr || v.value is! bool) {
            throw MigrateBlocker('lifecycle.${entry.key} must be a boolean');
          }
          args.add(
            '${entry.key == 'create_before_destroy' ? 'createBeforeDestroy' : 'preventDestroy'}: ${v.value}',
          );
        case 'ignore_changes':
          final v = entry.value;
          if (v is! TupleExpr) {
            throw MigrateBlocker(
              'lifecycle.ignore_changes = ${hclSource(v)} has no synth path '
              '(only a list of attribute paths does)',
            );
          }
          final paths = <String>[];
          for (final e in v.elements) {
            final s =
                e.constantString ?? (e is TraversalExpr ? hclSource(e) : null);
            if (s == null) {
              throw MigrateBlocker(
                'lifecycle.ignore_changes entry ${hclSource(e)} is not an '
                'attribute path',
              );
            }
            paths.add(dartString(s));
          }
          args.add('ignoreChanges: [${paths.join(', ')}]');
        case 'replace_triggered_by':
          final v = entry.value;
          if (v is! TupleExpr) {
            throw MigrateBlocker(
              'lifecycle.replace_triggered_by must be a list',
            );
          }
          final refs = <String>[];
          for (final e in v.elements) {
            final t = singleReference(e) ?? _traversalOf(e.constantString);
            final c = t == null ? null : classifyTraversal(t);
            if (c is! BlockReference) {
              throw MigrateBlocker(
                'lifecycle.replace_triggered_by entry ${hclSource(e)} is not '
                'a resource reference',
              );
            }
            final target = ctx.targets[c.address];
            if (target == null) {
              throw MigrateBlocker(
                'lifecycle.replace_triggered_by target "${c.address}" is not '
                'migrated',
              );
            }
            emitter.usedTargets.add(c.address);
            refs.add(
              c.attribute.isEmpty
                  ? 'TfRef.resource(${target.dartName})'
                  : 'TfRef.attribute<Object?>(${target.dartName}, ${dartString(c.attribute)})',
            );
          }
          args.add('replaceTriggeredBy: [${refs.join(', ')}]');
        default:
          throw MigrateBlocker('lifecycle.${entry.key} has no synth path');
      }
    }
    return 'LifecycleOptions(${args.join(', ')})';
  }

  // -----------------------------------------------------------------------
  // Module-level blocks
  // -----------------------------------------------------------------------

  /// No backend on the Stack; the block, if any, stays as written (a child
  /// module, whose backend Terraform ignores, or a directory with no Stack).
  String? _keptBackend(String reason) {
    if (module.backend != null) _keep('terraform.backend', reason);
    return null;
  }

  String? _backend() {
    final b = module.backend;
    if (b == null) {
      if (module.terraform.any((t) => t.cloud != null)) return null;
      return null;
    }
    final type = b.labels.isEmpty ? '' : b.labels.first.text;
    final values = objectMap(bodyAsObject(b.body)) ?? {};
    final overrides =
        envValues['terraform.backend'] ?? const <String, String>{};
    // A backend argument the merged environments disagree on becomes an
    // `Env` constant, and the backend is no longer a compile-time constant.
    var isConst = true;
    String? arg(String param, String key) {
      final v = values[key];
      if (v == null) return null;
      final override = overrides[key];
      if (override != null) {
        isConst = false;
        return '$param: $override';
      }
      final s = v.constantString;
      if (s == null) {
        throw MigrateBlocker('backend "$type": "$key" is not a literal');
      }
      return '$param: ${dartString(s)}';
    }

    try {
      switch (type) {
        case 'gcs':
          final extra = values.keys.where(
            (k) => k != 'bucket' && k != 'prefix',
          );
          if (extra.isNotEmpty) {
            throw MigrateBlocker(
              'backend "gcs": GcsBackend has no parameter for '
              '${extra.map((k) => '"$k"').join(', ')}',
            );
          }
          // A partial configuration — the values come from `terraform init
          // -backend-config` — is the block with those keys left out.
          final bucket = arg('bucket', 'bucket');
          final prefix = arg('prefix', 'prefix');
          final args = <String>[?bucket, ?prefix];
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}GcsBackend(${args.join(', ')})';
        case 'local':
          final extra = values.keys.where((k) => k != 'path');
          if (extra.isNotEmpty) {
            throw MigrateBlocker(
              'backend "local": LocalBackend has no parameter for '
              '${extra.map((k) => '"$k"').join(', ')}',
            );
          }
          final path = arg('path', 'path');
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}LocalBackend(${path ?? ''})';
        case 's3':
          const params = {
            'bucket': 'bucket',
            'key': 'key',
            'region': 'region',
            'endpoints': 'endpoints',
            'use_path_style': 'usePathStyle',
            'skip_credentials_validation': 'skipCredentialsValidation',
            'skip_region_validation': 'skipRegionValidation',
            'skip_requesting_account_id': 'skipRequestingAccountId',
            'skip_metadata_api_check': 'skipMetadataApiCheck',
            'skip_s3_checksum': 'skipS3Checksum',
          };
          // As for gcs: what is missing comes from `-backend-config`.
          final args = <String>[];
          for (final entry in values.entries) {
            final param = params[entry.key];
            if (param == null) {
              throw MigrateBlocker(
                'backend "s3": S3Backend has no parameter for "${entry.key}"',
              );
            }
            final override = overrides[entry.key];
            if (override != null) {
              isConst = false;
              args.add('$param: $override');
              continue;
            }
            final json = jsonValue(entry.value);
            if (json is String && json.contains(r'${')) {
              throw MigrateBlocker(
                'backend "s3": "${entry.key}" is not a literal',
              );
            }
            args.add('$param: ${dartValue(json)}');
          }
          _migrated.add(const MigratedItem(address: 'terraform.backend'));
          return '${isConst ? 'const ' : ''}S3Backend(${args.join(', ')})';
        default:
          throw MigrateBlocker(
            'backend "$type" has no TerraDart type; it stays in backend.tf',
          );
      }
    } on MigrateBlocker catch (e) {
      _keep('terraform.backend', e.reason);
      return null;
    }
  }

  String? _variable(VariableBlock v) {
    final values = objectMap(bodyAsObject(v.body)) ?? {};
    final overrides =
        envValues['variable.${v.name}'] ?? const <String, String>{};
    var isConst = true;
    final args = <String>[];
    try {
      for (final entry in values.entries) {
        final value = entry.value;
        final override = overrides[entry.key];
        switch (entry.key) {
          case 'type':
            final s = value.constantString ?? hclSource(value);
            args.add('type: ${dartString(s)}');
          case 'description':
            if (override != null) {
              isConst = false;
              args.add('description: $override');
              break;
            }
            final s = value.constantString;
            if (s == null) throw MigrateBlocker('description is not a literal');
            args.add('description: ${dartString(s)}');
          case 'default':
            if (override != null) {
              isConst = false;
              args.add('defaultValue: $override');
              break;
            }
            args.add('defaultValue: ${dartValue(jsonValue(value))}');
          case 'sensitive' || 'nullable':
            if (value is! LiteralExpr || value.value is! bool) {
              throw MigrateBlocker('${entry.key} must be a boolean');
            }
            args.add('${entry.key}: ${value.value}');
          default:
            throw MigrateBlocker(
              '"${entry.key}" has no TfVariable field; the variable stays in '
              'Terraform (declared as external)',
            );
        }
      }
    } on MigrateBlocker catch (e) {
      _keep('variable.${v.name}', e.reason);
      return 'addExternalVariable(${dartString(v.name)});';
    }
    return 'addVariable(${dartString(v.name)}, '
        '${isConst ? 'const ' : ''}TfVariable(${args.join(', ')}));';
  }

  ({String statement, String address})? _output(OutputBlock o) {
    final values = objectMap(bodyAsObject(o.body)) ?? {};
    try {
      var value = values['value'];
      if (value == null) throw MigrateBlocker('output has no value');
      value = _rewriter.expr(value);
      final t = singleReference(value);
      final c = t == null ? null : classifyTraversal(t);
      final isModule = c is ModuleReference;
      final address = switch (c) {
        BlockReference(:final address) => address,
        ModuleReference(:final address) => address,
        _ => null,
      };
      final attribute = switch (c) {
        BlockReference(:final attribute) => attribute,
        ModuleReference(:final attribute) => attribute,
        _ => '',
      };
      if (address == null || attribute.isEmpty) {
        throw MigrateBlocker(
          'only an output whose value is one resource or module attribute '
          'becomes an export; this one stays in outputs.tf',
        );
      }
      final target = isModule ? null : ctx.targets[address];
      final moduleTarget = isModule ? ctx.moduleTargets[address] : null;
      if (target == null && moduleTarget == null) {
        throw MigrateBlocker(
          'output references "$address", which is not migrated',
        );
      }
      final args = <String>['emitTerraformOutput: true'];
      for (final entry in values.entries) {
        final v = entry.value;
        switch (entry.key) {
          case 'value':
            break;
          case 'description':
            final s = v.constantString;
            if (s == null) throw MigrateBlocker('description is not a literal');
            args.add('description: ${dartString(s)}');
          case 'sensitive':
            if (v is! LiteralExpr || v.value is! bool) {
              throw MigrateBlocker('sensitive must be a boolean');
            }
            if (v.value == true) args.add('sensitive: true');
          default:
            throw MigrateBlocker(
              '"${entry.key}" has no export equivalent; the output stays in '
              'outputs.tf',
            );
        }
      }
      final dartName = target?.dartName ?? moduleTarget!.dartName;
      final getterName = target != null
          ? (target.getter(attribute)?.dartType == 'String'
                ? target.getter(attribute)!.dartName
                : null)
          : moduleTarget!.getter(attribute)?.dartName;
      final ref = getterName != null
          ? '$dartName.$getterName'
          : 'TfRef.attribute<String>($dartName, ${dartString(attribute)})';
      final key = isDartIdentifier(o.name) ? o.name : lowerCamel(o.name);
      if (key != o.name) args.add('terraformOutputName: ${dartString(o.name)}');
      _outputRefs.add(address);
      return (
        statement:
            'addExport(${dartString(key)}, '
            "ResourceIdExport($ref, ${args.join(', ')}));",
        address: address,
      );
    } on MigrateBlocker catch (e) {
      _keep('output.${o.name}', e.reason);
      return null;
    }
  }

  final _outputRefs = <String>{};

  // -----------------------------------------------------------------------
  // Ordering
  // -----------------------------------------------------------------------

  /// Resources and data sources in an order where every Dart local is
  /// declared before it is used: source order, moved only where a reference
  /// or `depends_on` forces the target first.
  List<_BlockInfo> _blocksInOrder(Map<String, String> refused) {
    _expansions.clear();
    // Names in use per (kind, type): every block as written, plus the
    // instances of every block unrolled so far — so an instance name can
    // collide neither with a sibling nor with another block's instance
    // (`svc["api/0"]` and `svc_api[0]` would both be `svc_api_0`).
    final taken = <String, Set<String>>{};
    for (final d in module.dataSources) {
      taken.putIfAbsent('data.${d.type}', () => {}).add(d.name);
    }
    for (final r in module.resources) {
      taken.putIfAbsent(r.type, () => {}).add(r.name);
    }

    final collected = <_BlockInfo>[];
    void collect({
      required String address,
      required String type,
      required String name,
      required CatalogKind kind,
      required Body body,
      required bool isData,
    }) {
      Expansion? expansion;
      var blocker = refused[address];
      final names = taken[isData ? 'data.$type' : type]!;
      if (blocker == null) {
        try {
          expansion = expandBlock(
            type: type,
            name: name,
            body: body,
            isData: isData,
            siblingNames: names,
          );
        } on MigrateBlocker catch (e) {
          blocker = e.reason;
        }
      }
      if (expansion != null) {
        for (final instance in expansion.item.instances) {
          names.add(instance.to.split('.').last);
        }
      }
      if (expansion == null) {
        collected.add(
          _BlockInfo(
            address: address,
            type: type,
            name: name,
            kind: kind,
            body: body,
            isData: isData,
            expansionBlocker: blocker,
          ),
        );
        return;
      }
      _expansions[address] = expansion;
      for (var i = 0; i < expansion.bodies.length; i++) {
        final instance = expansion.item.instances[i];
        collected.add(
          _BlockInfo(
            address: instance.to,
            type: type,
            name: instance.to.split('.').last,
            kind: kind,
            body: expansion.bodies[i],
            isData: isData,
            expandedFrom: instance.from,
          ),
        );
      }
    }

    for (final d in module.dataSources) {
      collect(
        address: d.address,
        type: d.type,
        name: d.name,
        kind: CatalogKind.dataSource,
        body: d.body,
        isData: true,
      );
    }
    for (final r in module.resources) {
      collect(
        address: r.address,
        type: r.type,
        name: r.name,
        kind: CatalogKind.resource,
        body: r.body,
        isData: false,
      );
    }
    // Module calls take part in the same ordering: a call may pass a
    // resource's attribute down, and a resource may read one of its outputs.
    // They are never unrolled — a `count` on a call is a blocker.
    for (final c in module.moduleCalls) {
      collected.add(
        _BlockInfo(
          address: 'module.${c.name}',
          type: 'module',
          name: c.name,
          kind: CatalogKind.resource,
          body: c.body,
          isData: false,
          call: c,
        ),
      );
    }

    // Point every reference at the unrolled instances.
    _rewriter = ReferenceRewriter([for (final e in _expansions.values) e.item]);
    final all = <_BlockInfo>[];
    for (final b in collected) {
      if (_rewriter.isEmpty || b.expansionBlocker != null) {
        all.add(b);
        continue;
      }
      try {
        all.add(b.withBody(_rewriter.body(b.body, topLevel: true)));
      } on MigrateBlocker catch (e) {
        all.add(b.withBlocker(e.reason));
      }
    }

    final index = {for (final b in all) b.address: b};
    final deps = <String, Set<String>>{
      for (final b in all)
        b.address: _references(b).where(index.containsKey).toSet(),
    };
    // Kahn with source order as the tie-break.
    final out = <_BlockInfo>[];
    final done = <String>{};
    var progress = true;
    while (out.length < all.length && progress) {
      progress = false;
      for (final b in all) {
        if (done.contains(b.address)) continue;
        if (deps[b.address]!.every(done.contains)) {
          out.add(b);
          done.add(b.address);
          progress = true;
        }
      }
    }
    // A cycle (invalid Terraform) — append the rest in source order.
    for (final b in all) {
      if (!done.contains(b.address)) out.add(b);
    }
    return out;
  }

  Set<String> _references(_BlockInfo b) {
    final out = <String>{};
    void visit(Expr e) {
      final t = singleReference(e);
      if (t != null) {
        final c = classifyTraversal(t);
        if (c is BlockReference) out.add(c.address);
        if (c is ModuleReference) out.add(c.address);
      }
      switch (e) {
        case TemplateExpr(:final parts):
          for (final p in parts) {
            if (p is TemplateInterpolation) visit(p.expr);
          }
        case TupleExpr(:final elements):
          elements.forEach(visit);
        case ObjectExpr(:final items):
          for (final i in items) {
            visit(i.value);
          }
        default:
          break;
      }
    }

    final values = objectMap(bodyAsObject(b.body)) ?? {};
    for (final entry in values.entries) {
      switch (entry.key) {
        case 'depends_on':
          _addAddresses(entry.value, out);
        case 'lifecycle':
          // `replace_triggered_by` holds references in HCL (which `visit`
          // sees) and address strings in tf.json.
          final replace = objectMap(entry.value)?['replace_triggered_by'];
          if (replace != null) _addAddresses(replace, out);
          visit(entry.value);
        default:
          visit(entry.value);
      }
    }
    out.remove(b.address);
    return out;
  }
}

/// Adds the block addresses [list] names to [out]: bare references
/// (`google_pubsub_topic.t`, HCL) or address strings (tf.json), as
/// `depends_on` and `lifecycle.replace_triggered_by` write them.
void _addAddresses(Expr list, Set<String> out) {
  if (list is! TupleExpr) return;
  for (final e in list.elements) {
    final t = singleReference(e) ?? _traversalOf(e.constantString);
    final c = t == null ? null : classifyTraversal(t);
    if (c is BlockReference) out.add(c.address);
    if (c is ModuleReference) out.add(c.address);
  }
}

/// [source] parsed as a reference (`google_pubsub_topic.t`), or `null` when
/// it is absent or not one.
TraversalExpr? _traversalOf(String? source) {
  if (source == null) return null;
  try {
    final e = parseHclExpression(source);
    return e is TraversalExpr ? e : null;
  } on HclParseException {
    return null;
  }
}

/// The provider a block of [tfType] from [package] uses without a `provider`
/// argument: the type prefix (`google_pubsub_topic` → `google`, `time_sleep`
/// → `time`), or `google-beta` for the beta package, whose types keep the
/// `google_` prefix.
String _defaultProviderFor(String package, String tfType) =>
    package == 'terradart_google_beta'
    ? 'google-beta'
    : tfType.split('_').first;

final class _BlockInfo {
  const _BlockInfo({
    required this.address,
    required this.type,
    required this.name,
    required this.kind,
    required this.body,
    required this.isData,
    this.expandedFrom,
    this.expansionBlocker,
    this.call,
  });

  final String address;
  final String type;
  final String name;
  final CatalogKind kind;
  final Body body;
  final bool isData;

  /// Non-null when this "block" is a `module` call rather than a resource or
  /// data source: it takes part in the ordering the same way, but is emitted
  /// as `addModule(...)`.
  final ModuleCallBlock? call;

  /// The address this block had before its `count` / `for_each` was
  /// unrolled (`google_x.y[0]`), or `null` for a block written as-is.
  final String? expandedFrom;

  /// Why this block cannot become Dart, decided before emission: a
  /// `count` / `for_each` that is not a literal, an instance of it that did
  /// not translate, or a reference to an instance another block does not
  /// declare.
  final String? expansionBlocker;

  _BlockInfo withBody(Body body) => _BlockInfo(
    address: address,
    type: type,
    name: name,
    kind: kind,
    body: body,
    isData: isData,
    expandedFrom: expandedFrom,
    expansionBlocker: expansionBlocker,
    call: call,
  );

  _BlockInfo withBlocker(String reason) => _BlockInfo(
    address: address,
    type: type,
    name: name,
    kind: kind,
    body: body,
    isData: isData,
    expandedFrom: expandedFrom,
    expansionBlocker: reason,
    call: call,
  );
}
