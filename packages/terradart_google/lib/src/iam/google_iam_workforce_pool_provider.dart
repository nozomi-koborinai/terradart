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

  final IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret
  clientSecret;

  final IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters?
  queryParameters;

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
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret({
    this.value,
  });

  final IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue?
  value;

  Map<String, Object?> encode() => {'value': ?value?.encode()};
}

/// Typed helper for the `extended_attributes_oauth2_client.client_secret.value` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue({
    required this.plainText,
    this.plainTextWoVersion,
  });

  final IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText
  plainText;

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
sealed class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText();

  /// Sets `plain_text`.
  const factory IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText.plainText(
    TfArg<String> plainText,
  ) = IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextChoice;

  /// Sets `plain_text_wo`.
  const factory IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText.plainTextWo(
    TfArg<String> plainTextWo,
  ) = IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText.plainText] choice: sets `plain_text`.
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextChoice
    extends
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextChoice(
    this.plainText,
  );

  final TfArg<String> plainText;

  @override
  String get blockKey => 'plain_text';

  @override
  Map<String, Object?> encode() => {'plain_text': plainText.toTfJson()};
}

/// The [IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText.plainTextWo] choice: sets `plain_text_wo`.
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextWo
    extends
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextWo(
    this.plainTextWo,
  );

  final TfArg<String> plainTextWo;

  @override
  String get blockKey => 'plain_text_wo';

  @override
  Map<String, Object?> encode() => {'plain_text_wo': plainTextWo.toTfJson()};
}

/// Typed helper for the `extended_attributes_oauth2_client.query_parameters` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters({
    this.filter,
  });

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

  final TfArg<IamWorkforcePoolProviderExtraAttributesOauth2ClientAttributesType>
  attributesType;

  final TfArg<String> clientId;

  final TfArg<String> issuerUri;

  final IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecret
  clientSecret;

  final IamWorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters?
  queryParameters;

  Map<String, Object?> encode() => {
    'attributes_type': attributesType.toTfJson(),
    'client_id': clientId.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'client_secret': clientSecret.encode(),
    'query_parameters': ?queryParameters?.encode(),
  };
}

/// `attributes_type` — derived from the provider schema description.
enum IamWorkforcePoolProviderExtraAttributesOauth2ClientAttributesType
    implements TerraformEnum {
  azureAdGroupsMail('AZURE_AD_GROUPS_MAIL'),
  azureAdGroupsId('AZURE_AD_GROUPS_ID'),
  azureAdGroupsDisplayName('AZURE_AD_GROUPS_DISPLAY_NAME');

  const IamWorkforcePoolProviderExtraAttributesOauth2ClientAttributesType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `extra_attributes_oauth2_client.client_secret` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecret {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecret({
    this.value,
  });

  final IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue?
  value;

  Map<String, Object?> encode() => {'value': ?value?.encode()};
}

/// Typed helper for the `extra_attributes_oauth2_client.client_secret.value` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue({
    required this.plainText,
    this.plainTextWoVersion,
  });

  final IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText
  plainText;

  final TfArg<String>? plainTextWoVersion;

  Map<String, Object?> encode() => {
    ...plainText.encode(),
    'plain_text_wo_version': ?plainTextWoVersion?.toTfJson(),
  };
}

/// Exactly one of `plain_text`, `plain_text_wo` on the `extra_attributes_oauth2_client.client_secret.value` block of `google_iam_workforce_pool_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.plainText(...)`.
sealed class IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText();

  /// Sets `plain_text`.
  const factory IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText.plainText(
    TfArg<String> plainText,
  ) = IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextChoice;

  /// Sets `plain_text_wo`.
  const factory IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText.plainTextWo(
    TfArg<String> plainTextWo,
  ) = IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText.plainText] choice: sets `plain_text`.
final class IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextChoice
    extends
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextChoice(
    this.plainText,
  );

  final TfArg<String> plainText;

  @override
  String get blockKey => 'plain_text';

  @override
  Map<String, Object?> encode() => {'plain_text': plainText.toTfJson()};
}

/// The [IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText.plainTextWo] choice: sets `plain_text_wo`.
final class IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextWo
    extends
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextWo(
    this.plainTextWo,
  );

  final TfArg<String> plainTextWo;

  @override
  String get blockKey => 'plain_text_wo';

  @override
  Map<String, Object?> encode() => {'plain_text_wo': plainTextWo.toTfJson()};
}

/// Typed helper for the `extra_attributes_oauth2_client.query_parameters` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters {
  const IamWorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters({
    this.filter,
  });

  final TfArg<String>? filter;

  Map<String, Object?> encode() => {'filter': ?filter?.toTfJson()};
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

  final IamWorkforcePoolProviderOidcClientSecret? clientSecret;

  final IamWorkforcePoolProviderOidcWebSsoConfig? webSsoConfig;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
    'jwks_json': ?jwksJson?.toTfJson(),
    'client_secret': ?clientSecret?.encode(),
    'web_sso_config': ?webSsoConfig?.encode(),
  };
}

