// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_instance`.
const Set<String> _awsServiceDiscoveryInstanceSensitive = <String>{};

/// Factory wrapper for `aws_service_discovery_instance`.
final class AwsServiceDiscoveryInstance extends Resource {
  static const String tfType = 'aws_service_discovery_instance';

  AwsServiceDiscoveryInstance({
    required super.localName,
    required TfArg<Map<String, String>> attributes,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<String> serviceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attributes': attributes,
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
