// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_group`.
const Set<String> _googleComputeInstanceGroupSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group`.
///
/// Represents an Instance Group resource. Instance groups are self-managed and
/// can contain identical or different instances. Instance groups do not use an
/// instance template. Unlike managed instance groups, you must create and add
/// instances to an instance group manually.
///
/// An **unmanaged** zonal instance group. Members are attached explicitly
/// (via [instances] or `google_compute_instance_group_membership`); the
/// group does not recreate VMs. For managed fleets use
/// `google_compute_instance_group_manager`.
///
/// Required:
/// - [name]: group name.
/// - Prefer setting [network] (or rely on the first instance's network)
///   and [zone] explicitly for cross-resource composition.
final class GoogleComputeInstanceGroup extends Resource {
  static const String tfType = 'google_compute_instance_group';

  GoogleComputeInstanceGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? zone,
    TfArg<String>? network,
    TfArg<List<String>>? instances,
    TfArg<List<Map<String, dynamic>>>? namedPort,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (zone != null) 'zone': zone,
           if (network != null) 'network': network,
           if (instances != null) 'instances': instances,
           if (namedPort != null) 'named_port': namedPort,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
