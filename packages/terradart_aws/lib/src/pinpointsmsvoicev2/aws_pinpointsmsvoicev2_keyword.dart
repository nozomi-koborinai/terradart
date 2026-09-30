// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_keyword`.
const Set<String> _awsPinpointsmsvoicev2KeywordSensitive = <String>{};

/// Pinpointsmsvoicev2 Keyword Keyword enum for `keyword_action`.
enum Pinpointsmsvoicev2KeywordKeywordAction implements TerraformEnum {
  automaticResponse('AUTOMATIC_RESPONSE'),
  optOut('OPT_OUT'),
  optIn('OPT_IN');

  const Pinpointsmsvoicev2KeywordKeywordAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_keyword`.
final class AwsPinpointsmsvoicev2Keyword extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_keyword';

  AwsPinpointsmsvoicev2Keyword({
    required super.localName,
    required TfArg<String> keyword,
    TfArg<Pinpointsmsvoicev2KeywordKeywordAction>? keywordAction,
    required TfArg<String> keywordMessage,
    required TfArg<String> originationIdentityArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'keyword': keyword,
           'keyword_action': ?keywordAction,
           'keyword_message': keywordMessage,
           'origination_identity_arn': originationIdentityArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2KeywordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2Keyword>`.
  RefTo<AwsPinpointsmsvoicev2Keyword> get ref => RefTo.of(this);

  /// Reference to `keyword` attribute.
  TfRef<String> get keywordRef => TfRef.attribute<String>(this, 'keyword');

  /// Reference to `keyword_action` attribute.
  TfRef<String> get keywordActionRef =>
      TfRef.attribute<String>(this, 'keyword_action');

  /// Reference to `keyword_message` attribute.
  TfRef<String> get keywordMessageRef =>
      TfRef.attribute<String>(this, 'keyword_message');

  /// Reference to `origination_identity_arn` attribute.
  TfRef<String> get originationIdentityArnRef =>
      TfRef.attribute<String>(this, 'origination_identity_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
