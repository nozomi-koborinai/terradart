// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_fleet`.
const Set<String> _awsAppstreamFleetSensitive = <String>{};

/// Typed helper for the `compute_capacity` block of
/// `aws_appstream_fleet` (derived from provider schema).
@immutable
final class AppstreamFleetComputeCapacity {
  const AppstreamFleetComputeCapacity({
    this.desiredInstances,
    this.desiredSessions,
  });

  final TfArg<num>? desiredInstances;

  final TfArg<num>? desiredSessions;

  Map<String, Object?> encode() => {
    if (desiredInstances != null)
      'desired_instances': desiredInstances!.toTfJson(),
    if (desiredSessions != null)
      'desired_sessions': desiredSessions!.toTfJson(),
  };
}

/// Typed helper for the `domain_join_info` block of
/// `aws_appstream_fleet` (derived from provider schema).
@immutable
final class AppstreamFleetDomainJoinInfo {
  const AppstreamFleetDomainJoinInfo({
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
/// `aws_appstream_fleet` (derived from provider schema).
@immutable
final class AppstreamFleetVpcConfig {
  const AppstreamFleetVpcConfig({this.securityGroupIds, this.subnetIds});

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_fleet`.
final class AwsAppstreamFleet extends Resource {
  static const String tfType = 'aws_appstream_fleet';

  AwsAppstreamFleet({
    required super.localName,
    TfArg<String>? description,
    TfArg<num>? disconnectTimeoutInSeconds,
    TfArg<String>? displayName,
    TfArg<bool>? enableDefaultInternetAccess,
    TfArg<String>? fleetType,
    TfArg<String>? iamRoleArn,
    TfArg<num>? idleDisconnectTimeoutInSeconds,
    TfArg<String>? imageArn,
    TfArg<String>? imageName,
    required TfArg<String> instanceType,
    TfArg<num>? maxSessionsPerInstance,
    TfArg<num>? maxUserDurationInSeconds,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? streamView,
    TfArg<Map<String, String>>? tags,
    required AppstreamFleetComputeCapacity computeCapacity,
    AppstreamFleetDomainJoinInfo? domainJoinInfo,
    AppstreamFleetVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (disconnectTimeoutInSeconds != null)
             'disconnect_timeout_in_seconds': disconnectTimeoutInSeconds,
           if (displayName != null) 'display_name': displayName,
           if (enableDefaultInternetAccess != null)
             'enable_default_internet_access': enableDefaultInternetAccess,
           if (fleetType != null) 'fleet_type': fleetType,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn,
           if (idleDisconnectTimeoutInSeconds != null)
             'idle_disconnect_timeout_in_seconds':
                 idleDisconnectTimeoutInSeconds,
           if (imageArn != null) 'image_arn': imageArn,
           if (imageName != null) 'image_name': imageName,
           'instance_type': instanceType,
           if (maxSessionsPerInstance != null)
             'max_sessions_per_instance': maxSessionsPerInstance,
           if (maxUserDurationInSeconds != null)
             'max_user_duration_in_seconds': maxUserDurationInSeconds,
           'name': name,
           if (region != null) 'region': region,
           if (streamView != null) 'stream_view': streamView,
           if (tags != null) 'tags': tags,
           'compute_capacity': TfArg.literal(computeCapacity.encode()),
           if (domainJoinInfo != null)
             'domain_join_info': TfArg.literal(domainJoinInfo.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamFleetSensitive;

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
