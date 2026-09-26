// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_connector`.
const Set<String> _awsTransferConnectorSensitive = <String>{};

/// Typed helper for the `as2_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorAs2Config {
  const TransferConnectorAs2Config({
    required this.compression,
    required this.encryptionAlgorithm,
    required this.localProfileId,
    required this.mdnResponse,
    this.mdnSigningAlgorithm,
    this.messageSubject,
    required this.partnerProfileId,
    required this.signingAlgorithm,
  });

  final TfArg<String> compression;

  final TfArg<String> encryptionAlgorithm;

  final TfArg<String> localProfileId;

  final TfArg<String> mdnResponse;

  final TfArg<String>? mdnSigningAlgorithm;

  final TfArg<String>? messageSubject;

  final TfArg<String> partnerProfileId;

  final TfArg<String> signingAlgorithm;

  Map<String, Object?> encode() => {
    'compression': compression.toTfJson(),
    'encryption_algorithm': encryptionAlgorithm.toTfJson(),
    'local_profile_id': localProfileId.toTfJson(),
    'mdn_response': mdnResponse.toTfJson(),
    if (mdnSigningAlgorithm != null)
      'mdn_signing_algorithm': mdnSigningAlgorithm!.toTfJson(),
    if (messageSubject != null) 'message_subject': messageSubject!.toTfJson(),
    'partner_profile_id': partnerProfileId.toTfJson(),
    'signing_algorithm': signingAlgorithm.toTfJson(),
  };
}

/// Typed helper for the `egress_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorEgressConfig {
  const TransferConnectorEgressConfig({this.vpcLattice});

  final TransferConnectorEgressConfigVpcLattice? vpcLattice;

  Map<String, Object?> encode() => {
    if (vpcLattice != null) 'vpc_lattice': vpcLattice!.encode(),
  };
}

/// Typed helper for the `egress_config.vpc_lattice` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorEgressConfigVpcLattice {
  const TransferConnectorEgressConfigVpcLattice({
    this.portNumber,
    required this.resourceConfigurationArn,
  });

  final TfArg<num>? portNumber;

  final TfArg<String> resourceConfigurationArn;

  Map<String, Object?> encode() => {
    if (portNumber != null) 'port_number': portNumber!.toTfJson(),
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };
}

/// Typed helper for the `sftp_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorSftpConfig {
  const TransferConnectorSftpConfig({this.trustedHostKeys, this.userSecretId});

  final TfArg<List<Object?>>? trustedHostKeys;

  final TfArg<String>? userSecretId;

  Map<String, Object?> encode() => {
    if (trustedHostKeys != null)
      'trusted_host_keys': trustedHostKeys!.toTfJson(),
    if (userSecretId != null) 'user_secret_id': userSecretId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_connector`.
final class AwsTransferConnector extends Resource {
  static const String tfType = 'aws_transfer_connector';

  AwsTransferConnector({
    required super.localName,
    required TfArg<String> accessRole,
    TfArg<String>? loggingRole,
    TfArg<String>? region,
    TfArg<String>? securityPolicyName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? url,
    TransferConnectorAs2Config? as2Config,
    TransferConnectorEgressConfig? egressConfig,
    TransferConnectorSftpConfig? sftpConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_role': accessRole,
           if (loggingRole != null) 'logging_role': loggingRole,
           if (region != null) 'region': region,
           if (securityPolicyName != null)
             'security_policy_name': securityPolicyName,
           if (tags != null) 'tags': tags,
           if (url != null) 'url': url,
           if (as2Config != null)
             'as2_config': TfArg.literal(as2Config.encode()),
           if (egressConfig != null)
             'egress_config': TfArg.literal(egressConfig.encode()),
           if (sftpConfig != null)
             'sftp_config': TfArg.literal(sftpConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorId =>
      TfRef.attribute<String>(this, 'connector_id');
}
