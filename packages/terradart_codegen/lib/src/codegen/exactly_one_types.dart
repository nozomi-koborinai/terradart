import 'naming.dart';

/// One member of an exactly-one group as its sealed variant holds it.
typedef ExactlyOneVariant = ({
  /// Terraform argument name, which is also the variant's `blockKey`.
  String tfName,

  /// Dart field name.
  String ident,

  /// Non-nullable Dart field type.
  String fieldType,

  /// The wire value `encode()` writes under [tfName].
  String encodeExpr,

  /// The `TfArg` a resource's `argMap` holds under [tfName]; null for a
  /// variant inside a nested helper, which only encodes.
  String? argMapExpr,

  /// `@Deprecated` message of the member, if any.
  String? deprecation,
});

/// The most members a sealed group joins into its names; a larger group
/// (`google_chronicle_feed` `details`, 75 feed kinds) stays unsealed until a
/// human names it.
const maxExactlyOneMembers = 16;

/// Why [members] is too large to seal, or null when it is not.
String? exactlyOneTooLarge(List<String> members) =>
    members.length > maxExactlyOneMembers
    ? 'the group has ${members.length} members, more than '
          '$maxExactlyOneMembers a sealed name joins'
    : null;

/// Snake-case name of the slot or field that holds one of [members]
/// (`filename_or_image_uri`).
String exactlyOneSlotName(List<String> members) => members.join('_or_');

/// The sealed type [prefix] declares for [members].
String exactlyOneSealedName(String prefix, List<String> members) =>
    prefix + snakeToPascal(exactlyOneSlotName(members));

/// The concrete variant class of the sealed type [sealed] that sets
/// [member] (`LambdaFunctionCode` + `image_uri` → `LambdaFunctionCodeImageUri`).
/// Callers construct it through the sealed type's factory constructor
/// (`.imageUri(...)`); the class exists for pattern matching.
String exactlyOneVariantName(String sealed, String member) =>
    '$sealed${snakeToPascal(member)}';

/// Renders the sealed type for one exactly-one group — or, when [optional],
/// one at-most-one group, held by a nullable slot — and one variant per
/// member, in [variants] order. [where] names the block the members belong
/// to in the doc comments.
///
/// Each variant is reachable as a `const factory` constructor on the sealed
/// type named after its member, taking the member's value positionally, so
/// a caller writes the dot shorthand `slot: .imageUri(...)`. The concrete
/// classes follow the shape `migrate/helper_class_extractor.dart`
/// recognises: a `blockKey` getter and a field-per-key `encode()` (plus
/// `argMap` for a resource-level group).
String renderExactlyOneTypes({
  required String sealed,
  required List<String> members,
  required String where,
  required List<ExactlyOneVariant> variants,
  bool optional = false,
}) {
  final topLevel = variants.first.argMapExpr != null;
  final list = members.map((m) => '`$m`').join(', ');
  final buf = StringBuffer();
  if (optional) {
    buf
      ..writeln('/// At most one of $list on $where: the provider rejects')
      ..writeln('/// more than one, so each variant sets one of them and a')
      ..writeln('/// null choice sets none.');
  } else {
    buf
      ..writeln('/// Exactly one of $list on $where: the provider rejects')
      ..writeln(
        '/// none and more than one, so each variant sets one of them.',
      );
  }
  buf
    ..writeln('///')
    ..writeln(
      '/// Pick one with a dot shorthand: `.${variants.first.ident}(...)`.',
    )
    ..writeln('sealed class $sealed {')
    ..writeln('  const $sealed();');
  for (final v in variants) {
    buf
      ..writeln()
      ..writeln('  /// Sets `${v.tfName}`.');
    if (v.deprecation != null) {
      buf.writeln("  @Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
    }
    buf.writeln(
      '  const factory $sealed.${v.ident}(${v.fieldType} ${v.ident}) = '
      '${exactlyOneVariantName(sealed, v.tfName)};',
    );
  }
  buf
    ..writeln()
    ..writeln('  /// The Terraform argument this choice sets.')
    ..writeln('  String get blockKey;')
    ..writeln()
    ..writeln('  Map<String, Object?> encode();');
  if (topLevel) {
    buf
      ..writeln()
      ..writeln(
        '  /// The resource arguments behind [encode], as the caller\'s',
      )
      ..writeln('  /// [TfArg]s.')
      ..writeln('  Map<String, TfArg<Object?>> get argMap;');
  }
  buf.writeln('}');
  for (final v in variants) {
    final name = exactlyOneVariantName(sealed, v.tfName);
    buf
      ..writeln()
      ..writeln('/// The [$sealed.${v.ident}] choice: sets `${v.tfName}`.');
    if (v.deprecation != null) {
      buf.writeln("@Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
    }
    buf
      ..writeln('final class $name extends $sealed {')
      ..writeln('  const $name(this.${v.ident});')
      ..writeln()
      ..writeln('  final ${v.fieldType} ${v.ident};')
      ..writeln()
      ..writeln('  @override')
      ..writeln("  String get blockKey => '${v.tfName}';")
      ..writeln()
      ..writeln('  @override')
      ..writeln(
        "  Map<String, Object?> encode() => {'${v.tfName}': ${v.encodeExpr}};",
      );
    if (topLevel) {
      buf
        ..writeln()
        ..writeln('  @override')
        ..writeln('  Map<String, TfArg<Object?>> get argMap =>')
        ..writeln("      {'${v.tfName}': ${v.argMapExpr}};");
    }
    buf.writeln('}');
  }
  return buf.toString();
}
