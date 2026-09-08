/// Typed Dart wrappers for the local modules a tree calls (#665).
///
/// A `module "x" { source = "../modules/service_account" }` call keeps
/// pointing at the child directory after the migration — the `tf-out/` tree
/// mirrors the source tree — so the call itself is all that moves to Dart.
/// Its shape is public information: the child's `variable` blocks are the
/// inputs, its `output` blocks the attributes. This library turns that into
/// a `ModuleCall` subclass with a named parameter per variable and a getter
/// per output.
library;

import 'package:terradart_hcl/terradart_hcl.dart';

import 'body_map.dart';
import 'dart_literal.dart';
import 'naming.dart';
import 'tf_expr.dart';

/// One input of a local module: its `variable` block, as a Dart parameter.
final class ModuleInput {
  const ModuleInput({
    required this.tfName,
    required this.dartName,
    required this.dartType,
    required this.required,
    this.description,
  });

  /// `account_id`.
  final String tfName;

  /// `accountId`.
  final String dartName;

  /// The `T` of the parameter's `TfArg<T>`: `String`, `num`, `bool`, or
  /// `Object?` for everything Terraform's type constraint does not pin down
  /// to a Dart scalar (a collection, an object, `any`, no `type` at all).
  final String dartType;

  /// True when the `variable` block declares no `default`.
  final bool required;

  /// The variable's `description`, when it is a literal.
  final String? description;
}

/// One output of a local module, as a `TfRef` getter.
final class ModuleOutput {
  const ModuleOutput({
    required this.tfName,
    required this.dartName,
    this.description,
  });

  /// `service_name`.
  final String tfName;

  /// `serviceName`.
  final String dartName;

  final String? description;
}

/// The Dart-side interface of one local module directory.
final class LocalModule {
  const LocalModule({
    required this.name,
    required this.className,
    required this.fileStem,
    required this.inputs,
    required this.outputs,
  });

  /// The module directory's name, as the project named it
  /// (`service_account`).
  final String name;

  /// `ServiceAccountModule`.
  final String className;

  /// `service_account_module` — the library file is `lib/<fileStem>.dart`.
  final String fileStem;

  final List<ModuleInput> inputs;
  final List<ModuleOutput> outputs;

  /// True when the module declares neither a `variable` nor an `output`:
  /// there is nothing to type, so the call site keeps the bare `ModuleCall`
  /// rather than gaining an empty subclass.
  bool get isEmpty => inputs.isEmpty && outputs.isEmpty;

  /// The input declared as [tfName], if any.
  ModuleInput? input(String tfName) {
    for (final i in inputs) {
      if (i.tfName == tfName) return i;
    }
    return null;
  }

  /// The getter for the output [tfName], if the wrapper declares one.
  ModuleOutput? output(String tfName) {
    for (final o in outputs) {
      if (o.tfName == tfName) return o;
    }
    return null;
  }
}

/// Parameter names [ModuleCall]'s own constructor takes, which an input may
/// not shadow.
const _reservedParameters = {
  'localName',
  'source',
  'version',
  'providers',
  'dependsOn',
  'count',
  'forEach',
  'inputs',
};

/// `ModuleCall` members (and inherited ones) a generated getter may not
/// shadow.
const _reservedMembers = {
  ..._reservedParameters,
  'output',
  'tfAddress',
  'reservedInputNames',
  'runtimeType',
  'hashCode',
  'toString',
  'noSuchMethod',
};

/// The wrapper interface of the local module [module], named [name] after
/// its directory.
LocalModule localModuleOf(TfModule module, {required String name}) {
  final className = '${pascalCase(name)}Module';
  final inputs = <ModuleInput>[];
  final usedParameters = <String>{..._reservedParameters};
  for (final v in module.variables) {
    if (inputs.any((i) => i.tfName == v.name)) continue;
    final values = objectMap(bodyAsObject(v.body)) ?? const <String, Expr>{};
    inputs.add(
      ModuleInput(
        tfName: v.name,
        dartName: _unique(v.name, usedParameters, 'Input'),
        dartType: _dartTypeOf(values['type']),
        required: !values.containsKey('default'),
        description: values['description']?.constantString,
      ),
    );
  }

  final outputs = <ModuleOutput>[];
  final usedMembers = <String>{..._reservedMembers};
  for (final o in module.outputs) {
    if (outputs.any((x) => x.tfName == o.name)) continue;
    final values = objectMap(bodyAsObject(o.body)) ?? const <String, Expr>{};
    outputs.add(
      ModuleOutput(
        tfName: o.name,
        dartName: _unique(o.name, usedMembers, 'Output'),
        description: values['description']?.constantString,
      ),
    );
  }

  // Required inputs first so the constructor reads like the module's docs.
  inputs.sort((a, b) {
    if (a.required == b.required) return 0;
    return a.required ? -1 : 1;
  });
  return LocalModule(
    name: name,
    className: className,
    fileStem: snakeCase('${name}_module'),
    inputs: List.unmodifiable(inputs),
    outputs: List.unmodifiable(outputs),
  );
}

