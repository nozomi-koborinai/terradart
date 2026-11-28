import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/redis.dart';
import 'package:test/test.dart';

void main() {
  group('requiredApiForTerraformType', () {
    test('names the API a wrapped resource type needs', () {
      expect(
        requiredApiForTerraformType(GoogleRedisInstance.tfType),
        GoogleApi.redis,
      );
      expect(
        requiredApiForTerraformType(GoogleIapSettings.tfType),
        GoogleApi.iap,
      );
    });

    test('a narrower service wins over its family', () {
      expect(
        requiredApiForTerraformType(GoogleBigqueryDataset.tfType),
        GoogleApi.bigquery,
      );
      expect(
        requiredApiForTerraformType(GoogleBigqueryConnection.tfType),
        GoogleApi.bigqueryconnection,
      );
    });

    test('an IAM adjunct needs the API of the resource it grants on', () {
      expect(
        requiredApiForTerraformType(GooglePubsubTopicIamMember.tfType),
        GoogleApi.pubsub,
      );
      expect(
        requiredApiForTerraformType(GoogleIapTunnelInstanceIamMember.tfType),
        GoogleApi.iap,
      );
      expect(
        requiredApiForTerraformType(
          GoogleIapWebCloudRunServiceIamMember.tfType,
        ),
        GoogleApi.iap,
      );
    });

    test('project services and project IAM need no API', () {
      expect(requiredApiForTerraformType(GoogleProjectService.tfType), isNull);
      expect(
        requiredApiForTerraformType(GoogleProjectIamMember.tfType),
        isNull,
      );
    });
  });
}
