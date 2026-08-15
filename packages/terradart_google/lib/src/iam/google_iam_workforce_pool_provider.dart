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

/// Trust binding for [GoogleIamWorkforcePoolProvider]. Sealed so the
/// provider's `exactly_one_of` across `oidc` / `saml` is exhaustive.
sealed class IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderTrustSource();

  String get blockKey;

  List<Map<String, Object?>> encode();
}

/// OIDC identity provider.
@immutable
final class IamWorkforcePoolProviderOidcTrust
    extends IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderOidcTrust({
    required this.issuerUri,
    required this.clientId,
  });

  final TfArg<String> issuerUri;
  final TfArg<String> clientId;

  @override
  String get blockKey => 'oidc';

  @override
  List<Map<String, Object?>> encode() => [
    {'issuer_uri': issuerUri.toTfJson(), 'client_id': clientId.toTfJson()},
  ];
}

/// SAML 2.0 identity provider.
@immutable
final class IamWorkforcePoolProviderSamlTrust
    extends IamWorkforcePoolProviderTrustSource {
  const IamWorkforcePoolProviderSamlTrust({required this.idpMetadataXml});

  final TfArg<String> idpMetadataXml;

  @override
  String get blockKey => 'saml';

  @override
  List<Map<String, Object?>> encode() => [
    {'idp_metadata_xml': idpMetadataXml.toTfJson()},
  ];
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
    if (queryParameters != null) 'query_parameters': queryParameters!.encode(),
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

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `extended_attributes_oauth2_client.client_secret.value` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue({
    this.plainText,
    this.plainTextWo,
    this.plainTextWoVersion,
  });

  final TfArg<String>? plainText;

  final TfArg<String>? plainTextWo;

  final TfArg<String>? plainTextWoVersion;

  Map<String, Object?> encode() => {
    if (plainText != null) 'plain_text': plainText!.toTfJson(),
    if (plainTextWo != null) 'plain_text_wo': plainTextWo!.toTfJson(),
    if (plainTextWoVersion != null)
      'plain_text_wo_version': plainTextWoVersion!.toTfJson(),
  };
}

/// Typed helper for the `extended_attributes_oauth2_client.query_parameters` block of
/// `google_iam_workforce_pool_provider` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters {
  const IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters({
    this.filter,
  });

  final TfArg<String>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': filter!.toTfJson(),
  };
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
/// [trustSource] is sealed so MM `exactly_one_of` (`oidc` / `saml`)
/// is compile-time. This leftover is apply-excluded: the parent pool
/// needs `organizations/{org-id}`.
///
/// Example (OIDC):
/// ```dart
/// GoogleIamWorkforcePoolProvider(
///   localName: 'oidc',
///   location: TfArg.literal('global'),
///   workforcePoolId: TfArg.ref(pool.workforcePoolIdRef),
///   providerId: TfArg.literal('terradart-oidc'),
///   trustSource: IamWorkforcePoolProviderOidcTrust(
///     issuerUri: TfArg.literal('https://accounts.google.com'),
///     clientId: TfArg.literal('client.apps.googleusercontent.com'),
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'workforce_pool_id': workforcePoolId,
           'provider_id': providerId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (attributeMapping != null) 'attribute_mapping': attributeMapping,
           if (attributeCondition != null)
             'attribute_condition': attributeCondition,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           trustSource.blockKey: TfArg.literal(trustSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
