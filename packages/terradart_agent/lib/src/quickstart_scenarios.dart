/// Curated, runnable terradart `Stack` templates served by the
/// `get_quickstart` MCP tool.
///
/// Every snippet is adapted from a CI-validated example under
/// `examples/<name>_quickstart/lib/main.dart`, so the class names,
/// constructor parameters, enums, and imports compile against the current
/// terradart v0.11 API. Each snippet shows a small, self-contained slice of
/// the example (2-5 resources whose cross-references all resolve within the
/// slice) and elides the rest with a `// ... (see full example)` comment;
/// consult the linked `gcsRefs` example for the full, deployable Stack.
library;

/// A named, copy-pasteable terradart usage example.
class QuickstartScenario {
  const QuickstartScenario({
    required this.name,
    required this.description,
    required this.dartCode,
    required this.gcsRefs,
  });

  /// Stable scenario key, e.g. `cloud-run-webhook`.
  final String name;

  /// One-line summary of what the snippet provisions.
  final String description;

  /// A runnable-with-context terradart `Stack` subclass for this scenario.
  final String dartCode;

  /// Canonical source(s) the snippet was adapted from (GitHub tree URLs).
  final List<String> gcsRefs;
}

/// All quickstart scenarios, keyed by [QuickstartScenario.name].
const Map<String, QuickstartScenario> kScenarios = {
  'cloud-run-webhook': QuickstartScenario(
    name: 'cloud-run-webhook',
    description:
        'A Cloud Run v2 service fronting a webhook, with a public invoker '
        'IAM binding.',
    dartCode: r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

final class ApiServiceStack extends Stack {
  ApiServiceStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiService = add(
      GoogleCloudRunV2Service(
        localName: 'api',
        name: TfArg.literal('api'),
        location: TfArg.literal('asia-northeast1'),
        ingress: TfArg.literal(Ingress.internalLoadBalancer),
        template: CloudRunV2ServiceTemplate(
          containers: [
            CloudRunV2ServiceServiceContainer(
              image: TfArg.literal('gcr.io/cloudrun/hello'),
              ports: CloudRunV2ServiceContainerPort(
                containerPort: TfArg.literal(8080),
              ),
            ),
          ],
        ),
      ),
    );

    // Public HTTPS invoker; reach is still gated by the Ingress above.
    add(
      GoogleCloudRunV2ServiceIamMember(
        localName: 'api_public_invoker',
        name: TfArg.ref(apiService.nameRef),
        role: TfArg.literal('roles/run.invoker'),
        member: TfArg.literal('allUsers'),
        location: TfArg.literal('asia-northeast1'),
      ),
    );
    // ... (see full example: literal + secret-backed env vars, scaling, a
    // Secret Manager secret, and a companion Cloud Run v2 Job)
  }
}
''',
    gcsRefs: [
      'https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart',
    ],
  ),
  'data-pipeline': QuickstartScenario(
    name: 'data-pipeline',
    description:
        'A Pub/Sub topic with a push subscription, exporting the topic ID as '
        'a typed Dart constant for downstream subscribers.',
    dartCode: r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final topic = add(
      GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      ),
    );

    add(
      GooglePubsubSubscription(
        localName: 'orders_push',
        name: TfArg.literal('orders-push'),
        // Cross-resource refs need topic.id (the full path), not nameRef.
        topic: TfArg.ref(topic.id),
        pushConfig: PubsubSubscriptionPushConfig(
          pushEndpoint: TfArg.literal('https://app.example.com/push'),
        ),
      ),
    );

    // The seam: export topic.id as a typed Dart constant for subscribers.
    addExport(
      'ORDERS_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );
    // ... (see full example: retention tuning, app-exports output path)
  }
}
''',
    gcsRefs: [
      'https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart',
    ],
  ),
  'lb-stack': QuickstartScenario(
    name: 'lb-stack',
    description:
        'A global external L7 HTTPS Application Load Balancer chain: backend '
        'service over a NEG, URL map, target HTTPS proxy, and forwarding rule.',
    dartCode: r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/provider.dart';

final class ComputeLbStack extends Stack {
  ComputeLbStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    // Prerequisites to add (see full example): a GoogleComputeNetwork +
    // GoogleComputeSubnetwork (referenced by the NEG below), a backend VM,
    // a global VIP, a GoogleComputeManagedSslCertificate (referenced by the
    // HTTPS proxy below), a health check, and Cloud Armor + SSL policies.
    // Replace each '<...>' placeholder with TfArg.ref(<resource>.selfLink).

    final lbNeg = add(
      GoogleComputeNetworkEndpointGroup(
        localName: 'lb_neg',
        name: TfArg.literal('app-lb-neg'),
        // Required: self-link of the VPC the endpoints belong to. With the
        // VPC defined, use TfArg.ref(lbVpc.selfLink).
        network: TfArg.literal('<your-vpc-self-link>'),
        networkEndpointType:
            TfArg.literal(NetworkEndpointGroupType.gceVmIpPort),
        defaultPort: TfArg.literal(443),
      ),
    );

    final lbBackend = add(
      GoogleComputeBackendService(
        localName: 'lb_backend',
        name: TfArg.literal('app-lb-backend'),
        protocol: TfArg.literal(BackendServiceProtocol.https),
        loadBalancingScheme:
            TfArg.literal(LoadBalancingScheme.externalManaged),
        timeoutSec: TfArg.literal(30),
        backends: [
          ComputeBackendServiceBackendServiceBackend(
            group: TfArg.ref(lbNeg.selfLink),
            balancingMode: BackendServiceBalancingMode.rate,
            maxRatePerEndpoint: TfArg.literal(100),
            capacityScaler: TfArg.literal(1.0),
          ),
        ],
      ),
    );

    final lbUrlMap = add(
      GoogleComputeUrlMap(
        localName: 'lb_url_map',
        name: TfArg.literal('app-lb-url-map'),
        defaultService: TfArg.ref(lbBackend.selfLink),
      ),
    );

    final lbHttpsProxy = add(
      GoogleComputeTargetHttpsProxy(
        localName: 'lb_https_proxy',
        name: TfArg.literal('app-lb-https-proxy'),
        urlMap: TfArg.ref(lbUrlMap.selfLink),
        // An HTTPS proxy needs TLS material. With the managed cert defined,
        // use TfArg.literal([lbCert.selfLink.interpolation]).
        sslCertificates: TfArg.literal(const ['<your-ssl-cert-self-link>']),
      ),
    );

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_forwarding_rule',
        name: TfArg.literal('app-lb-forwarding-rule'),
        ipProtocol: TfArg.literal(GlobalForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('443'),
        loadBalancingScheme: TfArg.literal(
          GlobalForwardingRuleLoadBalancingScheme.externalManaged,
        ),
        target: TfArg.ref(lbHttpsProxy.selfLink),
      ),
    );
  }
}
''',
    gcsRefs: [
      'https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart',
    ],
  ),
  'firestore-seeded-data': QuickstartScenario(
    name: 'firestore-seeded-data',
    description:
        "Enables Firestore, creates the project's (default) Native-mode "
        'database, and seeds master-data documents via FirestoreFields.encode.',
    dartCode: r'''
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class FirestoreDocumentQuickstart extends Stack {
  FirestoreDocumentQuickstart({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final db = add(
      GoogleFirestoreDatabase(
        localName: 'default',
        name: TfArg.literal('(default)'),
        locationId: TfArg.literal('asia-northeast1'),
        type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
        deleteProtectionState: TfArg.literal(DeleteProtectionState.disabled),
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'flag_dark_mode',
        collection: TfArg.literal('feature_flags'),
        documentId: TfArg.literal('dark_mode'),
        fields: FirestoreFields.encode({'enabled': true, 'rollout_pct': 100}),
        dependsOn: [ResourceDependency(db)],
      ),
    );
    // ... (see full example: firestore.googleapis.com enablement via
    // GoogleProjectService, a second pricing_tiers/pro document with a
    // nested string-array field)
  }
}
''',
    gcsRefs: [
      'https://github.com/nozomi-koborinai/terradart/tree/main/examples/firestore_document_quickstart',
    ],
  ),
};
