// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_flux_configuration`.
const Set<String> _azurermKubernetesFluxConfigurationSensitive = <String>{
  'blob_storage.account_key',
  'blob_storage.sas_token',
  'blob_storage.service_principal.client_certificate_base64',
  'blob_storage.service_principal.client_certificate_password',
  'blob_storage.service_principal.client_secret',
  'bucket.secret_key_base64',
  'git_repository.https_ca_cert_base64',
  'git_repository.https_key_base64',
  'git_repository.ssh_private_key_base64',
};

/// Kubernetes Flux Configuration enum for `scope`.
extension type const KubernetesFluxConfigurationScope._(TfArg<String> _)
    implements TfArg<String> {
  KubernetesFluxConfigurationScope.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesFluxConfigurationScope.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesFluxConfigurationScope.arg(TfArg<String> arg) : this._(arg);

  static const cluster = KubernetesFluxConfigurationScope._(
    TfArgLiteral('cluster'),
  );
  static const namespace = KubernetesFluxConfigurationScope._(
    TfArgLiteral('namespace'),
  );

  static const List<KubernetesFluxConfigurationScope> values = [
    cluster,
    namespace,
  ];
}

/// Exactly one of `blob_storage`, `bucket`, `git_repository` on `azurerm_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.blobStorage(...)`.
sealed class KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository();

  /// Sets `blob_storage`.
  const factory KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.blobStorage(
    KubernetesFluxConfigurationBlobStorage blobStorage,
  ) = KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage;

  /// Sets `bucket`.
  const factory KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.bucket(
    KubernetesFluxConfigurationBucket bucket,
  ) = KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket;

  /// Sets `git_repository`.
  const factory KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.gitRepository(
    KubernetesFluxConfigurationGitRepository gitRepository,
  ) = KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.blobStorage] choice: sets `blob_storage`.
final class KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage
    extends KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage(
    this.blobStorage,
  );

  final KubernetesFluxConfigurationBlobStorage blobStorage;

  @internal
  @override
  String get blockKey => 'blob_storage';

  @internal
  @override
  Map<String, Object?> encode() => {'blob_storage': blobStorage.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'blob_storage': TfArg.literal(blobStorage.encode()),
  };
}

/// The [KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.bucket] choice: sets `bucket`.
final class KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket
    extends KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket(
    this.bucket,
  );

  final KubernetesFluxConfigurationBucket bucket;

  @internal
  @override
  String get blockKey => 'bucket';

  @internal
  @override
  Map<String, Object?> encode() => {'bucket': bucket.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bucket': TfArg.literal(bucket.encode()),
  };
}

/// The [KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.gitRepository] choice: sets `git_repository`.
final class KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice
    extends KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice(
    this.gitRepository,
  );

  final KubernetesFluxConfigurationGitRepository gitRepository;

  @internal
  @override
  String get blockKey => 'git_repository';

  @internal
  @override
  Map<String, Object?> encode() => {'git_repository': gitRepository.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'git_repository': TfArg.literal(gitRepository.encode()),
  };
}

/// Typed helper for the `blob_storage` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationBlobStorage {
  const KubernetesFluxConfigurationBlobStorage({
    required this.accountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal,
    required this.containerId,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  final KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal
  accountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal;

  final TfArg<String> containerId;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

  @internal
  Map<String, Object?> encode() => {
    ...accountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal
        .encode(),
    'container_id': containerId.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
  };
}

/// Exactly one of `account_key`, `local_auth_reference`, `managed_identity`, `sas_token`, `service_principal` on the `blob_storage` block of `azurerm_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accountKey(...)`.
sealed class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal();

  /// Sets `account_key`.
  const factory KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.accountKey(
    Sensitive<String> accountKey,
  ) = KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalAccountKey;

  /// Sets `local_auth_reference`.
  const factory KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.localAuthReference(
    TfArg<String> localAuthReference,
  ) = KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalLocalAuthReference;

  /// Sets `managed_identity`.
  const factory KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.managedIdentity(
    KubernetesFluxConfigurationManagedIdentity managedIdentity,
  ) = KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalManagedIdentity;

  /// Sets `sas_token`.
  const factory KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.sasToken(
    Sensitive<String> sasToken,
  ) = KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalSasToken;

  /// Sets `service_principal`.
  const factory KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.servicePrincipal(
    KubernetesFluxConfigurationServicePrincipal servicePrincipal,
  ) = KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.accountKey] choice: sets `account_key`.
