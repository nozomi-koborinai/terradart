// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_vpcsc_config`.
const Set<String> _googleArtifactRegistryVpcscConfigSensitive = <String>{};

/// Artifact Registry Vpcsc Config Vpcsc enum for `vpcsc_policy`.
extension type const ArtifactRegistryVpcscConfigVpcscPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ArtifactRegistryVpcscConfigVpcscPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ArtifactRegistryVpcscConfigVpcscPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ArtifactRegistryVpcscConfigVpcscPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const deny = ArtifactRegistryVpcscConfigVpcscPolicy._(
    TfArgLiteral('DENY'),
  );
  static const allow = ArtifactRegistryVpcscConfigVpcscPolicy._(
    TfArgLiteral('ALLOW'),
  );

  static const List<ArtifactRegistryVpcscConfigVpcscPolicy> values = [
    deny,
    allow,
  ];
}

/// Factory wrapper for `google_artifact_registry_vpcsc_config`.
///
/// The Artifact Registry VPC SC config that applies to a Project.
final class GoogleArtifactRegistryVpcscConfig extends Resource {
  static const String tfType = 'google_artifact_registry_vpcsc_config';

  GoogleArtifactRegistryVpcscConfig(
    super.localName, {
    TfArg<String>? location,
    TfArg<String>? project,
    ArtifactRegistryVpcscConfigVpcscPolicy? vpcscPolicy,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'location': ?location,
           'project': ?project,
           'vpcsc_policy': ?vpcscPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryVpcscConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryVpcscConfig>`.
  RefTo<GoogleArtifactRegistryVpcscConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `vpcsc_policy` attribute.
  TfRef<String> get vpcscPolicy =>
      TfRef.attribute<String>(this, 'vpcsc_policy');
}
