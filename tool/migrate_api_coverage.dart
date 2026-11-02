// The migrator's API coverage gate: every public factory a provider package
// declares needs a manifest entry for its Terraform type and kind, and every
// constructor input (a scalar, an untyped block, an enum, an EnumList, a
// sealed choice and its keys, a RefTo, an IAM principal, a helper block) and
// output getter needs a recipe in that package's migration manifest that
// builds the same shape, so `terradart migrate` never falls back to a
// string where the API is typed. A sealed choice must also be encoded where
// its slot says (merged into the block or under its key), each variant's
// shorthand must be a factory constructor on the sealed type that redirects
// to that variant, a RefTo must emit the attribute its slot names, and
// getters a factory inherits count as its own.
//
// The wrapper side is read from the package sources with the analyzer, the
// manifest side from `allMigrateManifests`; nothing is hand-listed. A
// `manual` slot or a helper with a reason is a finding unless
// tool/migrate_manifest_debt.yaml names a Terraform type that reaches it,
// and a factory without an entry is one unless
// tool/migrate_unmanifested_factories.yaml names another package whose
// manifest builds it.
import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/references/resolved_reference.dart'
    show principalTypes;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:yaml/yaml.dart';

const migrateManifestDebtPath = 'tool/migrate_manifest_debt.yaml';

/// The public surface of one provider package, as its sources declare it.
final class WrapperApi {
  WrapperApi._();

  /// Class → constructor parameter → declared type source.
  final Map<String, Map<String, String>> inputs = {};

  /// Enum (an extension type over `TfArg<String>`) → raw value → member.
  final Map<String, Map<String, String>> enums = {};

  /// Sealed class → factory constructor name → the class it redirects to.
  final Map<String, Map<String, String>> sealed = {};

  /// Sealed variant → the Terraform key its `blockKey` getter returns.
  final Map<String, String> blockKeys = {};

  /// Class → getter → `(attribute, T)` of its `TfRef<T>`.
  final Map<String, Map<String, ({String attribute, String type})>> getters =
      {};

  /// Classes with a `principal` getter, the IAM principal of their `member`.
  final Set<String> principalGetters = {};

  /// Class → value → the attribute its `encodeAs('...')` emits: what a
  /// `RefTo` input writes.
  final Map<String, Map<String, String>> refAttributes = {};

  /// Class → value → how its encoding is keyed: the Terraform key of a map
  /// entry that holds it, or null when it lands in the enclosing block
  /// (`x.blockKey: x.value`, `...x.encode()`).
  final Map<String, Map<String, String?>> encodedUnder = {};

  /// Concrete public classes that extend `Resource` or `Data`, directly or
  /// through package classes: the factories a manifest entry must describe,
  /// with the Terraform type they emit (null when the source does not say).
  final Map<String, ({String? tfType, CatalogKind kind})> factories = {};

  /// Every `.dart` file under `packages/<package>/lib`.
  static WrapperApi readPackage(String repoRoot, String package) {
    final lib = Directory(p.join(repoRoot, 'packages', package, 'lib'));
    return parse([
      for (final f in lib.listSync(recursive: true).whereType<File>())
        if (f.path.endsWith('.dart')) f.readAsStringSync(),
    ]);
  }

  static WrapperApi parse(Iterable<String> sources) {
    final api = WrapperApi._();
    for (final source in sources) {
      final unit = parseString(content: source, throwIfDiagnostics: false).unit;
      for (final d in unit.declarations) {
        if (d is ClassDeclaration) api._class(d);
        if (d is ExtensionTypeDeclaration) api._enum(d);
      }
    }
    // A `super.x` parameter takes the type of the superclass field. One
    // whose superclass is outside the package (`Resource`'s `lifecycle`)
    // is a bookend every factory shares, not an input of its own.
    for (final MapEntry(key: name, value: pending)
        in api._superParams.entries) {
      final fields = api._fields[api._superclass[name]];
      if (fields == null) continue;
      for (final param in pending) {
        if (fields[param] case final type?) api.inputs[name]![param] = type;
      }
    }
    // A getter a package superclass declares is part of the subclass API.
    for (final name in api._superclass.keys) {
      final seen = <String>{name};
      for (
        var s = api._superclass[name];
        s != null && seen.add(s);
        s = api._superclass[s]
      ) {
        if (api.getters[s] case final inherited?) {
          api.getters[name] = {...inherited, ...?api.getters[name]};
        }
        if (api.principalGetters.contains(s)) api.principalGetters.add(name);
      }
    }
    for (final name in api._superclass.keys) {
      if (api._abstract.contains(name)) continue;
      final kind = api._kindOf(name, {});
      if (kind != null) {
        api.factories[name] = (tfType: api._tfTypes[name], kind: kind);
      }
    }
    return api;
  }

