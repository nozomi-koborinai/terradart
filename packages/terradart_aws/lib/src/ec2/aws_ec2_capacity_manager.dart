// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_manager`.
const Set<String> _awsEc2CapacityManagerSensitive = <String>{};

/// Factory wrapper for `aws_ec2_capacity_manager`.
final class AwsEc2CapacityManager extends Resource {
  static const String tfType = 'aws_ec2_capacity_manager';

  AwsEc2CapacityManager(
    super.localName, {
    required TfArg<bool> enabled,
    TfArg<bool>? organizationsAccess,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'organizations_access': ?organizationsAccess,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2CapacityManager>`.
  RefTo<AwsEc2CapacityManager> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `organizations_access` attribute.
  TfRef<bool> get organizationsAccess =>
      TfRef.attribute<bool>(this, 'organizations_access');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
