// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_broker`.
const Set<String> _awsMqBrokerSensitive = <String>{};

/// Factory wrapper for `aws_mq_broker`.
final class DataAwsMqBroker extends Data {
  static const String tfType = 'aws_mq_broker';

  DataAwsMqBroker({
    required super.localName,
    TfArg<String>? brokerId,
    TfArg<String>? brokerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (brokerId != null) 'broker_id': brokerId,
           if (brokerName != null) 'broker_name': brokerName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqBrokerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authentication_strategy` attribute.
  TfRef<String> get authenticationStrategy =>
      TfRef.attribute<String>(this, 'authentication_strategy');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `configuration` attribute.
  TfRef<List<Map<String, Object?>>> get configuration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configuration');

  /// Reference to `deployment_mode` attribute.
  TfRef<String> get deploymentMode =>
      TfRef.attribute<String>(this, 'deployment_mode');

  /// Reference to `encryption_options` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_options');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `host_instance_type` attribute.
  TfRef<String> get hostInstanceType =>
      TfRef.attribute<String>(this, 'host_instance_type');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `ldap_server_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get ldapServerMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ldap_server_metadata');

  /// Reference to `logs` attribute.
  TfRef<List<Map<String, Object?>>> get logs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logs');

  /// Reference to `maintenance_window_start_time` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindowStartTime =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'maintenance_window_start_time',
      );

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `resource_share_arns` attribute.
  TfRef<List<String>> get resourceShareArns =>
      TfRef.attribute<List<String>>(this, 'resource_share_arns');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `shared_resources` attribute.
  TfRef<List<Map<String, Object?>>> get sharedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shared_resources');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `user` attribute.
  TfRef<List<Map<String, Object?>>> get user =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user');
}
