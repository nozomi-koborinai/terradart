// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_identity_provider_config`.
const Set<String> _awsEksIdentityProviderConfigSensitive = <String>{};

/// Typed helper for the `oidc` block of
/// `aws_eks_identity_provider_config` (derived from provider schema).
@immutable
final class EksIdentityProviderConfigOidc {
  const EksIdentityProviderConfigOidc({
    required this.clientId,
    this.groupsClaim,
    this.groupsPrefix,
    required this.identityProviderConfigName,
    required this.issuerUrl,
    this.requiredClaims,
    this.usernameClaim,
    this.usernamePrefix,
  });

  final TfArg<String> clientId;

  final TfArg<String>? groupsClaim;

  final TfArg<String>? groupsPrefix;

  final TfArg<String> identityProviderConfigName;

  final TfArg<String> issuerUrl;

  final TfArg<Map<String, String>>? requiredClaims;

  final TfArg<String>? usernameClaim;

  final TfArg<String>? usernamePrefix;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    if (groupsClaim != null) 'groups_claim': groupsClaim!.toTfJson(),
    if (groupsPrefix != null) 'groups_prefix': groupsPrefix!.toTfJson(),
    'identity_provider_config_name': identityProviderConfigName.toTfJson(),
    'issuer_url': issuerUrl.toTfJson(),
    if (requiredClaims != null) 'required_claims': requiredClaims!.toTfJson(),
    if (usernameClaim != null) 'username_claim': usernameClaim!.toTfJson(),
    if (usernamePrefix != null) 'username_prefix': usernamePrefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_identity_provider_config`.
final class AwsEksIdentityProviderConfig extends Resource {
  static const String tfType = 'aws_eks_identity_provider_config';

  AwsEksIdentityProviderConfig({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required EksIdentityProviderConfigOidc oidc,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'oidc': TfArg.literal(oidc.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksIdentityProviderConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `identity_provider_config_name` attribute.
  TfRef<String> get identityProviderConfigName =>
      TfRef.attribute<String>(this, 'identity_provider_config_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
