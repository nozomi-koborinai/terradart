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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiAppEngine = add(
      GoogleProjectService(
        'api_appengine',
        service: .literal('appengine.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiAppEngineFlex = add(
      GoogleProjectService(
        'api_appengine_flex',
        service: .literal('appengineflex.googleapis.com'),
        disableOnDestroy: .literal(false),
        dependsOn: [apiAppEngine],
      ),
    );
    final apiStorage = add(
      GoogleProjectService(
        'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final deployBucket = add(
      GoogleStorageBucket(
        'deploy',
        name: .literal('$projectId-terradart-appengine'),
        location: .literal('US'),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [apiStorage],
      ),
    );

    final app = add(
      GoogleAppEngineApplication(
        'app',
        locationId: .literal('us-central'),
        databaseType: .cloudFirestore,
        dependsOn: [apiAppEngine],
      ),
    );

    final standard = add(
      GoogleAppEngineStandardAppVersion(
        'default_v1',
        service: .literal('default'),
        versionId: .literal('v1'),
        runtime: .literal('python312'),
        deployment: AppEngineStandardAppVersionDeployment(
          zip: .new(
            sourceUrl: .literal(
              'https://storage.googleapis.com/$projectId-terradart-appengine/app.zip',
            ),
          ),
        ),
        entrypoint: AppEngineStandardAppVersionEntrypoint(
          shell: .literal('gunicorn -b :\$PORT main:app'),
        ),
        deleteServiceOnDestroy: .literal(true),
        dependsOn: [app, deployBucket],
      ),
    );

    add(
      GoogleAppEngineFlexibleAppVersion(
        'flex_v1',
        service: .literal('flex'),
        versionId: .literal('v1'),
        runtime: .literal('nodejs'),
        scaling: .manualScaling(instances: .literal(1)),
        livenessCheck: AppEngineFlexibleAppVersionLivenessCheck(
          path: .literal('/'),
        ),
        readinessCheck: AppEngineFlexibleAppVersionReadinessCheck(
          path: .literal('/'),
        ),
        noopOnDestroy: .literal(true),
        dependsOn: [apiAppEngineFlex, app],
      ),
    );

    add(
      GoogleAppEngineFirewallRule(
        'allow_all',
        priority: .literal(1000),
        action: .allow,
        sourceRange: .literal('*'),
        description: .literal('terradart demo — allow all (replace in prod)'),
        dependsOn: [app],
      ),
    );

    add(
      GoogleAppEngineApplicationUrlDispatchRules(
        'dispatch',
        dispatchRules: [
          AppEngineApplicationUrlDispatchRules(
            domain: .literal('*'),
            path: .literal('/*'),
            service: .literal('default'),
          ),
        ],
        dependsOn: [app],
      ),
    );

    add(
      GoogleAppEngineDomainMapping(
        'demo',
        domainName: .literal('terradart-appengine-demo.example'),
        dependsOn: [app],
      ),
    );

    add(
      GoogleAppEngineServiceNetworkSettings(
        'default_ingress',
        service: .literal('default'),
        networkSettings: AppEngineServiceNetworkSettings(
          ingressTrafficAllowed:
              AppEngineServiceNetworkSettingsIngressTrafficAllowed
                  .ingressTrafficAllowedAll,
        ),
        dependsOn: [standard],
      ),
    );

    add(
      GoogleAppEngineServiceSplitTraffic(
        'default_traffic',
        service: .literal('default'),
        // `allocations` values are strings per the provider schema
        // (`["map", "string"]`) — Terraform's own JSON/cty layer already
        // treats a bare `1.0` and `"1.0"` as the same value for this
        // string-typed attribute, but the typed constructor enforces it.
        split: AppEngineServiceSplitTrafficSplit(
          allocations: .literal({'v1': '1.0'}),
          shardBy: .ip,
        ),
        migrateTraffic: .literal(true),
        dependsOn: [standard],
      ),
    );

    addOutput('app_engine_app_id', app.id);
  }
}
