// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing_group_membership`.
const Set<String> _awsIotThingGroupMembershipSensitive = <String>{};

/// Factory wrapper for `aws_iot_thing_group_membership`.
final class AwsIotThingGroupMembership extends Resource {
  static const String tfType = 'aws_iot_thing_group_membership';

  AwsIotThingGroupMembership({
    required super.localName,
    TfArg<bool>? overrideDynamicGroup,
    TfArg<String>? region,
    required TfArg<String> thingGroupName,
    required TfArg<String> thingName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'override_dynamic_group': ?overrideDynamicGroup,
           'region': ?region,
           'thing_group_name': thingGroupName,
           'thing_name': thingName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingGroupMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotThingGroupMembership>`.
  RefTo<AwsIotThingGroupMembership> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `override_dynamic_group` attribute.
  TfRef<bool> get overrideDynamicGroup =>
      TfRef.attribute<bool>(this, 'override_dynamic_group');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `thing_group_name` attribute.
  TfRef<String> get thingGroupName =>
      TfRef.attribute<String>(this, 'thing_group_name');

  /// Reference to `thing_name` attribute.
  TfRef<String> get thingName => TfRef.attribute<String>(this, 'thing_name');
}
