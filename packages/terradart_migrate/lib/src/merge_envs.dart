/// `--merge-envs`: sibling environment roots as one Stack.
///
/// `envs/dev` and `envs/prod` are usually the same configuration with a
/// handful of different values. Migrated one Stack each, that duplication
/// carries straight into Dart. Merged, they become
/// `AppStack({required Env env})`: every block both roots declare is written
/// once, every value they disagree on is a constant on the generated `Env`
/// enum, and a block only one of them declares sits behind `if (env.<flag>)`.
///
/// The merge is refused — with a reason, leaving one Stack per environment —
/// whenever the roots differ in anything but liftable values: a different
/// reference, a different nested block, a different order.
library;

import 'emit/context.dart';
import 'emit/dart_literal.dart';
import 'emit/env_plan.dart';
import 'emit/naming.dart';
import 'emit/stack_emitter.dart';
import 'manifests.dart';
import 'migrate.dart';
import 'migrate_manifest.dart';

/// A run of consecutive statements sharing one guard.
final class EnvGuard {
  const EnvGuard({required this.dartName, required this.members});

  /// `isProd` — the `Env` field that is true exactly in [members].
  final String dartName;

  /// The enum members the guarded blocks belong to.
  final List<String> members;
}

/// Sibling environment roots folded into one Stack, or the reason they
/// could not be.
final class MergedEnvironment {
  const MergedEnvironment({
    required this.group,
    required this.envs,
    required this.stackClass,
    required this.stackFile,
    required this.envClass,
    required this.envFile,
    required this.stacks,
    this.source = '',
    this.envSource = '',
    this.packages = const [],
    this.moduleWrappers = const {},
    this.fields = const [],
    this.guards = const [],
    this.usesWorkspace = false,
    this.refusal,
  });

  /// The directory the roots share (`.`, `envs`).
  final String group;
  final List<EnvBinding> envs;

  /// `AppStack`, in `lib/<stackFile>.dart`.
  final String stackClass;
  final String stackFile;

  /// `Env`, in `lib/<envFile>.dart`.
  final String envClass;
  final String envFile;

  /// Enum member → that environment's own migration (its report drives
  /// `MIGRATION.md` and its sidecar), emitted with the merge's constants.
  final Map<String, MigratedStack> stacks;

  /// The merged Stack, empty when [refusal] is set.
  final String source;

  /// The `Env` enum, empty when [refusal] is set.
  final String envSource;
  final List<String> packages;
  final Set<String> moduleWrappers;

  /// The values the environments disagree on.
  final List<EnvField> fields;

  /// The flags guarding the blocks only some environments declare.
  final List<EnvGuard> guards;

  /// True when the merged Stack takes a `workspace` parameter too
  /// (`--lift-workspace`).
  final bool usesWorkspace;

  /// Why the roots stayed one Stack each; `null` when they merged.
  final String? refusal;

  bool get isMerged => refusal == null;
}

