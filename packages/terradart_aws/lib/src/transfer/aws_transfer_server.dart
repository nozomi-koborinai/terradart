// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_transfer_server`.
const Set<String> _awsTransferServerSensitive = <String>{
  'host_key',
  'post_authentication_login_banner',
  'pre_authentication_login_banner',
};

/// Transfer Server enum for `domain`.
extension type const TransferServerDomain._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerDomain.variable(String name) : this._(TfArg.variable(name));
  TransferServerDomain.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerDomain.arg(TfArg<String> arg) : this._(arg);

  static const s3 = TransferServerDomain._(TfArgLiteral('S3'));
  static const efs = TransferServerDomain._(TfArgLiteral('EFS'));

  static const List<TransferServerDomain> values = [s3, efs];
}

/// Transfer Server Endpoint enum for `endpoint_type`.
extension type const TransferServerEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const public = TransferServerEndpointType._(TfArgLiteral('PUBLIC'));
  static const vpc = TransferServerEndpointType._(TfArgLiteral('VPC'));
  static const vpcEndpoint = TransferServerEndpointType._(
    TfArgLiteral('VPC_ENDPOINT'),
  );

  static const List<TransferServerEndpointType> values = [
    public,
    vpc,
    vpcEndpoint,
  ];
}

/// Transfer Server Identity Provider enum for `identity_provider_type`.
extension type const TransferServerIdentityProviderType._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerIdentityProviderType.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerIdentityProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerIdentityProviderType.arg(TfArg<String> arg) : this._(arg);

  static const serviceManaged = TransferServerIdentityProviderType._(
    TfArgLiteral('SERVICE_MANAGED'),
  );
  static const apiGateway = TransferServerIdentityProviderType._(
    TfArgLiteral('API_GATEWAY'),
  );
  static const awsDirectoryService = TransferServerIdentityProviderType._(
    TfArgLiteral('AWS_DIRECTORY_SERVICE'),
  );
  static const awsLambda = TransferServerIdentityProviderType._(
    TfArgLiteral('AWS_LAMBDA'),
  );

  static const List<TransferServerIdentityProviderType> values = [
    serviceManaged,
    apiGateway,
    awsDirectoryService,
    awsLambda,
  ];
}

/// Transfer Server Ip Address enum for `ip_address_type`.
extension type const TransferServerIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = TransferServerIpAddressType._(TfArgLiteral('IPV4'));
  static const dualstack = TransferServerIpAddressType._(
    TfArgLiteral('DUALSTACK'),
  );

  static const List<TransferServerIpAddressType> values = [ipv4, dualstack];
}

/// Transfer Server enum for `protocols`.
extension type const TransferServerProtocols._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerProtocols.variable(String name) : this._(TfArg.variable(name));
  TransferServerProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerProtocols.arg(TfArg<String> arg) : this._(arg);

  static const sftp = TransferServerProtocols._(TfArgLiteral('SFTP'));
  static const ftp = TransferServerProtocols._(TfArgLiteral('FTP'));
  static const ftps = TransferServerProtocols._(TfArgLiteral('FTPS'));
  static const as2 = TransferServerProtocols._(TfArgLiteral('AS2'));

  static const List<TransferServerProtocols> values = [sftp, ftp, ftps, as2];
}

