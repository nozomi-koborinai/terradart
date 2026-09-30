/// Gemini for Google Cloud quickstart -- an end-to-end terradart example.
///
/// Defines a `GeminiStack` that enables the Gemini for Google Cloud API and
/// configures the project's Gemini Code Assist settings:
/// - a GCP enablement setting + project binding,
/// - a logging setting (log metadata, not prompts/responses) + binding,
/// - a release-channel setting + binding,
/// - a data-sharing-with-Google setting (both flags off for smoke) + binding,
/// - Conversational Analytics observability settings for Gemini Data
///   Analytics (GDA) and Gemini in BigQuery (GIBQ) + bindings.
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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final current = addData(GoogleProject(localName: 'current'));
    final projectTarget = 'projects/${current.number.interpolation}';

    final apiGemini = add(
      GoogleProjectService(
        localName: 'api_gemini',
        service: .literal('cloudaicompanion.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final enablement = add(
      GoogleGeminiGeminiGcpEnablementSetting(
        localName: 'enablement',
        geminiGcpEnablementSettingId: .literal('terradart-enablement'),
        location: .literal('global'),
        enableCustomerDataSharing: .literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiGeminiGcpEnablementSettingBinding(
        localName: 'enablement_bind',
        geminiGcpEnablementSettingId: .literal('terradart-enablement'),
        settingBindingId: .literal('terradart-enablement-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(enablement)],
      ),
    );

    final logging = add(
      GoogleGeminiLoggingSetting(
        localName: 'logging',
        loggingSettingId: .literal('terradart-logging'),
        location: .literal('global'),
        logMetadata: .literal(true),
        logPromptsAndResponses: .literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiLoggingSettingBinding(
        localName: 'logging_bind',
        loggingSettingId: .literal('terradart-logging'),
        settingBindingId: .literal('terradart-logging-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(logging)],
      ),
    );

    final releaseChannel = add(
      GoogleGeminiReleaseChannelSetting(
        localName: 'release_channel',
        releaseChannelSettingId: .literal('terradart-channel'),
        location: .literal('global'),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiReleaseChannelSettingBinding(
        localName: 'channel_bind',
        releaseChannelSettingId: .literal('terradart-channel'),
        settingBindingId: .literal('terradart-channel-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(releaseChannel)],
      ),
    );

    final dataSharing = add(
      GoogleGeminiDataSharingWithGoogleSetting(
        localName: 'data_sharing',
        dataSharingWithGoogleSettingId: .literal('terradart-sharing'),
        location: .literal('global'),
        enableDataSharing: .literal(false),
        enablePreviewDataSharing: .literal(false),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiDataSharingWithGoogleSettingBinding(
        localName: 'sharing_bind',
        dataSharingWithGoogleSettingId: .literal('terradart-sharing'),
        settingBindingId: .literal('terradart-sharing-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(dataSharing)],
      ),
    );

    // Observability (metrics / traces / logging / feedback) for Conversational
    // Analytics in Gemini Data Analytics and in Gemini in BigQuery.
    final metricsEnabled = TfArg.literal(true);
    final tracesEnabled = TfArg.literal(true);
    final loggingEnabled = TfArg.literal(false);
    final feedbackEnabled = TfArg.literal(false);

    final gdaObservability = add(
      GoogleGeminiGdaObservabilitySetting(
        localName: 'gda_observability',
        gdaObservabilitySettingId: .literal('terradart-gda-observability'),
        location: .literal('global'),
        conversationalAnalyticsSetting:
            GeminiGdaObservabilitySettingConversationalAnalyticsSetting(
              metricsEnabled: metricsEnabled,
              tracesEnabled: tracesEnabled,
              loggingEnabled: loggingEnabled,
              feedbackEnabled: feedbackEnabled,
            ),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiGdaObservabilitySettingBinding(
        localName: 'gda_observability_bind',
        gdaObservabilitySettingId: .literal('terradart-gda-observability'),
        settingBindingId: .literal('terradart-gda-observability-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(gdaObservability)],
      ),
    );

    final gibqObservability = add(
      GoogleGeminiGibqObservabilitySetting(
        localName: 'gibq_observability',
        gibqObservabilitySettingId: .literal('terradart-gibq-observability'),
        location: .literal('global'),
        conversationalAnalyticsSetting:
            GeminiGibqObservabilitySettingConversationalAnalyticsSetting(
              metricsEnabled: metricsEnabled,
              tracesEnabled: tracesEnabled,
              loggingEnabled: loggingEnabled,
              feedbackEnabled: feedbackEnabled,
            ),
        dependsOn: [ResourceDependency(apiGemini)],
      ),
    );

    add(
      GoogleGeminiGibqObservabilitySettingBinding(
        localName: 'gibq_observability_bind',
        gibqObservabilitySettingId: .literal('terradart-gibq-observability'),
        settingBindingId: .literal('terradart-gibq-observability-bind'),
        location: .literal('global'),
        product: .literal('GEMINI_IN_BIGQUERY'),
        target: .literal(projectTarget),
        dependsOn: [ResourceDependency(gibqObservability)],
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
