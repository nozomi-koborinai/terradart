/// Customer Engagement Suite (Conversational Agents) quickstart.
///
/// Enables `ces.googleapis.com` and creates a multi-region (`us`) app with
/// an LLM agent, root-agent association, app version, model-safety
/// guardrail, and Google Search tool. The stack never creates a
/// `google_ces_deployment` and never sends chat/voice sessions.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/ces.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// CES stack: app + agent + association + version + guardrail + search tool.
final class CesStack extends Stack {
  CesStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.ces],
      propagationDelay: const Duration(seconds: 60),
    );

    final app = add(
      GoogleCesApp(
        localName: 'app',
        location: TfArg.literal('us'),
        appId: TfArg.literal('terradart-ces'),
        displayName: TfArg.literal('terradart-ces'),
        description: TfArg.literal('TerraDart CES smoke app'),
        languageSettings: CesAppLanguageSettings(
          defaultLanguageCode: TfArg.literal('en-US'),
          supportedLanguageCodes: TfArg.literal(['es-ES']),
          fallbackAction: TfArg.literal('escalate'),
        ),
        timeZoneSettings: CesAppTimeZoneSettings(
          timeZone: TfArg.literal('America/Los_Angeles'),
        ),
        lifecycle: const LifecycleOptions(ignoreChanges: ['root_agent']),
        dependsOn: apiDeps,
      ),
    );

    final search = add(
      GoogleCesTool(
        localName: 'search',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        toolId: TfArg.literal('terradart-ces-search'),
        googleSearchTool: CesToolGoogleSearchTool(
          name: TfArg.literal('google_search'),
        ),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    final safety = add(
      GoogleCesGuardrail(
        localName: 'safety',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        guardrailId: TfArg.literal('terradart-ces-guardrail'),
        displayName: TfArg.literal('terradart-ces-guardrail'),
        enabled: TfArg.literal(true),
        action: CesGuardrailAction(
          respondImmediately: CesGuardrailActionRespondImmediately(
            responses: [
              CesGuardrailActionRespondImmediatelyResponses(
                text: TfArg.literal('I cannot help with that.'),
                disabled: TfArg.literal(false),
              ),
            ],
          ),
        ),
        modelSafety: CesGuardrailModelSafety(
          safetySettings: [
            CesGuardrailModelSafetySafetySettings(
              category: TfArg.literal(
                CesGuardrailModelSafetySafetySettingsCategory
                    .harmCategoryHateSpeech,
              ),
              threshold: TfArg.literal(
                CesGuardrailModelSafetySafetySettingsThreshold.blockNone,
              ),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    final agent = add(
      GoogleCesAgent(
        localName: 'agent',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        agentId: TfArg.literal('terradart-ces-agent'),
        displayName: TfArg.literal('terradart-ces-agent'),
        instruction: TfArg.literal('You are a helpful assistant.'),
        llmAgent: const CesAgentLlmAgent(),
        tools: TfArg.literal([search.nameRef.interpolation]),
        guardrails: TfArg.literal([safety.nameRef.interpolation]),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(search),
          ResourceDependency(safety),
        ],
      ),
    );

    final association = add(
      GoogleCesAppRootAgentAssociation(
        localName: 'root',
        location: TfArg.ref(app.locationRef),
        appId: TfArg.ref(app.appIdRef),
        agentId: TfArg.ref(agent.agentIdRef),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(agent),
        ],
      ),
    );

    add(
      GoogleCesAppVersion(
        localName: 'v1',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        appVersionId: TfArg.literal('v1'),
        displayName: TfArg.literal('terradart-ces-v1'),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(association),
          ResourceDependency(search),
          ResourceDependency(safety),
        ],
      ),
    );
  }
}