/// Transfer Server Security Policy enum for `security_policy_name`.
extension type const TransferServerSecurityPolicyName._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerSecurityPolicyName.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerSecurityPolicyName.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerSecurityPolicyName.arg(TfArg<String> arg) : this._(arg);

  static const transfersecuritypolicy201811 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2018-11'),
      );
  static const transfersecuritypolicy202006 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2020-06'),
      );
  static const transfersecuritypolicy202203 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2022-03'),
      );
  static const transfersecuritypolicy202305 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2023-05'),
      );
  static const transfersecuritypolicy202401 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2024-01'),
      );
  static const transfersecuritypolicy202503 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-2025-03'),
      );
  static const transfersecuritypolicyFips202006 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-FIPS-2020-06'),
      );
  static const transfersecuritypolicyFips202305 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-FIPS-2023-05'),
      );
  static const transfersecuritypolicyFips202401 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-FIPS-2024-01'),
      );
  static const transfersecuritypolicyFips202405 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-FIPS-2024-05'),
      );
  static const transfersecuritypolicyFips202503 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-FIPS-2025-03'),
      );
  static const transfersecuritypolicyPqSshExperimental202304 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-PQ-SSH-Experimental-2023-04'),
      );
  static const transfersecuritypolicyPqSshFipsExperimental202304 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-PQ-SSH-FIPS-Experimental-2023-04'),
      );
  static const transfersecuritypolicyRestricted201811 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-Restricted-2018-11'),
      );
  static const transfersecuritypolicyRestricted202006 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-Restricted-2020-06'),
      );
  static const transfersecuritypolicyRestricted202406 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-Restricted-2024-06'),
      );
  static const transfersecuritypolicySshauditcompliant202502 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-SshAuditCompliant-2025-02'),
      );
  static const transfersecuritypolicyAs2restricted202507 =
      TransferServerSecurityPolicyName._(
        TfArgLiteral('TransferSecurityPolicy-AS2Restricted-2025-07'),
      );

  static const List<TransferServerSecurityPolicyName> values = [
    transfersecuritypolicy201811,
    transfersecuritypolicy202006,
    transfersecuritypolicy202203,
    transfersecuritypolicy202305,
    transfersecuritypolicy202401,
    transfersecuritypolicy202503,
    transfersecuritypolicyFips202006,
    transfersecuritypolicyFips202305,
    transfersecuritypolicyFips202401,
    transfersecuritypolicyFips202405,
    transfersecuritypolicyFips202503,
    transfersecuritypolicyPqSshExperimental202304,
    transfersecuritypolicyPqSshFipsExperimental202304,
    transfersecuritypolicyRestricted201811,
    transfersecuritypolicyRestricted202006,
    transfersecuritypolicyRestricted202406,
    transfersecuritypolicySshauditcompliant202502,
    transfersecuritypolicyAs2restricted202507,
  ];
}

/// Transfer Server Sftp Authentication enum for `sftp_authentication_methods`.
extension type const TransferServerSftpAuthenticationMethods._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerSftpAuthenticationMethods.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerSftpAuthenticationMethods.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerSftpAuthenticationMethods.arg(TfArg<String> arg)
    : this._(arg);

  static const password = TransferServerSftpAuthenticationMethods._(
    TfArgLiteral('PASSWORD'),
  );
  static const publicKey = TransferServerSftpAuthenticationMethods._(
    TfArgLiteral('PUBLIC_KEY'),
  );
  static const publicKeyOrPassword = TransferServerSftpAuthenticationMethods._(
    TfArgLiteral('PUBLIC_KEY_OR_PASSWORD'),
  );
  static const publicKeyAndPassword = TransferServerSftpAuthenticationMethods._(
    TfArgLiteral('PUBLIC_KEY_AND_PASSWORD'),
  );

  static const List<TransferServerSftpAuthenticationMethods> values = [
    password,
    publicKey,
    publicKeyOrPassword,
    publicKeyAndPassword,
  ];
}

/// Typed helper for the `endpoint_details` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerEndpointDetails {
  const TransferServerEndpointDetails({
    this.addressAllocationIds,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcEndpointId,
    this.vpcId,
  });

  final TfArg<List<String>>? addressAllocationIds;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  final TfArg<String>? vpcEndpointId;

  final RefTo<AwsVpc>? vpcId;

  Map<String, Object?> encode() => {
    'address_allocation_ids': ?addressAllocationIds?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
    'vpc_endpoint_id': ?vpcEndpointId?.toTfJson(),
    'vpc_id': ?vpcId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `protocol_details` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerProtocolDetails {
  const TransferServerProtocolDetails({
    this.as2Transports,
    this.passiveIp,
    this.setStatOption,
    this.tlsSessionResumptionMode,
  });

  final List<TransferServerAs2Transports>? as2Transports;

  final TfArg<String>? passiveIp;

  final TransferServerSetStatOption? setStatOption;

  final TransferServerTlsSessionResumptionMode? tlsSessionResumptionMode;

  Map<String, Object?> encode() => {
    if (as2Transports != null)
      'as2_transports': [for (final e in as2Transports!) e.toTfJson()],
    'passive_ip': ?passiveIp?.toTfJson(),
    'set_stat_option': ?setStatOption?.toTfJson(),
    'tls_session_resumption_mode': ?tlsSessionResumptionMode?.toTfJson(),
  };
}

/// `as2_transports` — derived from the provider schema description.
extension type const TransferServerAs2Transports._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerAs2Transports.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerAs2Transports.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerAs2Transports.arg(TfArg<String> arg) : this._(arg);

  static const http = TransferServerAs2Transports._(TfArgLiteral('HTTP'));

  static const List<TransferServerAs2Transports> values = [http];
}

