// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_vpcsc_config`.
const Set<String> _googleArtifactRegistryVpcscConfigSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_vpcsc_config`.
final class GoogleArtifactRegistryVpcscConfig extends Resource {
  static const String tfType = 'google_artifact_registry_vpcsc_config';

  GoogleArtifactRegistryVpcscConfig({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<String>? vpcscPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (vpcscPolicy != null) 'vpcsc_policy': vpcscPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryVpcscConfigSensitive;
}
