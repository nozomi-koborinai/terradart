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
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
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
        appExports: AppExports('lib/generated/gemini_stack.app.dart'),
      ) {
    final current = add(GoogleProject('current'));
    final projectTarget = 'projects/${current.number.interpolation}';

    final apiGemini = add(
      GoogleProjectService(
        'api_gemini',
        service: .literal('cloudaicompanion.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final enablement = add(
      GoogleGeminiGeminiGcpEnablementSetting(
        'enablement',
        geminiGcpEnablementSettingId: .literal('terradart-enablement'),
        location: .literal('global'),
        enableCustomerDataSharing: .literal(false),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiGeminiGcpEnablementSettingBinding(
        'enablement_bind',
        geminiGcpEnablementSettingId: enablement.ref,
        settingBindingId: .literal('terradart-enablement-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
      ),
    );

    final logging = add(
      GoogleGeminiLoggingSetting(
        'logging',
        loggingSettingId: .literal('terradart-logging'),
        location: .literal('global'),
        logMetadata: .literal(true),
        logPromptsAndResponses: .literal(false),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiLoggingSettingBinding(
        'logging_bind',
        loggingSettingId: logging.ref,
        settingBindingId: .literal('terradart-logging-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
      ),
    );

    final releaseChannel = add(
      GoogleGeminiReleaseChannelSetting(
        'release_channel',
        releaseChannelSettingId: .literal('terradart-channel'),
        location: .literal('global'),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiReleaseChannelSettingBinding(
        'channel_bind',
        releaseChannelSettingId: releaseChannel.ref,
        settingBindingId: .literal('terradart-channel-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
      ),
    );

    final dataSharing = add(
      GoogleGeminiDataSharingWithGoogleSetting(
        'data_sharing',
        dataSharingWithGoogleSettingId: .literal('terradart-sharing'),
        location: .literal('global'),
        enableDataSharing: .literal(false),
        enablePreviewDataSharing: .literal(false),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiDataSharingWithGoogleSettingBinding(
        'sharing_bind',
        dataSharingWithGoogleSettingId: dataSharing.ref,
        settingBindingId: .literal('terradart-sharing-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
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
        'gda_observability',
        gdaObservabilitySettingId: .literal('terradart-gda-observability'),
        location: .literal('global'),
        conversationalAnalyticsSetting:
            GeminiGdaObservabilitySettingConversationalAnalyticsSetting(
              metricsEnabled: metricsEnabled,
              tracesEnabled: tracesEnabled,
              loggingEnabled: loggingEnabled,
              feedbackEnabled: feedbackEnabled,
            ),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiGdaObservabilitySettingBinding(
        'gda_observability_bind',
        gdaObservabilitySettingId: gdaObservability.ref,
        settingBindingId: .literal('terradart-gda-observability-bind'),
        location: .literal('global'),
        target: .literal(projectTarget),
      ),
    );

    final gibqObservability = add(
      GoogleGeminiGibqObservabilitySetting(
        'gibq_observability',
        gibqObservabilitySettingId: .literal('terradart-gibq-observability'),
        location: .literal('global'),
        conversationalAnalyticsSetting:
            GeminiGibqObservabilitySettingConversationalAnalyticsSetting(
              metricsEnabled: metricsEnabled,
              tracesEnabled: tracesEnabled,
              loggingEnabled: loggingEnabled,
              feedbackEnabled: feedbackEnabled,
            ),
        dependsOn: [apiGemini],
      ),
    );

    add(
      GoogleGeminiGibqObservabilitySettingBinding(
        'gibq_observability_bind',
        gibqObservabilitySettingId: gibqObservability.ref,
        settingBindingId: .literal('terradart-gibq-observability-bind'),
        location: .literal('global'),
        product: .literal('GEMINI_IN_BIGQUERY'),
        target: .literal(projectTarget),
      ),
    );

    // Literal enablement setting id -- emitted as a Dart constant at synth.
    addConstant(
      'enablementSettingId',
      .ref(enablement.geminiGcpEnablementSettingId),
    );

    // Full enablement setting resource name -- Terraform output only.
    addOutput('enablement_setting_name', enablement.id);
  }
}
