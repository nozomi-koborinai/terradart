// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_keyword`.
const Set<String> _awsPinpointsmsvoicev2KeywordSensitive = <String>{};

/// Pinpointsmsvoicev2 Keyword enum for `keyword_action`.
extension type const Pinpointsmsvoicev2KeywordAction._(TfArg<String> _)
    implements TfArg<String> {
  Pinpointsmsvoicev2KeywordAction.variable(String name)
    : this._(TfArg.variable(name));
  Pinpointsmsvoicev2KeywordAction.expression(String template)
    : this._(TfArg.expression(template));
  const Pinpointsmsvoicev2KeywordAction.arg(TfArg<String> arg) : this._(arg);

  static const automaticResponse = Pinpointsmsvoicev2KeywordAction._(
    TfArgLiteral('AUTOMATIC_RESPONSE'),
  );
  static const optOut = Pinpointsmsvoicev2KeywordAction._(
    TfArgLiteral('OPT_OUT'),
  );
  static const optIn = Pinpointsmsvoicev2KeywordAction._(
    TfArgLiteral('OPT_IN'),
  );

  static const List<Pinpointsmsvoicev2KeywordAction> values = [
    automaticResponse,
    optOut,
    optIn,
  ];
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_keyword`.
final class AwsPinpointsmsvoicev2Keyword extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_keyword';

  AwsPinpointsmsvoicev2Keyword(
    super.localName, {
    required TfArg<String> keyword,
    Pinpointsmsvoicev2KeywordAction? keywordAction,
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
  TfRef<String> get keyword => TfRef.attribute<String>(this, 'keyword');

  /// Reference to `keyword_action` attribute.
  TfRef<String> get keywordAction =>
      TfRef.attribute<String>(this, 'keyword_action');

  /// Reference to `keyword_message` attribute.
  TfRef<String> get keywordMessage =>
      TfRef.attribute<String>(this, 'keyword_message');

  /// Reference to `origination_identity_arn` attribute.
  TfRef<String> get originationIdentityArn =>
      TfRef.attribute<String>(this, 'origination_identity_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
