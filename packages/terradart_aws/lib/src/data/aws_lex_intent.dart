// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lex/aws_lex_intent.dart';

/// Sensitive field paths for `aws_lex_intent`.
const Set<String> _awsLexIntentSensitive = <String>{};

/// Factory wrapper for `aws_lex_intent`.
final class DataAwsLexIntent extends Data {
  static const String tfType = 'aws_lex_intent';

  DataAwsLexIntent({
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
  Set<String> get sensitiveFields => _awsLexIntentSensitive;

  /// A reference to the `aws_lex_intent` this data source reads, for
  /// arguments typed `RefTo<AwsLexIntent>`.
  RefTo<AwsLexIntent> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `checksum` attribute.
  TfRef<String> get checksum => TfRef.attribute<String>(this, 'checksum');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `parent_intent_signature` attribute.
  TfRef<String> get parentIntentSignature =>
      TfRef.attribute<String>(this, 'parent_intent_signature');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
