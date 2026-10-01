// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_usage_plan_key`.
const Set<String> _awsApiGatewayUsagePlanKeySensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_usage_plan_key`.
final class AwsApiGatewayUsagePlanKey extends Resource {
  static const String tfType = 'aws_api_gateway_usage_plan_key';

  AwsApiGatewayUsagePlanKey(
    super.localName, {
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
           'region': ?region,
           'usage_plan_id': usagePlanId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayUsagePlanKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayUsagePlanKey>`.
  RefTo<AwsApiGatewayUsagePlanKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `usage_plan_id` attribute.
  TfRef<String> get usagePlanId =>
      TfRef.attribute<String>(this, 'usage_plan_id');
}