/// `set_stat_option` — derived from the provider schema description.
extension type const TransferServerSetStatOption._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerSetStatOption.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerSetStatOption.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerSetStatOption.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = TransferServerSetStatOption._(
    TfArgLiteral('DEFAULT'),
  );
  static const enableNoOp = TransferServerSetStatOption._(
    TfArgLiteral('ENABLE_NO_OP'),
  );

  static const List<TransferServerSetStatOption> values = [
    defaultCase,
    enableNoOp,
  ];
}

/// `tls_session_resumption_mode` — derived from the provider schema description.
extension type const TransferServerTlsSessionResumptionMode._(TfArg<String> _)
    implements TfArg<String> {
  TransferServerTlsSessionResumptionMode.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerTlsSessionResumptionMode.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerTlsSessionResumptionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = TransferServerTlsSessionResumptionMode._(
    TfArgLiteral('DISABLED'),
  );
  static const enabled = TransferServerTlsSessionResumptionMode._(
    TfArgLiteral('ENABLED'),
  );
  static const enforced = TransferServerTlsSessionResumptionMode._(
    TfArgLiteral('ENFORCED'),
  );

  static const List<TransferServerTlsSessionResumptionMode> values = [
    disabled,
    enabled,
    enforced,
  ];
}

/// Typed helper for the `s3_storage_options` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerS3StorageOptions {
  const TransferServerS3StorageOptions({this.directoryListingOptimization});

  final TransferServerDirectoryListingOptimization?
  directoryListingOptimization;

  Map<String, Object?> encode() => {
    'directory_listing_optimization': ?directoryListingOptimization?.toTfJson(),
  };
}

/// `directory_listing_optimization` — derived from the provider schema description.
extension type const TransferServerDirectoryListingOptimization._(
  TfArg<String> _
) implements TfArg<String> {
  TransferServerDirectoryListingOptimization.variable(String name)
    : this._(TfArg.variable(name));
  TransferServerDirectoryListingOptimization.expression(String template)
    : this._(TfArg.expression(template));
  const TransferServerDirectoryListingOptimization.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = TransferServerDirectoryListingOptimization._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = TransferServerDirectoryListingOptimization._(
    TfArgLiteral('DISABLED'),
  );

  static const List<TransferServerDirectoryListingOptimization> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `workflow_details` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerWorkflowDetails {
  const TransferServerWorkflowDetails({this.onPartialUpload, this.onUpload});

  final TransferServerOnPartialUpload? onPartialUpload;

  final TransferServerOnUpload? onUpload;

  Map<String, Object?> encode() => {
    'on_partial_upload': ?onPartialUpload?.encode(),
    'on_upload': ?onUpload?.encode(),
  };
}

/// Typed helper for the `workflow_details.on_partial_upload` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerOnPartialUpload {
  const TransferServerOnPartialUpload({
    required this.executionRole,
    required this.workflowId,
  });

  final TfArg<String> executionRole;

  final TfArg<String> workflowId;

  Map<String, Object?> encode() => {
    'execution_role': executionRole.toTfJson(),
    'workflow_id': workflowId.toTfJson(),
  };
}

