// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_provider`.
const Set<String> _googleIamWorkforcePoolProviderSensitive = <String>{
  'extended_attributes_oauth2_client.client_secret.value.plain_text',
  'extra_attributes_oauth2_client.client_secret.value.plain_text',
  'oidc.client_secret.value.plain_text',
};

/// `scim_usage` — whether authorization checks use SCIM-managed groups
/// instead of the `google.groups` attribute mapping.
enum IamWorkforcePoolProviderScimUsage implements TerraformEnum {
  scimUsageUnspecified('SCIM_USAGE_UNSPECIFIED'),
  enabledForGroups('ENABLED_FOR_GROUPS');

  const IamWorkforcePoolProviderScimUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `saml`, `oidc` on `google_iam_workforce_pool_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.saml(...)`.
sealed class IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderTrustSource();

  /// Sets `saml`.
  const factory IamWorkforcePoolProviderTrustSource.saml(
    IamWorkforcePoolProviderSaml saml,
  ) = IamWorkforcePoolProviderTrustSourceSaml;

  /// Sets `oidc`.
  const factory IamWorkforcePoolProviderTrustSource.oidc(
    IamWorkforcePoolProviderOidc oidc,
  ) = IamWorkforcePoolProviderTrustSourceOidc;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamWorkforcePoolProviderTrustSource.saml] choice: sets `saml`.
final class IamWorkforcePoolProviderTrustSourceSaml
    extends IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderTrustSourceSaml(this.saml);

  final IamWorkforcePoolProviderSaml saml;

  @override
  String get blockKey => 'saml';

  @override
  Map<String, Object?> encode() => {'saml': saml.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'saml': TfArg.literal(saml.encode()),
  };
}

/// The [IamWorkforcePoolProviderTrustSource.oidc] choice: sets `oidc`.
final class IamWorkforcePoolProviderTrustSourceOidc
    extends IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderTrustSourceOidc(this.oidc);

  final IamWorkforcePoolProviderOidc oidc;

  @override
  String get blockKey => 'oidc';

  @override
  Map<String, Object?> encode() => {'oidc': oidc.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oidc': TfArg.literal(oidc.encode()),
  };
}

/// At most one of `extended_attributes_oauth2_client`, `scim_usage` on `google_iam_workforce_pool_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.extendedAttributesOauth2Client(...)`.
sealed class IamWorkforcePoolProviderGroupSource {
  const IamWorkforcePoolProviderGroupSource();

  /// Sets `extended_attributes_oauth2_client`.
  const factory IamWorkforcePoolProviderGroupSource.extendedAttributesOauth2Client(
    IamWorkforcePoolProviderExtendedAttributesOauth2Client
    extendedAttributesOauth2Client,
  ) = IamWorkforcePoolProviderGroupSourceExtendedAttributesOauth2Client;

  /// Sets `scim_usage`.
  const factory IamWorkforcePoolProviderGroupSource.scimUsage(
    TfArg<IamWorkforcePoolProviderScimUsage> scimUsage,
  ) = IamWorkforcePoolProviderGroupSourceScimUsage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamWorkforcePoolProviderGroupSource.extendedAttributesOauth2Client] choice: sets `extended_attributes_oauth2_client`.
final class IamWorkforcePoolProviderGroupSourceExtendedAttributesOauth2Client
    extends IamWorkforcePoolProviderGroupSource {
  const IamWorkforcePoolProviderGroupSourceExtendedAttributesOauth2Client(
    this.extendedAttributesOauth2Client,
  );

  final IamWorkforcePoolProviderExtendedAttributesOauth2Client
  extendedAttributesOauth2Client;

  @override
  String get blockKey => 'extended_attributes_oauth2_client';

  @override
  Map<String, Object?> encode() => {
    'extended_attributes_oauth2_client': extendedAttributesOauth2Client
        .encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'extended_attributes_oauth2_client': TfArg.literal(
      extendedAttributesOauth2Client.encode(),
    ),
  };
}

/// The [IamWorkforcePoolProviderGroupSource.scimUsage] choice: sets `scim_usage`.
final class IamWorkforcePoolProviderGroupSourceScimUsage
    extends IamWorkforcePoolProviderGroupSource {
  const IamWorkforcePoolProviderGroupSourceScimUsage(this.scimUsage);

  final TfArg<IamWorkforcePoolProviderScimUsage> scimUsage;

  @override
  String get blockKey => 'scim_usage';

  @override
  Map<String, Object?> encode() => {'scim_usage': scimUsage.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'scim_usage': scimUsage};
}

