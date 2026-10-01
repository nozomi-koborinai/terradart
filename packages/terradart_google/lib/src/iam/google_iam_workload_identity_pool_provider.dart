// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool;

/// Sensitive field paths for `google_iam_workload_identity_pool_provider`.
const Set<String> _googleIamWorkloadIdentityPoolProviderSensitive = <String>{};

/// Exactly one of `aws`, `oidc`, `saml`, `x509` on `google_iam_workload_identity_pool_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.aws(...)`.
sealed class IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSource();

  /// Sets `aws`.
  const factory IamWorkloadIdentityPoolProviderTrustSource.aws(
    IamWorkloadIdentityPoolProviderAws aws,
  ) = IamWorkloadIdentityPoolProviderTrustSourceAws;

  /// Sets `oidc`.
  const factory IamWorkloadIdentityPoolProviderTrustSource.oidc(
    IamWorkloadIdentityPoolProviderOidc oidc,
  ) = IamWorkloadIdentityPoolProviderTrustSourceOidc;

  /// Sets `saml`.
  const factory IamWorkloadIdentityPoolProviderTrustSource.saml(
    IamWorkloadIdentityPoolProviderSaml saml,
  ) = IamWorkloadIdentityPoolProviderTrustSourceSaml;

  /// Sets `x509`.
  const factory IamWorkloadIdentityPoolProviderTrustSource.x509(
    IamWorkloadIdentityPoolProviderX509 x509,
  ) = IamWorkloadIdentityPoolProviderTrustSourceX509;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamWorkloadIdentityPoolProviderTrustSource.aws] choice: sets `aws`.
final class IamWorkloadIdentityPoolProviderTrustSourceAws
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSourceAws(this.aws);

  final IamWorkloadIdentityPoolProviderAws aws;

  @override
  String get blockKey => 'aws';

  @override
  Map<String, Object?> encode() => {'aws': aws.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'aws': TfArg.literal(aws.encode()),
  };
}

/// The [IamWorkloadIdentityPoolProviderTrustSource.oidc] choice: sets `oidc`.
final class IamWorkloadIdentityPoolProviderTrustSourceOidc
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSourceOidc(this.oidc);

  final IamWorkloadIdentityPoolProviderOidc oidc;

  @override
  String get blockKey => 'oidc';

  @override
  Map<String, Object?> encode() => {'oidc': oidc.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oidc': TfArg.literal(oidc.encode()),
  };
}

/// The [IamWorkloadIdentityPoolProviderTrustSource.saml] choice: sets `saml`.
final class IamWorkloadIdentityPoolProviderTrustSourceSaml
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSourceSaml(this.saml);

  final IamWorkloadIdentityPoolProviderSaml saml;

  @override
  String get blockKey => 'saml';

  @override
  Map<String, Object?> encode() => {'saml': saml.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'saml': TfArg.literal(saml.encode()),
  };
}

/// The [IamWorkloadIdentityPoolProviderTrustSource.x509] choice: sets `x509`.
final class IamWorkloadIdentityPoolProviderTrustSourceX509
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSourceX509(this.x509);

  final IamWorkloadIdentityPoolProviderX509 x509;

  @override
  String get blockKey => 'x509';

  @override
  Map<String, Object?> encode() => {'x509': x509.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'x509': TfArg.literal(x509.encode()),
  };
}

/// Typed helper for the `aws` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderAws {
  const IamWorkloadIdentityPoolProviderAws({required this.accountId});

  final TfArg<String> accountId;

  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};
}

/// Typed helper for the `oidc` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderOidc {
  const IamWorkloadIdentityPoolProviderOidc({
    this.allowedAudiences,
    required this.issuerUri,
    this.jwksJson,
  });

  final TfArg<List<String>>? allowedAudiences;

  final TfArg<String> issuerUri;

  final TfArg<String>? jwksJson;

  Map<String, Object?> encode() => {
    'allowed_audiences': ?allowedAudiences?.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'jwks_json': ?jwksJson?.toTfJson(),
  };
}

/// Typed helper for the `saml` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderSaml {
  const IamWorkloadIdentityPoolProviderSaml({required this.idpMetadataXml});

  final TfArg<String> idpMetadataXml;

  Map<String, Object?> encode() => {
    'idp_metadata_xml': idpMetadataXml.toTfJson(),
  };
}

/// Typed helper for the `x509` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderX509 {
  const IamWorkloadIdentityPoolProviderX509({required this.trustStore});

  final IamWorkloadIdentityPoolProviderTrustStore trustStore;

  Map<String, Object?> encode() => {'trust_store': trustStore.encode()};
}

