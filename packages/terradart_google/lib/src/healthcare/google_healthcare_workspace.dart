// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_workspace`.
const Set<String> _googleHealthcareWorkspaceSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `google_healthcare_workspace` (derived from provider schema).
@immutable
final class HealthcareWorkspaceSettings {
  const HealthcareWorkspaceSettings({required this.dataProjectIds});

  final TfArg<List<Object?>> dataProjectIds;

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
    required TfArg<String> dataset,
    required TfArg<String> name,
    required HealthcareWorkspaceSettings settings,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset,
           'name': name,
           'settings': TfArg.literal(settings.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareWorkspaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