  final Map<String, Map<String, String>> _fields = {};
  final Map<String, String> _superclass = {};
  final Map<String, List<String>> _superParams = {};
  final Set<String> _abstract = {};
  final Map<String, String> _tfTypes = {};

  CatalogKind? _kindOf(String name, Set<String> seen) =>
      switch (_superclass[name]) {
        'Resource' => CatalogKind.resource,
        'Data' => CatalogKind.dataSource,
        final s? when seen.add(s) => _kindOf(s, seen),
        _ => null,
      };

  void _class(ClassDeclaration d) {
    final name = d.namePart.typeName.lexeme;
    if (name.startsWith('_')) return;
    final members = d.body.members;
    final fields = <String, String>{};
    for (final m in members.whereType<FieldDeclaration>()) {
      final type = m.fields.type?.toSource();
      if (type == null) continue;
      for (final v in m.fields.variables) {
        fields[v.name.lexeme] = type;
      }
    }
    _fields[name] = fields;
    if (d.extendsClause?.superclass.name.lexeme case final s?) {
      _superclass[name] = s;
    }
    if (d.abstractKeyword != null) _abstract.add(name);
    final constructors = members.whereType<ConstructorDeclaration>().toList();
    if (d.sealedKeyword != null) {
      sealed[name] = {
        for (final c in constructors)
          if ((c.name, c.redirectedConstructor) case (final n?, final r?))
            n.lexeme: r.type.name.lexeme,
      };
      return;
    }
    if (_terraformType(members) case final t?) _tfTypes[name] = t;
    final encoding = _EncodingVisitor();
    d.accept(encoding);
    if (encoding.attributes.isNotEmpty) {
      refAttributes[name] = encoding.attributes;
    }
    if (encoding.under.isNotEmpty) encodedUnder[name] = encoding.under;
    final unnamed = constructors.where((c) => c.name == null).firstOrNull;
    if (unnamed != null) {
      final params = <String, String>{};
      for (final param in unnamed.parameters.parameters) {
        final pname = param.name?.lexeme;
        if (pname == null) continue;
        if (param is SuperFormalParameter) {
          (_superParams[name] ??= []).add(pname);
          continue;
        }
        final type =
            param.type?.toSource() ??
            (param is FieldFormalParameter ? fields[pname] : null);
        if (type != null) params[pname] = type;
      }
      inputs[name] = params;
    }
    final refs = <String, ({String attribute, String type})>{};
    for (final m in members.whereType<MethodDeclaration>()) {
      if (!m.isGetter) continue;
      if (m.name.lexeme == 'blockKey') {
        if (m.body case ExpressionFunctionBody(
          expression: final SimpleStringLiteral key,
        )) {
          blockKeys[name] = key.value;
        }
        continue;
      }
      if (m.name.lexeme == 'principal' &&
          principalTypes.containsKey(m.returnType?.toSource())) {
        principalGetters.add(name);
        continue;
      }
      final body = m.body;
      if (body is! ExpressionFunctionBody) continue;
      final call = body.expression;
      if (call is! MethodInvocation || call.methodName.name != 'attribute') {
        continue;
      }
      final target = call.target;
      if (target is! SimpleIdentifier || target.name != 'TfRef') continue;
      final args = [
        for (final a in call.argumentList.arguments) a.argumentExpression,
      ];
      final typeArgs = call.typeArguments?.arguments;
      if (args.length != 2 || typeArgs == null || typeArgs.length != 1) {
        continue;
      }
      final attribute = args[1];
      if (attribute is! SimpleStringLiteral) continue;
      refs[m.name.lexeme] = (
        attribute: attribute.value,
        type: typeArgs.single.toSource(),
      );
    }
    if (refs.isNotEmpty) getters[name] = refs;
  }

