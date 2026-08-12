// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> group,
    required TfArg<String> name,
    required TfArg<num> port,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group': group,
           'name': name,
           'port': port,
           if (zone != null) 'zone': zone,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGroupNamedPortSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
