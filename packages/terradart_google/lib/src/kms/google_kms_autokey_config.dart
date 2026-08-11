// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_autokey_config`.
const Set<String> _googleKmsAutokeyConfigSensitive = <String>{};

/// Kms Autokey Config Key Project Resolution enum for `key_project_resolution_mode`.
enum KmsAutokeyConfigKeyProjectResolutionMode implements TerraformEnum {
  dedicatedKeyProject('DEDICATED_KEY_PROJECT'),
  resourceProject('RESOURCE_PROJECT'),
  disabled('DISABLED');

  const KmsAutokeyConfigKeyProjectResolutionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_kms_autokey_config`.
///
/// `AutokeyConfig` is a singleton resource used to configure the
/// auto-provisioning flow of CryptoKeys for CMEK.
///
/// ~> **Note:** AutokeyConfigs cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed AutokeyConfig will remove it from state but
/// *will not delete the resource from the project.*
///
/// Folder-level **Cloud KMS Autokey config** — singleton that controls
/// Autokey CMEK provisioning for a folder.
///
/// Requires a real folder id (`folders/123…`). Not applyable on a
/// standalone project such as `terradart-validate`. Prefer
/// [GoogleKmsProjectAutokeyConfig] for project-scoped smoke stacks.
///
/// **Note:** Autokey configs cannot be deleted from GCP. Destroy removes
/// the resource from Terraform state only.
///
/// Example:
/// ```dart
/// GoogleKmsAutokeyConfig(
///   localName: 'folder_autokey',
///   folder: TfArg.literal('folders/123456789012'),
///   keyProjectResolutionMode: TfArg.literal(
///     KmsAutokeyConfigKeyProjectResolutionMode.disabled,
///   ),
/// );
/// ```
final class GoogleKmsAutokeyConfig extends Resource {
  static const String tfType = 'google_kms_autokey_config';

  GoogleKmsAutokeyConfig({
    required super.localName,
    required TfArg<String> folder,
    TfArg<String>? keyProject,
    TfArg<KmsAutokeyConfigKeyProjectResolutionMode>? keyProjectResolutionMode,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder,
           if (keyProject != null) 'key_project': keyProject,
           if (keyProjectResolutionMode != null)
             'key_project_resolution_mode': keyProjectResolutionMode,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsAutokeyConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
