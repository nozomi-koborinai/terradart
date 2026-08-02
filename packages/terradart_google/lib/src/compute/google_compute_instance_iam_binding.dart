// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_iam_binding`.
const Set<String> _googleComputeInstanceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine
/// instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeInstanceIamMember] for additive grants.
final class GoogleComputeInstanceIamBinding extends Resource {
  static const String tfType = 'google_compute_instance_iam_binding';

  GoogleComputeInstanceIamBinding({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
