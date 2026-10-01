// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_metadata_item`.
const Set<String> _googleComputeProjectMetadataItemSensitive = <String>{};

/// Factory wrapper for `google_compute_project_metadata_item`.
final class GoogleComputeProjectMetadataItem extends Resource {
  static const String tfType = 'google_compute_project_metadata_item';

  GoogleComputeProjectMetadataItem({
    required super.localName,
    required TfArg<String> key,
    required TfArg<String> value,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key': key, 'value': value, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeProjectMetadataItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeProjectMetadataItem>`.
  RefTo<GoogleComputeProjectMetadataItem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
