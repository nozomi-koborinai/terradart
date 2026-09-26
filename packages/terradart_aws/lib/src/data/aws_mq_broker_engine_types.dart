// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_broker_engine_types`.
const Set<String> _awsMqBrokerEngineTypesSensitive = <String>{};

/// Factory wrapper for `aws_mq_broker_engine_types`.
final class DataAwsMqBrokerEngineTypes extends Data {
  static const String tfType = 'aws_mq_broker_engine_types';

  DataAwsMqBrokerEngineTypes({
    required super.localName,
    TfArg<String>? engineType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engineType != null) 'engine_type': engineType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqBrokerEngineTypesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `broker_engine_types` attribute.
  TfRef<List<Map<String, Object?>>> get brokerEngineTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'broker_engine_types');
}
