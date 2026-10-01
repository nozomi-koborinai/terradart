// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_instance_group.dart'
    show GoogleComputeInstanceGroup;

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

  GoogleComputeInstanceGroupMembership(
    super.localName, {
    required RefTo<GoogleComputeInstance> instance,
    required RefTo<GoogleComputeInstanceGroup> instanceGroup,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('self_link'),
           'instance_group': instanceGroup.encodeAs('name'),
           'zone': ?zone,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGroupMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceGroupMembership>`.
  RefTo<GoogleComputeInstanceGroupMembership> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `instance_group` attribute.
  TfRef<String> get instanceGroup =>
      TfRef.attribute<String>(this, 'instance_group');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
