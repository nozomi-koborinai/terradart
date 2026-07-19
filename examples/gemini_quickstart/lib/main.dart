/// Gemini for Google Cloud quickstart -- an end-to-end terradart example.
///
/// Defines a `GeminiStack` that enables the Gemini for Google Cloud API and
/// configures the project's Gemini Code Assist settings:
/// - a GCP enablement setting,
/// - a logging setting (log metadata, not prompts/responses),
/// - a release-channel setting,
/// - a data-sharing-with-Google setting (both flags off for smoke).
///
/// All four are free, project/location-scoped config resources, so the stack
/// creates and destroys cleanly in a single project.
///
/// Exports the enablement setting id as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/gemini.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Gemini Stack: enablement + logging + release-channel + data-sharing.
final class GeminiStack extends Stack {
  GeminiStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiGemini = add(
      GoogleProjectService(
        localName: 'api_gemini',
        service: TfArg.literal('cloudaicompanion.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final enablement = add(
      GoogleGeminiGeminiGcpEnablementSetting(
        localName: 'enablement',
        geminiGcpEnablementSettingId: TfArg.literal('terradart-enablement'),
        location: TfArg.literal('global'),
        enableCustomerDataSharing: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiLoggingSetting(
        localName: 'logging',
        loggingSettingId: TfArg.literal('terradart-logging'),
        location: TfArg.literal('global'),
        logMetadata: TfArg.literal(true),
        logPromptsAndResponses: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiReleaseChannelSetting(
        localName: 'release_channel',
        releaseChannelSettingId: TfArg.literal('terradart-channel'),
        location: TfArg.literal('global'),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiDataSharingWithGoogleSetting(
        localName: 'data_sharing',
        dataSharingWithGoogleSettingId: TfArg.literal('terradart-sharing'),
        location: TfArg.literal('global'),
        enableDataSharing: TfArg.literal(false),
        enablePreviewDataSharing: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    // Literal enablement setting id -- emitted as a Dart constant at synth.
    addExport('ENABLEMENT_SETTING_ID', StringExport('terradart-enablement'));

    // Full enablement setting resource name -- Terraform output only.
    addExport(
      'ENABLEMENT_SETTING_NAME',
      ResourceIdExport(enablement.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/gemini_stack.app.dart');
  }
}
