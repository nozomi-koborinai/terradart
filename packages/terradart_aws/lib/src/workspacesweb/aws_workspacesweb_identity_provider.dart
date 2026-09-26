// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_identity_provider`.
const Set<String> _awsWorkspaceswebIdentityProviderSensitive = <String>{};

/// Factory wrapper for `aws_workspacesweb_identity_provider`.
final class AwsWorkspaceswebIdentityProvider extends Resource {
  static const String tfType = 'aws_workspacesweb_identity_provider';

  AwsWorkspaceswebIdentityProvider({
    required super.localName,
    required TfArg<Map<String, String>> identityProviderDetails,
    required TfArg<String> identityProviderName,
    required TfArg<String> identityProviderType,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebIdentityProviderSensitive;

  /// Reference to `identity_provider_arn` attribute.
  TfRef<String> get identityProviderArn =>
      TfRef.attribute<String>(this, 'identity_provider_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
