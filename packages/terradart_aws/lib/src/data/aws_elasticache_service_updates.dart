// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_service_updates`.
const Set<String> _awsElasticacheServiceUpdatesSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_service_updates`.
final class DataAwsElasticacheServiceUpdates extends Data {
  static const String tfType = 'aws_elasticache_service_updates';

  DataAwsElasticacheServiceUpdates({
    required super.localName,
    TfArg<String>? region,
    TfArg<List<String>>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheServiceUpdatesSensitive;

  /// Reference to `service_updates` attribute.
  TfRef<List<Map<String, Object?>>> get serviceUpdates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_updates');
}
