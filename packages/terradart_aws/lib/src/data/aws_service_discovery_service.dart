// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_service`.
const Set<String> _awsServiceDiscoveryServiceSensitive = <String>{};

/// Factory wrapper for `aws_service_discovery_service`.
final class DataAwsServiceDiscoveryService extends Data {
  static const String tfType = 'aws_service_discovery_service';

  DataAwsServiceDiscoveryService({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_id': namespaceId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_config` attribute.
  TfRef<List<Map<String, Object?>>> get dnsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_config');

  /// Reference to `health_check_config` attribute.
  TfRef<List<Map<String, Object?>>> get healthCheckConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_check_config');

  /// Reference to `health_check_custom_config` attribute.
  TfRef<List<Map<String, Object?>>> get healthCheckCustomConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'health_check_custom_config',
      );
}
