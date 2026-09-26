// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_image_builder`.
const Set<String> _awsAppstreamImageBuilderSensitive = <String>{};

/// Typed helper for the `access_endpoint` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderAccessEndpoint {
  const AppstreamImageBuilderAccessEndpoint({
    required this.endpointType,
    this.vpceId,
  });

  final TfArg<String> endpointType;

  final TfArg<String>? vpceId;

  Map<String, Object?> encode() => {
    'endpoint_type': endpointType.toTfJson(),
    if (vpceId != null) 'vpce_id': vpceId!.toTfJson(),
  };
}

/// Typed helper for the `domain_join_info` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderDomainJoinInfo {
  const AppstreamImageBuilderDomainJoinInfo({
    this.directoryName,
    this.organizationalUnitDistinguishedName,
  });

  final TfArg<String>? directoryName;

  final TfArg<String>? organizationalUnitDistinguishedName;

  Map<String, Object?> encode() => {
    if (directoryName != null) 'directory_name': directoryName!.toTfJson(),
    if (organizationalUnitDistinguishedName != null)
      'organizational_unit_distinguished_name':
          organizationalUnitDistinguishedName!.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_appstream_image_builder` (derived from provider schema).
@immutable
final class AppstreamImageBuilderVpcConfig {
  const AppstreamImageBuilderVpcConfig({this.securityGroupIds, this.subnetIds});

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_image_builder`.
final class AwsAppstreamImageBuilder extends Resource {
  static const String tfType = 'aws_appstream_image_builder';

  AwsAppstreamImageBuilder({
    required super.localName,
    TfArg<String>? appstreamAgentVersion,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enableDefaultInternetAccess,
    TfArg<String>? iamRoleArn,
    TfArg<String>? imageArn,
    TfArg<String>? imageName,
    required TfArg<String> instanceType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppstreamImageBuilderAccessEndpoint>? accessEndpoint,
    AppstreamImageBuilderDomainJoinInfo? domainJoinInfo,
    AppstreamImageBuilderVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (appstreamAgentVersion != null)
             'appstream_agent_version': appstreamAgentVersion,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (enableDefaultInternetAccess != null)
             'enable_default_internet_access': enableDefaultInternetAccess,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn,
           if (imageArn != null) 'image_arn': imageArn,
           if (imageName != null) 'image_name': imageName,
           'instance_type': instanceType,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (accessEndpoint != null)
             'access_endpoint': TfArg.literal([
               for (final e in accessEndpoint) e.encode(),
             ]),
           if (domainJoinInfo != null)
             'domain_join_info': TfArg.literal(domainJoinInfo.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamImageBuilderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
