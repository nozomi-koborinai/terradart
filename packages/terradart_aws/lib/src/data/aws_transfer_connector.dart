// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_connector`.
const Set<String> _awsTransferConnectorSensitive = <String>{};

/// Factory wrapper for `aws_transfer_connector`.
final class DataAwsTransferConnector extends Data {
  static const String tfType = 'aws_transfer_connector';

  DataAwsTransferConnector({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsTransferConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_role` attribute.
  TfRef<String> get accessRole => TfRef.attribute<String>(this, 'access_role');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `as2_config` attribute.
  TfRef<List<Map<String, Object?>>> get as2Config =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'as2_config');

  /// Reference to `egress_config` attribute.
  TfRef<List<Map<String, Object?>>> get egressConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'egress_config');

  /// Reference to `logging_role` attribute.
  TfRef<String> get loggingRole =>
      TfRef.attribute<String>(this, 'logging_role');

  /// Reference to `security_policy_name` attribute.
  TfRef<String> get securityPolicyName =>
      TfRef.attribute<String>(this, 'security_policy_name');

  /// Reference to `service_managed_egress_ip_addresses` attribute.
  TfRef<List<String>> get serviceManagedEgressIpAddresses =>
      TfRef.attribute<List<String>>(
        this,
        'service_managed_egress_ip_addresses',
      );

  /// Reference to `sftp_config` attribute.
  TfRef<List<Map<String, Object?>>> get sftpConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sftp_config');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
