// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_trusted_token_issuer`.
const Set<String> _awsSsoadminTrustedTokenIssuerSensitive = <String>{};

/// Typed helper for the `trusted_token_issuer_configuration` block of
/// `aws_ssoadmin_trusted_token_issuer` (derived from provider schema).
@immutable
final class SsoadminTrustedTokenIssuerTrustedTokenIssuerConfiguration {
  const SsoadminTrustedTokenIssuerTrustedTokenIssuerConfiguration({
    this.oidcJwtConfiguration,
  });

  final List<
    SsoadminTrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration
  >?
  oidcJwtConfiguration;

  Map<String, Object?> encode() => {
    if (oidcJwtConfiguration != null)
      'oidc_jwt_configuration': [
        for (final e in oidcJwtConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `trusted_token_issuer_configuration.oidc_jwt_configuration` block of
/// `aws_ssoadmin_trusted_token_issuer` (derived from provider schema).
@immutable
final class SsoadminTrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration {
  const SsoadminTrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration({
    required this.claimAttributePath,
    required this.identityStoreAttributePath,
    required this.issuerUrl,
    required this.jwksRetrievalOption,
  });

  final TfArg<String> claimAttributePath;

  final TfArg<String> identityStoreAttributePath;

  final TfArg<String> issuerUrl;

  final TfArg<String> jwksRetrievalOption;

  Map<String, Object?> encode() => {
    'claim_attribute_path': claimAttributePath.toTfJson(),
    'identity_store_attribute_path': identityStoreAttributePath.toTfJson(),
    'issuer_url': issuerUrl.toTfJson(),
    'jwks_retrieval_option': jwksRetrievalOption.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssoadmin_trusted_token_issuer`.
final class AwsSsoadminTrustedTokenIssuer extends Resource {
  static const String tfType = 'aws_ssoadmin_trusted_token_issuer';

  AwsSsoadminTrustedTokenIssuer({
    required super.localName,
    TfArg<String>? clientToken,
    required TfArg<String> instanceArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trustedTokenIssuerType,
    List<SsoadminTrustedTokenIssuerTrustedTokenIssuerConfiguration>?
    trustedTokenIssuerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientToken != null) 'client_token': clientToken,
           'instance_arn': instanceArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'trusted_token_issuer_type': trustedTokenIssuerType,
           if (trustedTokenIssuerConfiguration != null)
             'trusted_token_issuer_configuration': TfArg.literal([
               for (final e in trustedTokenIssuerConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminTrustedTokenIssuerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
