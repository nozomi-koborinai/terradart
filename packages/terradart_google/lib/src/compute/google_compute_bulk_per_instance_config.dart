// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_bulk_per_instance_config`.
const Set<String> _googleComputeBulkPerInstanceConfigSensitive = <String>{};

/// Factory wrapper for `google_compute_bulk_per_instance_config`.
final class GoogleComputeBulkPerInstanceConfig extends Resource {
  static const String tfType = 'google_compute_bulk_per_instance_config';

  GoogleComputeBulkPerInstanceConfig({
    required super.localName,
    required TfArg<String> instanceGroupManager,
    TfArg<List<Map<String, dynamic>>>? instances,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_group_manager': instanceGroupManager,
           if (instances != null) 'instances': instances,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBulkPerInstanceConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