/// Typed helper for the `workflow_details.on_upload` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerOnUpload {
  const TransferServerOnUpload({
    required this.executionRole,
    required this.workflowId,
  });

  final TfArg<String> executionRole;

  final TfArg<String> workflowId;

  Map<String, Object?> encode() => {
    'execution_role': executionRole.toTfJson(),
    'workflow_id': workflowId.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_server`.
final class AwsTransferServer extends Resource {
  static const String tfType = 'aws_transfer_server';

  AwsTransferServer(
    super.localName, {
    TfArg<String>? certificate,
    TfArg<String>? directoryId,
    TransferServerDomain? domain,
    TransferServerEndpointType? endpointType,
    TfArg<bool>? forceDestroy,
    TfArg<String>? function,
    Sensitive<String>? hostKey,
    TransferServerIdentityProviderType? identityProviderType,
    TfArg<String>? invocationRole,
    TransferServerIpAddressType? ipAddressType,
    TfArg<String>? loggingRole,
    Sensitive<String>? postAuthenticationLoginBanner,
    Sensitive<String>? preAuthenticationLoginBanner,
    List<TransferServerProtocols>? protocols,
    TfArg<String>? region,
    TransferServerSecurityPolicyName? securityPolicyName,
    TransferServerSftpAuthenticationMethods? sftpAuthenticationMethods,
    TfArg<List<String>>? structuredLogDestinations,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? url,
    TransferServerEndpointDetails? endpointDetails,
    TransferServerProtocolDetails? protocolDetails,
    TransferServerS3StorageOptions? s3StorageOptions,
    TransferServerWorkflowDetails? workflowDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': ?certificate,
           'directory_id': ?directoryId,
           'domain': ?domain,
           'endpoint_type': ?endpointType,
           'force_destroy': ?forceDestroy,
           'function': ?function,
           'host_key': ?hostKey,
           'identity_provider_type': ?identityProviderType,
           'invocation_role': ?invocationRole,
           'ip_address_type': ?ipAddressType,
           'logging_role': ?loggingRole,
           'post_authentication_login_banner': ?postAuthenticationLoginBanner,
           'pre_authentication_login_banner': ?preAuthenticationLoginBanner,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           'region': ?region,
           'security_policy_name': ?securityPolicyName,
           'sftp_authentication_methods': ?sftpAuthenticationMethods,
           'structured_log_destinations': ?structuredLogDestinations,
           'tags': ?tags,
           'url': ?url,
           if (endpointDetails != null)
             'endpoint_details': TfArg.literal(endpointDetails.encode()),
           if (protocolDetails != null)
             'protocol_details': TfArg.literal(protocolDetails.encode()),
           if (s3StorageOptions != null)
             's3_storage_options': TfArg.literal(s3StorageOptions.encode()),
           if (workflowDetails != null)
             'workflow_details': TfArg.literal(workflowDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferServer>`.
  RefTo<AwsTransferServer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `host_key_fingerprint` attribute.
  TfRef<String> get hostKeyFingerprint =>
      TfRef.attribute<String>(this, 'host_key_fingerprint');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `function` attribute.
  TfRef<String> get function => TfRef.attribute<String>(this, 'function');

  /// Reference to `host_key` attribute.
  TfRef<String> get hostKey => TfRef.attribute<String>(this, 'host_key');

  /// Reference to `identity_provider_type` attribute.
  TfRef<String> get identityProviderType =>
      TfRef.attribute<String>(this, 'identity_provider_type');

  /// Reference to `invocation_role` attribute.
  TfRef<String> get invocationRole =>
      TfRef.attribute<String>(this, 'invocation_role');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `logging_role` attribute.
  TfRef<String> get loggingRole =>
      TfRef.attribute<String>(this, 'logging_role');

  /// Reference to `post_authentication_login_banner` attribute.
  TfRef<String> get postAuthenticationLoginBanner =>
      TfRef.attribute<String>(this, 'post_authentication_login_banner');

  /// Reference to `pre_authentication_login_banner` attribute.
  TfRef<String> get preAuthenticationLoginBanner =>
      TfRef.attribute<String>(this, 'pre_authentication_login_banner');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy_name` attribute.
  TfRef<String> get securityPolicyName =>
      TfRef.attribute<String>(this, 'security_policy_name');

  /// Reference to `sftp_authentication_methods` attribute.
  TfRef<String> get sftpAuthenticationMethods =>
      TfRef.attribute<String>(this, 'sftp_authentication_methods');

  /// Reference to `structured_log_destinations` attribute.
  TfRef<List<String>> get structuredLogDestinations =>
      TfRef.attribute<List<String>>(this, 'structured_log_destinations');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
