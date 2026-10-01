// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dataset.dart'
    show GoogleHealthcareDataset;

/// Sensitive field paths for `google_healthcare_workspace`.
const Set<String> _googleHealthcareWorkspaceSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `google_healthcare_workspace` (derived from provider schema).
@immutable
final class HealthcareWorkspaceSettings {
  const HealthcareWorkspaceSettings({required this.dataProjectIds});

  final TfArg<List<String>> dataProjectIds;

  Map<String, Object?> encode() => {
    'data_project_ids': dataProjectIds.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_workspace`.
///
/// A Data Mapper workspace is used to configure Data Mapper access, permissions
/// and data sources for mapping clinical patient data to the FHIR standard.
///
/// Healthcare Data Mapper workspace under a [GoogleHealthcareDataset].
///
/// [settings] lists the data project IDs the workspace may access.
/// Enable `healthcare.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleHealthcareWorkspace extends Resource {
  static const String tfType = 'google_healthcare_workspace';

  GoogleHealthcareWorkspace({
    required super.localName,
    required RefTo<GoogleHealthcareDataset> dataset,
    required TfArg<String> name,
    required HealthcareWorkspaceSettings settings,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset.encodeAs('self_link'),
           'name': name,
           'settings': TfArg.literal(settings.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareWorkspace>`.
  RefTo<GoogleHealthcareWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');
}
