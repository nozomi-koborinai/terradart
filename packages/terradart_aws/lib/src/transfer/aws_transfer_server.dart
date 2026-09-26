// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_server`.
const Set<String> _awsTransferServerSensitive = <String>{
  'host_key',
  'post_authentication_login_banner',
  'pre_authentication_login_banner',
};

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

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  final TfArg<String>? vpcEndpointId;

  final TfArg<String>? vpcId;

  Map<String, Object?> encode() => {
    if (addressAllocationIds != null)
      'address_allocation_ids': addressAllocationIds!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
    if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId!.toTfJson(),
    if (vpcId != null) 'vpc_id': vpcId!.toTfJson(),
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

  final TfArg<List<Object?>>? as2Transports;

  final TfArg<String>? passiveIp;

  final TfArg<String>? setStatOption;

  final TfArg<String>? tlsSessionResumptionMode;

  Map<String, Object?> encode() => {
    if (as2Transports != null) 'as2_transports': as2Transports!.toTfJson(),
    if (passiveIp != null) 'passive_ip': passiveIp!.toTfJson(),
    if (setStatOption != null) 'set_stat_option': setStatOption!.toTfJson(),
    if (tlsSessionResumptionMode != null)
      'tls_session_resumption_mode': tlsSessionResumptionMode!.toTfJson(),
  };
}

/// Typed helper for the `s3_storage_options` block of
/// `aws_transfer_server` (derived from provider schema).
@immutable
final class TransferServerS3StorageOptions {
  const TransferServerS3StorageOptions({this.directoryListingOptimization});

  final TfArg<String>? directoryListingOptimization;

  Map<String, Object?> encode() => {
    if (directoryListingOptimization != null)
      'directory_listing_optimization': directoryListingOptimization!
          .toTfJson(),
  };
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
    TfArg<String>? domain,
    TfArg<String>? endpointType,
    TfArg<bool>? forceDestroy,
    TfArg<String>? function,
    TfArg<String>? hostKey,
    TfArg<String>? identityProviderType,
    TfArg<String>? invocationRole,
    TfArg<String>? ipAddressType,
    TfArg<String>? loggingRole,
    TfArg<String>? postAuthenticationLoginBanner,
    TfArg<String>? preAuthenticationLoginBanner,
    TfArg<List<String>>? protocols,
    TfArg<String>? region,
    TfArg<String>? securityPolicyName,
    TfArg<String>? sftpAuthenticationMethods,
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
           if (protocols != null) 'protocols': protocols,
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
