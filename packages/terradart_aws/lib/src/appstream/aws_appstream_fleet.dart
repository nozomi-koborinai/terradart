// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_appstream_fleet`.
const Set<String> _awsAppstreamFleetSensitive = <String>{};

/// Appstream Fleet enum for `fleet_type`.
enum AppstreamFleetType implements TerraformEnum {
  alwaysOn('ALWAYS_ON'),
  onDemand('ON_DEMAND'),
  elastic('ELASTIC');

  const AppstreamFleetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appstream Fleet Stream enum for `stream_view`.
enum AppstreamFleetStreamView implements TerraformEnum {
  app('APP'),
  desktop('DESKTOP');

  const AppstreamFleetStreamView(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'desired_instances': ?desiredInstances?.toTfJson(),
    'desired_sessions': ?desiredSessions?.toTfJson(),
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
    'directory_name': ?directoryName?.toTfJson(),
    'organizational_unit_distinguished_name':
        ?organizationalUnitDistinguishedName?.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_appstream_fleet` (derived from provider schema).
@immutable
final class AppstreamFleetVpcConfig {
  const AppstreamFleetVpcConfig({this.securityGroupIds, this.subnetIds});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_fleet`.
final class AwsAppstreamFleet extends Resource {
  static const String tfType = 'aws_appstream_fleet';

  AwsAppstreamFleet(
    super.localName, {
    TfArg<String>? description,
    TfArg<num>? disconnectTimeoutInSeconds,
    TfArg<String>? displayName,
    TfArg<bool>? enableDefaultInternetAccess,
    TfArg<AppstreamFleetType>? fleetType,
    RefTo<AwsIamRole>? iamRoleArn,
    TfArg<num>? idleDisconnectTimeoutInSeconds,
    TfArg<String>? imageArn,
    TfArg<String>? imageName,
    required TfArg<String> instanceType,
    TfArg<num>? maxSessionsPerInstance,
    TfArg<num>? maxUserDurationInSeconds,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<AppstreamFleetStreamView>? streamView,
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
           'description': ?description,
           'disconnect_timeout_in_seconds': ?disconnectTimeoutInSeconds,
           'display_name': ?displayName,
           'enable_default_internet_access': ?enableDefaultInternetAccess,
           'fleet_type': ?fleetType,
           'iam_role_arn': ?iamRoleArn?.encodeAs('arn'),
           'idle_disconnect_timeout_in_seconds':
               ?idleDisconnectTimeoutInSeconds,
           'image_arn': ?imageArn,
           'image_name': ?imageName,
           'instance_type': instanceType,
           'max_sessions_per_instance': ?maxSessionsPerInstance,
           'max_user_duration_in_seconds': ?maxUserDurationInSeconds,
           'name': name,
           'region': ?region,
           'stream_view': ?streamView,
           'tags': ?tags,
           'compute_capacity': TfArg.literal(computeCapacity.encode()),
           if (domainJoinInfo != null)
             'domain_join_info': TfArg.literal(domainJoinInfo.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamFleetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamFleet>`.
  RefTo<AwsAppstreamFleet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disconnect_timeout_in_seconds` attribute.
  TfRef<num> get disconnectTimeoutInSeconds =>
      TfRef.attribute<num>(this, 'disconnect_timeout_in_seconds');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_default_internet_access` attribute.
  TfRef<bool> get enableDefaultInternetAccess =>
      TfRef.attribute<bool>(this, 'enable_default_internet_access');

  /// Reference to `fleet_type` attribute.
  TfRef<String> get fleetType => TfRef.attribute<String>(this, 'fleet_type');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `idle_disconnect_timeout_in_seconds` attribute.
  TfRef<num> get idleDisconnectTimeoutInSeconds =>
      TfRef.attribute<num>(this, 'idle_disconnect_timeout_in_seconds');

  /// Reference to `image_arn` attribute.
  TfRef<String> get imageArn => TfRef.attribute<String>(this, 'image_arn');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `max_sessions_per_instance` attribute.
  TfRef<num> get maxSessionsPerInstance =>
      TfRef.attribute<num>(this, 'max_sessions_per_instance');

  /// Reference to `max_user_duration_in_seconds` attribute.
  TfRef<num> get maxUserDurationInSeconds =>
      TfRef.attribute<num>(this, 'max_user_duration_in_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stream_view` attribute.
  TfRef<String> get streamView => TfRef.attribute<String>(this, 'stream_view');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
