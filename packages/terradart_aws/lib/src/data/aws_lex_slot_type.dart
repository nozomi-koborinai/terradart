// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lex/aws_lex_slot_type.dart';

/// Sensitive field paths for `aws_lex_slot_type`.
const Set<String> _awsLexSlotTypeSensitive = <String>{};

/// Factory wrapper for `aws_lex_slot_type`.
final class DataAwsLexSlotType extends Data {
  static const String tfType = 'aws_lex_slot_type';

  DataAwsLexSlotType({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'version': ?version},
       );

  @override
  Set<String> get sensitiveFields => _awsLexSlotTypeSensitive;

  /// A reference to the `aws_lex_slot_type` this data source reads, for
  /// arguments typed `RefTo<AwsLexSlotType>`.
  RefTo<AwsLexSlotType> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `checksum` attribute.
  TfRef<String> get checksum => TfRef.attribute<String>(this, 'checksum');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enumeration_value` attribute.
  TfRef<List<Map<String, Object?>>> get enumerationValue =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enumeration_value');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `value_selection_strategy` attribute.
  TfRef<String> get valueSelectionStrategy =>
      TfRef.attribute<String>(this, 'value_selection_strategy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