  /// `static const String tfType = '...'`, else the `terraformType:` a
  /// constructor passes to `super`.
  static String? _terraformType(Iterable<ClassMember> members) {
    for (final m in members.whereType<FieldDeclaration>()) {
      if (!m.isStatic) continue;
      for (final v in m.fields.variables) {
        if (v.name.lexeme != 'tfType') continue;
        if (v.initializer case final SimpleStringLiteral lit) return lit.value;
      }
    }
    for (final c in members.whereType<ConstructorDeclaration>()) {
      for (final i in c.initializers.whereType<SuperConstructorInvocation>()) {
        for (final a in i.argumentList.arguments.whereType<NamedArgument>()) {
          if (a.name.lexeme != 'terraformType') continue;
          if (a.argumentExpression case final SimpleStringLiteral lit) {
            return lit.value;
          }
        }
      }
    }
    return null;
  }

  void _enum(ExtensionTypeDeclaration d) {
    final ctor = d.namePart;
    if (ctor is! PrimaryConstructorDeclaration) return;
    final rep = ctor.formalParameters.parameters.firstOrNull;
    if (rep?.type?.toSource() != 'TfArg<String>') return;
    final name = ctor.typeName.lexeme;
    final members = <String, String>{};
    for (final m in d.body.members.whereType<FieldDeclaration>()) {
      if (!m.isStatic) continue;
      for (final v in m.fields.variables) {
        final raw = _literalArg(_firstArg(v.initializer));
        if (raw != null) members[raw] = v.name.lexeme;
      }
    }
    // An enum lists its members in `values`; other extension types over
    // `TfArg<String>` (`AppwritePermission`) are not enums.
    if (_declaresValues(d)) {
      enums[name] = members;
    }
  }

  static bool _declaresValues(ExtensionTypeDeclaration d) =>
      d.body.members.whereType<FieldDeclaration>().any(
        (m) =>
            m.isStatic &&
            m.fields.variables.any((v) => v.name.lexeme == 'values'),
      );

  /// `X._(TfArgLiteral('RAW'))` → `TfArgLiteral('RAW')`.
  static Expression? _firstArg(Expression? e) => switch (e) {
    InstanceCreationExpression(:final argumentList) ||
    MethodInvocation(
      :final argumentList,
    ) => argumentList.arguments.firstOrNull?.argumentExpression,
    _ => null,
  };

  static String? _literalArg(Expression? e) {
    final raw = _firstArg(e);
    return raw is SimpleStringLiteral ? raw.value : null;
  }
}

/// Reads how a class encodes its values: `x?.encodeAs('id')` for a
/// reference, and the map entry or spread that holds `x`.
final class _EncodingVisitor extends RecursiveAstVisitor<void> {
  final Map<String, String> attributes = {};
  final Map<String, String?> under = {};

  static String? _root(Expression? e) => switch (e) {
    SimpleIdentifier(:final name) => name,
    PrefixedIdentifier(:final prefix) => prefix.name,
    PropertyAccess(:final target) => _root(target),
    MethodInvocation(:final target) => _root(target),
    PostfixExpression(:final operand) => _root(operand),
    ParenthesizedExpression(:final expression) => _root(expression),
    _ => null,
  };

  @override
  void visitMethodInvocation(MethodInvocation node) {
    if (node.methodName.name == 'encodeAs') {
      final args = node.argumentList.arguments;
      final root = _root(node.target);
      if (root != null && args.length == 1) {
        if (args.single.argumentExpression case final SimpleStringLiteral a) {
          attributes[root] = a.value;
        }
      }
    }
    super.visitMethodInvocation(node);
  }

  @override
  void visitMapLiteralEntry(MapLiteralEntry node) {
    final key = node.key;
    if (key is PrefixedIdentifier && key.identifier.name == 'blockKey') {
      under.putIfAbsent(key.prefix.name, () => null);
    } else if (key is SimpleStringLiteral) {
      final names = _Identifiers();
      node.value.accept(names);
      for (final v in names.found) {
        under.putIfAbsent(v, () => key.value);
      }
    }
    super.visitMapLiteralEntry(node);
  }

  @override
  void visitSpreadElement(SpreadElement node) {
    if (_root(node.expression) case final v?) under.putIfAbsent(v, () => null);
    super.visitSpreadElement(node);
  }
}

