/// Gemini for Google Cloud quickstart -- an end-to-end terradart example.
///
/// Defines a `GeminiStack` that enables the Gemini for Google Cloud API and
/// configures the project's Gemini Code Assist settings:
/// - a GCP enablement setting + project binding,
/// - a logging setting (log metadata, not prompts/responses) + binding,
/// - a release-channel setting + binding,
/// - a data-sharing-with-Google setting (both flags off for smoke) + binding.
///
/// Settings and bindings are free, project/location-scoped config resources,
/// so the stack creates and destroys cleanly in a single project. Binding
/// [target] uses the project *number* (`projects/<number>`).
///
/// Exports the enablement setting id as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/gemini.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Gemini Stack: enablement + logging + release-channel + data-sharing
/// settings and their project bindings.
final class GeminiStack extends Stack {
  GeminiStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));
    final projectTarget = 'projects/${current.number.interpolation}';

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
      GoogleGeminiGeminiGcpEnablementSettingBinding(
        localName: 'enablement_bind',
        geminiGcpEnablementSettingId: TfArg.literal('terradart-enablement'),
        settingBindingId: TfArg.literal('terradart-enablement-bind'),
        location: TfArg.literal('global'),
        target: TfArg.literal(projectTarget),
        dependsOn: [ResourceDependency(enablement)],
      ),
    );

    final logging = add(
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
      GoogleGeminiLoggingSettingBinding(
        localName: 'logging_bind',
        loggingSettingId: TfArg.literal('terradart-logging'),
        settingBindingId: TfArg.literal('terradart-logging-bind'),
        location: TfArg.literal('global'),
        target: TfArg.literal(projectTarget),
        dependsOn: [ResourceDependency(logging)],
      ),
    );

    final releaseChannel = add(
      GoogleGeminiReleaseChannelSetting(
        localName: 'release_channel',
        releaseChannelSettingId: TfArg.literal('terradart-channel'),
        location: TfArg.literal('global'),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiReleaseChannelSettingBinding(
        localName: 'channel_bind',
        releaseChannelSettingId: TfArg.literal('terradart-channel'),
        settingBindingId: TfArg.literal('terradart-channel-bind'),
        location: TfArg.literal('global'),
        target: TfArg.literal(projectTarget),
        dependsOn: [ResourceDependency(releaseChannel)],
      ),
    );

    final dataSharing = add(
      GoogleGeminiDataSharingWithGoogleSetting(
        localName: 'data_sharing',
        dataSharingWithGoogleSettingId: TfArg.literal('terradart-sharing'),
        location: TfArg.literal('global'),
        enableDataSharing: TfArg.literal(false),
        enablePreviewDataSharing: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiDataSharingWithGoogleSettingBinding(
        localName: 'sharing_bind',
        dataSharingWithGoogleSettingId: TfArg.literal('terradart-sharing'),
        settingBindingId: TfArg.literal('terradart-sharing-bind'),
        location: TfArg.literal('global'),
        target: TfArg.literal(projectTarget),
        dependsOn: [ResourceDependency(dataSharing)],
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
