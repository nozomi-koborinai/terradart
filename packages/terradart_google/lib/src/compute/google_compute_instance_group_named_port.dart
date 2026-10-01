// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance_group.dart'
    show GoogleComputeInstanceGroup;

/// Sensitive field paths for `google_compute_instance_group_named_port`.
const Set<String> _googleComputeInstanceGroupNamedPortSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group_named_port`.
///
/// Mange the named ports setting for a managed instance group without managing
/// the group as whole. This resource is primarily intended for use with
/// GKE-generated groups that shouldn't otherwise be managed by other tools.
///
/// Declares a named port on an unmanaged instance group (or GKE node
/// pool's instance group URL) without rewriting the group's full
/// `named_port` list. Useful when load balancers target a port by name.
final class GoogleComputeInstanceGroupNamedPort extends Resource {
  static const String tfType = 'google_compute_instance_group_named_port';

  GoogleComputeInstanceGroupNamedPort({
    required super.localName,
    required RefTo<GoogleComputeInstanceGroup> group,
    required TfArg<String> name,
    required TfArg<num> port,
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
           'group': group.encodeAs('name'),
           'name': name,
           'port': port,
           'zone': ?zone,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGroupNamedPortSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceGroupNamedPort>`.
  RefTo<GoogleComputeInstanceGroupNamedPort> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `group` attribute.
  TfRef<String> get groupRef => TfRef.attribute<String>(this, 'group');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
