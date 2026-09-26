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
           if (overrideDynamicGroup != null)
             'override_dynamic_group': overrideDynamicGroup,
           if (region != null) 'region': region,
           'thing_group_name': thingGroupName,
           'thing_name': thingName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingGroupMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
