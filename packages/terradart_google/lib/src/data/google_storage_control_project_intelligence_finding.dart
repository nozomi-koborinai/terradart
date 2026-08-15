// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_project_intelligence_finding`.
const Set<String> _googleStorageControlProjectIntelligenceFindingSensitive =
    <String>{};

/// Factory wrapper for `google_storage_control_project_intelligence_finding`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlProjectIntelligenceFinding extends Data {
  static const String tfType =
      'google_storage_control_project_intelligence_finding';

  DataGoogleStorageControlProjectIntelligenceFinding({
    required super.localName,
    required TfArg<String> findingId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'finding_id': findingId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlProjectIntelligenceFindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_resources` attribute.
  TfRef<List<String>> get associatedResources =>
      TfRef.attribute<List<String>>(this, 'associated_resources');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `coldline_and_archival_storage_operations_spike` attribute.
  TfRef<List<Map<String, Object?>>>
  get coldlineAndArchivalStorageOperationsSpike =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'coldline_and_archival_storage_operations_spike',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `cross_region_egress_spike` attribute.
  TfRef<List<Map<String, Object?>>> get crossRegionEgressSpike =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cross_region_egress_spike',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `observation_period` attribute.
  TfRef<List<Map<String, Object?>>> get observationPeriod =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'observation_period');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `storage_growth_above_trend` attribute.
  TfRef<List<Map<String, Object?>>> get storageGrowthAboveTrend =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'storage_growth_above_trend',
      );

  /// Reference to `target_resource` attribute.
  TfRef<String> get targetResource =>
      TfRef.attribute<String>(this, 'target_resource');

  /// Reference to `throttled_requests_spike` attribute.
  TfRef<List<Map<String, Object?>>> get throttledRequestsSpike =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'throttled_requests_spike',
      );

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