/// Typed helper for the `x509.trust_store` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderTrustStore {
  const IamWorkloadIdentityPoolProviderTrustStore({
    this.intermediateCas,
    required this.trustAnchors,
  });

  final List<IamWorkloadIdentityPoolProviderIntermediateCas>? intermediateCas;

  final List<IamWorkloadIdentityPoolProviderTrustAnchors> trustAnchors;

  Map<String, Object?> encode() => {
    if (intermediateCas != null)
      'intermediate_cas': [for (final e in intermediateCas!) e.encode()],
    'trust_anchors': [for (final e in trustAnchors) e.encode()],
  };
}

/// Typed helper for the `x509.trust_store.intermediate_cas` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderIntermediateCas {
  const IamWorkloadIdentityPoolProviderIntermediateCas({this.pemCertificate});

  final TfArg<String>? pemCertificate;

  Map<String, Object?> encode() => {
    'pem_certificate': ?pemCertificate?.toTfJson(),
  };
}

/// Typed helper for the `x509.trust_store.trust_anchors` block of
/// `google_iam_workload_identity_pool_provider` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolProviderTrustAnchors {
  const IamWorkloadIdentityPoolProviderTrustAnchors({this.pemCertificate});

  final TfArg<String>? pemCertificate;

  Map<String, Object?> encode() => {
    'pem_certificate': ?pemCertificate?.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_workload_identity_pool_provider`.
///
/// A configuration for an external identity provider.
///
/// Configures a **Workload Identity Federation provider** inside an existing
/// [GoogleIamWorkloadIdentityPool] — the trust binding that maps external
/// identities (GitHub Actions OIDC, AWS, SAML, X.509) into GCP subjects.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `workloadIdentityPoolId`: pool ID string **or**
///   `.ref(pool.nameRef)` from [GoogleIamWorkloadIdentityPool].
/// - `workloadIdentityPoolProviderId`: provider ID (4–32 chars, `[a-z0-9-]`).
/// - `trustSource`: exactly one trust binding — sealed so the API's
///   `exactly_one_of` (`oidc` / `aws` / `saml` / `x509`) is enforced at
///   compile time.
///
/// Example (GitHub Actions OIDC):
/// ```dart
/// final githubProvider = GoogleIamWorkloadIdentityPoolProvider(
///   localName: 'github_provider',
///   workloadIdentityPoolId: pool.ref,
///   workloadIdentityPoolProviderId: .literal('github-actions'),
///   displayName: .literal('GitHub Actions'),
///   attributeCondition: .literal('assertion.repository_owner == "my-org"'),
///   attributeMapping: .literal({
///     'google.subject': 'assertion.repository',
///     'attribute.repository_owner': 'assertion.repository_owner',
///   }),
///   trustSource: .oidc(
///     .new(
///       allowedAudiences: .literal(['https://github.com/my-org']),
///       issuerUri: .literal('https://token.actions.githubusercontent.com'),
///     ),
///   ),
/// );
/// ```
final class GoogleIamWorkloadIdentityPoolProvider extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_provider';

  GoogleIamWorkloadIdentityPoolProvider({
    required super.localName,
    required RefTo<GoogleIamWorkloadIdentityPool> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolProviderId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? attributeCondition,
    TfArg<Map<String, String>>? attributeMapping,
    required IamWorkloadIdentityPoolProviderTrustSource trustSource,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId.encodeAs(
             'workload_identity_pool_id',
           ),
           'workload_identity_pool_provider_id': workloadIdentityPoolProviderId,
           'display_name': ?displayName,
           'description': ?description,
           'disabled': ?disabled,
           'attribute_condition': ?attributeCondition,
           'attribute_mapping': ?attributeMapping,
           'project': ?project,
           ...trustSource.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolProvider>`.
  RefTo<GoogleIamWorkloadIdentityPoolProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `attribute_condition` attribute.
  TfRef<String> get attributeCondition =>
      TfRef.attribute<String>(this, 'attribute_condition');

  /// Reference to `attribute_mapping` attribute.
  TfRef<Map<String, String>> get attributeMapping =>
      TfRef.attribute<Map<String, String>>(this, 'attribute_mapping');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_identity_pool_id` attribute.
  TfRef<String> get workloadIdentityPoolId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_id');

  /// Reference to `workload_identity_pool_provider_id` attribute.
  TfRef<String> get workloadIdentityPoolProviderId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_provider_id');
}