/// Migrates [envs] as one Stack, or explains why it could not.
///
/// [localModules] maps an enum member to that root's `module` call wrappers
/// (see [migrateStack]). The environments are emitted with the constants
/// [planEnvironments] lifted, then lined up statement for statement: a
/// statement two environments write differently is a refusal, a statement
/// only some write is guarded.
MergedEnvironment mergeEnvironments({
  required String group,
  required List<EnvBinding> envs,
  required String stackClass,
  required String stackFile,
  required String envClass,
  required String envFile,
  required String version,
  Map<String, Map<String, LocalModule>> localModules = const {},
  List<MigrateManifest>? manifests,
  bool allowTodo = false,
  bool liftWorkspace = false,
  bool format = true,
}) {
  final plan = planEnvironments(envs);

  EmittedStack emitOne(EnvBinding env, Set<String> forceLocals) => StackEmitter(
    env.module,
    ctx: EmitContext(
      manifests: manifests ?? allMigrateManifests,
      sensitive: SensitiveIndex.fromCatalogs(),
    ),
    moduleName: env.path,
    stackClass: stackClass,
    stackFile: stackFile,
    version: version,
    allowTodo: allowTodo,
    localModules: localModules[env.member] ?? const {},
    envValues: plan.overrides[env.member] ?? const {},
    forceLocals: forceLocals,
    reservedNames: const {'env'},
    liftWorkspace: liftWorkspace,
  ).emit();

  // A local one environment reads is declared in every environment, so the
  // merged bodies still line up statement for statement.
  final union = <String>{
    for (final env in envs)
      for (final s in emitOne(env, const {}).statements) ...s.uses,
  };
  final emitted = {for (final env in envs) env.member: emitOne(env, union)};

  MergedEnvironment refuse(String reason) => MergedEnvironment(
    group: group,
    envs: envs,
    stackClass: stackClass,
    stackFile: stackFile,
    envClass: envClass,
    envFile: envFile,
    stacks: {
      for (final env in envs)
        env.member: _stackOf(emitted[env.member]!, stackFile),
    },
    refusal: reason,
  );

  final noStack = [
    for (final env in envs)
      if (!emitted[env.member]!.hasStack) env.path,
  ];
  if (noStack.isNotEmpty) {
    return refuse(
      'nothing translates in ${_list(noStack)}, so there is no Stack to '
      'merge into',
    );
  }
  final ctors = {for (final env in envs) emitted[env.member]!.ctorInit};
  if (ctors.length > 1) {
    return refuse(
      'the environments declare different providers or backends '
      '(${_list([for (final c in ctors) c])})',
    );
  }

  // ---- line the bodies up ------------------------------------------------
  final statements = <String, Map<String, StackStatement>>{};
  for (final env in envs) {
    for (final s in emitted[env.member]!.statements) {
      if (s.tag == 'todo' || s.tag.startsWith('todo.')) continue;
      statements.putIfAbsent(s.tag, () => {})[env.member] = s;
    }
  }
  for (final tag in statements.keys) {
    final texts = {for (final s in statements[tag]!.values) s.text};
    if (texts.length == 1) continue;
    final address = tag.startsWith('moved:') ? 'moved' : tag;
    final why = plan.notes[address];
    return refuse(
      'the environments write `$address` differently'
      '${why == null ? '' : ': ${_list(why)}'}',
    );
  }

  final orders = [
    for (final env in envs)
      [
        for (final s in emitted[env.member]!.statements)
          if (statements.containsKey(s.tag)) s.tag,
      ],
  ];
  final order = _mergeOrders(orders, {
    for (final e in statements.entries) e.key: e.value.keys.toSet(),
  });
  if (order == null) {
    return refuse('the environments declare their blocks in a different order');
  }

  // ---- guards ------------------------------------------------------------
  final all = {for (final env in envs) env.member};
  final guardNames = <String, String>{};
  final guards = <EnvGuard>[];
  final taken = plan.takenNames;
  for (final tag in order) {
    final owners = statements[tag]!.keys.toSet();
    if (owners.length == all.length) continue;
    final key = _key(envs, owners);
    if (guardNames.containsKey(key)) continue;
    final name = _uniqueName(_guardName(envs, owners), taken);
    taken.add(name);
    guardNames[key] = name;
    guards.add(
      EnvGuard(
        dartName: name,
        members: [
          for (final env in envs)
            if (owners.contains(env.member)) env.member,
        ],
      ),
    );
  }

  // ---- runs of one guard, and the locals they may not leak ---------------
  final runs = <({String? guard, List<StackStatement> statements})>[];
  String? previous = '';
  for (final tag in order) {
    final owners = statements[tag]!.keys.toSet();
    final guard = owners.length == all.length
        ? null
        : guardNames[_key(envs, owners)];
    final statement = statements[tag]!.values.first;
    if (runs.isEmpty || guard != previous) {
      runs.add((guard: guard, statements: [statement]));
    } else {
      runs.last.statements.add(statement);
    }
    previous = guard;
  }
  // A guarded local another `if` block reads is declared ahead of the one
  // that assigns it (`late final GoogleStorageBucket backups;`), so the two
  // blocks share the name without either leaving its guard. A reader outside
  // the environments that declare it would read an unassigned local, and is
  // refused instead.
  final hoisted = <String>{};
  for (var i = 0; i < runs.length; i++) {
    final run = runs[i];
    if (run.guard == null) continue;
    final declared = {
      for (final s in run.statements)
        if (s.declaresLocal) s.tag,
    };
    if (declared.isEmpty) continue;
    final only = statements[run.statements.first.tag]!.keys.toSet();
    for (var j = 0; j < runs.length; j++) {
      if (i == j) continue;
      for (final s in runs[j].statements) {
        for (final tag in s.uses.where(declared.contains)) {
          if (!only.containsAll(statements[s.tag]!.keys)) {
            return refuse(
              '`$tag` is declared in ${_list(only)} only, but `${s.tag}` '
              'reads it in ${_list(statements[s.tag]!.keys)}',
            );
          }
          hoisted.add(tag);
        }
      }
    }
  }

  // ---- render ------------------------------------------------------------
  final slotTypes = <String, String>{
    for (final env in envs) ...emitted[env.member]!.envSlotTypes,
  };
  // `package:` imports first (terradart_core sorts to the front), then the
  // libraries beside the Stack: the enum and the module wrappers.
  final lines = {
    for (final env in envs) ...emitted[env.member]!.imports,
    "import '$envFile.dart';",
  };
  final imports = [
    ...lines.where((l) => l.contains('package:')).toList()..sort(),
    ...lines.where((l) => !l.contains('package:')).toList()..sort(),
  ];
  final body = StringBuffer();
  for (final run in runs) {
    for (final s in run.statements) {
      if (!hoisted.contains(s.tag)) continue;
      body.writeln('late final ${s.dartType} ${_localOf(s)};');
    }
    if (run.guard != null) body.writeln('if (env.${run.guard}) {');
    for (final s in run.statements) {
      body.writeln(
        hoisted.contains(s.tag) ? s.text.replaceFirst('final ', '') : s.text,
      );
    }
    if (run.guard != null) body.writeln('}');
  }
  for (final env in envs) {
    final kept = emitted[env.member]!.report.kept;
    if (!allowTodo || kept.isEmpty) continue;
    body.writeln(
      '// TODO(terradart-migrate): ${env.member}: ${kept.length} block(s) '
      'stay untranslated with no sidecar (--allow-todo).',
    );
    for (final k in kept) {
      body.writeln(
        '// TODO(terradart-migrate): ${env.member}: ${k.address}: ${k.reason}',
      );
    }
  }

  final usesWorkspace = envs.any((e) => emitted[e.member]!.usesWorkspace);
  final source =
      '''
/// $stackClass — migrated from ${_list([for (final e in envs) '`${e.path}`'])} by terradart-migrate $version.
///
/// One Stack for every environment (`--merge-envs`): what the roots disagree
/// on is a constant on [$envClass], and a block only some of them declare
/// sits behind an `if`. Resource addresses are preserved, so
/// `terraform plan` against each environment's state reports no changes.
library;

${imports.join('\n')}

final class $stackClass extends Stack {
  $stackClass({required this.env${usesWorkspace ? ', required String workspace' : ''}}) : super(${emitted[envs.first.member]!.ctorInit}) {
$body  }

  /// The environment this Stack synthesizes for.
  final $envClass env;
}
''';

  final envSource = _renderEnv(
    envClass: envClass,
    stackClass: stackClass,
    version: version,
    envs: envs,
    fields: plan.fields,
    guards: guards,
    slotTypes: slotTypes,
  );

  return MergedEnvironment(
    group: group,
    envs: envs,
    stackClass: stackClass,
    stackFile: stackFile,
    envClass: envClass,
    envFile: envFile,
    stacks: {
      for (final env in envs)
        env.member: _stackOf(emitted[env.member]!, stackFile),
    },
    source: format ? formatDart(source) : source,
    envSource: format ? formatDart(envSource) : envSource,
    packages: {
      for (final env in envs) ...emitted[env.member]!.packages,
    }.toList()..sort(),
    moduleWrappers: {
      for (final env in envs) ...emitted[env.member]!.moduleWrappers,
    },
    fields: plan.fields,
    guards: guards,
    usesWorkspace: usesWorkspace,
  );
}