/// Typed helper for the `oidc.client_secret` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderOidcClientSecret {
  const IamWorkforcePoolProviderOidcClientSecret({this.value});

  final IamWorkforcePoolProviderOidcClientSecretValue? value;

  Map<String, Object?> encode() => {'value': ?value?.encode()};
}

/// Typed helper for the `oidc.client_secret.value` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderOidcClientSecretValue {
  const IamWorkforcePoolProviderOidcClientSecretValue({
    required this.plainText,
    this.plainTextWoVersion,
  });

  final IamWorkforcePoolProviderOidcClientSecretValuePlainText plainText;

  final TfArg<String>? plainTextWoVersion;

  Map<String, Object?> encode() => {
    ...plainText.encode(),
    'plain_text_wo_version': ?plainTextWoVersion?.toTfJson(),
  };
}

/// Exactly one of `plain_text`, `plain_text_wo` on the `oidc.client_secret.value` block of `google_iam_workforce_pool_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.plainText(...)`.
sealed class IamWorkforcePoolProviderOidcClientSecretValuePlainText {
  const IamWorkforcePoolProviderOidcClientSecretValuePlainText();

  /// Sets `plain_text`.
  const factory IamWorkforcePoolProviderOidcClientSecretValuePlainText.plainText(
    TfArg<String> plainText,
  ) = IamWorkforcePoolProviderOidcClientSecretValuePlainTextChoice;

  /// Sets `plain_text_wo`.
  const factory IamWorkforcePoolProviderOidcClientSecretValuePlainText.plainTextWo(
    TfArg<String> plainTextWo,
  ) = IamWorkforcePoolProviderOidcClientSecretValuePlainTextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IamWorkforcePoolProviderOidcClientSecretValuePlainText.plainText] choice: sets `plain_text`.
final class IamWorkforcePoolProviderOidcClientSecretValuePlainTextChoice
    extends IamWorkforcePoolProviderOidcClientSecretValuePlainText {
  const IamWorkforcePoolProviderOidcClientSecretValuePlainTextChoice(
    this.plainText,
  );

  final TfArg<String> plainText;

  @override
  String get blockKey => 'plain_text';

  @override
  Map<String, Object?> encode() => {'plain_text': plainText.toTfJson()};
}

/// The [IamWorkforcePoolProviderOidcClientSecretValuePlainText.plainTextWo] choice: sets `plain_text_wo`.
final class IamWorkforcePoolProviderOidcClientSecretValuePlainTextWo
    extends IamWorkforcePoolProviderOidcClientSecretValuePlainText {
  const IamWorkforcePoolProviderOidcClientSecretValuePlainTextWo(
    this.plainTextWo,
  );

  final TfArg<String> plainTextWo;

  @override
  String get blockKey => 'plain_text_wo';

  @override
  Map<String, Object?> encode() => {'plain_text_wo': plainTextWo.toTfJson()};
}

/// Typed helper for the `oidc.web_sso_config` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderOidcWebSsoConfig {
  const IamWorkforcePoolProviderOidcWebSsoConfig({
    this.additionalScopes,
    required this.assertionClaimsBehavior,
    required this.responseType,
  });

  final TfArg<List<Object?>>? additionalScopes;

  final TfArg<IamWorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior>
  assertionClaimsBehavior;

  final TfArg<IamWorkforcePoolProviderOidcWebSsoConfigResponseType>
  responseType;

  Map<String, Object?> encode() => {
    'additional_scopes': ?additionalScopes?.toTfJson(),
    'assertion_claims_behavior': assertionClaimsBehavior.toTfJson(),
    'response_type': responseType.toTfJson(),
  };
}

/// `assertion_claims_behavior` — derived from the provider schema description.
enum IamWorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior
    implements TerraformEnum {
  mergeUserInfoOverIdTokenClaims('MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS'),
  onlyIdTokenClaims('ONLY_ID_TOKEN_CLAIMS');

  const IamWorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `response_type` — derived from the provider schema description.
enum IamWorkforcePoolProviderOidcWebSsoConfigResponseType
    implements TerraformEnum {
  code('CODE'),
  idToken('ID_TOKEN');

  const IamWorkforcePoolProviderOidcWebSsoConfigResponseType(
    this.terraformValue,
  );
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
///     IamWorkforcePoolProviderOidc(
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
    IamWorkforcePoolProviderExtendedAttributesOauth2Client?
    extendedAttributesOauth2Client,
    IamWorkforcePoolProviderExtraAttributesOauth2Client?
    extraAttributesOauth2Client,
    TfArg<bool>? detailedAuditLogging,
    TfArg<IamWorkforcePoolProviderScimUsage>? scimUsage,
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
           if (extendedAttributesOauth2Client != null)
             'extended_attributes_oauth2_client': TfArg.literal(
               extendedAttributesOauth2Client.encode(),
             ),
           if (extraAttributesOauth2Client != null)
             'extra_attributes_oauth2_client': TfArg.literal(
               extraAttributesOauth2Client.encode(),
             ),
           'detailed_audit_logging': ?detailedAuditLogging,
           'scim_usage': ?scimUsage,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolProvider>`.
  RefTo<GoogleIamWorkforcePoolProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