final class _Identifiers extends RecursiveAstVisitor<void> {
  final Set<String> found = {};

  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    found.add(node.name);
    super.visitSimpleIdentifier(node);
  }
}

/// The shape a declared input type has, which the manifest slot for it must
/// build.
sealed class InputShape {
  const InputShape();

  static InputShape of(String typeSource, WrapperApi api) {
    final t = typeSource.endsWith('?')
        ? typeSource.substring(0, typeSource.length - 1)
        : typeSource;
    String? inner(String prefix) => t.startsWith(prefix) && t.endsWith('>')
        ? t.substring(prefix.length, t.length - 1)
        : null;
    String? listOf(String prefix) => switch (inner(prefix)) {
      final s? when s.endsWith('>') => s.substring(0, s.length - 1),
      _ => null,
    };
    if (principalTypes.containsKey(t)) {
      return PrincipalInput(t, repeated: false);
    }
    if (listOf('TfArg<List<') case final c?
        when principalTypes.containsKey(c)) {
      return PrincipalInput(c, repeated: true);
    }
    if (api.enums.containsKey(t)) return EnumInput(t);
    if (api.sealed.containsKey(t)) return SealedInput(t, repeated: false);
    if (inner('RefTo<') case final c?) return RefInput(c, repeated: false);
    if (listOf('TfArg<List<RefTo<') case final c? when c.endsWith('>')) {
      return RefInput(c.substring(0, c.length - 1), repeated: true);
    }
    final e = inner('EnumList<') ?? listOf('TfArg<List<');
    if (e != null && api.enums.containsKey(e)) return EnumListInput(e);
    if (inner('List<') case final e?) {
      if (api.enums.containsKey(e)) return BareEnumListInput(e);
      if (api.sealed.containsKey(e)) return SealedInput(e, repeated: true);
      if (api.inputs.containsKey(e)) return HelperInput(e, repeated: true);
      if (!_passthrough.contains(t)) {
        final element = e.startsWith('TfArg<') && e.endsWith('>')
            ? e.substring('TfArg<'.length, e.length - 1)
            : null;
        return ScalarInput(
          element ?? e,
          wrapped: element != null,
          repeated: true,
        );
      }
    }
    if (inner('Map<String, ') case final h? when api.inputs.containsKey(h)) {
      return HelperInput(h, keyed: true);
    }
    if (api.inputs.containsKey(t)) return HelperInput(t);
    // `Sensitive<T>` is a `TfArg<T>` the migrator fills from a variable, and
    // the manifest records a payload without its `?`.
    final wrapped = inner('TfArg<') ?? inner('Sensitive<');
    final element = switch (wrapped) {
      final w? when w.startsWith('List<') && w.endsWith('>') => w.substring(
        'List<'.length,
        w.length - 1,
      ),
      final w => w,
    };
    if (element != null &&
        (api.inputs.containsKey(element) || api.sealed.containsKey(element))) {
      return WrappedClassInput(element);
    }
    var payload = wrapped ?? t;
    if (payload.endsWith('?')) {
      payload = payload.substring(0, payload.length - 1);
    }
    return _passthrough.contains(payload)
        ? PassthroughInput(payload, wrapped: wrapped != null)
        : ScalarInput(payload, wrapped: wrapped != null);
  }

  static const _passthrough = {
    'Map<String, dynamic>',
    'List<Map<String, dynamic>>',
  };
}

/// A `TfArg<C>` or `TfArg<List<C>>` of a package class: no slot kind builds
/// one, so it is always a finding.
final class WrappedClassInput extends InputShape {
  const WrappedClassInput(this.type);
  final String type;
}

/// A `TfArg<T>` (or bare `T`) value: a string, number, flag or collection.
/// [repeated] for a bare `List<T>` or `List<TfArg<T>>` of them.
final class ScalarInput extends InputShape {
  const ScalarInput(this.type, {required this.wrapped, this.repeated = false});
  final String type;
  final bool wrapped;
  final bool repeated;
}

/// An untyped `Map<String, dynamic>` block, or a list of them.
final class PassthroughInput extends InputShape {
  const PassthroughInput(this.type, {required this.wrapped});
  final String type;
  final bool wrapped;
}