/// `lib/<fileStem>.dart` for [m].
String renderModuleWrapper(LocalModule m, {required String version}) {
  final b = StringBuffer()
    ..writeln(
      '/// ${m.className} — the `${m.name}` module as a Dart value, '
      'generated by',
    )
    ..writeln(
      '/// terradart-migrate $version from its `variable` and '
      '`output` blocks.',
    )
    ..writeln('///')
    ..writeln(
      '/// The module itself stays Terraform: `source` is the path to its '
      'directory,',
    )
    ..writeln(
      '/// relative to the directory the calling Stack synthesizes into.',
    )
    ..writeln('library;')
    ..writeln()
    ..writeln("import 'package:terradart_core/terradart_core.dart';")
    ..writeln()
    ..writeln('final class ${m.className} extends ModuleCall {')
    ..writeln('  ${m.className}({');
  for (final p in _metaParameters) {
    b.writeln('    $p,');
  }
  for (final i in m.inputs) {
    if (i.description != null) {
      b.writeln('    /// ${_docLine(i.description!)}');
    }
    b.writeln(
      '    ${i.required ? 'required ' : ''}TfArg<${i.dartType}>'
      '${i.required ? '' : '?'} ${i.dartName},',
    );
  }
  b
    ..writeln('  }) : super(')
    ..writeln('          localName: localName,')
    ..writeln('          source: source,')
    ..writeln('          version: version,')
    ..writeln('          providers: providers,')
    ..writeln('          dependsOn: dependsOn,');
  if (m.inputs.isEmpty) {
    b.writeln('          inputs: const {},');
  } else {
    b.writeln('          inputs: {');
    for (final i in m.inputs) {
      b.writeln('            ${dartString(i.tfName)}: ${i.dartName},');
    }
    b.writeln('          },');
  }
  b.writeln('        );');
  for (final o in m.outputs) {
    b
      ..writeln()
      ..writeln(
        '  /// `\${module.<name>.${o.tfName}}`'
        '${o.description == null ? '' : ' — ${_docLine(o.description!)}'}',
      )
      ..writeln(
        '  TfRef<String> get ${o.dartName} => '
        'TfRef.attribute<String>(this, ${dartString(o.tfName)});',
      );
  }
  b.writeln('}');
  return b.toString();
}

/// The `ModuleCall` meta-arguments every wrapper forwards. `count` and
/// `for_each` are left out on purpose: a call carrying one is addressed
/// `module.<name>[0]`, which no output getter of the wrapper spells, so such
/// calls stay in Terraform.
const _metaParameters = [
  'required String localName',
  'required String source',
  'String? version',
  'Map<String, String> providers = const {}',
  'List<DependencyTarget>? dependsOn',
];

/// `type = string` → `String`. Terraform's other constraints — collections,
/// objects, `any` — have no single Dart payload, so they stay `Object?`:
/// `TfArg.literal` carries the JSON value and `TfArg.expression` the
/// Terraform expression either way.
String _dartTypeOf(Expr? type) {
  if (type == null) return 'Object?';
  // A bare `string` / `number` / `bool` constraint parses as a traversal, so
  // its source text is the constraint.
  final text = (type.constantString ?? hclSource(type)).trim();
  return switch (text) {
    'string' => 'String',
    'number' => 'num',
    'bool' => 'bool',
    _ => 'Object?',
  };
}

/// A unique lowerCamel identifier for [tfName], avoiding [used].
String _unique(String tfName, Set<String> used, String suffix) {
  var candidate = lowerCamel(tfName);
  if (!isDartIdentifier(candidate) || used.contains(candidate)) {
    candidate = lowerCamel('${tfName}_$suffix');
  }
  if (!isDartIdentifier(candidate)) candidate = 'x$suffix';
  var attempt = candidate;
  var n = 2;
  while (used.contains(attempt)) {
    attempt = '$candidate${n++}';
  }
  used.add(attempt);
  return attempt;
}

/// [text] as one doc-comment line.
String _docLine(String text) {
  final flat = text.replaceAll(RegExp(r'\s+'), ' ').trim();
  return flat.length <= 68 ? flat : '${flat.substring(0, 65)}...';
}