/// `lib/<envFile>.dart`: the environments as an enum, one constant per value
/// the roots disagree on.
String _renderEnv({
  required String envClass,
  required String stackClass,
  required String version,
  required List<EnvBinding> envs,
  required List<EnvField> fields,
  required List<EnvGuard> guards,
  required Map<String, String> slotTypes,
}) {
  String typeOf(EnvField f) => slotTypes[f.expression] ?? f.inferredType;

  final members = <String>[];
  for (var i = 0; i < envs.length; i++) {
    final env = envs[i];
    final args = <String>[
      'path: ${dartString(env.path)}',
      for (final f in fields)
        '${f.dartName}: ${dartValue(f.values[env.member])}',
      for (final g in guards)
        if (g.members.contains(env.member)) '${g.dartName}: true',
    ];
    members.add(
      '  /// `${env.path}/`, synthesized into `tf-out/${env.path}`.\n'
      '  ${env.member}(${args.join(', ')})${i == envs.length - 1 ? ';' : ','}',
    );
  }

  final parameters = <String>[
    'required this.path',
    for (final f in fields) 'required this.${f.dartName}',
    for (final g in guards) 'this.${g.dartName} = false',
  ];
  final declarations = <String>[
    '  /// Where this environment synthesizes, relative to the package root.\n'
        '  final String path;',
    for (final f in fields)
      '  /// `${f.origin}`.\n  final ${typeOf(f)} ${f.dartName};',
    for (final g in guards)
      '  /// True in ${_list(g.members)}: blocks only ${g.members.length == 1 ? 'that environment declares' : 'those environments declare'}.\n'
          '  final bool ${g.dartName};',
  ];

  return '''
/// The environments `$stackClass` synthesizes for — migrated by
/// terradart-migrate $version.
///
/// One member per environment root, carrying every value the roots disagree
/// on. Add an environment by adding a member: the Stack is the same code.
library;

enum $envClass {
${members.join('\n')}

  const $envClass({${parameters.join(', ')}});

${declarations.join('\n\n')}

  /// The environment called [name] (`dev`), or `null`.
  static $envClass? byName(String name) {
    for (final env in values) {
      if (env.name == name) return env;
    }
    return null;
  }
}
''';
}

