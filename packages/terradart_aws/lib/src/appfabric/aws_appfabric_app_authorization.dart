// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_app_authorization`.
const Set<String> _awsAppfabricAppAuthorizationSensitive = <String>{
  'credential.api_key_credential.api_key',
  'credential.oauth2_credential.client_secret',
};

/// Appfabric App Authorization Auth enum for `auth_type`.
enum AppfabricAppAuthorizationAuthType implements TerraformEnum {
  oauth2('oauth2'),
  apikey('apiKey');

  const AppfabricAppAuthorizationAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `credential` block of
/// `aws_appfabric_app_authorization` (derived from provider schema).
@immutable
final class AppfabricAppAuthorizationCredential {
  const AppfabricAppAuthorizationCredential({
    this.apiKeyCredential,
    this.oauth2Credential,
  });

  final List<AppfabricAppAuthorizationApiKeyCredential>? apiKeyCredential;

  final List<AppfabricAppAuthorizationOauth2Credential>? oauth2Credential;

  Map<String, Object?> encode() => {
    if (apiKeyCredential != null)
      'api_key_credential': [for (final e in apiKeyCredential!) e.encode()],
    if (oauth2Credential != null)
      'oauth2_credential': [for (final e in oauth2Credential!) e.encode()],
  };
}

/// Typed helper for the `credential.api_key_credential` block of
/// `aws_appfabric_app_authorization` (derived from provider schema).
@immutable
final class AppfabricAppAuthorizationApiKeyCredential {
  const AppfabricAppAuthorizationApiKeyCredential({required this.apiKey});

  final TfArg<String> apiKey;

  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};
}

/// Typed helper for the `credential.oauth2_credential` block of
/// `aws_appfabric_app_authorization` (derived from provider schema).
@immutable
final class AppfabricAppAuthorizationOauth2Credential {
  const AppfabricAppAuthorizationOauth2Credential({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `tenant` block of
/// `aws_appfabric_app_authorization` (derived from provider schema).
@immutable
final class AppfabricAppAuthorizationTenant {
  const AppfabricAppAuthorizationTenant({
    required this.tenantDisplayName,
    required this.tenantIdentifier,
  });

  final TfArg<String> tenantDisplayName;

  final TfArg<String> tenantIdentifier;

  Map<String, Object?> encode() => {
    'tenant_display_name': tenantDisplayName.toTfJson(),
    'tenant_identifier': tenantIdentifier.toTfJson(),
  };
}

/// Factory wrapper for `aws_appfabric_app_authorization`.
final class AwsAppfabricAppAuthorization extends Resource {
  static const String tfType = 'aws_appfabric_app_authorization';

  AwsAppfabricAppAuthorization({
    required super.localName,
    required TfArg<String> app,
    required TfArg<String> appBundleArn,
    required TfArg<AppfabricAppAuthorizationAuthType> authType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppfabricAppAuthorizationCredential>? credential,
    List<AppfabricAppAuthorizationTenant>? tenant,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app': app,
           'app_bundle_arn': appBundleArn,
           'auth_type': authType,
           'region': ?region,
           'tags': ?tags,
           if (credential != null)
             'credential': TfArg.literal([
               for (final e in credential) e.encode(),
             ]),
           if (tenant != null)
             'tenant': TfArg.literal([for (final e in tenant) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricAppAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppfabricAppAuthorization>`.
  RefTo<AwsAppfabricAppAuthorization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_url` attribute.
  TfRef<String> get authUrl => TfRef.attribute<String>(this, 'auth_url');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `persona` attribute.
  TfRef<String> get persona => TfRef.attribute<String>(this, 'persona');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `app` attribute.
  TfRef<String> get app => TfRef.attribute<String>(this, 'app');

  /// Reference to `app_bundle_arn` attribute.
  TfRef<String> get appBundleArn =>
      TfRef.attribute<String>(this, 'app_bundle_arn');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
