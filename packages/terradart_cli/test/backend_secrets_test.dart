import 'package:terradart_cli/src/backend_secrets.dart';
import 'package:terradart_migrate/terradart_migrate.dart'
    show secretArgumentNames;
import 'package:test/test.dart';

/// Credential arguments of the built-in Terraform backends, from the
/// backend type docs (http, pg, consul, kubernetes, cos, oss, s3, gcs, remote).
const _credentialArguments = [
  'password',
  'client_certificate_pem',
  'client_private_key_pem',
  'client_ca_certificate_pem',
  'conn_str',
  'access_token',
  'http_auth',
  'ca_file',
  'cert_file',
  'key_file',
  'client_certificate',
  'client_key',
  'cluster_ca_certificate',
  'token',
  'config_path',
  'config_paths',
  'secret_id',
  'secret_key',
  'security_token',
  'shared_credentials_dir',
  'shared_credentials_file',
  'access_key',
  'credentials',
  'encryption_key',
  'web_identity_token_file',
  'sse_customer_key',
];

const _shownArguments = [
  'bucket',
  'prefix',
  'key',
  'container_name',
  'storage_account_name',
  'address',
  'region',
  'endpoint',
  'schema_name',
  'path',
  'hostname',
  'organization',
  'lock_address',
  'resource_group_name',
  'profile',
];

void main() {
  test('credential-shaped backend arguments are hidden', () {
    for (final key in _credentialArguments) {
      expect(secretBackendArgument(key), isTrue, reason: key);
    }
    for (final key in secretArgumentNames) {
      expect(secretBackendArgument(key), isTrue, reason: key);
    }
    for (final key in unsuffixedBackendCredentials) {
      expect(secretBackendArgument(key), isTrue, reason: key);
    }
  });

  test('each credential stem hides a name on its own', () {
    for (final stem in credentialKeyStems) {
      expect(secretBackendArgument('x_$stem'), isTrue, reason: stem);
      expect(secretBackendArgument('${stem}_x'), isTrue, reason: stem);
    }
    expect(secretBackendArgument('key'), isFalse);
    expect(secretBackendArgument('KEY'), isFalse);
  });

  test('state identifiers stay visible', () {
    for (final key in _shownArguments) {
      expect(secretBackendArgument(key), isFalse, reason: key);
    }
  });
}