/// A class of the package passed bare: one block, a list of blocks, or a
/// map of blocks keyed by name.
final class HelperInput extends InputShape {
  const HelperInput(this.type, {this.repeated = false, this.keyed = false});
  final String type;
  final bool repeated;
  final bool keyed;
}

final class EnumInput extends InputShape {
  const EnumInput(this.type);
  final String type;
}

final class EnumListInput extends InputShape {
  const EnumListInput(this.type);
  final String type;
}

final class BareEnumListInput extends InputShape {
  const BareEnumListInput(this.type);
  final String type;
}

final class SealedInput extends InputShape {
  const SealedInput(this.type, {required this.repeated});
  final String type;
  final bool repeated;
}

final class PrincipalInput extends InputShape {
  const PrincipalInput(this.type, {required this.repeated});
  final String type;
  final bool repeated;
}

final class RefInput extends InputShape {
  const RefInput(this.type, {required this.repeated});
  final String type;
  final bool repeated;
}

/// Terraform types in [migrateManifestDebtPath], with their reasons.
Map<String, String> loadMigrateManifestDebt(File file) {
  if (!file.existsSync()) return {};
  final doc = loadYaml(file.readAsStringSync());
  if (doc is! YamlMap) return {};
  return {for (final e in doc.entries) '${e.key}': '${e.value}'};
}

const unmanifestedFactoriesPath = 'tool/migrate_unmanifested_factories.yaml';

/// A factory class a manifest omits because another provider package's
/// manifest builds the same Terraform type: [builtBy] names that package.
/// [error] says why the ledger entry is malformed, when it is.
final class UnmanifestedFactory {
  const UnmanifestedFactory({this.builtBy, this.reason, this.error});
  final String? builtBy;
  final String? reason;
  final String? error;
}

/// Package → factory class → the manifest that builds it instead. An entry
/// must be a map of exactly `builtBy` and `reason`, both non-empty strings;
/// anything else loads with an [UnmanifestedFactory.error].
Map<String, Map<String, UnmanifestedFactory>> loadUnmanifestedFactories(
  File file,
) {
  if (!file.existsSync()) return {};
  final doc = loadYaml(file.readAsStringSync());
  if (doc is! YamlMap) return {};
  UnmanifestedFactory entry(Object? value) {
    if (value is! YamlMap) {
      return const UnmanifestedFactory(
        error: 'is not a map of `builtBy` and `reason`',
      );
    }
    final keys = {for (final k in value.keys) '$k'};
    if (!_sameSet(keys, const {'builtBy', 'reason'})) {
      return UnmanifestedFactory(
        error: 'has keys $keys, not exactly `builtBy` and `reason`',
      );
    }
    final builtBy = value['builtBy'];
    final reason = value['reason'];
    if (builtBy is! String || builtBy.trim().isEmpty) {
      return const UnmanifestedFactory(
        error: '`builtBy` is not a package name',
      );
    }
    if (reason is! String || reason.trim().isEmpty) {
      return const UnmanifestedFactory(error: '`reason` is not prose');
    }
    return UnmanifestedFactory(builtBy: builtBy.trim(), reason: reason.trim());
  }

  return {
    for (final MapEntry(:key, :value) in doc.entries)
      '$key': {
        if (value is YamlMap)
          for (final c in value.entries) '${c.key}': entry(c.value),
      },
  };
}

