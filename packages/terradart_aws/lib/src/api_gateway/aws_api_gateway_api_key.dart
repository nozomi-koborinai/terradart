// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_api_key`.
const Set<String> _awsApiGatewayApiKeySensitive = <String>{'value'};

/// Factory wrapper for `aws_api_gateway_api_key`.
final class AwsApiGatewayApiKey extends Resource {
  static const String tfType = 'aws_api_gateway_api_key';

  AwsApiGatewayApiKey(
    super.localName, {
    TfArg<String>? customerId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    Sensitive<String>? value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_id': ?customerId,
           'description': ?description,
           'enabled': ?enabled,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'value': ?value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayApiKey>`.
  RefTo<AwsApiGatewayApiKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `customer_id` attribute.
  TfRef<String> get customerId => TfRef.attribute<String>(this, 'customer_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
