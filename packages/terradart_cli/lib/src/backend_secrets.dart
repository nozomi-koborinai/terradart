import 'package:terradart_migrate/terradart_migrate.dart'
    show secretArgumentNames;

const credentialKeyStems = {
  'key',
  'token',
  'secret',
  'password',
  'pem',
  'certificate',
  'credentials',
  'credential',
  'cert',
};

const unsuffixedBackendCredentials = {
  'conn_str',
  'http_auth',
  'ca_file',
  'config_path',
  'config_paths',
};

bool secretBackendArgument(String key) {
  final name = key.toLowerCase();
  if (name == 'key') return false;
  if (secretArgumentNames.contains(name)) return true;
  if (unsuffixedBackendCredentials.contains(name)) return true;
  for (final part in name.split('_')) {
    if (credentialKeyStems.contains(part)) return true;
  }
  return false;
}
