// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_config`.
const Set<String> _googleStorageControlProjectIntelligenceConfigSensitive =
    <String>{};

/// Edition configuration of the Storage Intelligence resource.
enum StorageControlProjectIntelligenceConfigEditionConfig
    implements TerraformEnum {
  inherit('INHERIT'),
  trial('TRIAL'),
  disabled('DISABLED'),
  standard('STANDARD');

  const StorageControlProjectIntelligenceConfigEditionConfig(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_control_project_intelligence_config`.
///
/// The Project Storage Intelligence Config resource represents GCS Storage
/// Intelligence operating on individual GCP project. Storage Intelligence
/// Config is a singleton resource and individual instance exists on each GCP
/// project.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at
/// scale for performance, cost, security & compliance.
///
/// Project-level **Cloud Storage Intelligence config** — a singleton that
/// controls whether Storage Intelligence runs on this GCP project.
///
/// Prefer [editionConfig] `DISABLED` for smoke stacks: the config is free
/// project metadata. Do **not** set `STANDARD` (or a paid `TRIAL` path) in
/// apply-smoke — those editions can enable billed Storage Intelligence.
/// `INHERIT` follows the parent org/folder setting and may still resolve
/// to a paid edition.
///
/// Terraform create/update use `PATCH`; destroy is state-only
/// (`exclude_delete` upstream) and leaves the GCP singleton in place.
///
/// Enable `storage.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleStorageControlProjectIntelligenceConfig(
///   localName: 'intelligence',
///   name: TfArg.literal(projectId),
///   editionConfig: TfArg.literal(
///     StorageControlProjectIntelligenceConfigEditionConfig.disabled,
///   ),
/// );
/// ```
final class GoogleStorageControlProjectIntelligenceConfig extends Resource {
  static const String tfType =
      'google_storage_control_project_intelligence_config';

  GoogleStorageControlProjectIntelligenceConfig({
    required super.localName,
    required TfArg<String> name,
    TfArg<StorageControlProjectIntelligenceConfigEditionConfig>? editionConfig,
    TfArg<Map<String, dynamic>>? filter,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (editionConfig != null) 'edition_config': editionConfig,
           if (filter != null) 'filter': filter,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_intelligence_config` attribute.
  TfRef<List<Map<String, Object?>>> get effectiveIntelligenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'effective_intelligence_config',
      );

  /// Reference to `trial_config` attribute.
  TfRef<List<Map<String, Object?>>> get trialConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_config');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