/// What keeps [manifest] from expressing [api]. Each finding names the
/// class and input, the shape the API has, and what the manifest records.
/// [debt] maps a Terraform type to the reason its manual shapes are
/// deliberate; a manual shape a ledgered type reaches is not a finding.
/// [usedDebt] collects the ledgered types that excused something.
/// [unmanifested] maps a factory class the manifest omits to the package
/// whose manifest builds it; the omission is excused only when that
/// manifest has an entry for the same class, Terraform type and kind.
/// [usedUnmanifested] collects the entries that excused an omission.
/// [manifests] are the manifests [unmanifested] may name.
List<String> coverageFindings(
  MigrateManifest manifest,
  WrapperApi api, {
  Map<String, String> debt = const {},
  Set<String>? usedDebt,
  Map<String, UnmanifestedFactory> unmanifested = const {},
  Set<String>? usedUnmanifested,
  Iterable<MigrateManifest>? manifests,
}) {
  final findings = <String>[];
  final reachedBy = _reachingTypes(manifest);
  final entries = {for (final e in manifest.entries) e.className: e};
  final byPackage = {
    for (final m in manifests ?? allMigrateManifests) m.package: m,
  };
  // Excused omissions: the alternate entry must build this package's class.
  final alternates = <(MigrateEntry, MigrateManifest)>[];
  for (final MapEntry(key: f, value: (:tfType, :kind))
      in api.factories.entries.toList()
        ..sort((a, b) => a.key.compareTo(b.key))) {
    final identity = '${tfType ?? '(no Terraform type)'} ${kind.name}';
    if (tfType == null) {
      findings.add('$f: the factory names no Terraform type the gate can read');
      continue;
    }
    if (entries[f] case final e?) {
      if (e.tfType != tfType || e.kind != kind) {
        findings.add(
          '$f: the factory is $identity, the manifest entry is '
          '${e.tfType} ${e.kind.name}',
        );
      }
      continue;
    }
    final omitted =
        '$f ($identity): a public factory of ${manifest.package} '
        'with no manifest entry';
    final excuse = unmanifested[f];
    if (excuse == null) {
      findings.add('$omitted, so terradart migrate never builds it');
      continue;
    }
    if (excuse.error case final error?) {
      findings.add('$omitted; its $unmanifestedFactoriesPath entry $error');
      continue;
    }
    final alternate = byPackage[excuse.builtBy];
    final built = alternate?.entries.where(
      (e) => e.className == f && e.tfType == tfType && e.kind == kind,
    );
    if (alternate == null || alternate.package == manifest.package) {
      findings.add(
        '$omitted; $unmanifestedFactoriesPath names ${excuse.builtBy}, '
        'which is no other provider package',
      );
    } else if (built!.isEmpty) {
      findings.add(
        '$omitted; $unmanifestedFactoriesPath names ${excuse.builtBy}, '
        'whose manifest has no $f entry for $identity',
      );
    } else {
      usedUnmanifested?.add(f);
      alternates.add((built.first, alternate));
    }
  }

  bool excused(String owner) {
    final types = reachedBy[owner] ?? const <String>{};
    final hit = types.where(debt.containsKey).toList();
    usedDebt?.addAll(hit);
    return hit.isNotEmpty;
  }

  void checkOwner(String owner, List<MigrateSlot> slots, MigrateManifest m) {
    final declared = api.inputs[owner];
    if (declared == null) {
      findings.add(
        '$owner: the manifest has a recipe, but ${manifest.package} declares '
        'no such class with an unnamed constructor',
      );
      return;
    }
    final bySlot = {for (final s in slots) s.dartName: s};
    for (final MapEntry(key: name, value: type) in declared.entries) {
      final shape = InputShape.of(type, api);
      final slot = bySlot[name];
      if (slot == null) {
        findings.add('$owner.$name ($type): no manifest slot builds it');
        continue;
      }
      if (slot.kind == MigrateSlotKind.manual) {
        if (!excused(owner)) {
          findings.add('$owner.$name ($type): manual, ${slot.reason}');
        }
        continue;
      }
      final problem = _mismatch(shape, slot, api, m, owner);
      if (problem != null) findings.add('$owner.$name ($type): $problem');
    }
    for (final slot in slots) {
      if (!declared.containsKey(slot.dartName)) {
        findings.add(
          '$owner.${slot.dartName}: the manifest has a slot the '
          'constructor does not declare',
        );
      }
    }
  }

  void checkEntry(MigrateEntry e, MigrateManifest m) {
    checkOwner(e.className, e.slots, m);
    final hasPrincipal = api.principalGetters.contains(e.className);
    if (hasPrincipal != e.principal) {
      findings.add(
        hasPrincipal
            ? '${e.className}.principal: the getter has no manifest flag, so '
                  'a grant that reads its `member` stays a string'
            : '${e.className}.principal: the manifest records a getter the '
                  'class does not declare',
      );
    }
    final declared = api.getters[e.className] ?? const {};
    final recorded = {for (final g in e.getters) g.dartName: g};
    for (final MapEntry(key: name, value: g) in declared.entries) {
      final r = recorded[name];
      if (r == null) {
        findings.add(
          '${e.className}.$name: output getter of `${g.attribute}` has no '
          'manifest getter, so a reference to it stays a string',
        );
      } else if (r.tfName != g.attribute || r.dartType != g.type) {
        findings.add(
          '${e.className}.$name: the getter reads `${g.attribute}` as '
          '${g.type}, the manifest records `${r.tfName}` as ${r.dartType}',
        );
      }
    }
    for (final name in recorded.keys) {
      if (!declared.containsKey(name)) {
        findings.add(
          '${e.className}.$name: the manifest records a getter the class '
          'does not declare',
        );
      }
    }
  }

  void checkHelper(MigrateHelper h, MigrateManifest m) {
    if (h.reason != null) {
      if (!excused(h.className)) {
        findings.add('${h.className}: manual helper, ${h.reason}');
      }
      return;
    }
    checkOwner(h.className, h.slots, m);
  }

  for (final e in manifest.entries) {
    checkEntry(e, manifest);
  }
  for (final h in manifest.helpers.values) {
    checkHelper(h, manifest);
  }
  for (final (e, m) in alternates) {
    checkEntry(e, m);
    for (final h in _reachingTypes(m).entries) {
      if (!h.value.contains(e.tfType) || h.key == e.className) continue;
      if (m.helpers[h.key] case final helper?) {
        if (!manifest.helpers.containsKey(h.key)) checkHelper(helper, m);
      }
    }
  }
  for (final MapEntry(key: name, value: e) in manifest.enums.entries) {
    final declared = api.enums[name];
    if (declared == null) {
      findings.add('enum $name: in the manifest, not in ${manifest.package}');
    } else if (!_sameMap(declared, e.members)) {
      findings.add(
        'enum $name: the manifest maps ${e.members}, the package declares '
        '$declared',
      );
    }
  }
  return findings;
}