final class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalAccountKey
    extends
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalAccountKey(
    this.accountKey,
  );

  final Sensitive<String> accountKey;

  @internal
  @override
  String get blockKey => 'account_key';

  @internal
  @override
  Map<String, Object?> encode() => {'account_key': accountKey.toTfJson()};
}

/// The [KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.localAuthReference] choice: sets `local_auth_reference`.
final class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalLocalAuthReference
    extends
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalLocalAuthReference(
    this.localAuthReference,
  );

  final TfArg<String> localAuthReference;

  @internal
  @override
  String get blockKey => 'local_auth_reference';

  @internal
  @override
  Map<String, Object?> encode() => {
    'local_auth_reference': localAuthReference.toTfJson(),
  };
}

/// The [KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.managedIdentity] choice: sets `managed_identity`.
final class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalManagedIdentity
    extends
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalManagedIdentity(
    this.managedIdentity,
  );

  final KubernetesFluxConfigurationManagedIdentity managedIdentity;

  @internal
  @override
  String get blockKey => 'managed_identity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'managed_identity': managedIdentity.encode(),
  };
}

/// The [KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.sasToken] choice: sets `sas_token`.
final class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalSasToken
    extends
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalSasToken(
    this.sasToken,
  );

  final Sensitive<String> sasToken;

  @internal
  @override
  String get blockKey => 'sas_token';

  @internal
  @override
  Map<String, Object?> encode() => {'sas_token': sasToken.toTfJson()};
}

/// The [KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal.servicePrincipal] choice: sets `service_principal`.
final class KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalChoice
    extends
        KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipal {
  const KubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrManagedIdentityOrSasTokenOrServicePrincipalChoice(
    this.servicePrincipal,
  );

  final KubernetesFluxConfigurationServicePrincipal servicePrincipal;

  @internal
  @override
  String get blockKey => 'service_principal';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal': servicePrincipal.encode(),
  };
}

