// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_trusted_token_issuer`.
const Set<String> _awsSsoadminTrustedTokenIssuerSensitive = <String>{};

/// Ssoadmin Trusted Token Issuer enum for `trusted_token_issuer_type`.
enum SsoadminTrustedTokenIssuerType implements TerraformEnum {
  oidcJwt('OIDC_JWT');

  const SsoadminTrustedTokenIssuerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `trusted_token_issuer_configuration` block of
/// `aws_ssoadmin_trusted_token_issuer` (derived from provider schema).
@immutable
final class SsoadminTrustedTokenIssuerConfiguration {
  const SsoadminTrustedTokenIssuerConfiguration({this.oidcJwtConfiguration});

  final List<SsoadminTrustedTokenIssuerOidcJwtConfiguration>?
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
final class SsoadminTrustedTokenIssuerOidcJwtConfiguration {
  const SsoadminTrustedTokenIssuerOidcJwtConfiguration({
    required this.claimAttributePath,
    required this.identityStoreAttributePath,
    required this.issuerUrl,
    required this.jwksRetrievalOption,
  });

  final TfArg<String> claimAttributePath;

  final TfArg<String> identityStoreAttributePath;

  final TfArg<String> issuerUrl;

  final TfArg<SsoadminTrustedTokenIssuerJwksRetrievalOption>
  jwksRetrievalOption;

  Map<String, Object?> encode() => {
    'claim_attribute_path': claimAttributePath.toTfJson(),
    'identity_store_attribute_path': identityStoreAttributePath.toTfJson(),
    'issuer_url': issuerUrl.toTfJson(),
    'jwks_retrieval_option': jwksRetrievalOption.toTfJson(),
  };
}

/// `jwks_retrieval_option` — derived from the provider schema description.
enum SsoadminTrustedTokenIssuerJwksRetrievalOption implements TerraformEnum {
  openIdDiscovery('OPEN_ID_DISCOVERY');

  const SsoadminTrustedTokenIssuerJwksRetrievalOption(this.terraformValue);
  @override
  final String terraformValue;
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
    required TfArg<SsoadminTrustedTokenIssuerType> trustedTokenIssuerType,
    List<SsoadminTrustedTokenIssuerConfiguration>?
    trustedTokenIssuerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_token': ?clientToken,
           'instance_arn': instanceArn,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'trusted_token_issuer_type': trustedTokenIssuerType,
           if (trustedTokenIssuerConfiguration != null)
             'trusted_token_issuer_configuration': TfArg.literal([
               for (final e in trustedTokenIssuerConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminTrustedTokenIssuerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminTrustedTokenIssuer>`.
  RefTo<AwsSsoadminTrustedTokenIssuer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `client_token` attribute.
  TfRef<String> get clientToken =>
      TfRef.attribute<String>(this, 'client_token');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `trusted_token_issuer_type` attribute.
  TfRef<String> get trustedTokenIssuerType =>
      TfRef.attribute<String>(this, 'trusted_token_issuer_type');
}
