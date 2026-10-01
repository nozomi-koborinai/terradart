// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance_group_manager.dart'
    show GoogleComputeInstanceGroupManager;

/// Sensitive field paths for `google_compute_bulk_per_instance_config`.
const Set<String> _googleComputeBulkPerInstanceConfigSensitive = <String>{};

/// Typed helper for the `instances` block of
/// `google_compute_bulk_per_instance_config` (derived from provider schema).
@immutable
final class ComputeBulkPerInstanceConfigInstances {
  const ComputeBulkPerInstanceConfigInstances({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_compute_bulk_per_instance_config`.
final class GoogleComputeBulkPerInstanceConfig extends Resource {
  static const String tfType = 'google_compute_bulk_per_instance_config';

  GoogleComputeBulkPerInstanceConfig(
    super.localName, {
    required RefTo<GoogleComputeInstanceGroupManager> instanceGroupManager,
    List<ComputeBulkPerInstanceConfigInstances>? instances,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_group_manager': instanceGroupManager.encodeAs('name'),
           if (instances != null)
             'instances': TfArg.literal([
               for (final e in instances) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBulkPerInstanceConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBulkPerInstanceConfig>`.
  RefTo<GoogleComputeBulkPerInstanceConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance_group_manager` attribute.
  TfRef<String> get instanceGroupManager =>
      TfRef.attribute<String>(this, 'instance_group_manager');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
