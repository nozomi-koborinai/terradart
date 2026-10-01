// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_api_key`.
const Set<String> _awsWafv2ApiKeySensitive = <String>{'api_key'};

/// Wafv2 Api Key enum for `scope`.
extension type const Wafv2ApiKeyScope._(TfArg<String> _)
    implements TfArg<String> {
  Wafv2ApiKeyScope.variable(String name) : this._(TfArg.variable(name));
  Wafv2ApiKeyScope.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2ApiKeyScope.arg(TfArg<String> arg) : this._(arg);

  static const cloudfront = Wafv2ApiKeyScope._(TfArgLiteral('CLOUDFRONT'));
  static const regional = Wafv2ApiKeyScope._(TfArgLiteral('REGIONAL'));

  static const List<Wafv2ApiKeyScope> values = [cloudfront, regional];
}

/// Factory wrapper for `aws_wafv2_api_key`.
///
/// Provides a WAFv2 API Key resource.
final class AwsWafv2ApiKey extends Resource {
  static const String tfType = 'aws_wafv2_api_key';

  AwsWafv2ApiKey(
    super.localName, {
    TfArg<String>? region,
    required Wafv2ApiKeyScope scope,
    required TfArg<List<String>> tokenDomains,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'scope': scope,
           'token_domains': tokenDomains,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2ApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2ApiKey>`.
  RefTo<AwsWafv2ApiKey> get ref => RefTo.of(this);

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `token_domains` attribute.
  TfRef<List<String>> get tokenDomains =>
      TfRef.attribute<List<String>>(this, 'token_domains');
}
