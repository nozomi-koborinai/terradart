// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_project_autokey_config`.
const Set<String> _googleKmsProjectAutokeyConfigSensitive = <String>{};

/// Kms Project Autokey Config Key Project Resolution enum for `key_project_resolution_mode`.
enum KmsProjectAutokeyConfigKeyProjectResolutionMode implements TerraformEnum {
  resourceProject('RESOURCE_PROJECT'),
  disabled('DISABLED');

  const KmsProjectAutokeyConfigKeyProjectResolutionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_kms_project_autokey_config`.
///
/// `ProjectAutokeyConfig` is a singleton resource used to configure the
/// auto-provisioning flow of CryptoKeys for CMEK.
///
/// ~> **Note:** ProjectAutokeyConfigs cannot be deleted from Google Cloud
/// Platform. Destroying a Terraform-managed ProjectAutokeyConfigs will remove
/// it from state but *will not delete the resource from the project.*
///
/// Project-level **Cloud KMS Autokey config** — a singleton that controls
/// whether Autokey auto-provisions CMEK CryptoKeys for this project.
///
/// Prefer [keyProjectResolutionMode] `DISABLED` for smoke stacks: the
/// config is free metadata and does not create keys. Setting
/// `RESOURCE_PROJECT` enables Autokey provisioning (HSM Autokey key SKUs
/// apply only when keys are created).
///
/// Enable `cloudkms.googleapis.com` via [GoogleProjectService] (or
/// [Apis.enable] with [Barrels.kmsApi]) before apply.
///
/// **Note:** Project Autokey configs cannot be deleted from GCP. Destroying
/// a Terraform-managed config removes it from state but does not delete the
/// singleton from the project (fields are cleared / abandoned per
/// [deletionPolicy]).
///
/// Example:
/// ```dart
/// GoogleKmsProjectAutokeyConfig(
///   localName: 'autokey',
///   keyProjectResolutionMode: TfArg.literal(
///     KmsProjectAutokeyConfigKeyProjectResolutionMode.disabled,
///   ),
/// );
/// ```
final class GoogleKmsProjectAutokeyConfig extends Resource {
  static const String tfType = 'google_kms_project_autokey_config';

  GoogleKmsProjectAutokeyConfig({
    required super.localName,
    TfArg<KmsProjectAutokeyConfigKeyProjectResolutionMode>?
    keyProjectResolutionMode,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (keyProjectResolutionMode != null)
             'key_project_resolution_mode': keyProjectResolutionMode,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsProjectAutokeyConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
