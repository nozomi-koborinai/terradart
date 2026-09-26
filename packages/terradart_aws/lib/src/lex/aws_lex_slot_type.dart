// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_slot_type`.
const Set<String> _awsLexSlotTypeSensitive = <String>{};

/// Typed helper for the `enumeration_value` block of
/// `aws_lex_slot_type` (derived from provider schema).
@immutable
final class LexSlotTypeEnumerationValue {
  const LexSlotTypeEnumerationValue({this.synonyms, required this.value});

  final TfArg<List<Object?>>? synonyms;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (synonyms != null) 'synonyms': synonyms!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_lex_slot_type`.
final class AwsLexSlotType extends Resource {
  static const String tfType = 'aws_lex_slot_type';

  AwsLexSlotType({
    required super.localName,
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? valueSelectionStrategy,
    required List<LexSlotTypeEnumerationValue> enumerationValue,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (createVersion != null) 'create_version': createVersion,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (valueSelectionStrategy != null)
             'value_selection_strategy': valueSelectionStrategy,
           'enumeration_value': TfArg.literal([
             for (final e in enumerationValue) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexSlotTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `checksum` attribute.
  TfRef<String> get checksum => TfRef.attribute<String>(this, 'checksum');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
