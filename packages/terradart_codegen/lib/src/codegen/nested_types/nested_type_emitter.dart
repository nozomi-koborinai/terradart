import '../naming.dart';
import 'nested_type_collector.dart';

/// Renders the Dart source for a resource's derived nested-block helper
/// classes and their attribute enums — the render half of the
/// `deriveNestedTypes` gate, matching the `@immutable` helper-class idiom
/// hand-written `wrapper_overrides/` preludes have used until now (e.g.
/// `wrapper_overrides/yaml/google_apigee_datastore.yaml`).
///
/// Pure string templating, no I/O. Like every other emitter in this package
/// (see `WrapperEmitter.emit`), the returned source is **unformatted** —
/// callers splice it into the surrounding wrapper file and run
/// `dart_style.DartFormatter` once, over the whole file. It assumes that
/// file already imports `package:meta/meta.dart` (`@immutable`) and
/// `package:terradart_core/terradart_core.dart` (`TfArg`, `TerraformEnum`);
/// no import directives are emitted here.
///
/// Ordering is depth-first over [specs] — each spec's own class, then its
/// attribute enums, then its children (recursively), before moving to the
/// next sibling — with alphabetical-by-Terraform-name tie-breaking at every
/// sibling level (root [specs], each block's enum-bearing attrs, each
/// block's children). This makes the output depend only on the *set* of
/// specs, never the order the caller happened to list them in, mirroring
/// `constructor_params.dart`'s "IR-natural order... alphabetical" guarantee
/// for top-level attributes.
String renderNestedTypes(
  List<NestedBlockSpec> specs, {
  required String resourceTerraformType,
}) {
  final buf = StringBuffer();
  var first = true;
  for (final spec in _byTfName(specs, (NestedBlockSpec s) => s.tfName)) {
    if (!first) buf.writeln();
    first = false;
    buf.write(_renderBlockTree(spec, resourceTerraformType));
  }
  return buf.toString();
}

/// The Dart type of the constructor parameter a resource (or an ancestor
/// nested class) uses to hold [s] — a bare class reference, never
/// `TfArg`-wrapped, because a whole nested block has no Terraform "computed
/// reference" form the way a leaf attribute does (only the *scalar/enum
/// attributes inside it* can be individually computed-or-literal). Always
/// nullable; a caller rendering a `required` slot strips the trailing `?`
/// itself — mirrors [NestedAttrSpec.dartType], which is likewise the inner
/// type only, with nullability layered on by whoever renders the field.
String nestedParamType(NestedBlockSpec s) => '${_bareNestedType(s)}?';

String _bareNestedType(NestedBlockSpec s) =>
    s.repeated ? 'List<${s.className}>' : s.className;

/// Renders one block's own class, then its attribute enums, then recurses
/// depth-first into its children — the full subtree [spec] roots, as a
/// sequence of top-level declarations separated by single blank lines.
String _renderBlockTree(NestedBlockSpec spec, String resourceTerraformType) {
  final buf = StringBuffer()..write(_renderClass(spec, resourceTerraformType));

  final enumAttrs = _byTfName(
    spec.attrs.where((a) => a.enumValues != null),
    (NestedAttrSpec a) => a.tfName,
  );
  for (final attr in enumAttrs) {
    buf
      ..writeln()
      ..write(_renderEnum(attr));
  }

  for (final child
      in _byTfName(spec.children, (NestedBlockSpec s) => s.tfName)) {
    buf
      ..writeln()
      ..write(_renderBlockTree(child, resourceTerraformType));
  }

  return buf.toString();
}

