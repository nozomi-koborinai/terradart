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

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'groups_claim': ?groupsClaim?.toTfJson(),
    'groups_prefix': ?groupsPrefix?.toTfJson(),
    'identity_provider_config_name': identityProviderConfigName.toTfJson(),
    'issuer_url': issuerUrl.toTfJson(),
    'required_claims': ?requiredClaims?.toTfJson(),
    'username_claim': ?usernameClaim?.toTfJson(),
    'username_prefix': ?usernamePrefix?.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_identity_provider_config`.
final class AwsEksIdentityProviderConfig extends Resource {
  static const String tfType = 'aws_eks_identity_provider_config';

  AwsEksIdentityProviderConfig(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
           'oidc': TfArg.literal(oidc.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksIdentityProviderConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksIdentityProviderConfig>`.
  RefTo<AwsEksIdentityProviderConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `identity_provider_config_name` attribute.
  TfRef<String> get identityProviderConfigName =>
      TfRef.attribute<String>(this, 'identity_provider_config_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
