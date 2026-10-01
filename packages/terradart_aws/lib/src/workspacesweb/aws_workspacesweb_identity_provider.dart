// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_identity_provider`.
const Set<String> _awsWorkspaceswebIdentityProviderSensitive = <String>{};

/// Workspacesweb Identity Provider enum for `identity_provider_type`.
enum WorkspaceswebIdentityProviderType implements TerraformEnum {
  saml('SAML'),
  facebook('Facebook'),
  google('Google'),
  loginwithamazon('LoginWithAmazon'),
  signinwithapple('SignInWithApple'),
  oidc('OIDC');

  const WorkspaceswebIdentityProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspacesweb_identity_provider`.
final class AwsWorkspaceswebIdentityProvider extends Resource {
  static const String tfType = 'aws_workspacesweb_identity_provider';

  AwsWorkspaceswebIdentityProvider({
    required super.localName,
    required TfArg<Map<String, String>> identityProviderDetails,
    required TfArg<String> identityProviderName,
    required TfArg<WorkspaceswebIdentityProviderType> identityProviderType,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_provider_details': identityProviderDetails,
           'identity_provider_name': identityProviderName,
           'identity_provider_type': identityProviderType,
           'portal_arn': portalArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebIdentityProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebIdentityProvider>`.
  RefTo<AwsWorkspaceswebIdentityProvider> get ref => RefTo.of(this);

  /// Reference to `identity_provider_arn` attribute.
  TfRef<String> get identityProviderArn =>
      TfRef.attribute<String>(this, 'identity_provider_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `identity_provider_details` attribute.
  TfRef<Map<String, String>> get identityProviderDetailsRef =>
      TfRef.attribute<Map<String, String>>(this, 'identity_provider_details');

  /// Reference to `identity_provider_name` attribute.
  TfRef<String> get identityProviderNameRef =>
      TfRef.attribute<String>(this, 'identity_provider_name');

  /// Reference to `identity_provider_type` attribute.
  TfRef<String> get identityProviderTypeRef =>
      TfRef.attribute<String>(this, 'identity_provider_type');

  /// Reference to `portal_arn` attribute.
  TfRef<String> get portalArnRef => TfRef.attribute<String>(this, 'portal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