/// Typed helper for the `blob_storage.managed_identity` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationManagedIdentity {
  const KubernetesFluxConfigurationManagedIdentity({required this.clientId});

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `blob_storage.service_principal` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationServicePrincipal {
  const KubernetesFluxConfigurationServicePrincipal({
    required this.client,
    this.clientCertificatePassword,
    this.clientCertificateSendChain,
    required this.clientId,
    required this.tenantId,
  });

  final KubernetesFluxConfigurationClient client;

  final Sensitive<String>? clientCertificatePassword;

  final TfArg<bool>? clientCertificateSendChain;

  final TfArg<String> clientId;

  final TfArg<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    ...client.encode(),
    'client_certificate_password': ?clientCertificatePassword?.toTfJson(),
    'client_certificate_send_chain': ?clientCertificateSendChain?.toTfJson(),
    'client_id': clientId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Exactly one of `client_certificate_base64`, `client_secret` on the `blob_storage.service_principal` block of `azurerm_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientCertificateBase64(...)`.
sealed class KubernetesFluxConfigurationClient {
  const KubernetesFluxConfigurationClient();

  /// Sets `client_certificate_base64`.
  const factory KubernetesFluxConfigurationClient.clientCertificateBase64(
    Sensitive<String> clientCertificateBase64,
  ) = KubernetesFluxConfigurationClientCertificateBase64;

  /// Sets `client_secret`.
  const factory KubernetesFluxConfigurationClient.clientSecret(
    Sensitive<String> clientSecret,
  ) = KubernetesFluxConfigurationClientSecret;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [KubernetesFluxConfigurationClient.clientCertificateBase64] choice: sets `client_certificate_base64`.
final class KubernetesFluxConfigurationClientCertificateBase64
    extends KubernetesFluxConfigurationClient {
  const KubernetesFluxConfigurationClientCertificateBase64(
    this.clientCertificateBase64,
  );

  final Sensitive<String> clientCertificateBase64;

  @internal
  @override
  String get blockKey => 'client_certificate_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_certificate_base64': clientCertificateBase64.toTfJson(),
  };
}

/// The [KubernetesFluxConfigurationClient.clientSecret] choice: sets `client_secret`.
final class KubernetesFluxConfigurationClientSecret
    extends KubernetesFluxConfigurationClient {
  const KubernetesFluxConfigurationClientSecret(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// Typed helper for the `bucket` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationBucket {
  const KubernetesFluxConfigurationBucket({
    required this.accessKeyOrLocalAuthReference,
    required this.bucketName,
    this.secretKeyBase64,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.tlsEnabled,
    required this.url,
  });

  final KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference
  accessKeyOrLocalAuthReference;

  final TfArg<String> bucketName;

  final Sensitive<String>? secretKeyBase64;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<bool>? tlsEnabled;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    ...accessKeyOrLocalAuthReference.encode(),
    'bucket_name': bucketName.toTfJson(),
    'secret_key_base64': ?secretKeyBase64?.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'tls_enabled': ?tlsEnabled?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Exactly one of `access_key`, `local_auth_reference` on the `bucket` block of `azurerm_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accessKey(...)`.
sealed class KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference();

  /// Sets `access_key`.
  const factory KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.accessKey(
    TfArg<String> accessKey,
  ) = KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey;

  /// Sets `local_auth_reference`.
  const factory KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.localAuthReference(
    TfArg<String> localAuthReference,
  ) = KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.accessKey] choice: sets `access_key`.
final class KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey
    extends KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey(
    this.accessKey,
  );

  final TfArg<String> accessKey;

  @internal
  @override
  String get blockKey => 'access_key';

  @internal
  @override
  Map<String, Object?> encode() => {'access_key': accessKey.toTfJson()};
}

/// The [KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.localAuthReference] choice: sets `local_auth_reference`.
final class KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice
    extends KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const KubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice(
    this.localAuthReference,
  );

  final TfArg<String> localAuthReference;

  @internal
  @override
  String get blockKey => 'local_auth_reference';

  @internal
  @override
  Map<String, Object?> encode() => {
    'local_auth_reference': localAuthReference.toTfJson(),
  };
}

/// Typed helper for the `git_repository` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationGitRepository {
  const KubernetesFluxConfigurationGitRepository({
    this.httpsCaCertBase64,
    this.httpsKeyBase64,
    this.httpsUser,
    this.localAuthReference,
    this.provider,
    required this.referenceType,
    required this.referenceValue,
    this.sshKnownHostsBase64,
    this.sshPrivateKeyBase64,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    required this.url,
  });

  final Sensitive<String>? httpsCaCertBase64;

  final Sensitive<String>? httpsKeyBase64;

  final TfArg<String>? httpsUser;

  final TfArg<String>? localAuthReference;

  final KubernetesFluxConfigurationProvider? provider;

  final TfArg<String> referenceType;

  final TfArg<String> referenceValue;

  final TfArg<String>? sshKnownHostsBase64;

  final Sensitive<String>? sshPrivateKeyBase64;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'https_ca_cert_base64': ?httpsCaCertBase64?.toTfJson(),
    'https_key_base64': ?httpsKeyBase64?.toTfJson(),
    'https_user': ?httpsUser?.toTfJson(),
    'local_auth_reference': ?localAuthReference?.toTfJson(),
    'provider': ?provider?.toTfJson(),
    'reference_type': referenceType.toTfJson(),
    'reference_value': referenceValue.toTfJson(),
    'ssh_known_hosts_base64': ?sshKnownHostsBase64?.toTfJson(),
    'ssh_private_key_base64': ?sshPrivateKeyBase64?.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// `provider` — derived from the provider schema description.
