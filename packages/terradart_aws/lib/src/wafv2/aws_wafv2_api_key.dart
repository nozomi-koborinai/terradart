// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_api_key`.
const Set<String> _awsWafv2ApiKeySensitive = <String>{'api_key'};

/// Factory wrapper for `aws_wafv2_api_key`.
///
/// Provides a WAFv2 API Key resource.
final class AwsWafv2ApiKey extends Resource {
  static const String tfType = 'aws_wafv2_api_key';

  AwsWafv2ApiKey({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> scope,
    required TfArg<List<String>> tokenDomains,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'scope': scope,
           'token_domains': tokenDomains,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2ApiKeySensitive;

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');
}
