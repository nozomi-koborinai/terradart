// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_gateway/aws_api_gateway_api_key.dart';

/// Sensitive field paths for `aws_api_gateway_api_key`.
const Set<String> _awsApiGatewayApiKeySensitive = <String>{'value'};

/// Factory wrapper for `aws_api_gateway_api_key`.
final class DataAwsApiGatewayApiKey extends Data {
  static const String tfType = 'aws_api_gateway_api_key';

  DataAwsApiGatewayApiKey({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayApiKeySensitive;

  /// A reference to the `aws_api_gateway_api_key` this data source reads, for
  /// arguments typed `RefTo<AwsApiGatewayApiKey>`.
  RefTo<AwsApiGatewayApiKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `customer_id` attribute.
  TfRef<String> get customerId => TfRef.attribute<String>(this, 'customer_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
