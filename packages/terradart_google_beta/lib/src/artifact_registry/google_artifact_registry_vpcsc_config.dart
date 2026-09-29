// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_vpcsc_config`.
const Set<String> _googleArtifactRegistryVpcscConfigSensitive = <String>{};

/// Artifact Registry Vpcsc Config Vpcsc enum for `vpcsc_policy`.
enum ArtifactRegistryVpcscConfigVpcscPolicy implements TerraformEnum {
  deny('DENY'),
  allow('ALLOW');

  const ArtifactRegistryVpcscConfigVpcscPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_artifact_registry_vpcsc_config`.
///
/// The Artifact Registry VPC SC config that applies to a Project.
final class GoogleArtifactRegistryVpcscConfig extends Resource {
  static const String tfType = 'google_artifact_registry_vpcsc_config';

  GoogleArtifactRegistryVpcscConfig({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<ArtifactRegistryVpcscConfigVpcscPolicy>? vpcscPolicy,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (vpcscPolicy != null) 'vpcsc_policy': vpcscPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryVpcscConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryVpcscConfig>`.
  RefTo<GoogleArtifactRegistryVpcscConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
