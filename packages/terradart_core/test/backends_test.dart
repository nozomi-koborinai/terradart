import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:test/test.dart';

void main() {
  group('LocalBackend', () {
    test('backendType is "local"', () {
      const backend = LocalBackend();
      expect(backend.backendType, equals('local'));
    });

    test('toTfJson with no path returns empty map', () {
      const backend = LocalBackend();
      expect(backend.toTfJson(), equals(<String, Object?>{}));
    });

    test('toTfJson with explicit path emits path key', () {
      const backend = LocalBackend(path: 'state/terraform.tfstate');
      expect(
        backend.toTfJson(),
        equals(<String, Object?>{'path': 'state/terraform.tfstate'}),
      );
    });

    test('implements StackBackend interface', () {
      const StackBackend backend = LocalBackend();
      expect(backend.backendType, equals('local'));
    });
  });

  group('GcsBackend (regression)', () {
    test('backendType is "gcs"', () {
      const backend = GcsBackend(bucket: 'my-state');
      expect(backend.backendType, equals('gcs'));
    });
  });

  group('S3Backend', () {
    test('backendType is "s3"', () {
      const backend =
          S3Backend(bucket: 'my-state', key: 'app/terraform.tfstate');
      expect(backend.backendType, equals('s3'));
    });

    test('toTfJson emits only bucket and key when nothing else is set', () {
      const backend =
          S3Backend(bucket: 'my-state', key: 'app/terraform.tfstate');
      expect(
        backend.toTfJson(),
        equals(<String, Object?>{
          'bucket': 'my-state',
          'key': 'app/terraform.tfstate',
        }),
      );
    });

    test('toTfJson omits every null optional', () {
      const backend = S3Backend(
        bucket: 'my-state',
        key: 'app/terraform.tfstate',
        region: 'ap-northeast-1',
      );
      expect(backend.toTfJson().keys, equals(['bucket', 'key', 'region']));
    });

    test('toTfJson emits every field that is set', () {
      const backend = S3Backend(
        bucket: 'my-state',
        key: 'app/terraform.tfstate',
        region: 'auto',
        endpoints: {'s3': 'https://example.invalid'},
        usePathStyle: true,
        skipCredentialsValidation: true,
        skipRegionValidation: true,
        skipRequestingAccountId: true,
        skipMetadataApiCheck: true,
        skipS3Checksum: true,
      );
      expect(
        backend.toTfJson(),
        equals(<String, Object?>{
          'bucket': 'my-state',
          'key': 'app/terraform.tfstate',
          'region': 'auto',
          'endpoints': {'s3': 'https://example.invalid'},
          'use_path_style': true,
          'skip_credentials_validation': true,
          'skip_region_validation': true,
          'skip_requesting_account_id': true,
          'skip_metadata_api_check': true,
          'skip_s3_checksum': true,
        }),
      );
    });

    test('false flags are emitted, not treated as unset', () {
      const backend = S3Backend(
        bucket: 'my-state',
        key: 'app/terraform.tfstate',
        usePathStyle: false,
      );
      expect(backend.toTfJson()['use_path_style'], isFalse);
    });

    test('r2 builds the Cloudflare R2 endpoint and flag set', () {
      final backend = S3Backend.r2(
        accountId: 'abc123',
        bucket: 'my-state',
        key: 'site/terraform.tfstate',
      );
      expect(backend.backendType, equals('s3'));
      expect(
        backend.toTfJson(),
        equals(<String, Object?>{
          'bucket': 'my-state',
          'key': 'site/terraform.tfstate',
          'region': 'auto',
          'endpoints': {'s3': 'https://abc123.r2.cloudflarestorage.com'},
          'use_path_style': true,
          'skip_credentials_validation': true,
          'skip_region_validation': true,
          'skip_requesting_account_id': true,
          'skip_metadata_api_check': true,
          'skip_s3_checksum': true,
        }),
      );
    });

    test('implements StackBackend interface', () {
      const StackBackend backend = S3Backend(
        bucket: 'my-state',
        key: 'app/terraform.tfstate',
      );
      expect(backend.backendType, equals('s3'));
    });
  });
}
