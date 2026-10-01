// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../document_ai/google_document_ai_processor.dart'
    show GoogleDocumentAiProcessor;

/// Sensitive field paths for `google_document_ai_processor_default_version`.
const Set<String> _googleDocumentAiProcessorDefaultVersionSensitive =
    <String>{};

/// Factory wrapper for `google_document_ai_processor_default_version`.
///
/// The default version for the processor. Deleting this resource is a no-op,
/// and does not unset the default version.
///
/// Document AI **processor default version** — points a processor at a
/// version (`stable`, `rc`, or a full `…/processorVersions/{id}` name).
///
/// Setting the default does not process documents and has no Document AI
/// page/OCR SKU. Terraform destroy is a no-op and does **not** unset the
/// default; deleting the sibling processor removes it.
///
/// Pass [processor] as `processor.id` and [version] as
/// `'${processor.id.interpolation}/processorVersions/stable'` (or `rc`).
///
/// Enable `documentai.googleapis.com` via [GoogleProjectService] before
/// apply. The processor must exist first (`dependsOn` it).
///
/// Example:
/// ```dart
/// GoogleDocumentAiProcessorDefaultVersion(
///   'ocr_default',
///   processor: ocr.ref,
///   version: TfArg.literal(
///     '${ocr.id.interpolation}/processorVersions/stable',
///   ),
/// );
/// ```
final class GoogleDocumentAiProcessorDefaultVersion extends Resource {
  static const String tfType = 'google_document_ai_processor_default_version';

  GoogleDocumentAiProcessorDefaultVersion(
    super.localName, {
    required RefTo<GoogleDocumentAiProcessor> processor,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'processor': processor.encodeAs('id'), 'version': version},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDocumentAiProcessorDefaultVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDocumentAiProcessorDefaultVersion>`.
  RefTo<GoogleDocumentAiProcessorDefaultVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `processor` attribute.
  TfRef<String> get processor => TfRef.attribute<String>(this, 'processor');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