MigratedStack _stackOf(EmittedStack emitted, String stackFile) => MigratedStack(
  stackClass: emitted.stackClass,
  stackFile: stackFile,
  // The Stack itself is written once for the whole group.
  source: '',
  packages: emitted.packages,
  report: emitted.report,
  hasStack: emitted.hasStack,
  moduleWrappers: emitted.moduleWrappers,
  usesWorkspace: emitted.usesWorkspace,
);

/// An order over every tag that keeps each environment's own order, or
/// `null` when the environments contradict each other.
///
/// Among the statements it may emit next, one belonging to the same
/// environments as the last is preferred, so guarded blocks come out in as
/// few `if` blocks as possible.
List<String>? _mergeOrders(
  List<List<String>> orders,
  Map<String, Set<String>> owners,
) {
  final cursors = List<int>.filled(orders.length, 0);
  final total = {for (final o in orders) ...o}.length;
  final out = <String>[];
  Set<String>? previous;
  while (out.length < total) {
    final free = <String>[];
    for (var i = 0; i < orders.length; i++) {
      if (cursors[i] >= orders[i].length) continue;
      final tag = orders[i][cursors[i]];
      if (free.contains(tag)) continue;
      var ok = true;
      for (var j = 0; j < orders.length && ok; j++) {
        if (j == i) continue;
        final at = orders[j].indexOf(tag, cursors[j]);
        if (at > cursors[j]) ok = false;
      }
      if (ok) free.add(tag);
    }
    if (free.isEmpty) return null;
    final last = previous;
    final tag = free.firstWhere(
      (t) => last != null && _same(owners[t]!, last),
      orElse: () => free.first,
    );
    out.add(tag);
    previous = owners[tag];
    for (var j = 0; j < orders.length; j++) {
      if (cursors[j] < orders[j].length && orders[j][cursors[j]] == tag) {
        cursors[j]++;
      }
    }
  }
  return out;
}

/// `isProd`, `isDevOrStaging` — the flag for the environments [owners].
String _guardName(List<EnvBinding> envs, Set<String> owners) =>
    'is${[for (final e in envs)
      if (owners.contains(e.member)) pascalCase(e.member)].join('Or')}';

/// The Dart local a `final x = add(...);` statement declares.
String _localOf(StackStatement s) =>
    RegExp(r'^final (\w+) =').firstMatch(s.text)!.group(1)!;

bool _same(Set<String> a, Set<String> b) =>
    a.length == b.length && a.containsAll(b);

/// A stable key for the set of environments a block belongs to.
String _key(List<EnvBinding> envs, Set<String> owners) => [
  for (final e in envs)
    if (owners.contains(e.member)) e.member,
].join('+');

String _uniqueName(String candidate, Set<String> taken) {
  if (!taken.contains(candidate)) return candidate;
  for (var n = 2; ; n++) {
    if (!taken.contains('$candidate$n')) return '$candidate$n';
  }
}

String _list(Iterable<String> items) {
  final list = items.toList();
  if (list.isEmpty) return 'none';
  if (list.length == 1) return list.single;
  return '${list.sublist(0, list.length - 1).join(', ')} and ${list.last}';
}
