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

  final TfArg<TransferConnectorCompression> compression;

  final TfArg<TransferConnectorEncryptionAlgorithm> encryptionAlgorithm;

  final TfArg<String> localProfileId;

  final TfArg<TransferConnectorMdnResponse> mdnResponse;

  final TfArg<TransferConnectorMdnSigningAlgorithm>? mdnSigningAlgorithm;

  final TfArg<String>? messageSubject;

  final TfArg<String> partnerProfileId;

  final TfArg<TransferConnectorSigningAlgorithm> signingAlgorithm;

  Map<String, Object?> encode() => {
    'compression': compression.toTfJson(),
    'encryption_algorithm': encryptionAlgorithm.toTfJson(),
    'local_profile_id': localProfileId.toTfJson(),
    'mdn_response': mdnResponse.toTfJson(),
    'mdn_signing_algorithm': ?mdnSigningAlgorithm?.toTfJson(),
    'message_subject': ?messageSubject?.toTfJson(),
    'partner_profile_id': partnerProfileId.toTfJson(),
    'signing_algorithm': signingAlgorithm.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum TransferConnectorCompression implements TerraformEnum {
  zlib('ZLIB'),
  disabled('DISABLED');

  const TransferConnectorCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `encryption_algorithm` — derived from the provider schema description.
enum TransferConnectorEncryptionAlgorithm implements TerraformEnum {
  aes128Cbc('AES128_CBC'),
  aes192Cbc('AES192_CBC'),
  aes256Cbc('AES256_CBC'),
  desEde3Cbc('DES_EDE3_CBC'),
  none('NONE');

  const TransferConnectorEncryptionAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mdn_response` — derived from the provider schema description.
enum TransferConnectorMdnResponse implements TerraformEnum {
  sync('SYNC'),
  none('NONE'),
  async('ASYNC');

  const TransferConnectorMdnResponse(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mdn_signing_algorithm` — derived from the provider schema description.
enum TransferConnectorMdnSigningAlgorithm implements TerraformEnum {
  sha256('SHA256'),
  sha384('SHA384'),
  sha512('SHA512'),
  sha1('SHA1'),
  none('NONE'),
  defaultCase('DEFAULT');

  const TransferConnectorMdnSigningAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `signing_algorithm` — derived from the provider schema description.
enum TransferConnectorSigningAlgorithm implements TerraformEnum {
  sha256('SHA256'),
  sha384('SHA384'),
  sha512('SHA512'),
  sha1('SHA1'),
  none('NONE');

  const TransferConnectorSigningAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `egress_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorEgressConfig {
  const TransferConnectorEgressConfig({this.vpcLattice});

  final TransferConnectorVpcLattice? vpcLattice;

  Map<String, Object?> encode() => {'vpc_lattice': ?vpcLattice?.encode()};
}

/// Typed helper for the `egress_config.vpc_lattice` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorVpcLattice {
  const TransferConnectorVpcLattice({
    this.portNumber,
    required this.resourceConfigurationArn,
  });

  final TfArg<num>? portNumber;

  final TfArg<String> resourceConfigurationArn;

  Map<String, Object?> encode() => {
    'port_number': ?portNumber?.toTfJson(),
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };
}

/// Typed helper for the `sftp_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorSftpConfig {
  const TransferConnectorSftpConfig({this.trustedHostKeys, this.userSecretId});

  final TfArg<List<String>>? trustedHostKeys;

  final TfArg<String>? userSecretId;

  Map<String, Object?> encode() => {
    'trusted_host_keys': ?trustedHostKeys?.toTfJson(),
    'user_secret_id': ?userSecretId?.toTfJson(),
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
           'logging_role': ?loggingRole,
           'region': ?region,
           'security_policy_name': ?securityPolicyName,
           'tags': ?tags,
           'url': ?url,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferConnector>`.
  RefTo<AwsTransferConnector> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorId =>
      TfRef.attribute<String>(this, 'connector_id');

  /// Reference to `access_role` attribute.
  TfRef<String> get accessRoleRef =>
      TfRef.attribute<String>(this, 'access_role');

  /// Reference to `logging_role` attribute.
  TfRef<String> get loggingRoleRef =>
      TfRef.attribute<String>(this, 'logging_role');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy_name` attribute.
  TfRef<String> get securityPolicyNameRef =>
      TfRef.attribute<String>(this, 'security_policy_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url` attribute.
  TfRef<String> get urlRef => TfRef.attribute<String>(this, 'url');
}
