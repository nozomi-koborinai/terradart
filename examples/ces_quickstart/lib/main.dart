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
        'app',
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
        lifecycle: const .new(ignoreChanges: .of(['root_agent'])),
        dependsOn: apiDeps,
      ),
    );

    final search = add(
      GoogleCesTool(
        'search',
        app: app.ref,
        toolId: .literal('terradart-ces-search'),
        googleSearchTool: CesToolGoogleSearchTool(
          name: .literal('google_search'),
        ),
        dependsOn: [app],
      ),
    );

    final openapi = add(
      GoogleCesToolset(
        'openapi',
        app: app.ref,
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
        dependsOn: [app],
      ),
    );

    final safety = add(
      GoogleCesGuardrail(
        'safety',
        app: app.ref,
        guardrailId: .literal('terradart-ces-guardrail'),
        displayName: .literal('terradart-ces-guardrail'),
        enabled: .literal(true),
        action: CesGuardrailAction(
          respondImmediately: .new(
            responses: [
              .new(
                text: .literal('I cannot help with that.'),
                disabled: .literal(false),
              ),
            ],
          ),
        ),
        modelSafety: CesGuardrailModelSafety(
          safetySettings: [
            .new(
              category: CesGuardrailCategory.harmCategoryHateSpeech,
              threshold: .blockNone,
            ),
          ],
        ),
        dependsOn: [app],
      ),
    );

    final agent = add(
      GoogleCesAgent(
        'agent',
        app: app.ref,
        agentId: .literal('terradart-ces-agent'),
        displayName: .literal('terradart-ces-agent'),
        instruction: .literal('You are a helpful assistant.'),
        llmAgent: const CesAgentLlmAgent(),
        tools: .literal([search.name.interpolation]),
        toolsets: [CesAgentToolsets(toolset: openapi.ref)],
        guardrails: .literal([safety.name.interpolation]),
        dependsOn: [app, search, openapi, safety],
      ),
    );

    final association = add(
      GoogleCesAppRootAgentAssociation(
        'root',
        appId: app.ref,
        agentId: agent.agentId,
        dependsOn: [app, agent],
      ),
    );

    add(
      GoogleCesExample(
        'greeting',
        app: app.ref,
        exampleId: .literal('terradart-ces-example'),
        displayName: .literal('terradart-ces-example'),
        description: .literal('TerraDart CES smoke few-shot'),
        entryAgent: agent.ref,
        messages: [
          CesExampleMessages(
            role: .literal('user'),
            chunks: [.new(text: .literal('Hello'))],
          ),
        ],
        dependsOn: [app, agent],
      ),
    );

    final version = add(
      GoogleCesAppVersion(
        'v1',
        app: app.ref,
        appVersionId: .literal('v1'),
        displayName: .literal('terradart-ces-v1'),
        dependsOn: [app, association, search, openapi, safety],
      ),
    );

    add(
      GoogleCesDeployment(
        'api',
        app: app.ref,
        appVersion: version.ref,
        displayName: .literal('terradart-ces-deploy'),
        channelProfile: CesDeploymentChannelProfile(
          channelType: .literal('API'),
          profileId: .literal('terradart-ces-api'),
        ),
        dependsOn: [app, version],
      ),
    );
  }
}
