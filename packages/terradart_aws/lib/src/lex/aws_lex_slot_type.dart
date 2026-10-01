// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lex_slot_type`.
const Set<String> _awsLexSlotTypeSensitive = <String>{};

/// Lex Slot Type Value Selection enum for `value_selection_strategy`.
extension type const LexSlotTypeValueSelectionStrategy._(TfArg<String> _)
    implements TfArg<String> {
  LexSlotTypeValueSelectionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  LexSlotTypeValueSelectionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const LexSlotTypeValueSelectionStrategy.arg(TfArg<String> arg) : this._(arg);

  static const originalValue = LexSlotTypeValueSelectionStrategy._(
    TfArgLiteral('ORIGINAL_VALUE'),
  );
  static const topResolution = LexSlotTypeValueSelectionStrategy._(
    TfArgLiteral('TOP_RESOLUTION'),
  );

  static const List<LexSlotTypeValueSelectionStrategy> values = [
    originalValue,
    topResolution,
  ];
}

/// Typed helper for the `enumeration_value` block of
/// `aws_lex_slot_type` (derived from provider schema).
@immutable
final class LexSlotTypeEnumerationValue {
  const LexSlotTypeEnumerationValue({this.synonyms, required this.value});

  final TfArg<List<String>>? synonyms;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'synonyms': ?synonyms?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_lex_slot_type`.
final class AwsLexSlotType extends Resource {
  static const String tfType = 'aws_lex_slot_type';

  AwsLexSlotType(
    super.localName, {
    TfArg<bool>? createVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    LexSlotTypeValueSelectionStrategy? valueSelectionStrategy,
    required List<LexSlotTypeEnumerationValue> enumerationValue,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_version': ?createVersion,
           'description': ?description,
           'name': name,
           'region': ?region,
           'value_selection_strategy': ?valueSelectionStrategy,
           'enumeration_value': TfArg.literal([
             for (final e in enumerationValue) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexSlotTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexSlotType>`.
  RefTo<AwsLexSlotType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `create_version` attribute.
  TfRef<bool> get createVersion =>
      TfRef.attribute<bool>(this, 'create_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `value_selection_strategy` attribute.
  TfRef<String> get valueSelectionStrategy =>
      TfRef.attribute<String>(this, 'value_selection_strategy');
}
