// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lex/aws_lex_bot.dart';

/// Sensitive field paths for `aws_lex_bot`.
const Set<String> _awsLexBotSensitive = <String>{};

/// Factory wrapper for `aws_lex_bot`.
final class DataAwsLexBot extends Data {
  static const String tfType = 'aws_lex_bot';

  DataAwsLexBot({
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
  Set<String> get sensitiveFields => _awsLexBotSensitive;

  /// A reference to the `aws_lex_bot` this data source reads, for
  /// arguments typed `RefTo<AwsLexBot>`.
  RefTo<AwsLexBot> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `checksum` attribute.
  TfRef<String> get checksum => TfRef.attribute<String>(this, 'checksum');

  /// Reference to `child_directed` attribute.
  TfRef<bool> get childDirected =>
      TfRef.attribute<bool>(this, 'child_directed');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `detect_sentiment` attribute.
  TfRef<bool> get detectSentiment =>
      TfRef.attribute<bool>(this, 'detect_sentiment');

  /// Reference to `enable_model_improvements` attribute.
  TfRef<bool> get enableModelImprovements =>
      TfRef.attribute<bool>(this, 'enable_model_improvements');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `idle_session_ttl_in_seconds` attribute.
  TfRef<num> get idleSessionTtlInSeconds =>
      TfRef.attribute<num>(this, 'idle_session_ttl_in_seconds');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `nlu_intent_confidence_threshold` attribute.
  TfRef<num> get nluIntentConfidenceThreshold =>
      TfRef.attribute<num>(this, 'nlu_intent_confidence_threshold');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `voice_id` attribute.
  TfRef<String> get voiceId => TfRef.attribute<String>(this, 'voice_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
