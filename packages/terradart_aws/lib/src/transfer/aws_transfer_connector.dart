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

  final TransferConnectorCompression compression;

  final TransferConnectorEncryptionAlgorithm encryptionAlgorithm;

  final TfArg<String> localProfileId;

  final TransferConnectorMdnResponse mdnResponse;

  final TransferConnectorMdnSigningAlgorithm? mdnSigningAlgorithm;

  final TfArg<String>? messageSubject;

  final TfArg<String> partnerProfileId;

  final TransferConnectorSigningAlgorithm signingAlgorithm;

  @internal
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
extension type const TransferConnectorCompression._(TfArg<String> _)
    implements TfArg<String> {
  TransferConnectorCompression.variable(String name)
    : this._(TfArg.variable(name));
  TransferConnectorCompression.expression(String template)
    : this._(TfArg.expression(template));
  const TransferConnectorCompression.arg(TfArg<String> arg) : this._(arg);

  static const zlib = TransferConnectorCompression._(TfArgLiteral('ZLIB'));
  static const disabled = TransferConnectorCompression._(
    TfArgLiteral('DISABLED'),
  );

  static const List<TransferConnectorCompression> values = [zlib, disabled];
}

/// `encryption_algorithm` — derived from the provider schema description.
extension type const TransferConnectorEncryptionAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  TransferConnectorEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  TransferConnectorEncryptionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const TransferConnectorEncryptionAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const aes128Cbc = TransferConnectorEncryptionAlgorithm._(
    TfArgLiteral('AES128_CBC'),
  );
  static const aes192Cbc = TransferConnectorEncryptionAlgorithm._(
    TfArgLiteral('AES192_CBC'),
  );
  static const aes256Cbc = TransferConnectorEncryptionAlgorithm._(
    TfArgLiteral('AES256_CBC'),
  );
  static const desEde3Cbc = TransferConnectorEncryptionAlgorithm._(
    TfArgLiteral('DES_EDE3_CBC'),
  );
  static const none = TransferConnectorEncryptionAlgorithm._(
    TfArgLiteral('NONE'),
  );

  static const List<TransferConnectorEncryptionAlgorithm> values = [
    aes128Cbc,
    aes192Cbc,
    aes256Cbc,
    desEde3Cbc,
    none,
  ];
}

/// `mdn_response` — derived from the provider schema description.
extension type const TransferConnectorMdnResponse._(TfArg<String> _)
    implements TfArg<String> {
  TransferConnectorMdnResponse.variable(String name)
    : this._(TfArg.variable(name));
  TransferConnectorMdnResponse.expression(String template)
    : this._(TfArg.expression(template));
  const TransferConnectorMdnResponse.arg(TfArg<String> arg) : this._(arg);

  static const sync = TransferConnectorMdnResponse._(TfArgLiteral('SYNC'));
  static const none = TransferConnectorMdnResponse._(TfArgLiteral('NONE'));
  static const async = TransferConnectorMdnResponse._(TfArgLiteral('ASYNC'));

  static const List<TransferConnectorMdnResponse> values = [sync, none, async];
}

/// `mdn_signing_algorithm` — derived from the provider schema description.
extension type const TransferConnectorMdnSigningAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  TransferConnectorMdnSigningAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  TransferConnectorMdnSigningAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const TransferConnectorMdnSigningAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const sha256 = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('SHA256'),
  );
  static const sha384 = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('SHA384'),
  );
  static const sha512 = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('SHA512'),
  );
  static const sha1 = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('SHA1'),
  );
  static const none = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('NONE'),
  );
  static const defaultCase = TransferConnectorMdnSigningAlgorithm._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<TransferConnectorMdnSigningAlgorithm> values = [
    sha256,
    sha384,
    sha512,
    sha1,
    none,
    defaultCase,
  ];
}

/// `signing_algorithm` — derived from the provider schema description.
extension type const TransferConnectorSigningAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  TransferConnectorSigningAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  TransferConnectorSigningAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const TransferConnectorSigningAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const sha256 = TransferConnectorSigningAlgorithm._(
    TfArgLiteral('SHA256'),
  );
  static const sha384 = TransferConnectorSigningAlgorithm._(
    TfArgLiteral('SHA384'),
  );
  static const sha512 = TransferConnectorSigningAlgorithm._(
    TfArgLiteral('SHA512'),
  );
  static const sha1 = TransferConnectorSigningAlgorithm._(TfArgLiteral('SHA1'));
  static const none = TransferConnectorSigningAlgorithm._(TfArgLiteral('NONE'));

  static const List<TransferConnectorSigningAlgorithm> values = [
    sha256,
    sha384,
    sha512,
    sha1,
    none,
  ];
}

/// Typed helper for the `egress_config` block of
/// `aws_transfer_connector` (derived from provider schema).
@immutable
final class TransferConnectorEgressConfig {
  const TransferConnectorEgressConfig({this.vpcLattice});

  final TransferConnectorVpcLattice? vpcLattice;

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'trusted_host_keys': ?trustedHostKeys?.toTfJson(),
    'user_secret_id': ?userSecretId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_connector`.
final class AwsTransferConnector extends Resource {
  static const String tfType = 'aws_transfer_connector';

  AwsTransferConnector(
    super.localName, {
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
  TfRef<String> get accessRole => TfRef.attribute<String>(this, 'access_role');

  /// Reference to `logging_role` attribute.
  TfRef<String> get loggingRole =>
      TfRef.attribute<String>(this, 'logging_role');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy_name` attribute.
  TfRef<String> get securityPolicyName =>
      TfRef.attribute<String>(this, 'security_policy_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
