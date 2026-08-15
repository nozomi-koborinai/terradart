// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_pipeline_job`.
const Set<String> _googleHealthcarePipelineJobSensitive = <String>{};

/// Typed helper for the `backfill_pipeline_job` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobBackfillPipelineJob {
  const HealthcarePipelineJobBackfillPipelineJob({this.mappingPipelineJob});

  final TfArg<String>? mappingPipelineJob;

  Map<String, Object?> encode() => {
    if (mappingPipelineJob != null)
      'mapping_pipeline_job': mappingPipelineJob!.toTfJson(),
  };
}

/// Typed helper for the `mapping_pipeline_job` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMappingPipelineJob {
  const HealthcarePipelineJobMappingPipelineJob({
    this.fhirStoreDestination,
    this.reconciliationDestination,
    this.fhirStreamingSource,
    required this.mappingConfig,
  });

  final TfArg<String>? fhirStoreDestination;

  final TfArg<bool>? reconciliationDestination;

  final HealthcarePipelineJobMappingPipelineJobFhirStreamingSource?
  fhirStreamingSource;

  final HealthcarePipelineJobMappingPipelineJobMappingConfig mappingConfig;

  Map<String, Object?> encode() => {
    if (fhirStoreDestination != null)
      'fhir_store_destination': fhirStoreDestination!.toTfJson(),
    if (reconciliationDestination != null)
      'reconciliation_destination': reconciliationDestination!.toTfJson(),
    if (fhirStreamingSource != null)
      'fhir_streaming_source': fhirStreamingSource!.encode(),
    'mapping_config': mappingConfig.encode(),
  };
}

/// Typed helper for the `mapping_pipeline_job.fhir_streaming_source` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMappingPipelineJobFhirStreamingSource {
  const HealthcarePipelineJobMappingPipelineJobFhirStreamingSource({
    this.description,
    required this.fhirStore,
  });

  final TfArg<String>? description;

  final TfArg<String> fhirStore;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'fhir_store': fhirStore.toTfJson(),
  };
}

/// Typed helper for the `mapping_pipeline_job.mapping_config` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMappingPipelineJobMappingConfig {
  const HealthcarePipelineJobMappingPipelineJobMappingConfig({
    this.description,
    this.whistleConfigSource,
  });

  final TfArg<String>? description;

  final HealthcarePipelineJobMappingPipelineJobMappingConfigWhistleConfigSource?
  whistleConfigSource;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (whistleConfigSource != null)
      'whistle_config_source': whistleConfigSource!.encode(),
  };
}

/// Typed helper for the `mapping_pipeline_job.mapping_config.whistle_config_source` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMappingPipelineJobMappingConfigWhistleConfigSource {
  const HealthcarePipelineJobMappingPipelineJobMappingConfigWhistleConfigSource({
    required this.importUriPrefix,
    required this.uri,
  });

  final TfArg<String> importUriPrefix;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'import_uri_prefix': importUriPrefix.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `reconciliation_pipeline_job` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobReconciliationPipelineJob {
  const HealthcarePipelineJobReconciliationPipelineJob({
    this.fhirStoreDestination,
    required this.matchingUriPrefix,
    required this.mergeConfig,
  });

  final TfArg<String>? fhirStoreDestination;

  final TfArg<String> matchingUriPrefix;

  final HealthcarePipelineJobReconciliationPipelineJobMergeConfig mergeConfig;

  Map<String, Object?> encode() => {
    if (fhirStoreDestination != null)
      'fhir_store_destination': fhirStoreDestination!.toTfJson(),
    'matching_uri_prefix': matchingUriPrefix.toTfJson(),
    'merge_config': mergeConfig.encode(),
  };
}

/// Typed helper for the `reconciliation_pipeline_job.merge_config` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobReconciliationPipelineJobMergeConfig {
  const HealthcarePipelineJobReconciliationPipelineJobMergeConfig({
    this.description,
    required this.whistleConfigSource,
  });

  final TfArg<String>? description;

  final HealthcarePipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource
  whistleConfigSource;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'whistle_config_source': whistleConfigSource.encode(),
  };
}

/// Typed helper for the `reconciliation_pipeline_job.merge_config.whistle_config_source` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource {
  const HealthcarePipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource({
    required this.importUriPrefix,
    required this.uri,
  });

  final TfArg<String> importUriPrefix;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'import_uri_prefix': importUriPrefix.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_pipeline_job`.
///
/// PipelineJobs are Long Running Operations on Healthcare API to Map or
/// Reconcile incoming data into FHIR format
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleHealthcarePipelineJob extends Resource {
  static const String tfType = 'google_healthcare_pipeline_job';

  GoogleHealthcarePipelineJob({
    required super.localName,
    required TfArg<String> dataset,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disableLineage,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    HealthcarePipelineJobBackfillPipelineJob? backfillPipelineJob,
    HealthcarePipelineJobMappingPipelineJob? mappingPipelineJob,
    HealthcarePipelineJobReconciliationPipelineJob? reconciliationPipelineJob,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disableLineage != null) 'disable_lineage': disableLineage,
           if (labels != null) 'labels': labels,
           'location': location,
           'name': name,
           if (backfillPipelineJob != null)
             'backfill_pipeline_job': TfArg.literal(
               backfillPipelineJob.encode(),
             ),
           if (mappingPipelineJob != null)
             'mapping_pipeline_job': TfArg.literal(mappingPipelineJob.encode()),
           if (reconciliationPipelineJob != null)
             'reconciliation_pipeline_job': TfArg.literal(
               reconciliationPipelineJob.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcarePipelineJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
