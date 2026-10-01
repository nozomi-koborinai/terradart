// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_verifiedaccess_trust_provider`.
const Set<String> _awsVerifiedaccessTrustProviderSensitive = <String>{
  'native_application_oidc_options.client_secret',
  'oidc_options.client_secret',
};

/// Verifiedaccess Trust Provider Device Trust Provider enum for `device_trust_provider_type`.
extension type const VerifiedaccessTrustProviderDeviceTrustProviderType._(
  TfArg<String> _
) implements TfArg<String> {
  VerifiedaccessTrustProviderDeviceTrustProviderType.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessTrustProviderDeviceTrustProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessTrustProviderDeviceTrustProviderType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const jamf = VerifiedaccessTrustProviderDeviceTrustProviderType._(
    TfArgLiteral('jamf'),
  );
  static const crowdstrike =
      VerifiedaccessTrustProviderDeviceTrustProviderType._(
        TfArgLiteral('crowdstrike'),
      );
  static const jumpcloud = VerifiedaccessTrustProviderDeviceTrustProviderType._(
    TfArgLiteral('jumpcloud'),
  );

  static const List<VerifiedaccessTrustProviderDeviceTrustProviderType> values =
      [jamf, crowdstrike, jumpcloud];
}

/// Verifiedaccess Trust Provider enum for `trust_provider_type`.
extension type const VerifiedaccessTrustProviderType._(TfArg<String> _)
    implements TfArg<String> {
  VerifiedaccessTrustProviderType.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessTrustProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessTrustProviderType.arg(TfArg<String> arg) : this._(arg);

  static const user = VerifiedaccessTrustProviderType._(TfArgLiteral('user'));
  static const device = VerifiedaccessTrustProviderType._(
    TfArgLiteral('device'),
  );

  static const List<VerifiedaccessTrustProviderType> values = [user, device];
}

/// Verifiedaccess Trust Provider User Trust Provider enum for `user_trust_provider_type`.
extension type const VerifiedaccessTrustProviderUserTrustProviderType._(
  TfArg<String> _
) implements TfArg<String> {
  VerifiedaccessTrustProviderUserTrustProviderType.variable(String name)
    : this._(TfArg.variable(name));
  VerifiedaccessTrustProviderUserTrustProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const VerifiedaccessTrustProviderUserTrustProviderType.arg(TfArg<String> arg)
    : this._(arg);

  static const iamIdentityCenter =
      VerifiedaccessTrustProviderUserTrustProviderType._(
        TfArgLiteral('iam-identity-center'),
      );
  static const oidc = VerifiedaccessTrustProviderUserTrustProviderType._(
    TfArgLiteral('oidc'),
  );

  static const List<VerifiedaccessTrustProviderUserTrustProviderType> values = [
    iamIdentityCenter,
    oidc,
  ];
}

/// Typed helper for the `device_options` block of
/// `aws_verifiedaccess_trust_provider` (derived from provider schema).
@immutable
final class VerifiedaccessTrustProviderDeviceOptions {
  const VerifiedaccessTrustProviderDeviceOptions({this.tenantId});

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {'tenant_id': ?tenantId?.toTfJson()};
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

  final Sensitive<String> clientSecret;

  final TfArg<String>? issuer;

  final TfArg<String>? publicSigningKeyEndpoint;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? userInfoEndpoint;

  Map<String, Object?> encode() => {
    'authorization_endpoint': ?authorizationEndpoint?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'public_signing_key_endpoint': ?publicSigningKeyEndpoint?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'user_info_endpoint': ?userInfoEndpoint?.toTfJson(),
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

  final Sensitive<String> clientSecret;

  final TfArg<String>? issuer;

  final TfArg<String>? scope;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? userInfoEndpoint;

  Map<String, Object?> encode() => {
    'authorization_endpoint': ?authorizationEndpoint?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'user_info_endpoint': ?userInfoEndpoint?.toTfJson(),
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

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'customer_managed_key_enabled': ?customerManagedKeyEnabled?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_trust_provider`.
final class AwsVerifiedaccessTrustProvider extends Resource {
  static const String tfType = 'aws_verifiedaccess_trust_provider';

  AwsVerifiedaccessTrustProvider(
    super.localName, {
    TfArg<String>? description,
    VerifiedaccessTrustProviderDeviceTrustProviderType? deviceTrustProviderType,
    required TfArg<String> policyReferenceName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required VerifiedaccessTrustProviderType trustProviderType,
    VerifiedaccessTrustProviderUserTrustProviderType? userTrustProviderType,
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
           'description': ?description,
           'device_trust_provider_type': ?deviceTrustProviderType,
           'policy_reference_name': policyReferenceName,
           'region': ?region,
           'tags': ?tags,
           'trust_provider_type': trustProviderType,
           'user_trust_provider_type': ?userTrustProviderType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedaccessTrustProvider>`.
  RefTo<AwsVerifiedaccessTrustProvider> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_trust_provider_type` attribute.
  TfRef<String> get deviceTrustProviderType =>
      TfRef.attribute<String>(this, 'device_trust_provider_type');

  /// Reference to `policy_reference_name` attribute.
  TfRef<String> get policyReferenceName =>
      TfRef.attribute<String>(this, 'policy_reference_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `trust_provider_type` attribute.
  TfRef<String> get trustProviderType =>
      TfRef.attribute<String>(this, 'trust_provider_type');

  /// Reference to `user_trust_provider_type` attribute.
  TfRef<String> get userTrustProviderType =>
      TfRef.attribute<String>(this, 'user_trust_provider_type');
}
