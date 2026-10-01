// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_instance`.
const Set<String> _awsServiceDiscoveryInstanceSensitive = <String>{};

/// Factory wrapper for `aws_service_discovery_instance`.
final class AwsServiceDiscoveryInstance extends Resource {
  static const String tfType = 'aws_service_discovery_instance';

  AwsServiceDiscoveryInstance(
    super.localName, {
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
           'region': ?region,
           'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServiceDiscoveryInstance>`.
  RefTo<AwsServiceDiscoveryInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
