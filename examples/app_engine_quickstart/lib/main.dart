/// App Engine quickstart -- an end-to-end terradart example.
///
/// Defines an `AppEngineStack` that enables the App Engine APIs and provisions:
/// - the project-level App Engine application,
/// - a standard-environment version on the `default` service (zip deployment
///   from a GCS bucket),
/// - a flexible-environment version on a `flex` service (sealed manual scaling),
/// - an application firewall rule, URL dispatch rules, and a domain mapping,
/// - service-level network settings and split traffic on `default`.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/app.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// App Engine Stack: application + standard/flex versions + routing controls.
final class AppEngineStack extends Stack {
  AppEngineStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiAppEngine = add(
      GoogleProjectService(
        localName: 'api_appengine',
        service: TfArg.literal('appengine.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiAppEngineFlex = add(
      GoogleProjectService(
        localName: 'api_appengine_flex',
        service: TfArg.literal('appengineflex.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiAppEngine)],
      ),
    );
    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final deployBucket = add(
      GoogleStorageBucket(
        localName: 'deploy',
        name: TfArg.literal('$projectId-terradart-appengine'),
        location: TfArg.literal('US'),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final app = add(
      GoogleAppEngineApplication(
        localName: 'app',
        locationId: TfArg.literal('us-central'),
        databaseType: TfArg.literal(AppEngineDatabaseType.cloudFirestore),
        dependsOn: [ResourceDependency(apiAppEngine)],
      ),
    );

    final standard = add(
      GoogleAppEngineStandardAppVersion(
        localName: 'default_v1',
        service: TfArg.literal('default'),
        versionId: TfArg.literal('v1'),
        runtime: TfArg.literal('python312'),
        deployment: TfArg.literal(<String, dynamic>{
          'zip': <String, dynamic>{
            'source_url':
                'https://storage.googleapis.com/$projectId-terradart-appengine/app.zip',
          },
        }),
        entrypoint: TfArg.literal(<String, dynamic>{
          'shell': 'gunicorn -b :\$PORT main:app',
        }),
        deleteServiceOnDestroy: TfArg.literal(true),
        dependsOn: [
          ResourceDependency(app),
          ResourceDependency(deployBucket),
        ],
      ),
    );

    add(
      GoogleAppEngineFlexibleAppVersion(
        localName: 'flex_v1',
        service: TfArg.literal('flex'),
        versionId: TfArg.literal('v1'),
        runtime: TfArg.literal('nodejs'),
        scaling: AppEngineFlexibleAppVersionManualScalingMode(
          instances: TfArg.literal(1),
        ),
        livenessCheck: TfArg.literal(<String, dynamic>{'path': '/'}),
        readinessCheck: TfArg.literal(<String, dynamic>{'path': '/'}),
        noopOnDestroy: TfArg.literal(true),
        dependsOn: [
          ResourceDependency(apiAppEngineFlex),
          ResourceDependency(app),
        ],
      ),
    );

    add(
      GoogleAppEngineFirewallRule(
        localName: 'allow_all',
        priority: TfArg.literal(1000),
        action: TfArg.literal(AppEngineFirewallRuleAction.allow),
        sourceRange: TfArg.literal('*'),
        description:
            TfArg.literal('terradart demo — allow all (replace in prod)'),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    add(
      GoogleAppEngineApplicationUrlDispatchRules(
        localName: 'dispatch',
        dispatchRules: TfArg.literal(<Map<String, dynamic>>[
          <String, dynamic>{
            'domain': '*',
            'path': '/*',
            'service': 'default',
          },
        ]),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    add(
      GoogleAppEngineDomainMapping(
        localName: 'demo',
        domainName: TfArg.literal('terradart-appengine-demo.example'),
        dependsOn: [ResourceDependency(app)],
      ),
    );

    add(
      GoogleAppEngineServiceNetworkSettings(
        localName: 'default_ingress',
        service: TfArg.literal('default'),
        networkSettings: TfArg.literal(<String, dynamic>{
          'ingress_traffic_allowed': 'INGRESS_TRAFFIC_ALLOWED_ALL',
        }),
        dependsOn: [ResourceDependency(standard)],
      ),
    );

    add(
      GoogleAppEngineServiceSplitTraffic(
        localName: 'default_traffic',
        service: TfArg.literal('default'),
        split: TfArg.literal(<String, dynamic>{
          'shard_by': 'IP',
          'allocations': <String, dynamic>{'v1': 1.0},
        }),
        migrateTraffic: TfArg.literal(true),
        dependsOn: [ResourceDependency(standard)],
      ),
    );

    addExport(
      'APP_ENGINE_APP_ID',
      ResourceIdExport(app.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/app_engine_stack.app.dart');
  }
}