/// Renders [spec]'s own `@immutable` helper class: doc comment, constructor,
/// fields, `encode()`. Field order is: [spec]'s attributes first
/// (alphabetical by Terraform name), then its block-type children — both
/// derived nested classes and opaque [NestedBlockSpec.excludedChildren]
/// passthroughs, merged into one alphabetical-by-Terraform-name group —
/// mirroring `constructor_params.dart`'s "attributes first, then nested
/// blocks" grouping for top-level wrapper constructors.
String _renderClass(NestedBlockSpec spec, String resourceTerraformType) {
  final plans = _fieldPlans(spec);
  final blockPath = spec.path.join('.');

  final buf = StringBuffer()
    ..writeln('/// Typed helper for the `$blockPath` block of')
    ..writeln('/// `$resourceTerraformType` (derived from provider schema).')
    ..writeln('@immutable')
    ..writeln('final class ${spec.className} {');
  if (plans.isEmpty) {
    // `{}` is not a valid (empty) named-parameter clause in Dart — unlike
    // an empty `()`, the braces require at least one parameter — so a
    // block with no attrs/children/excluded children gets a bare `()`
    // constructor instead of the usual `({...})` shape.
    buf.writeln('  const ${spec.className}();');
  } else {
    buf.writeln('  const ${spec.className}({');
    for (final p in plans) {
      buf.writeln('    ${p.ctorParam}');
    }
    buf.writeln('  });');
  }
  buf.writeln();

  for (final p in plans) {
    buf
      ..writeln('  ${p.fieldDecl}')
      ..writeln();
  }

  buf.writeln('  Map<String, Object?> encode() => {');
  for (final p in plans) {
    buf.writeln('    ${p.encodeEntry}');
  }
  buf
    ..writeln('  };')
    ..writeln('}');

  return buf.toString();
}

/// Renders the free-standing `TerraformEnum` declaration for one
/// enum-carrying attribute. Member names reuse [screamingToCamel] (shared
/// with the top-level `deriveEnums` path via `naming.dart`'s `enumName`) —
/// never re-implemented here, including its reserved-word fallback.
String _renderEnum(NestedAttrSpec attr) {
  final values = attr.enumValues!;
  final buf = StringBuffer()
    ..writeln(
        '/// `${attr.tfName}` — derived from the provider schema description.')
    ..writeln('enum ${attr.dartType} implements TerraformEnum {');
  for (var i = 0; i < values.length; i++) {
    final isLast = i == values.length - 1;
    final member = screamingToCamel(values[i]);
    buf.writeln("  $member('${values[i]}')${isLast ? ';' : ','}");
  }
  buf
    ..writeln()
    ..writeln('  const ${attr.dartType}(this.terraformValue);')
    ..writeln('  @override')
    ..writeln('  final String terraformValue;')
    ..writeln('}');
  return buf.toString();
}

/// One class member's rendering, in its three call sites (constructor
/// parameter, field declaration, `encode()` map entry) — computed together
/// so the required/optional and repeated/scalar axes are handled exactly
/// once (see [_plan]) instead of re-derived at each call site.
typedef _FieldPlan = ({String ctorParam, String fieldDecl, String encodeEntry});

/// [spec]'s own class members, in render order: attrs first, then
/// block-type children (derived + excluded, merged), each group
/// alphabetical by Terraform name.
List<_FieldPlan> _fieldPlans(NestedBlockSpec spec) {
  final plans = <_FieldPlan>[
    for (final attr in _byTfName(spec.attrs, (NestedAttrSpec a) => a.tfName))
      _planAttr(attr),
  ];

  final blockChildren = <({String tfName, _FieldPlan plan})>[
    for (final child in spec.children)
      (tfName: child.tfName, plan: _planChild(child)),
    for (final excluded in spec.excludedChildren)
      (tfName: excluded.tfName, plan: _planExcludedChild(excluded)),
  ]..sort((a, b) => a.tfName.compareTo(b.tfName));
  plans.addAll(blockChildren.map((e) => e.plan));

  return plans;
}

_FieldPlan _planAttr(NestedAttrSpec attr) => _plan(
      dartName: attr.dartName,
      tfName: attr.tfName,
      elementType: attr.dartType,
      required: attr.required,
      repeated: attr.repeated,
      wrapInTfArg: true,
    );

/// A derived nested child renders as a bare (non-`TfArg`) class reference —
/// see [nestedParamType] — and encodes via its own `.encode()`.
_FieldPlan _planChild(NestedBlockSpec child) => _plan(
      dartName: snakeToCamel(child.tfName),
      tfName: child.tfName,
      elementType: child.className,
      required: child.required,
      repeated: child.repeated,
      wrapInTfArg: false,
    );

