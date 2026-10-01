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
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/document_ai.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Document AI Stack: OCR processor + default version + schema.
final class DocAiStack extends Stack {
  DocAiStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/doc_ai_stack.app.dart'),
      ) {
    final apiDocumentAi = add(
      GoogleProjectService(
        localName: 'api_documentai',
        service: .literal('documentai.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final ocr = add(
      GoogleDocumentAiProcessor(
        localName: 'ocr',
        // Document AI processors live in a multi-region (`us` or `eu`), not a
        // compute region.
        location: .literal('us'),
        displayName: .literal('terradart-ocr'),
        type: .literal('OCR_PROCESSOR'),
        dependsOn: [ResourceDependency(apiDocumentAi)],
      ),
    );

    add(
      GoogleDocumentAiProcessorDefaultVersion(
        localName: 'ocr_default',
        processor: ocr.ref,
        version: .literal('${ocr.id.interpolation}/processorVersions/stable'),
        // `stable` resolves to the latest channel version; ignore the
        // API-returned concrete id so plans stay clean.
        lifecycle: const LifecycleOptions(ignoreChanges: ['version']),
        dependsOn: [ResourceDependency(ocr)],
      ),
    );

    add(
      GoogleDocumentAiSchema(
        localName: 'fields',
        location: .literal('us'),
        displayName: .literal('terradart-schema'),
        dependsOn: [ResourceDependency(apiDocumentAi)],
      ),
    );

    // Literal processor display name -- emitted as a Dart constant at synth.
    addConstant('ocrProcessorDisplayName', .ref(ocr.displayName));

    // Full processor resource id -- Terraform output only (computed).
    addOutput('ocr_processor_id', ocr.id);
  }
}
