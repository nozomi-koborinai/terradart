// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_instance_storage_config`.
const Set<String> _awsConnectInstanceStorageConfigSensitive = <String>{};

/// Factory wrapper for `aws_connect_instance_storage_config`.
final class DataAwsConnectInstanceStorageConfig extends Data {
  static const String tfType = 'aws_connect_instance_storage_config';

  DataAwsConnectInstanceStorageConfig({
    required super.localName,
    required TfArg<String> associationId,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'association_id': associationId,
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'resource_type': resourceType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectInstanceStorageConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `storage_config` attribute.
  TfRef<List<Map<String, Object?>>> get storageConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_config');
}