/// Typed helper for the `extended_attributes_oauth2_client` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2Client {
  const IamWorkforcePoolProviderExtendedAttributesOauth2Client({
    required this.attributesType,
    required this.clientId,
    required this.issuerUri,
    required this.clientSecret,
    this.queryParameters,
  });

  final TfArg<String> attributesType;

  final TfArg<String> clientId;

  final TfArg<String> issuerUri;

  final IamWorkforcePoolProviderClientSecret clientSecret;

  final IamWorkforcePoolProviderQueryParameters? queryParameters;

  Map<String, Object?> encode() => {
    'attributes_type': attributesType.toTfJson(),
    'client_id': clientId.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'client_secret': clientSecret.encode(),
    'query_parameters': ?queryParameters?.encode(),
  };
}

/// Typed helper for the `extended_attributes_oauth2_client.client_secret` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IamWorkforcePoolProviderClientSecret {
  const IamWorkforcePoolProviderClientSecret({this.value});

  final IamWorkforcePoolProviderValue? value;

  Map<String, Object?> encode() => {'value': ?value?.encode()};
}

/// Typed helper for the `extended_attributes_oauth2_client.client_secret.value` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IamWorkforcePoolProviderValue {
  const IamWorkforcePoolProviderValue({
    required this.plainText,
    this.plainTextWoVersion,
  });

  final IamWorkforcePoolProviderPlainText plainText;

  final TfArg<String>? plainTextWoVersion;

  Map<String, Object?> encode() => {
    ...plainText.encode(),
    'plain_text_wo_version': ?plainTextWoVersion?.toTfJson(),
  };
}

/// Exactly one of `plain_text`, `plain_text_wo` on the `extended_attributes_oauth2_client.client_secret.value` block of `google_iam_workforce_pool_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.plainText(...)`.
sealed class IamWorkforcePoolProviderPlainText {
  const IamWorkforcePoolProviderPlainText();

  /// Sets `plain_text`.
  const factory IamWorkforcePoolProviderPlainText.plainText(
    TfArg<String> plainText,
  ) = IamWorkforcePoolProviderPlainTextChoice;

  /// Sets `plain_text_wo`.
  const factory IamWorkforcePoolProviderPlainText.plainTextWo(
    TfArg<String> plainTextWo,
  ) = IamWorkforcePoolProviderPlainTextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IamWorkforcePoolProviderPlainText.plainText] choice: sets `plain_text`.
final class IamWorkforcePoolProviderPlainTextChoice
    extends IamWorkforcePoolProviderPlainText {
  const IamWorkforcePoolProviderPlainTextChoice(this.plainText);

  final TfArg<String> plainText;

  @override
  String get blockKey => 'plain_text';

  @override
  Map<String, Object?> encode() => {'plain_text': plainText.toTfJson()};
}

/// The [IamWorkforcePoolProviderPlainText.plainTextWo] choice: sets `plain_text_wo`.
final class IamWorkforcePoolProviderPlainTextWo
    extends IamWorkforcePoolProviderPlainText {
  const IamWorkforcePoolProviderPlainTextWo(this.plainTextWo);

  final TfArg<String> plainTextWo;

  @override
  String get blockKey => 'plain_text_wo';

  @override
  Map<String, Object?> encode() => {'plain_text_wo': plainTextWo.toTfJson()};
}

/// Typed helper for the `extended_attributes_oauth2_client.query_parameters` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IamWorkforcePoolProviderQueryParameters {
  const IamWorkforcePoolProviderQueryParameters({this.filter});

  final TfArg<String>? filter;

  Map<String, Object?> encode() => {'filter': ?filter?.toTfJson()};
}

/// Typed helper for the `extra_attributes_oauth2_client` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtraAttributesOauth2Client {
  const IamWorkforcePoolProviderExtraAttributesOauth2Client({
    required this.attributesType,
    required this.clientId,
    required this.issuerUri,
    required this.clientSecret,
    this.queryParameters,
  });

  final TfArg<IamWorkforcePoolProviderAttributesType> attributesType;

  final TfArg<String> clientId;

  final TfArg<String> issuerUri;

  final IamWorkforcePoolProviderClientSecret clientSecret;

  final IamWorkforcePoolProviderQueryParameters? queryParameters;

  Map<String, Object?> encode() => {
    'attributes_type': attributesType.toTfJson(),
    'client_id': clientId.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'client_secret': clientSecret.encode(),
    'query_parameters': ?queryParameters?.encode(),
  };
}

/// `attributes_type` — derived from the provider schema description.
enum IamWorkforcePoolProviderAttributesType implements TerraformEnum {
  azureAdGroupsMail('AZURE_AD_GROUPS_MAIL'),
  azureAdGroupsId('AZURE_AD_GROUPS_ID'),
  azureAdGroupsDisplayName('AZURE_AD_GROUPS_DISPLAY_NAME');

