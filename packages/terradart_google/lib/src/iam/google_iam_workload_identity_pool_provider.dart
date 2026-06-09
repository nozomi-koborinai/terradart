// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_provider`.
const Set<String> _googleIamWorkloadIdentityPoolProviderSensitive = <String>{};

// ===========================================================================
// IamWorkloadIdentityPoolProviderTrustSource — sealed (Oidc | Aws | Saml | X509)
// ===========================================================================

/// Trust binding for [GoogleIamWorkloadIdentityPoolProvider]. Sealed so the
/// provider's `exactly_one_of` across `oidc` / `aws` / `saml` / `x509` is
/// exhaustive at the type level.
sealed class IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderTrustSource();

  /// argMap key under which this trust source is emitted.
  String get blockKey;

  /// JSON fragment for the block value (single-element list — all four
  /// underlying blocks are `nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// OIDC trust configuration (generic OIDC / GitHub Actions).
@immutable
final class IamWorkloadIdentityPoolProviderOidcTrust
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderOidcTrust({
    this.allowedAudiences,
    required this.issuerUri,
    this.jwksJson,
  });

  final List<TfArg<String>>? allowedAudiences;
  final TfArg<String> issuerUri;
  final TfArg<String>? jwksJson;

  @override
  String get blockKey => 'oidc';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (allowedAudiences != null)
        'allowed_audiences': allowedAudiences!
            .map((a) => a.toTfJson())
            .toList(),
      'issuer_uri': issuerUri.toTfJson(),
      if (jwksJson != null) 'jwks_json': jwksJson!.toTfJson(),
    },
  ];
}

/// AWS trust configuration.
@immutable
final class IamWorkloadIdentityPoolProviderAwsTrust
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderAwsTrust({this.accountId});

  final TfArg<String>? accountId;

  @override
  String get blockKey => 'aws';

  @override
  List<Map<String, Object?>> encode() => [
    {if (accountId != null) 'account_id': accountId!.toTfJson()},
  ];
}

/// SAML 2.0 trust configuration.
@immutable
final class IamWorkloadIdentityPoolProviderSamlTrust
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderSamlTrust({
    required this.idpMetadataXml,
  });

  final TfArg<String> idpMetadataXml;

  @override
  String get blockKey => 'saml';

  @override
  List<Map<String, Object?>> encode() => [
    {'idp_metadata_xml': idpMetadataXml.toTfJson()},
  ];
}

/// X.509 certificate trust configuration.
@immutable
final class IamWorkloadIdentityPoolProviderX509Trust
    extends IamWorkloadIdentityPoolProviderTrustSource {
  const IamWorkloadIdentityPoolProviderX509Trust({this.trustStore});

  final IamWorkloadIdentityPoolProviderX509TrustStore? trustStore;

  @override
  String get blockKey => 'x509';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (trustStore != null) 'trust_store': [trustStore!.encode()],
    },
  ];
}

/// Trust store for [IamWorkloadIdentityPoolProviderX509Trust].
@immutable
class IamWorkloadIdentityPoolProviderX509TrustStore {
  const IamWorkloadIdentityPoolProviderX509TrustStore({
    this.trustAnchors,
    this.intermediateCas,
  });

  final List<IamWorkloadIdentityPoolProviderX509PemCertificate>? trustAnchors;
  final List<IamWorkloadIdentityPoolProviderX509PemCertificate>?
  intermediateCas;

  Map<String, Object?> encode() => {
    if (trustAnchors != null)
      'trust_anchors': trustAnchors!.map((a) => a.encode()).toList(),
    if (intermediateCas != null)
      'intermediate_cas': intermediateCas!.map((a) => a.encode()).toList(),
  };
}

/// PEM certificate entry for X.509 federation trust stores.
@immutable
class IamWorkloadIdentityPoolProviderX509PemCertificate {
  const IamWorkloadIdentityPoolProviderX509PemCertificate({
    this.pemCertificate,
  });

  final TfArg<String>? pemCertificate;

  Map<String, Object?> encode() => {
    if (pemCertificate != null) 'pem_certificate': pemCertificate!.toTfJson(),
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
///   `TfArg.ref(pool.nameRef)` from [GoogleIamWorkloadIdentityPool].
/// - `workloadIdentityPoolProviderId`: provider ID (4–32 chars, `[a-z0-9-]`).
/// - [trustSource]: exactly one trust binding — sealed so the API's
///   `exactly_one_of` (`oidc` / `aws` / `saml` / `x509`) is enforced at
///   compile time.
///
/// Example (GitHub Actions OIDC):
/// ```dart
/// final githubProvider = GoogleIamWorkloadIdentityPoolProvider(
///   localName: 'github_provider',
///   workloadIdentityPoolId: TfArg.ref(pool.nameRef),
///   workloadIdentityPoolProviderId: TfArg.literal('github-actions'),
///   displayName: TfArg.literal('GitHub Actions'),
///   attributeCondition: TfArg.literal(
///     'assertion.repository_owner == "my-org"',
///   ),
///   attributeMapping: {
///     'google.subject': TfArg.literal('assertion.repository'),
///     'attribute.repository_owner': TfArg.literal(
///       'assertion.repository_owner',
///     ),
///   },
///   trustSource: IamWorkloadIdentityPoolProviderOidcTrust(
///     allowedAudiences: [TfArg.literal('https://github.com/my-org')],
///     issuerUri: TfArg.literal(
///       'https://token.actions.githubusercontent.com',
///     ),
///   ),
/// );
/// ```
final class GoogleIamWorkloadIdentityPoolProvider extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_provider';

  GoogleIamWorkloadIdentityPoolProvider({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'workload_identity_pool_provider_id': workloadIdentityPoolProviderId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (attributeCondition != null)
             'attribute_condition': attributeCondition,
           if (attributeMapping != null) 'attribute_mapping': attributeMapping,
           if (project != null) 'project': project,
           trustSource.blockKey: TfArg.literal(trustSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
