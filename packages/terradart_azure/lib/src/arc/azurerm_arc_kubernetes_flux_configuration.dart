// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_arc_kubernetes_flux_configuration`.
const Set<String> _azurermArcKubernetesFluxConfigurationSensitive = <String>{
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

/// Arc Kubernetes Flux Configuration enum for `scope`.
extension type const ArcKubernetesFluxConfigurationScope._(TfArg<String> _)
    implements TfArg<String> {
  ArcKubernetesFluxConfigurationScope.variable(String name)
    : this._(TfArg.variable(name));
  ArcKubernetesFluxConfigurationScope.expression(String template)
    : this._(TfArg.expression(template));
  const ArcKubernetesFluxConfigurationScope.arg(TfArg<String> arg)
    : this._(arg);

  static const cluster = ArcKubernetesFluxConfigurationScope._(
    TfArgLiteral('cluster'),
  );
  static const namespace = ArcKubernetesFluxConfigurationScope._(
    TfArgLiteral('namespace'),
  );

  static const List<ArcKubernetesFluxConfigurationScope> values = [
    cluster,
    namespace,
  ];
}

/// Exactly one of `blob_storage`, `bucket`, `git_repository` on `azurerm_arc_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.blobStorage(...)`.
sealed class ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository();

  /// Sets `blob_storage`.
  const factory ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.blobStorage(
    ArcKubernetesFluxConfigurationBlobStorage blobStorage,
  ) = ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage;

  /// Sets `bucket`.
  const factory ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.bucket(
    ArcKubernetesFluxConfigurationBucket bucket,
  ) = ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket;

  /// Sets `git_repository`.
  const factory ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.gitRepository(
    ArcKubernetesFluxConfigurationGitRepository gitRepository,
  ) = ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice;

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

/// The [ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.blobStorage] choice: sets `blob_storage`.
final class ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage
    extends ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBlobStorage(
    this.blobStorage,
  );

  final ArcKubernetesFluxConfigurationBlobStorage blobStorage;

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

/// The [ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.bucket] choice: sets `bucket`.
final class ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket
    extends ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryBucket(
    this.bucket,
  );

  final ArcKubernetesFluxConfigurationBucket bucket;

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

/// The [ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository.gitRepository] choice: sets `git_repository`.
final class ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice
    extends ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository {
  const ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepositoryChoice(
    this.gitRepository,
  );

  final ArcKubernetesFluxConfigurationGitRepository gitRepository;

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
/// `azurerm_arc_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class ArcKubernetesFluxConfigurationBlobStorage {
  const ArcKubernetesFluxConfigurationBlobStorage({
    required this.accountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal,
    required this.containerId,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  final ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal
  accountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal;

  final TfArg<String> containerId;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

  @internal
  Map<String, Object?> encode() => {
    ...accountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.encode(),
    'container_id': containerId.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
  };
}

/// Exactly one of `account_key`, `local_auth_reference`, `sas_token`, `service_principal` on the `blob_storage` block of `azurerm_arc_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accountKey(...)`.
sealed class ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal {
  const ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal();

  /// Sets `account_key`.
  const factory ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.accountKey(
    Sensitive<String> accountKey,
  ) = ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalAccountKey;

  /// Sets `local_auth_reference`.
  const factory ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.localAuthReference(
    TfArg<String> localAuthReference,
  ) = ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalLocalAuthReference;

  /// Sets `sas_token`.
  const factory ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.sasToken(
    Sensitive<String> sasToken,
  ) = ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalSasToken;

  /// Sets `service_principal`.
  const factory ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.servicePrincipal(
    ArcKubernetesFluxConfigurationServicePrincipal servicePrincipal,
  ) = ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.accountKey] choice: sets `account_key`.
final class ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalAccountKey
    extends
        ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal {
  const ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalAccountKey(
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

/// The [ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.localAuthReference] choice: sets `local_auth_reference`.
final class ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalLocalAuthReference
    extends
        ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal {
  const ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalLocalAuthReference(
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

/// The [ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.sasToken] choice: sets `sas_token`.
final class ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalSasToken
    extends
        ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal {
  const ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalSasToken(
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

/// The [ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal.servicePrincipal] choice: sets `service_principal`.
final class ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalChoice
    extends
        ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipal {
  const ArcKubernetesFluxConfigurationBlobStorageAccountKeyOrLocalAuthReferenceOrSasTokenOrServicePrincipalChoice(
    this.servicePrincipal,
  );

  final ArcKubernetesFluxConfigurationServicePrincipal servicePrincipal;

  @internal
  @override
  String get blockKey => 'service_principal';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal': servicePrincipal.encode(),
  };
}

/// Typed helper for the `blob_storage.service_principal` block of
/// `azurerm_arc_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class ArcKubernetesFluxConfigurationServicePrincipal {
  const ArcKubernetesFluxConfigurationServicePrincipal({
    required this.client,
    this.clientCertificatePassword,
    this.clientCertificateSendChain,
    required this.clientId,
    required this.tenantId,
  });

  final ArcKubernetesFluxConfigurationClient client;

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

/// Exactly one of `client_certificate_base64`, `client_secret` on the `blob_storage.service_principal` block of `azurerm_arc_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.clientCertificateBase64(...)`.
sealed class ArcKubernetesFluxConfigurationClient {
  const ArcKubernetesFluxConfigurationClient();

  /// Sets `client_certificate_base64`.
  const factory ArcKubernetesFluxConfigurationClient.clientCertificateBase64(
    Sensitive<String> clientCertificateBase64,
  ) = ArcKubernetesFluxConfigurationClientCertificateBase64;

  /// Sets `client_secret`.
  const factory ArcKubernetesFluxConfigurationClient.clientSecret(
    Sensitive<String> clientSecret,
  ) = ArcKubernetesFluxConfigurationClientSecret;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ArcKubernetesFluxConfigurationClient.clientCertificateBase64] choice: sets `client_certificate_base64`.
final class ArcKubernetesFluxConfigurationClientCertificateBase64
    extends ArcKubernetesFluxConfigurationClient {
  const ArcKubernetesFluxConfigurationClientCertificateBase64(
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

/// The [ArcKubernetesFluxConfigurationClient.clientSecret] choice: sets `client_secret`.
final class ArcKubernetesFluxConfigurationClientSecret
    extends ArcKubernetesFluxConfigurationClient {
  const ArcKubernetesFluxConfigurationClientSecret(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// Typed helper for the `bucket` block of
/// `azurerm_arc_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class ArcKubernetesFluxConfigurationBucket {
  const ArcKubernetesFluxConfigurationBucket({
    required this.accessKeyOrLocalAuthReference,
    required this.bucketName,
    this.secretKeyBase64,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.tlsEnabled,
    required this.url,
  });

  final ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference
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

/// Exactly one of `access_key`, `local_auth_reference` on the `bucket` block of `azurerm_arc_kubernetes_flux_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accessKey(...)`.
sealed class ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference();

  /// Sets `access_key`.
  const factory ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.accessKey(
    TfArg<String> accessKey,
  ) = ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey;

  /// Sets `local_auth_reference`.
  const factory ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.localAuthReference(
    TfArg<String> localAuthReference,
  ) = ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.accessKey] choice: sets `access_key`.
final class ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey
    extends ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceAccessKey(
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

/// The [ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference.localAuthReference] choice: sets `local_auth_reference`.
final class ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice
    extends ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReference {
  const ArcKubernetesFluxConfigurationBucketAccessKeyOrLocalAuthReferenceChoice(
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
/// `azurerm_arc_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class ArcKubernetesFluxConfigurationGitRepository {
  const ArcKubernetesFluxConfigurationGitRepository({
    this.httpsCaCertBase64,
    this.httpsKeyBase64,
    this.httpsUser,
    this.localAuthReference,
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
    'reference_type': referenceType.toTfJson(),
    'reference_value': referenceValue.toTfJson(),
    'ssh_known_hosts_base64': ?sshKnownHostsBase64?.toTfJson(),
    'ssh_private_key_base64': ?sshPrivateKeyBase64?.toTfJson(),
    'sync_interval_in_seconds': ?syncIntervalInSeconds?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `kustomizations` block of
/// `azurerm_arc_kubernetes_flux_configuration` (derived from provider schema).
@immutable
final class ArcKubernetesFluxConfigurationKustomizations {
  const ArcKubernetesFluxConfigurationKustomizations({
    this.dependsOn,
    this.garbageCollectionEnabled,
    required this.name,
    this.path,
    this.recreatingEnabled,
    this.retryIntervalInSeconds,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  final TfArg<List<String>>? dependsOn;

  final TfArg<bool>? garbageCollectionEnabled;

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<bool>? recreatingEnabled;

  final TfArg<num>? retryIntervalInSeconds;

  final TfArg<num>? syncIntervalInSeconds;

  final TfArg<num>? timeoutInSeconds;

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
  };
}

/// Factory wrapper for `azurerm_arc_kubernetes_flux_configuration`.
final class AzurermArcKubernetesFluxConfiguration extends Resource {
  static const String tfType = 'azurerm_arc_kubernetes_flux_configuration';

  AzurermArcKubernetesFluxConfiguration(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<bool>? continuousReconciliationEnabled,
    required TfArg<String> name,
    required TfArg<String> namespace,
    ArcKubernetesFluxConfigurationScope? scope,
    required ArcKubernetesFluxConfigurationBlobStorageOrBucketOrGitRepository
    blobStorageOrBucketOrGitRepository,
    required List<ArcKubernetesFluxConfigurationKustomizations> kustomizations,
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
      _azurermArcKubernetesFluxConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcKubernetesFluxConfiguration>`.
  RefTo<AzurermArcKubernetesFluxConfiguration> get ref => RefTo.of(this);

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
