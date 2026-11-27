import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// The `Owner.member: Type` pairs where a declaration in [exported] names a
/// type outside `dart:` that [exported] does not hold, so a dependent sees
/// it but cannot import it.
Set<String> unexportedTypes(Map<String, Element> exported) {
  final public = exported.values.toSet();
  final out = <String>{};
  void check(String where, DartType type) {
    for (final e in _named(type)) {
      if (e.library?.uri.scheme == 'dart' || public.contains(e)) continue;
      out.add('$where: ${e.displayName}');
    }
  }

  void signature(String where, Element e) {
    switch (e) {
      case ExecutableElement(:final returnType, :final formalParameters):
        check(where, returnType);
        for (final param in formalParameters) {
          check('$where(${param.displayName})', param.type);
        }
      case VariableElement(:final type):
        check(where, type);
      case TypeAliasElement(:final aliasedType):
        check(where, aliasedType);
      case InterfaceElement():
        for (final s in e.allSupertypes) {
          check(where, s);
        }
        for (final m in <Element>[
          ...e.constructors,
          ...e.fields,
          ...e.getters,
          ...e.setters,
          ...e.methods,
        ]) {
          if (m.isPublic) signature('$where.${m.displayName}', m);
        }
    }
  }

  for (final MapEntry(:key, :value) in exported.entries) {
    signature(key, value);
  }
  return out;
}

Iterable<Element> _named(DartType type) sync* {
  if (type.alias case final alias?) yield alias.element;
  switch (type) {
    case InterfaceType(:final element, :final typeArguments):
      yield element;
      for (final a in typeArguments) {
        yield* _named(a);
      }
    case FunctionType(:final returnType, :final formalParameters):
      yield* _named(returnType);
      for (final param in formalParameters) {
        yield* _named(param.type);
      }
    case RecordType(:final positionalFields, :final namedFields):
      for (final f in [...positionalFields, ...namedFields]) {
        yield* _named(f.type);
      }
  }
}

void main() {
  late Map<String, Element> exported;

  setUpAll(() async {
    final entry = p.normalize(
      p.absolute('packages/terradart_cli/lib/terradart_cli.dart'),
    );
    final collection = AnalysisContextCollection(includedPaths: [entry]);
    addTearDown(collection.dispose);
    final result = await collection
        .contextFor(entry)
        .currentSession
        .getLibraryByUri('package:terradart_cli/terradart_cli.dart');
    exported =
        (result as LibraryElementResult).element.exportNamespace.definedNames2;
  });

  test('package:terradart_cli exports runTerradart and kOpenTofuVersion', () {
    expect(
      exported.keys,
      unorderedEquals(['runTerradart', 'kOpenTofuVersion']),
    );
  });

  test('no declaration it exports names a type it does not export', () {
    expect(unexportedTypes(exported), isEmpty);
  });
}
