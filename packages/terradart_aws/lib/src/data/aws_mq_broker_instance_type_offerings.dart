// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_broker_instance_type_offerings`.
const Set<String> _awsMqBrokerInstanceTypeOfferingsSensitive = <String>{};

/// Factory wrapper for `aws_mq_broker_instance_type_offerings`.
final class DataAwsMqBrokerInstanceTypeOfferings extends Data {
  static const String tfType = 'aws_mq_broker_instance_type_offerings';

  DataAwsMqBrokerInstanceTypeOfferings(
    super.localName, {
    TfArg<String>? engineType,
    TfArg<String>? hostInstanceType,
    TfArg<String>? region,
    TfArg<String>? storageType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine_type': ?engineType,
           'host_instance_type': ?hostInstanceType,
           'region': ?region,
           'storage_type': ?storageType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqBrokerInstanceTypeOfferingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `broker_instance_options` attribute.
  TfRef<List<Map<String, Object?>>> get brokerInstanceOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'broker_instance_options',
      );

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `host_instance_type` attribute.
  TfRef<String> get hostInstanceType =>
      TfRef.attribute<String>(this, 'host_instance_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');
}