  const IamWorkforcePoolProviderAttributesType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `oidc` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderOidc {
  const IamWorkforcePoolProviderOidc({
    required this.clientId,
    required this.issuerUri,
    this.jwksJson,
    this.clientSecret,
    this.webSsoConfig,
  });

  final TfArg<String> clientId;

  final TfArg<String> issuerUri;

  final TfArg<String>? jwksJson;

  final IamWorkforcePoolProviderClientSecret? clientSecret;

  final IamWorkforcePoolProviderWebSsoConfig? webSsoConfig;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'jwks_json': ?jwksJson?.toTfJson(),
    'client_secret': ?clientSecret?.encode(),
    'web_sso_config': ?webSsoConfig?.encode(),
  };
}

/// Typed helper for the `oidc.web_sso_config` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderWebSsoConfig {
  const IamWorkforcePoolProviderWebSsoConfig({
    this.additionalScopes,
    required this.assertionClaimsBehavior,
    required this.responseType,
  });

  final TfArg<List<String>>? additionalScopes;

  final TfArg<IamWorkforcePoolProviderAssertionClaimsBehavior>
  assertionClaimsBehavior;

  final TfArg<IamWorkforcePoolProviderResponseType> responseType;

  Map<String, Object?> encode() => {
    'additional_scopes': ?additionalScopes?.toTfJson(),
    'assertion_claims_behavior': assertionClaimsBehavior.toTfJson(),
    'response_type': responseType.toTfJson(),
  };
}

/// `assertion_claims_behavior` — derived from the provider schema description.
enum IamWorkforcePoolProviderAssertionClaimsBehavior implements TerraformEnum {
  mergeUserInfoOverIdTokenClaims('MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS'),
  onlyIdTokenClaims('ONLY_ID_TOKEN_CLAIMS');

  const IamWorkforcePoolProviderAssertionClaimsBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// `response_type` — derived from the provider schema description.
enum IamWorkforcePoolProviderResponseType implements TerraformEnum {
  code('CODE'),
  idToken('ID_TOKEN');

  const IamWorkforcePoolProviderResponseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saml` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderSaml {
  const IamWorkforcePoolProviderSaml({required this.idpMetadataXml});

  final TfArg<String> idpMetadataXml;

  Map<String, Object?> encode() => {
    'idp_metadata_xml': idpMetadataXml.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_workforce_pool_provider`.
///
/// A configuration for an external identity provider.
///
/// IAM **workforce pool provider** — an OIDC or SAML IdP binding
/// inside an organization-scoped [GoogleIamWorkforcePool].
///
/// `trustSource` is sealed so MM `exactly_one_of` (`oidc` / `saml`)
/// is compile-time. This leftover is apply-excluded: the parent pool
/// needs `organizations/{org-id}`.
///
/// Example (OIDC):
/// ```dart
/// GoogleIamWorkforcePoolProvider(
///   localName: 'oidc',
///   location: .literal('global'),
///   workforcePoolId: .ref(pool.workforcePoolIdRef),
///   providerId: .literal('terradart-oidc'),
///   trustSource: .oidc(
///     .new(
///       issuerUri: .literal('https://accounts.google.com'),
///       clientId: .literal('client.apps.googleusercontent.com'),
///     ),
///   ),
/// );
/// ```
final class GoogleIamWorkforcePoolProvider extends Resource {
  static const String tfType = 'google_iam_workforce_pool_provider';

  GoogleIamWorkforcePoolProvider({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> workforcePoolId,
    required TfArg<String> providerId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<Map<String, String>>? attributeMapping,
    TfArg<String>? attributeCondition,
    required IamWorkforcePoolProviderTrustSource trustSource,
    TfArg<String>? deletionPolicy,
    IamWorkforcePoolProviderGroupSource? groupSource,
    IamWorkforcePoolProviderExtraAttributesOauth2Client?
    extraAttributesOauth2Client,
    TfArg<bool>? detailedAuditLogging,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'workforce_pool_id': workforcePoolId,
           'provider_id': providerId,
           'display_name': ?displayName,
           'description': ?description,
           'disabled': ?disabled,
           'attribute_mapping': ?attributeMapping,
           'attribute_condition': ?attributeCondition,
           'deletion_policy': ?deletionPolicy,
           ...trustSource.argMap,
           ...?groupSource?.argMap,
           if (extraAttributesOauth2Client != null)
             'extra_attributes_oauth2_client': TfArg.literal(
               extraAttributesOauth2Client.encode(),
             ),
           'detailed_audit_logging': ?detailedAuditLogging,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolProvider>`.
  RefTo<GoogleIamWorkforcePoolProvider> get ref => RefTo.of(this);

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

  /// Reference to `detailed_audit_logging` attribute.
  TfRef<bool> get detailedAuditLogging =>
      TfRef.attribute<bool>(this, 'detailed_audit_logging');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `provider_id` attribute.
  TfRef<String> get providerId => TfRef.attribute<String>(this, 'provider_id');

  /// Reference to `scim_usage` attribute.
  TfRef<String> get scimUsage => TfRef.attribute<String>(this, 'scim_usage');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolId =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}
