// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_autokey_config`.
const Set<String> _googleKmsAutokeyConfigSensitive = <String>{};

/// Kms Autokey Config Key Project Resolution enum for `key_project_resolution_mode`.
extension type const KmsAutokeyConfigKeyProjectResolutionMode._(TfArg<String> _)
    implements TfArg<String> {
  KmsAutokeyConfigKeyProjectResolutionMode.variable(String name)
    : this._(TfArg.variable(name));
  KmsAutokeyConfigKeyProjectResolutionMode.expression(String template)
    : this._(TfArg.expression(template));
  const KmsAutokeyConfigKeyProjectResolutionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const dedicatedKeyProject = KmsAutokeyConfigKeyProjectResolutionMode._(
    TfArgLiteral('DEDICATED_KEY_PROJECT'),
  );
  static const resourceProject = KmsAutokeyConfigKeyProjectResolutionMode._(
    TfArgLiteral('RESOURCE_PROJECT'),
  );
  static const disabled = KmsAutokeyConfigKeyProjectResolutionMode._(
    TfArgLiteral('DISABLED'),
  );

  static const List<KmsAutokeyConfigKeyProjectResolutionMode> values = [
    dedicatedKeyProject,
    resourceProject,
    disabled,
  ];
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
///   'folder_autokey',
///   folder: TfArg.literal('folders/123456789012'),
///   keyProjectResolutionMode: KmsAutokeyConfigKeyProjectResolutionMode.disabled,
/// );
/// ```
final class GoogleKmsAutokeyConfig extends Resource {
  static const String tfType = 'google_kms_autokey_config';

  GoogleKmsAutokeyConfig(
    super.localName, {
    required TfArg<String> folder,
    TfArg<String>? keyProject,
    KmsAutokeyConfigKeyProjectResolutionMode? keyProjectResolutionMode,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder,
           'key_project': ?keyProject,
           'key_project_resolution_mode': ?keyProjectResolutionMode,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsAutokeyConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsAutokeyConfig>`.
  RefTo<GoogleKmsAutokeyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `key_project` attribute.
  TfRef<String> get keyProject => TfRef.attribute<String>(this, 'key_project');

  /// Reference to `key_project_resolution_mode` attribute.
  TfRef<String> get keyProjectResolutionMode =>
      TfRef.attribute<String>(this, 'key_project_resolution_mode');
}
