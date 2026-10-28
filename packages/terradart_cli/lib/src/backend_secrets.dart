import 'package:terradart_migrate/terradart_migrate.dart'
    show secretArgumentNames;

/// Credential words. A backend argument is secret when any `_` segment is
/// one of these. The state object name `key` is the exception.
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

/// Credential arguments whose names do not contain [credentialKeyStems].
///
/// From the built-in backend docs: `pg` `conn_str`, Consul `http_auth` and
/// `ca_file`, Kubernetes `config_path` / `config_paths`.
const unsuffixedBackendCredentials = {
  'conn_str',
  'http_auth',
  'ca_file',
  'config_path',
  'config_paths',
};

/// Whether [key] must stay out of the state-migrate question.
///
/// Secret when the name is in [secretArgumentNames], when a `_` segment is
/// in [credentialKeyStems], or when it is in [unsuffixedBackendCredentials].
/// `key` is the state object name, so it is shown.
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
