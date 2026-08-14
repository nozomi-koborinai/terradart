// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
/// Pass [processor] as `TfArg.ref(processor.id)` and [version] as
/// `'${processor.id.interpolation}/processorVersions/stable'` (or `rc`).
///
/// Enable `documentai.googleapis.com` via [GoogleProjectService] before
/// apply. The processor must exist first (`dependsOn` it).
///
/// Example:
/// ```dart
/// GoogleDocumentAiProcessorDefaultVersion(
///   localName: 'ocr_default',
///   processor: TfArg.ref(ocr.id),
///   version: TfArg.literal(
///     '${ocr.id.interpolation}/processorVersions/stable',
///   ),
/// );
/// ```
final class GoogleDocumentAiProcessorDefaultVersion extends Resource {
  static const String tfType = 'google_document_ai_processor_default_version';

  GoogleDocumentAiProcessorDefaultVersion({
    required super.localName,
    required TfArg<String> processor,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'processor': processor, 'version': version},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDocumentAiProcessorDefaultVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
