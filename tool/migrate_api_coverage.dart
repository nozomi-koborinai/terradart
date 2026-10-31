// The migrator's API coverage gate: every typed input a provider package
// declares (an enum, an EnumList, a sealed choice, a RefTo) and every
// output getter must have a recipe in that package's migration manifest
// that builds the same shape, so `terradart migrate` never falls back to a
// string where the API is typed.
//
// The wrapper side is read from the package sources with the analyzer, the
// manifest side from `allMigrateManifests`; nothing is hand-listed. A
// `manual` slot or a helper with a reason is a finding unless
// tool/migrate_manifest_debt.yaml names a Terraform type that reaches it.
import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:path/path.dart' as p;
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

  /// Sealed class → the classes its factory constructors redirect to.
  final Map<String, Set<String>> sealed = {};

  /// Class → getter → `(attribute, T)` of its `TfRef<T>`.
  final Map<String, Map<String, ({String attribute, String type})>> getters =
      {};

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
    for (final MapEntry(key: name, value: pending) in api._superParams.entries) {
      final fields = api._fields[api._superclass[name]];
      if (fields == null) continue;
      for (final param in pending) {
        if (fields[param] case final type?) api.inputs[name]![param] = type;
      }
    }
    return api;
  }

  final Map<String, Map<String, String>> _fields = {};
  final Map<String, String> _superclass = {};
  final Map<String, List<String>> _superParams = {};

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
    final constructors = members.whereType<ConstructorDeclaration>().toList();
    if (d.sealedKeyword != null) {
      sealed[name] = {
        for (final c in constructors)
          if (c.redirectedConstructor case final r?) r.type.name.lexeme,
      };
      return;
    }
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

  void _enum(ExtensionTypeDeclaration d) {
    final rep = d.primaryConstructor.formalParameters.parameters.firstOrNull;
    if (rep?.type?.toSource() != 'TfArg<String>') return;
    final name = d.primaryConstructor.typeName.lexeme;
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

/// The typed shape a declared input type has, or `null` for a scalar,
/// helper or passthrough input the gate does not judge.
sealed class InputShape {
  const InputShape();

  static InputShape? of(String typeSource, WrapperApi api) {
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
    }
    return null;
  }
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

/// What keeps [manifest] from expressing [api]. Each finding names the
/// class and input, the shape the API has, and what the manifest records.
/// [debt] maps a Terraform type to the reason its manual shapes are
/// deliberate; a manual shape a ledgered type reaches is not a finding.
/// [usedDebt] collects the ledgered types that excused something.
List<String> coverageFindings(
  MigrateManifest manifest,
  WrapperApi api, {
  Map<String, String> debt = const {},
  Set<String>? usedDebt,
  Map<String, int>? judged,
}) {
  final findings = <String>[];
  final reachedBy = _reachingTypes(manifest);

  bool excused(String owner) {
    final types = reachedBy[owner] ?? const <String>{};
    final hit = types.where(debt.containsKey).toList();
    usedDebt?.addAll(hit);
    return hit.isNotEmpty;
  }

  void checkOwner(String owner, List<MigrateSlot> slots) {
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
      if (shape != null && judged != null) {
        final kind = '${shape.runtimeType}';
        judged[kind] = (judged[kind] ?? 0) + 1;
      }
      final slot = bySlot[name];
      if (slot == null) {
        if (shape != null) {
          findings.add('$owner.$name ($type): no manifest slot builds it');
        }
        continue;
      }
      if (slot.kind == MigrateSlotKind.manual) {
        if (!excused(owner)) {
          findings.add('$owner.$name ($type): manual, ${slot.reason}');
        }
        continue;
      }
      final problem = _mismatch(shape, slot, api, manifest);
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

  for (final e in manifest.entries) {
    checkOwner(e.className, e.slots);
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
  for (final h in manifest.helpers.values) {
    if (h.reason != null) {
      if (!excused(h.className)) {
        findings.add('${h.className}: manual helper, ${h.reason}');
      }
      continue;
    }
    checkOwner(h.className, h.slots);
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
  InputShape? shape,
  MigrateSlot slot,
  WrapperApi api,
  MigrateManifest manifest,
) {
  String got() =>
      '${slot.kind.name}${slot.repeated ? ' repeated' : ''}'
              '${slot.wrapped ? '' : ' bare'} ${slot.dartType ?? ''}'
          .trimRight();
  switch (shape) {
    case null:
      if (slot.kind == MigrateSlotKind.enumValue ||
          slot.kind == MigrateSlotKind.sealed ||
          slot.kind == MigrateSlotKind.reference) {
        return 'the manifest builds ${got()} for an input the package does '
            'not type that way';
      }
      return null;
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
      final variants = slot.variants?.values.toSet() ?? const <String>{};
      final declared = api.sealed[type]!;
      if (!_sameSet(variants, declared)) {
        return 'sealed variants $declared, the manifest knows $variants';
      }
      for (final v in variants) {
        final h = manifest.helpers[v];
        if (h == null) return 'variant $v has no manifest helper';
      }
      return null;
    case RefInput(:final type, :final repeated):
      return slot.kind == MigrateSlotKind.reference &&
              slot.repeated == repeated &&
              slot.dartType == type
          ? null
          : 'a RefTo<$type>, the manifest builds ${got()}';
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
