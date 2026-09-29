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
import 'package:terradart_time/terradart_time.dart';

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
        location: .literal('us'),
        appId: .literal('terradart-ces'),
        displayName: .literal('terradart-ces'),
        description: .literal('TerraDart CES smoke app'),
        languageSettings: CesAppLanguageSettings(
          defaultLanguageCode: .literal('en-US'),
          supportedLanguageCodes: .literal(['es-ES']),
          fallbackAction: .literal('escalate'),
        ),
        timeZoneSettings: CesAppTimeZoneSettings(
          timeZone: .literal('America/Los_Angeles'),
        ),
        lifecycle: const LifecycleOptions(ignoreChanges: ['root_agent']),
        dependsOn: apiDeps,
      ),
    );

    final search = add(
      GoogleCesTool(
        localName: 'search',
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        toolId: .literal('terradart-ces-search'),
        googleSearchTool: CesToolGoogleSearchTool(
          name: .literal('google_search'),
        ),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    final openapi = add(
      GoogleCesToolset(
        localName: 'openapi',
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        toolsetId: .literal('terradart-ces-toolset'),
        displayName: .literal('terradart-ces-toolset'),
        openApiToolset: CesToolsetOpenApiToolset(
          openApiSchema: .literal(
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
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        guardrailId: .literal('terradart-ces-guardrail'),
        displayName: .literal('terradart-ces-guardrail'),
        enabled: .literal(true),
        action: CesGuardrailAction(
          respondImmediately: CesGuardrailActionRespondImmediately(
            responses: [
              CesGuardrailActionRespondImmediatelyResponses(
                text: .literal('I cannot help with that.'),
                disabled: .literal(false),
              ),
            ],
          ),
        ),
        modelSafety: CesGuardrailModelSafety(
          safetySettings: [
            CesGuardrailModelSafetySafetySettings(
              category: .literal(
                CesGuardrailModelSafetySafetySettingsCategory
                    .harmCategoryHateSpeech,
              ),
              threshold: .literal(.blockNone),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    final agent = add(
      GoogleCesAgent(
        localName: 'agent',
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        agentId: .literal('terradart-ces-agent'),
        displayName: .literal('terradart-ces-agent'),
        instruction: .literal('You are a helpful assistant.'),
        llmAgent: const CesAgentLlmAgent(),
        tools: .literal([search.nameRef.interpolation]),
        toolsets: [CesAgentToolsets(toolset: .ref(openapi.nameRef))],
        guardrails: .literal([safety.nameRef.interpolation]),
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
        location: .ref(app.locationRef),
        appId: .ref(app.appIdRef),
        agentId: .ref(agent.agentIdRef),
        dependsOn: [ResourceDependency(app), ResourceDependency(agent)],
      ),
    );

    add(
      GoogleCesExample(
        localName: 'greeting',
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        exampleId: .literal('terradart-ces-example'),
        displayName: .literal('terradart-ces-example'),
        description: .literal('TerraDart CES smoke few-shot'),
        entryAgent: .ref(agent.nameRef),
        messages: [
          CesExampleMessages(
            role: .literal('user'),
            chunks: [CesExampleMessagesChunks(text: .literal('Hello'))],
          ),
        ],
        dependsOn: [ResourceDependency(app), ResourceDependency(agent)],
      ),
    );

    final version = add(
      GoogleCesAppVersion(
        localName: 'v1',
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        appVersionId: .literal('v1'),
        displayName: .literal('terradart-ces-v1'),
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
        location: .ref(app.locationRef),
        app: .ref(app.appIdRef),
        appVersion: .ref(version.nameRef),
        displayName: .literal('terradart-ces-deploy'),
        channelProfile: CesDeploymentChannelProfile(
          channelType: .literal('API'),
          profileId: .literal('terradart-ces-api'),
        ),
        dependsOn: [ResourceDependency(app), ResourceDependency(version)],
      ),
    );
  }
}
