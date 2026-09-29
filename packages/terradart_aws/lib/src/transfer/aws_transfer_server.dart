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
enum TransferServerDomain implements TerraformEnum {
  s3('S3'),
  efs('EFS');

  const TransferServerDomain(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server Endpoint enum for `endpoint_type`.
enum TransferServerEndpointType implements TerraformEnum {
  public('PUBLIC'),
  vpc('VPC'),
  vpcEndpoint('VPC_ENDPOINT');

  const TransferServerEndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server Identity Provider enum for `identity_provider_type`.
enum TransferServerIdentityProviderType implements TerraformEnum {
  serviceManaged('SERVICE_MANAGED'),
  apiGateway('API_GATEWAY'),
  awsDirectoryService('AWS_DIRECTORY_SERVICE'),
  awsLambda('AWS_LAMBDA');

  const TransferServerIdentityProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server Ip Address enum for `ip_address_type`.
enum TransferServerIpAddressType implements TerraformEnum {
  ipv4('IPV4'),
  dualstack('DUALSTACK');

  const TransferServerIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server enum for `protocols`.
enum TransferServerProtocols implements TerraformEnum {
  sftp('SFTP'),
  ftp('FTP'),
  ftps('FTPS'),
  as2('AS2');

  const TransferServerProtocols(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server Security Policy enum for `security_policy_name`.
enum TransferServerSecurityPolicyName implements TerraformEnum {
  transfersecuritypolicy201811('TransferSecurityPolicy-2018-11'),
  transfersecuritypolicy202006('TransferSecurityPolicy-2020-06'),
  transfersecuritypolicy202203('TransferSecurityPolicy-2022-03'),
  transfersecuritypolicy202305('TransferSecurityPolicy-2023-05'),
  transfersecuritypolicy202401('TransferSecurityPolicy-2024-01'),
  transfersecuritypolicy202503('TransferSecurityPolicy-2025-03'),
  transfersecuritypolicyFips202006('TransferSecurityPolicy-FIPS-2020-06'),
  transfersecuritypolicyFips202305('TransferSecurityPolicy-FIPS-2023-05'),
  transfersecuritypolicyFips202401('TransferSecurityPolicy-FIPS-2024-01'),
  transfersecuritypolicyFips202405('TransferSecurityPolicy-FIPS-2024-05'),
  transfersecuritypolicyFips202503('TransferSecurityPolicy-FIPS-2025-03'),
  transfersecuritypolicyPqSshExperimental202304(
    'TransferSecurityPolicy-PQ-SSH-Experimental-2023-04',
  ),
  transfersecuritypolicyPqSshFipsExperimental202304(
    'TransferSecurityPolicy-PQ-SSH-FIPS-Experimental-2023-04',
  ),
  transfersecuritypolicyRestricted201811(
    'TransferSecurityPolicy-Restricted-2018-11',
  ),
  transfersecuritypolicyRestricted202006(
    'TransferSecurityPolicy-Restricted-2020-06',
  ),
  transfersecuritypolicyRestricted202406(
    'TransferSecurityPolicy-Restricted-2024-06',
  ),
  transfersecuritypolicySshauditcompliant202502(
    'TransferSecurityPolicy-SshAuditCompliant-2025-02',
  ),
  transfersecuritypolicyAs2restricted202507(
    'TransferSecurityPolicy-AS2Restricted-2025-07',
  );

  const TransferServerSecurityPolicyName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transfer Server Sftp Authentication enum for `sftp_authentication_methods`.
enum TransferServerSftpAuthenticationMethods implements TerraformEnum {
  password('PASSWORD'),
  publicKey('PUBLIC_KEY'),
  publicKeyOrPassword('PUBLIC_KEY_OR_PASSWORD'),
  publicKeyAndPassword('PUBLIC_KEY_AND_PASSWORD');

  const TransferServerSftpAuthenticationMethods(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<Object?>>? addressAllocationIds;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  final TfArg<String>? vpcEndpointId;

  final RefTo<AwsVpc>? vpcId;

  Map<String, Object?> encode() => {
    if (addressAllocationIds != null)
      'address_allocation_ids': addressAllocationIds!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.encodeAs('id').toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.encodeAs('id').toTfJson(),
    if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId!.toTfJson(),
    if (vpcId != null) 'vpc_id': vpcId!.encodeAs('id').toTfJson(),
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

  final List<TfArg<TransferServerProtocolDetailsAs2Transports>>? as2Transports;

  final TfArg<String>? passiveIp;

  final TfArg<TransferServerProtocolDetailsSetStatOption>? setStatOption;

  final TfArg<TransferServerProtocolDetailsTlsSessionResumptionMode>?
  tlsSessionResumptionMode;

  Map<String, Object?> encode() => {
    if (as2Transports != null)
      'as2_transports': [for (final e in as2Transports!) e.toTfJson()],
    if (passiveIp != null) 'passive_ip': passiveIp!.toTfJson(),
    if (setStatOption != null) 'set_stat_option': setStatOption!.toTfJson(),
    if (tlsSessionResumptionMode != null)
      'tls_session_resumption_mode': tlsSessionResumptionMode!.toTfJson(),
  };
}

/// `as2_transports` — derived from the provider schema description.
enum TransferServerProtocolDetailsAs2Transports implements TerraformEnum {
  http('HTTP');

  const TransferServerProtocolDetailsAs2Transports(this.terraformValue);
  @override
  final String terraformValue;
}

/// `set_stat_option` — derived from the provider schema description.
enum TransferServerProtocolDetailsSetStatOption implements TerraformEnum {
  defaultCase('DEFAULT'),
  enableNoOp('ENABLE_NO_OP');

  const TransferServerProtocolDetailsSetStatOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `tls_session_resumption_mode` — derived from the provider schema description.
enum TransferServerProtocolDetailsTlsSessionResumptionMode
    implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  enforced('ENFORCED');

  const TransferServerProtocolDetailsTlsSessionResumptionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_storage_options` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerS3StorageOptions {
  const TransferServerS3StorageOptions({this.directoryListingOptimization});

  final TfArg<TransferServerS3StorageOptionsDirectoryListingOptimization>?
  directoryListingOptimization;

  Map<String, Object?> encode() => {
    if (directoryListingOptimization != null)
      'directory_listing_optimization': directoryListingOptimization!
          .toTfJson(),
  };
}

/// `directory_listing_optimization` — derived from the provider schema description.
enum TransferServerS3StorageOptionsDirectoryListingOptimization
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const TransferServerS3StorageOptionsDirectoryListingOptimization(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow_details` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerWorkflowDetails {
  const TransferServerWorkflowDetails({this.onPartialUpload, this.onUpload});

  final TransferServerWorkflowDetailsOnPartialUpload? onPartialUpload;

  final TransferServerWorkflowDetailsOnUpload? onUpload;

  Map<String, Object?> encode() => {
    if (onPartialUpload != null) 'on_partial_upload': onPartialUpload!.encode(),
    if (onUpload != null) 'on_upload': onUpload!.encode(),
  };
}

/// Typed helper for the `workflow_details.on_partial_upload` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerWorkflowDetailsOnPartialUpload {
  const TransferServerWorkflowDetailsOnPartialUpload({
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
final class TransferServerWorkflowDetailsOnUpload {
  const TransferServerWorkflowDetailsOnUpload({
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

  AwsTransferServer({
    required super.localName,
    TfArg<String>? certificate,
    TfArg<String>? directoryId,
    TfArg<TransferServerDomain>? domain,
    TfArg<TransferServerEndpointType>? endpointType,
    TfArg<bool>? forceDestroy,
    TfArg<String>? function,
    TfArg<String>? hostKey,
    TfArg<TransferServerIdentityProviderType>? identityProviderType,
    TfArg<String>? invocationRole,
    TfArg<TransferServerIpAddressType>? ipAddressType,
    TfArg<String>? loggingRole,
    TfArg<String>? postAuthenticationLoginBanner,
    TfArg<String>? preAuthenticationLoginBanner,
    List<TfArg<TransferServerProtocols>>? protocols,
    TfArg<String>? region,
    TfArg<TransferServerSecurityPolicyName>? securityPolicyName,
    TfArg<TransferServerSftpAuthenticationMethods>? sftpAuthenticationMethods,
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
           if (certificate != null) 'certificate': certificate,
           if (directoryId != null) 'directory_id': directoryId,
           if (domain != null) 'domain': domain,
           if (endpointType != null) 'endpoint_type': endpointType,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (function != null) 'function': function,
           if (hostKey != null) 'host_key': hostKey,
           if (identityProviderType != null)
             'identity_provider_type': identityProviderType,
           if (invocationRole != null) 'invocation_role': invocationRole,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (loggingRole != null) 'logging_role': loggingRole,
           if (postAuthenticationLoginBanner != null)
             'post_authentication_login_banner': postAuthenticationLoginBanner,
           if (preAuthenticationLoginBanner != null)
             'pre_authentication_login_banner': preAuthenticationLoginBanner,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           if (region != null) 'region': region,
           if (securityPolicyName != null)
             'security_policy_name': securityPolicyName,
           if (sftpAuthenticationMethods != null)
             'sftp_authentication_methods': sftpAuthenticationMethods,
           if (structuredLogDestinations != null)
             'structured_log_destinations': structuredLogDestinations,
           if (tags != null) 'tags': tags,
           if (url != null) 'url': url,
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
}