String? _mismatch(
  InputShape shape,
  MigrateSlot slot,
  WrapperApi api,
  MigrateManifest manifest,
  String owner,
) {
  String got() =>
      '${slot.kind.name}${slot.repeated ? ' repeated' : ''}'
              '${slot.wrapped ? '' : ' bare'} ${slot.dartType ?? ''}'
          .trimRight();
  switch (shape) {
    case ScalarInput(:final type, :final wrapped, :final repeated):
      return slot.kind == MigrateSlotKind.scalar &&
              slot.dartType == type &&
              slot.wrapped == wrapped &&
              slot.repeated == repeated
          ? null
          : 'a ${repeated ? 'list of ' : ''}${wrapped ? '' : 'bare '}$type '
                'value, the manifest builds ${got()}';
    case PassthroughInput(:final type, :final wrapped):
      return slot.kind == MigrateSlotKind.passthrough &&
              slot.dartType == type &&
              slot.wrapped == wrapped
          ? null
          : 'an untyped ${wrapped ? '' : 'bare '}$type, the manifest builds '
                '${got()}';
    case EnumInput(:final type):
      return slot.kind == MigrateSlotKind.enumValue &&
              !slot.repeated &&
              slot.dartType == type &&
              manifest.enums.containsKey(type)
          ? null
          : 'an enum, the manifest builds ${got()}';
    case EnumListInput(:final type):
      return slot.kind == MigrateSlotKind.enumValue &&
              slot.repeated &&
              slot.wrapped &&
              slot.dartType == type &&
              manifest.enums.containsKey(type)
          ? null
          : 'an EnumList, the manifest builds ${got()}';
    case BareEnumListInput():
      return 'a bare List of enum members: a whole-list variable or '
          'expression has no slot; type it EnumList';
    case SealedInput(:final type, :final repeated):
      if (slot.kind != MigrateSlotKind.sealed || slot.repeated != repeated) {
        return 'a sealed choice, the manifest builds ${got()}';
      }
      final keyed = slot.variants ?? const <String, String>{};
      final declared = api.sealed[type]!;
      final variants = keyed.values.toSet();
      if (!_sameSet(variants, declared.values.toSet())) {
        return 'sealed variants ${declared.values.toSet()}, the manifest '
            'knows $variants';
      }
      final encodings = api.encodedUnder[owner] ?? const <String, String?>{};
      if (!encodings.containsKey(slot.dartName)) {
        return 'a sealed choice the gate cannot see $owner encode';
      }
      final under = encodings[slot.dartName];
      if (slot.merged != (under == null) ||
          (under != null && slot.tfName != under)) {
        return 'a sealed choice encoded '
            '${under == null ? 'into the enclosing block' : 'under `$under`'}, '
            'the manifest reads it '
            '${slot.merged ? 'merged' : 'under `${slot.tfName}`'}';
      }
      for (final MapEntry(key: key, value: v) in keyed.entries) {
        final helper = manifest.helpers[v];
        if (helper == null) {
          return 'variant $v has no manifest helper';
        }
        // The migrator writes `.<shorthand>(...)`, or `V(...)` without one.
        if (helper.shorthand case final shorthand?
            when declared[shorthand] != v) {
          return 'variant $v is written `.$shorthand(...)`, but $type.'
              '$shorthand builds ${declared[shorthand] ?? 'nothing'}';
        }
        // A variant names its Terraform key in `blockKey`; a derived one
        // without it is the constructor named after the key.
        if (api.blockKeys[v] case final own?) {
          if (own != key) {
            return 'the manifest reads `$key` as $v, whose blockKey is '
                '`$own`';
          }
        } else if (declared[_lowerCamel(key)] != v) {
          final ctor = _lowerCamel(key);
          return 'the manifest reads `$key` as $v, but $type.$ctor builds '
              '${declared[ctor] ?? 'nothing'}';
        }
      }
      return null;
    case PrincipalInput(:final type, :final repeated):
      return slot.kind == MigrateSlotKind.principal &&
              slot.repeated == repeated &&
              slot.dartType == type
          ? null
          : 'an IAM principal ($type), the manifest builds ${got()}';
    case HelperInput(:final type, :final repeated, :final keyed):
      final shape = keyed
          ? 'a map of $type blocks'
          : repeated
          ? 'a list of $type blocks'
          : 'one $type block';
      if (slot.kind != MigrateSlotKind.helper ||
          slot.helper != type ||
          slot.repeated != repeated ||
          slot.keyed != keyed) {
        return '$shape, the manifest builds ${got()}'
            '${slot.helper == null ? '' : ' ${slot.helper}'}';
      }
      return manifest.helpers.containsKey(type)
          ? null
          : '$shape, the manifest has no helper $type';
    case RefInput(:final type, :final repeated):
      if (slot.kind != MigrateSlotKind.reference ||
          slot.repeated != repeated ||
          slot.dartType != type) {
        return 'a RefTo<$type>, the manifest builds ${got()}';
      }
      final emitted = api.refAttributes[owner]?[slot.dartName];
      if (emitted == null) {
        return 'a RefTo<$type> the gate cannot see $owner encode';
      }
      return emitted == slot.attribute
          ? null
          : 'a RefTo<$type> that emits `$emitted`, the manifest records '
                '`${slot.attribute}`';
    case WrappedClassInput(:final type):
      return 'a TfArg of the package class $type, which no manifest slot '
          'kind builds';
  }
}

/// Helper class (or factory class) → the Terraform types whose factories
/// reach it through their slots.
Map<String, Set<String>> _reachingTypes(MigrateManifest manifest) {
  final out = <String, Set<String>>{};
  void visit(String owner, List<MigrateSlot> slots, String tfType) {
    if (!(out[owner] ??= {}).add(tfType)) return;
    for (final s in slots) {
      for (final h in [s.helper, ...?s.variants?.values]) {
        if (h == null) continue;
        final helper = manifest.helpers[h];
        if (helper != null) visit(h, helper.slots, tfType);
      }
    }
  }

  for (final e in manifest.entries) {
    visit(e.className, e.slots, e.tfType);
  }
  return out;
}

bool _sameMap(Map<String, String> a, Map<String, String> b) =>
    a.length == b.length && a.entries.every((e) => b[e.key] == e.value);

bool _sameSet(Set<String> a, Set<String> b) =>
    a.length == b.length && a.containsAll(b);

String _lowerCamel(String snake) {
  final parts = snake.split('_');
  return [
    parts.first,
    for (final w in parts.skip(1))
      if (w.isNotEmpty) w[0].toUpperCase() + w.substring(1),
  ].join();
}
