/// Cloud Asset Inventory project-feed quickstart.
///
/// Enables `cloudasset.googleapis.com` and `pubsub.googleapis.com`,
/// mints the Cloud Asset service agent (`google_project_service_identity`,
/// google-beta — API enable does not create it), grants that agent
/// publisher on a Pub/Sub topic, and creates a project feed for Project
/// resource updates. Creating a feed does not scan or export existing
/// assets.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_asset.dart';
import 'package:terradart_google/google_beta.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_time/terradart_time.dart';

/// Cloud Asset stack: Pub/Sub topic + project feed.
final class CloudAssetStack extends Stack {
  CloudAssetStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          GoogleBetaProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.cloudAsset, Barrels.pubsub],
      propagationDelay: const Duration(seconds: 60),
    );

    // Enabling cloudasset.googleapis.com does not mint
    // service-{number}@gcp-sa-cloudasset. Topic IAM 400s until this
    // google-beta identity exists.
    final assetSa = add(
      GoogleProjectServiceIdentity(
        localName: 'cloudasset',
        service: .literal('cloudasset.googleapis.com'),
        dependsOn: apiDeps,
      ),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'feed_output',
        name: .literal('terradart-asset-feed'),
        dependsOn: apiDeps,
      ),
    );

    final publisher = add(
      GooglePubsubTopicIamMember(
        localName: 'cloudasset_publisher',
        topic: topic.ref,
        role: .literal('roles/pubsub.publisher'),
        member: .ref(assetSa.member),
        dependsOn: [ResourceDependency(topic), ResourceDependency(assetSa)],
      ),
    );

    // Topic IAM is eventually consistent; feed-create checks publish.
    final feedIamReady = add(
      TimeSleep(
        localName: 'feed_iam_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 30)),
        dependsOn: [ResourceDependency(publisher)],
      ),
    );

    add(
      GoogleCloudAssetProjectFeed(
        localName: 'project_feed',
        feedId: .literal('terradart-project-feed'),
        assetTypes: .literal(const [
          'cloudresourcemanager.googleapis.com/Project',
        ]),
        contentType: .literal(.resource),
        feedOutputConfig: CloudAssetProjectFeedOutputConfig(
          pubsubDestination: .new(topic: topic.ref),
        ),
        dependsOn: [ResourceDependency(feedIamReady)],
      ),
    );
  }
}
