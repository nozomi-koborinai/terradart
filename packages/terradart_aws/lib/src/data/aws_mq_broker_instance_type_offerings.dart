// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_broker_instance_type_offerings`.
const Set<String> _awsMqBrokerInstanceTypeOfferingsSensitive = <String>{};

/// Factory wrapper for `aws_mq_broker_instance_type_offerings`.
final class DataAwsMqBrokerInstanceTypeOfferings extends Data {
  static const String tfType = 'aws_mq_broker_instance_type_offerings';

  DataAwsMqBrokerInstanceTypeOfferings({
    required super.localName,
    TfArg<String>? engineType,
    TfArg<String>? hostInstanceType,
    TfArg<String>? region,
    TfArg<String>? storageType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engineType != null) 'engine_type': engineType,
           if (hostInstanceType != null) 'host_instance_type': hostInstanceType,
           if (region != null) 'region': region,
           if (storageType != null) 'storage_type': storageType,
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
}
