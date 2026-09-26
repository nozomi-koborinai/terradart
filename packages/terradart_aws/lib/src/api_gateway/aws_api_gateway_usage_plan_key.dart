// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_usage_plan_key`.
const Set<String> _awsApiGatewayUsagePlanKeySensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_usage_plan_key`.
final class AwsApiGatewayUsagePlanKey extends Resource {
  static const String tfType = 'aws_api_gateway_usage_plan_key';

  AwsApiGatewayUsagePlanKey({
    required super.localName,
    required TfArg<String> keyId,
    required TfArg<String> keyType,
    TfArg<String>? region,
    required TfArg<String> usagePlanId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_id': keyId,
           'key_type': keyType,
           if (region != null) 'region': region,
           'usage_plan_id': usagePlanId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayUsagePlanKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
