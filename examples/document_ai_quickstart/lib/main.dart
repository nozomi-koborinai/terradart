/// Document AI quickstart -- an end-to-end terradart example.
///
/// Defines a `DocAiStack` that enables the Document AI API and provisions an
/// OCR document processor (`terradart-ocr`), pins its default version to the
/// `stable` channel, plus a named schema (`terradart-schema`) in the `us`
/// location. Creating a processor or schema is free (you are billed per
/// document processed); setting the default version is metadata only.
/// Terraform destroy of the default-version resource is a no-op — deleting
/// the sibling processor removes it.
///
/// Exports the processor display name as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/document_ai.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Document AI Stack: OCR processor + default version + schema.
final class DocAiStack extends Stack {
  DocAiStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDocumentAi = add(
      GoogleProjectService(
        localName: 'api_documentai',
        service: TfArg.literal('documentai.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final ocr = add(
      GoogleDocumentAiProcessor(
        localName: 'ocr',
        // Document AI processors live in a multi-region (`us` or `eu`), not a
        // compute region.
        location: TfArg.literal('us'),
        displayName: TfArg.literal('terradart-ocr'),
        type: TfArg.literal('OCR_PROCESSOR'),
        dependsOn: [ResourceDependency(apiDocumentAi)],
      ),
    );

    add(
      GoogleDocumentAiProcessorDefaultVersion(
        localName: 'ocr_default',
        processor: TfArg.ref(ocr.id),
        version: TfArg.literal(
          '${ocr.id.interpolation}/processorVersions/stable',
        ),
        // `stable` resolves to the latest channel version; ignore the
        // API-returned concrete id so plans stay clean.
        lifecycle: const LifecycleOptions(ignoreChanges: ['version']),
        dependsOn: [ResourceDependency(ocr)],
      ),
    );

    add(
      GoogleDocumentAiSchema(
        localName: 'fields',
        location: TfArg.literal('us'),
        displayName: TfArg.literal('terradart-schema'),
        dependsOn: [ResourceDependency(apiDocumentAi)],
      ),
    );

    // Literal processor display name -- emitted as a Dart constant at synth.
    addExport('OCR_PROCESSOR_DISPLAY_NAME', StringExport('terradart-ocr'));

    // Full processor resource id -- Terraform output only (computed).
    addExport(
      'OCR_PROCESSOR_ID',
      ResourceIdExport(ocr.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/doc_ai_stack.app.dart');
  }
}
