// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_service_attachments`.
const Set<String> _googleComputeServiceAttachmentsSensitive = <String>{};

/// Factory wrapper for `google_compute_service_attachments`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeServiceAttachments extends Data {
  static const String tfType = 'google_compute_service_attachments';

  DataGoogleComputeServiceAttachments(
    super.localName, {
    TfArg<String>? filter,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'filter': ?filter, 'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeServiceAttachmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_attachments` attribute.
  TfRef<List<Map<String, Object?>>> get serviceAttachments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_attachments');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