extension type const KubernetesFluxConfigurationProvider._(TfArg<String> _)
    implements TfArg<String> {
  KubernetesFluxConfigurationProvider.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesFluxConfigurationProvider.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesFluxConfigurationProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const azure = KubernetesFluxConfigurationProvider._(
    TfArgLiteral('Azure'),
  );
  static const generic = KubernetesFluxConfigurationProvider._(
    TfArgLiteral('Generic'),
  );
  static const github = KubernetesFluxConfigurationProvider._(
    TfArgLiteral('GitHub'),
  );

  static const List<KubernetesFluxConfigurationProvider> values = [
    azure,
    generic,
    github,
  ];
}

/// Typed helper for the `kustomizations` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationKustomizations {
  const KubernetesFluxConfigurationKustomizations({
    this.dependsOn,
    this.garbageCollectionEnabled,
    required this.name,
    this.path,
    this.recreatingEnabled,
    this.retryIntervalInSeconds,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.wait,
    this.postBuild,
  });

  final TfArg<List<String>>? dependsOn;

  final TfArg<bool>? garbageCollectionEnabled;

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<bool>? recreatingEnabled;

  final TfArg<num>? retryIntervalInSeconds;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<bool>? wait;

  final KubernetesFluxConfigurationPostBuild? postBuild;

  @internal
  Map<String, Object?> encode() => {
    'depends_on': ?dependsOn?.toTfJson(),
    'garbage_collection_enabled': ?garbageCollectionEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'path': ?path?.toTfJson(),
    'recreating_enabled': ?recreatingEnabled?.toTfJson(),
    'retry_interval_in_seconds': ?retryIntervalInSeconds?.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'wait': ?wait?.toTfJson(),
    'post_build': ?postBuild?.encode(),
  };
}

/// Typed helper for the `kustomizations.post_build` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationPostBuild {
  const KubernetesFluxConfigurationPostBuild({
    this.substitute,
    this.substituteFrom,
  });

  final TfArg<Map<String, String>>? substitute;

  final List<KubernetesFluxConfigurationSubstituteFrom>? substituteFrom;

  @internal
  Map<String, Object?> encode() => {
    'substitute': ?substitute?.toTfJson(),
    if (substituteFrom != null)
      'substitute_from': [for (final e in substituteFrom!) e.encode()],
  };
}

/// Typed helper for the `kustomizations.post_build.substitute_from` block of
/// `azurerm_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class KubernetesFluxConfigurationSubstituteFrom {
  const KubernetesFluxConfigurationSubstituteFrom({
    required this.kind,
    required this.name,
    this.optional,
  });

  final TfArg<String> kind;

  final TfArg<String> name;

  final TfArg<bool>? optional;

  @internal
  Map<String, Object?> encode() => {
    'kind': kind.toTfJson(),
    'name': name.toTfJson(),
    'optional': ?optional?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_kubernetes_flux_configuration`.
final class AzurermKubernetesFluxConfiguration extends Resource {
  static const String tfType = 'azurerm_kubernetes_flux_configuration';

  AzurermKubernetesFluxConfiguration(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<bool>? continuousReconciliationEnabled,
    required TfArg<String> name,
    required TfArg<String> namespace,
    KubernetesFluxConfigurationScope? scope,
    required KubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository
    blobStorageOrBucketOrGitRepository,
    required List<KubernetesFluxConfigurationKustomizations> kustomizations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'continuous_reconciliation_enabled':
               ?continuousReconciliationEnabled,
           'name': name,
           'namespace': namespace,
           'scope': ?scope,
           ...blobStorageOrBucketOrGitRepository.argMap,
           'kustomizations': TfArg.literal([
             for (final e in kustomizations) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesFluxConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesFluxConfiguration>`.
  RefTo<AzurermKubernetesFluxConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `continuous_reconciliation_enabled` attribute.
  TfRef<bool> get continuousReconciliationEnabled =>
      TfRef.attribute<bool>(this, 'continuous_reconciliation_enabled');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
