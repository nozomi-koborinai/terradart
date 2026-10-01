// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_instance_group`.
const Set<String> _googleComputeInstanceGroupSensitive = <String>{};

/// Typed helper for the `named_port` block of
/// `google_compute_instance_group` (derived from provider schema).
@immutable
final class ComputeInstanceGroupNamedPort {
  const ComputeInstanceGroupNamedPort({required this.name, required this.port});

  final TfArg<String> name;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'port': port.toTfJson(),
  };
}

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
    RefTo<GoogleComputeNetwork>? network,
    TfArg<List<String>>? instances,
    List<ComputeInstanceGroupNamedPort>? namedPort,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': ?zone,
           'network': ?network?.encodeAs('id'),
           'instances': ?instances,
           if (namedPort != null)
             'named_port': TfArg.literal([
               for (final e in namedPort) e.encode(),
             ]),
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceGroup>`.
  RefTo<GoogleComputeInstanceGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instances =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
