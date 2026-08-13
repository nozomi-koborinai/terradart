/// Customer Engagement Suite (Conversational Agents) quickstart.
///
/// Enables `ces.googleapis.com` and creates a multi-region (`us`) app with
/// an LLM agent, root-agent association, app version, model-safety
/// guardrail, Google Search tool, OpenAPI toolset, few-shot example, and
/// an API-channel deployment. The stack never sends chat/voice sessions.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/ces.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// CES stack: app + agent + association + version + guardrail + search
/// tool + OpenAPI toolset + few-shot example + API deployment.
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

    final openapi = add(
      GoogleCesToolset(
        localName: 'openapi',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        toolsetId: TfArg.literal('terradart-ces-toolset'),
        displayName: TfArg.literal('terradart-ces-toolset'),
        openApiToolset: CesToolsetOpenApiToolset(
          openApiSchema: TfArg.literal(
            'openapi: 3.0.0\n'
            'info:\n'
            '  title: TerraDart CES smoke API\n'
            '  version: 1.0.0\n'
            'paths:\n'
            '  /health:\n'
            '    get:\n'
            '      operationId: health\n'
            '      responses:\n'
            "        '200':\n"
            '          description: ok\n',
          ),
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
        toolsets: [
          CesAgentToolsets(toolset: TfArg.ref(openapi.nameRef)),
        ],
        guardrails: TfArg.literal([safety.nameRef.interpolation]),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(search),
          ResourceDependency(openapi),
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
      GoogleCesExample(
        localName: 'greeting',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        exampleId: TfArg.literal('terradart-ces-example'),
        displayName: TfArg.literal('terradart-ces-example'),
        description: TfArg.literal('TerraDart CES smoke few-shot'),
        entryAgent: TfArg.ref(agent.nameRef),
        messages: [
          CesExampleMessages(
            role: TfArg.literal('user'),
            chunks: [
              CesExampleMessagesChunks(
                text: TfArg.literal('Hello'),
              ),
            ],
          ),
        ],
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(agent),
        ],
      ),
    );

    final version = add(
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
          ResourceDependency(openapi),
          ResourceDependency(safety),
        ],
      ),
    );

    add(
      GoogleCesDeployment(
        localName: 'api',
        location: TfArg.ref(app.locationRef),
        app: TfArg.ref(app.appIdRef),
        appVersion: TfArg.ref(version.nameRef),
        displayName: TfArg.literal('terradart-ces-deploy'),
        channelProfile: CesDeploymentChannelProfile(
          channelType: TfArg.literal('API'),
          profileId: TfArg.literal('terradart-ces-api'),
        ),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(version),
        ],
      ),
    );
  }
}
