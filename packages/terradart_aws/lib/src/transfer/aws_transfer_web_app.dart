// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_transfer_web_app`.
const Set<String> _awsTransferWebAppSensitive = <String>{};

/// Transfer Web App Endpoint enum for `web_app_endpoint_policy`.
enum TransferWebAppEndpointPolicy implements TerraformEnum {
  fips('FIPS'),
  standard('STANDARD');

  const TransferWebAppEndpointPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_details` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppEndpointDetails {
  const TransferWebAppEndpointDetails({this.vpc});

  final List<TransferWebAppVpc>? vpc;

  Map<String, Object?> encode() => {
    if (vpc != null) 'vpc': [for (final e in vpc!) e.encode()],
  };
}

/// Typed helper for the `endpoint_details.vpc` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppVpc {
  const TransferWebAppVpc({
    this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `identity_provider_details` block of
/// `aws_transfer_web_app` (derived from provider schema).
@immutable
final class TransferWebAppIdentityProviderDetails {
  const TransferWebAppIdentityProviderDetails({this.identityCenterConfig});

  final List<TransferWebAppIdentityCenterConfig>? identityCenterConfig;

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
final class TransferWebAppIdentityCenterConfig {
  const TransferWebAppIdentityCenterConfig({this.instanceArn, this.role});

  final TfArg<String>? instanceArn;

  final RefTo<AwsIamRole>? role;

  Map<String, Object?> encode() => {
    'instance_arn': ?instanceArn?.toTfJson(),
    'role': ?role?.encodeAs('arn').toTfJson(),
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
    TfArg<TransferWebAppEndpointPolicy>? webAppEndpointPolicy,
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
           'access_endpoint': ?accessEndpoint,
           'region': ?region,
           'tags': ?tags,
           'web_app_endpoint_policy': ?webAppEndpointPolicy,
           'web_app_units': ?webAppUnits,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferWebApp>`.
  RefTo<AwsTransferWebApp> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `web_app_id` attribute.
  TfRef<String> get webAppId => TfRef.attribute<String>(this, 'web_app_id');

  /// Reference to `access_endpoint` attribute.
  TfRef<String> get accessEndpointRef =>
      TfRef.attribute<String>(this, 'access_endpoint');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `web_app_endpoint_policy` attribute.
  TfRef<String> get webAppEndpointPolicyRef =>
      TfRef.attribute<String>(this, 'web_app_endpoint_policy');

  /// Reference to `web_app_units` attribute.
  TfRef<List<Map<String, Object?>>> get webAppUnitsRef =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'web_app_units');
}
