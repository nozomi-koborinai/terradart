// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_group_membership`.
const Set<String> _googleComputeInstanceGroupMembershipSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group_membership`.
///
/// Represents the Instance membership to the Instance Group.
///
/// -> **NOTE** You can use this resource instead of the `instances` field in
/// the `google_compute_instance_group`, however it's not recommended to use it
/// alongside this field. It might cause inconsistencies, as they can end up
/// competing over control.
///
/// -> **NOTE** This resource has been added to avoid a situation, where after
/// Instance is recreated, it's removed from Instance Group and it's needed to
/// perform `apply` twice. To avoid situations like this, please use this
/// resource with the lifecycle `replace_triggered_by` method, with the passed
/// Instance's ID.
///
/// Adds one VM to an unmanaged `google_compute_instance_group` without
/// rewriting the group's full [instances] list. Prefer this for
/// additive membership when other stacks also attach members.
final class GoogleComputeInstanceGroupMembership extends Resource {
  static const String tfType = 'google_compute_instance_group_membership';

  GoogleComputeInstanceGroupMembership({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> instanceGroup,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'instance_group': instanceGroup,
           if (zone != null) 'zone': zone,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGroupMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
