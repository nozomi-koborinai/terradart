/// Cloud Asset Inventory project-feed quickstart.
///
/// Enables `cloudasset.googleapis.com` and `pubsub.googleapis.com`,
/// creates a Pub/Sub topic, grants the Cloud Asset service agent
/// publisher, and creates a project feed for Project resource updates.
/// Creating a feed does not scan or export existing assets.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_asset.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/time.dart';

/// Cloud Asset stack: Pub/Sub topic + project feed.
final class CloudAssetStack extends Stack {
  CloudAssetStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.cloudAsset, Barrels.pubsub],
      propagationDelay: const Duration(seconds: 60),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'feed_output',
        name: TfArg.literal('terradart-asset-feed'),
        dependsOn: apiDeps,
      ),
    );

    final publisher = add(
      GooglePubsubTopicIamMember(
        localName: 'cloudasset_publisher',
        topic: TfArg.ref(topic.nameRef),
        role: TfArg.literal('roles/pubsub.publisher'),
        member: TfArg.literal(
          'serviceAccount:service-${current.number.interpolation}'
          '@gcp-sa-cloudasset.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(topic), ...apiDeps],
      ),
    );

    add(
      GoogleCloudAssetProjectFeed(
        localName: 'project_feed',
        feedId: TfArg.literal('terradart-project-feed'),
        assetTypes: TfArg.literal(const [
          'cloudresourcemanager.googleapis.com/Project',
        ]),
        contentType: TfArg.literal(CloudAssetProjectFeedContentType.resource),
        feedOutputConfig: CloudAssetProjectFeedFeedOutputConfig(
          pubsubDestination:
              CloudAssetProjectFeedFeedOutputConfigPubsubDestination(
            topic: TfArg.ref(topic.id),
          ),
        ),
        dependsOn: [ResourceDependency(publisher)],
      ),
    );
  }
}
