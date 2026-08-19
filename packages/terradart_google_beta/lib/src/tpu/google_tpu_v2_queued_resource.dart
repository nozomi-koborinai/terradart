// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tpu_v2_queued_resource`.
const Set<String> _googleTpuV2QueuedResourceSensitive = <String>{};

/// Factory wrapper for `google_tpu_v2_queued_resource`.
final class GoogleTpuV2QueuedResource extends Resource {
  static const String tfType = 'google_tpu_v2_queued_resource';

  GoogleTpuV2QueuedResource({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? zone,
    TfArg<Map<String, dynamic>>? tpu,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           if (project != null) 'project': project,
           if (zone != null) 'zone': zone,
           if (tpu != null) 'tpu': tpu,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTpuV2QueuedResourceSensitive;
}
