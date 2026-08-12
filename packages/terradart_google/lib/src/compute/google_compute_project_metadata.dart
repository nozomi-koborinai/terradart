// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_metadata`.
const Set<String> _googleComputeProjectMetadataSensitive = <String>{};

/// Factory wrapper for `google_compute_project_metadata`.
///
/// Authoritative project-wide Compute metadata map. This **replaces**
/// every metadata key on the project (the same footgun as
/// `google_compute_project_metadata` in Terraform). Prefer
/// [GoogleComputeProjectMetadataItem] for an additive single key.
final class GoogleComputeProjectMetadata extends Resource {
  static const String tfType = 'google_compute_project_metadata';

  GoogleComputeProjectMetadata({
    required super.localName,
    required TfArg<Map<String, String>> metadata,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': metadata,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeProjectMetadataSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
