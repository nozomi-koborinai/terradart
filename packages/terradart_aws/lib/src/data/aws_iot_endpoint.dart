// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_endpoint`.
const Set<String> _awsIotEndpointSensitive = <String>{};

/// Factory wrapper for `aws_iot_endpoint`.
final class DataAwsIotEndpoint extends Data {
  static const String tfType = 'aws_iot_endpoint';

  DataAwsIotEndpoint({
    required super.localName,
    TfArg<String>? endpointType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (endpointType != null) 'endpoint_type': endpointType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_address` attribute.
  TfRef<String> get endpointAddress =>
      TfRef.attribute<String>(this, 'endpoint_address');
}