/// An excluded child (its subtree wasn't collected — see
/// [NestedBlockSpec.excludedChildren]) renders as an opaque `TfArg`
/// passthrough that still matches the schema's real cardinality: a single
/// `TfArg<Map<String, dynamic>>` normally, or `TfArg<List<Map<String,
/// dynamic>>>` when [ExcludedNestedBlock.repeated] — required-ness follows
/// [ExcludedNestedBlock.required] the same way every other field here does.
/// Only the excluded block's OWN inner shape (its attrs / further children)
/// is discarded; its shape as seen by its parent is preserved, matching the
/// existing top-level passthrough idiom (`WrapperEmitter._nestedBlockParam`)
/// rather than the per-element `List<TfArg<...>>?` shape [_plan] uses for a
/// repeated *typed* attribute or child — a `TfArg` wrapping one JSON blob
/// (here a whole array) is a different shape than a Dart `List` of
/// individually-`TfArg`-wrapped elements, and callers of an opaque
/// passthrough have always supplied the former (e.g. a literal
/// `TfArg.literal([{...}, {...}])`), not the latter.
_FieldPlan _planExcludedChild(ExcludedNestedBlock excluded) {
  final dartName = safeDartIdentifier(snakeToCamel(excluded.tfName));
  final innerType =
      excluded.repeated ? 'List<Map<String, dynamic>>' : 'Map<String, dynamic>';
  final fieldType =
      excluded.required ? 'TfArg<$innerType>' : 'TfArg<$innerType>?';
  final ctorParam =
      excluded.required ? 'required this.$dartName,' : 'this.$dartName,';
  final fieldDecl = 'final $fieldType $dartName;';

  final accessExpr = excluded.required ? dartName : '$dartName!';
  final entry = "'${excluded.tfName}': $accessExpr.toTfJson(),";
  final encodeEntry =
      excluded.required ? entry : 'if ($dartName != null) $entry';

  return (ctorParam: ctorParam, fieldDecl: fieldDecl, encodeEntry: encodeEntry);
}

/// The one place the required/optional and repeated/scalar axes resolve
/// into a constructor parameter, field declaration, and `encode()` entry.
///
/// [wrapInTfArg] selects between the two attribute shapes this emitter
/// ever produces: a leaf attribute (`TfArg<elementType>`, encoded via
/// `.toTfJson()`) or a nested-block reference (bare `elementType`, encoded
/// via `.encode()`).
_FieldPlan _plan({
  required String dartName,
  required String tfName,
  required String elementType,
  required bool required,
  required bool repeated,
  required bool wrapInTfArg,
}) {
  final ident = safeDartIdentifier(dartName);
  final accessor = wrapInTfArg ? '.toTfJson()' : '.encode()';
  final elementDartType = wrapInTfArg ? 'TfArg<$elementType>' : elementType;
  final bareFieldType = repeated ? 'List<$elementDartType>' : elementDartType;
  final fieldType = required ? bareFieldType : '$bareFieldType?';

  final ctorParam = required ? 'required this.$ident,' : 'this.$ident,';
  final fieldDecl = 'final $fieldType $ident;';

  final String valueExpr;
  if (repeated) {
    final source = required ? ident : '$ident!';
    valueExpr = '[for (final e in $source) e$accessor]';
  } else {
    final target = required ? ident : '$ident!';
    valueExpr = '$target$accessor';
  }
  final entry = "'$tfName': $valueExpr,";
  final encodeEntry = required ? entry : 'if ($ident != null) $entry';

  return (ctorParam: ctorParam, fieldDecl: fieldDecl, encodeEntry: encodeEntry);
}

/// Sorts a defensive copy of [items] by [tfName], ascending. Every
/// sibling-ordering decision in this file goes through here so the output
/// never depends on the caller's own list order.
List<T> _byTfName<T>(Iterable<T> items, String Function(T) tfName) {
  final list = items.toList()..sort((a, b) => tfName(a).compareTo(tfName(b)));
  return list;
}
