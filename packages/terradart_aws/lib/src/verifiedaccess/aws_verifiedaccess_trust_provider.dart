// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_trust_provider`.
const Set<String> _awsVerifiedaccessTrustProviderSensitive = <String>{
  'native_application_oidc_options.client_secret',
  'oidc_options.client_secret',
};

/// Typed helper for the `device_options` block of
/// `aws_verifiedaccess_trust_provider` (derived from provider schema).
@immutable
final class VerifiedaccessTrustProviderDeviceOptions {
  const VerifiedaccessTrustProviderDeviceOptions({this.tenantId});

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
  };
}

/// Typed helper for the `native_application_oidc_options` block of
/// `aws_verifiedaccess_trust_provider` (derived from provider schema).
@immutable
final class VerifiedaccessTrustProviderNativeApplicationOidcOptions {
  const VerifiedaccessTrustProviderNativeApplicationOidcOptions({
    this.authorizationEndpoint,
    this.clientId,
    required this.clientSecret,
    this.issuer,
    this.publicSigningKeyEndpoint,
    this.scope,
    this.tokenEndpoint,
    this.userInfoEndpoint,
  });

  final TfArg<String>? authorizationEndpoint;

  final TfArg<String>? clientId;

  final TfArg<String> clientSecret;

  final TfArg<String>? issuer;

  final TfArg<String>? publicSigningKeyEndpoint;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? userInfoEndpoint;

  Map<String, Object?> encode() => {
    if (authorizationEndpoint != null)
      'authorization_endpoint': authorizationEndpoint!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (publicSigningKeyEndpoint != null)
      'public_signing_key_endpoint': publicSigningKeyEndpoint!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (userInfoEndpoint != null)
      'user_info_endpoint': userInfoEndpoint!.toTfJson(),
  };
}

/// Typed helper for the `oidc_options` block of
/// `aws_verifiedaccess_trust_provider` (derived from provider schema).
@immutable
final class VerifiedaccessTrustProviderOidcOptions {
  const VerifiedaccessTrustProviderOidcOptions({
    this.authorizationEndpoint,
    this.clientId,
    required this.clientSecret,
    this.issuer,
    this.scope,
    this.tokenEndpoint,
    this.userInfoEndpoint,
  });

  final TfArg<String>? authorizationEndpoint;

  final TfArg<String>? clientId;

  final TfArg<String> clientSecret;

  final TfArg<String>? issuer;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? userInfoEndpoint;

  Map<String, Object?> encode() => {
    if (authorizationEndpoint != null)
      'authorization_endpoint': authorizationEndpoint!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (userInfoEndpoint != null)
      'user_info_endpoint': userInfoEndpoint!.toTfJson(),
  };
}

/// Typed helper for the `sse_specification` block of
/// `aws_verifiedaccess_trust_provider` (derived from provider schema).
@immutable
final class VerifiedaccessTrustProviderSseSpecification {
  const VerifiedaccessTrustProviderSseSpecification({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  final TfArg<bool>? customerManagedKeyEnabled;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (customerManagedKeyEnabled != null)
      'customer_managed_key_enabled': customerManagedKeyEnabled!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_trust_provider`.
final class AwsVerifiedaccessTrustProvider extends Resource {
  static const String tfType = 'aws_verifiedaccess_trust_provider';

  AwsVerifiedaccessTrustProvider({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? deviceTrustProviderType,
    required TfArg<String> policyReferenceName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trustProviderType,
    TfArg<String>? userTrustProviderType,
    VerifiedaccessTrustProviderDeviceOptions? deviceOptions,
    VerifiedaccessTrustProviderNativeApplicationOidcOptions?
    nativeApplicationOidcOptions,
    VerifiedaccessTrustProviderOidcOptions? oidcOptions,
    VerifiedaccessTrustProviderSseSpecification? sseSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (deviceTrustProviderType != null)
             'device_trust_provider_type': deviceTrustProviderType,
           'policy_reference_name': policyReferenceName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'trust_provider_type': trustProviderType,
           if (userTrustProviderType != null)
             'user_trust_provider_type': userTrustProviderType,
           if (deviceOptions != null)
             'device_options': TfArg.literal(deviceOptions.encode()),
           if (nativeApplicationOidcOptions != null)
             'native_application_oidc_options': TfArg.literal(
               nativeApplicationOidcOptions.encode(),
             ),
           if (oidcOptions != null)
             'oidc_options': TfArg.literal(oidcOptions.encode()),
           if (sseSpecification != null)
             'sse_specification': TfArg.literal(sseSpecification.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedaccessTrustProviderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
