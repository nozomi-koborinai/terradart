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
        'redis.googleapis.com',
      );
      expect(
        requiredApiForTerraformType(GoogleIapSettings.tfType),
        'iap.googleapis.com',
      );
    });

    test('a narrower service wins over its family', () {
      expect(
        requiredApiForTerraformType(GoogleBigqueryDataset.tfType),
        'bigquery.googleapis.com',
      );
      expect(
        requiredApiForTerraformType(GoogleBigqueryConnection.tfType),
        'bigqueryconnection.googleapis.com',
      );
    });

    test('an IAM adjunct needs the API of the resource it grants on', () {
      expect(
        requiredApiForTerraformType(GooglePubsubTopicIamMember.tfType),
        'pubsub.googleapis.com',
      );
      expect(
        requiredApiForTerraformType(GoogleIapTunnelInstanceIamMember.tfType),
        'iap.googleapis.com',
      );
      expect(
        requiredApiForTerraformType(
          GoogleIapWebCloudRunServiceIamMember.tfType,
        ),
        'iap.googleapis.com',
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
