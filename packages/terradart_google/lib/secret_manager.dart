// packages/terradart_google/lib/secret_manager.dart
/// Secret Manager secrets, versions, and per-secret IAM bindings.
library;

export 'src/secret_manager/google_secret_manager_secret.dart'
    show
        SecretManagerSecretCustomerManagedEncryption,
        GoogleSecretManagerSecret,
        SecretManagerSecretReplica,
        SecretManagerSecretReplication,
        SecretManagerSecretRotation,
        SecretManagerSecretSecretTopic;
export 'src/secret_manager/google_secret_manager_secret_iam_member.dart'
    show GoogleSecretManagerSecretIamMember;
export 'src/secret_manager/google_secret_manager_secret_version.dart'
    show GoogleSecretManagerSecretVersion;
