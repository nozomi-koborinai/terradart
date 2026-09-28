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
           if (keywordAction != null) 'keyword_action': keywordAction,
           'keyword_message': keywordMessage,
           'origination_identity_arn': originationIdentityArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2KeywordSensitive;
}
