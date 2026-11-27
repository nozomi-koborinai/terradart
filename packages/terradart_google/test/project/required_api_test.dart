import 'package:terradart_google/bigquery.dart';
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

    test('IAM adjuncts and project services need no API', () {
      expect(
        requiredApiForTerraformType(GooglePubsubTopicIamMember.tfType),
        isNull,
      );
      expect(requiredApiForTerraformType(GoogleProjectService.tfType), isNull);
    });
  });
}
