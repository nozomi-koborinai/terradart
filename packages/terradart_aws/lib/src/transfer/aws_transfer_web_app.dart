// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_web_app`.
const Set<String> _awsTransferWebAppSensitive = <String>{};

/// Typed helper for the `endpoint_details` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppEndpointDetails {
  const TransferWebAppEndpointDetails({this.vpc});

  final List<TransferWebAppEndpointDetailsVpc>? vpc;

  Map<String, Object?> encode() => {
    if (vpc != null) 'vpc': [for (final e in vpc!) e.encode()],
  };
}

/// Typed helper for the `endpoint_details.vpc` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppEndpointDetailsVpc {
  const TransferWebAppEndpointDetailsVpc({
    this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Typed helper for the `identity_provider_details` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppIdentityProviderDetails {
  const TransferWebAppIdentityProviderDetails({this.identityCenterConfig});

  final List<TransferWebAppIdentityProviderDetailsIdentityCenterConfig>?
  identityCenterConfig;

  Map<String, Object?> encode() => {
    if (identityCenterConfig != null)
      'identity_center_config': [
        for (final e in identityCenterConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `identity_provider_details.identity_center_config` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppIdentityProviderDetailsIdentityCenterConfig {
  const TransferWebAppIdentityProviderDetailsIdentityCenterConfig({
    this.instanceArn,
    this.role,
  });

  final TfArg<String>? instanceArn;

  final TfArg<String>? role;

  Map<String, Object?> encode() => {
    if (instanceArn != null) 'instance_arn': instanceArn!.toTfJson(),
    if (role != null) 'role': role!.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_web_app`.
final class AwsTransferWebApp extends Resource {
  static const String tfType = 'aws_transfer_web_app';

  AwsTransferWebApp({
    required super.localName,
    TfArg<String>? accessEndpoint,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? webAppEndpointPolicy,
    TfArg<List<Map<String, Object?>>>? webAppUnits,
    List<TransferWebAppEndpointDetails>? endpointDetails,
    List<TransferWebAppIdentityProviderDetails>? identityProviderDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessEndpoint != null) 'access_endpoint': accessEndpoint,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (webAppEndpointPolicy != null)
             'web_app_endpoint_policy': webAppEndpointPolicy,
           if (webAppUnits != null) 'web_app_units': webAppUnits,
           if (endpointDetails != null)
             'endpoint_details': TfArg.literal([
               for (final e in endpointDetails) e.encode(),
             ]),
           if (identityProviderDetails != null)
             'identity_provider_details': TfArg.literal([
               for (final e in identityProviderDetails) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferWebAppSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `web_app_id` attribute.
  TfRef<String> get webAppId => TfRef.attribute<String>(this, 'web_app_id');
}
