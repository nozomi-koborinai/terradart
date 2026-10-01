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

  GoogleComputeProjectMetadata(
    super.localName, {
    required TfArg<Map<String, String>> metadata,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': metadata,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeProjectMetadataSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeProjectMetadata>`.
  RefTo<GoogleComputeProjectMetadata> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
