// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_pipeline_job`.
const Set<String> _googleHealthcarePipelineJobSensitive = <String>{};

/// At most one of `mapping_pipeline_job`, `reconciliation_pipeline_job`, `backfill_pipeline_job` on `google_healthcare_pipeline_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.mappingPipelineJob(...)`.
sealed class HealthcarePipelineJobPipelineJob {
  const HealthcarePipelineJobPipelineJob();

  /// Sets `mapping_pipeline_job`.
  const factory HealthcarePipelineJobPipelineJob.mappingPipelineJob(
    HealthcarePipelineJobMappingPipelineJob mappingPipelineJob,
  ) = HealthcarePipelineJobPipelineJobMappingPipelineJob;

  /// Sets `reconciliation_pipeline_job`.
  const factory HealthcarePipelineJobPipelineJob.reconciliationPipelineJob(
    HealthcarePipelineJobReconciliationPipelineJob reconciliationPipelineJob,
  ) = HealthcarePipelineJobPipelineJobReconciliationPipelineJob;

  /// Sets `backfill_pipeline_job`.
  const factory HealthcarePipelineJobPipelineJob.backfillPipelineJob(
    HealthcarePipelineJobBackfillPipelineJob backfillPipelineJob,
  ) = HealthcarePipelineJobPipelineJobBackfillPipelineJob;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [HealthcarePipelineJobPipelineJob.mappingPipelineJob] choice: sets `mapping_pipeline_job`.
final class HealthcarePipelineJobPipelineJobMappingPipelineJob
    extends HealthcarePipelineJobPipelineJob {
  const HealthcarePipelineJobPipelineJobMappingPipelineJob(
    this.mappingPipelineJob,
  );

  final HealthcarePipelineJobMappingPipelineJob mappingPipelineJob;

  @override
  String get blockKey => 'mapping_pipeline_job';

  @override
  Map<String, Object?> encode() => {
    'mapping_pipeline_job': mappingPipelineJob.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mapping_pipeline_job': TfArg.literal(mappingPipelineJob.encode()),
  };
}

/// The [HealthcarePipelineJobPipelineJob.reconciliationPipelineJob] choice: sets `reconciliation_pipeline_job`.
final class HealthcarePipelineJobPipelineJobReconciliationPipelineJob
    extends HealthcarePipelineJobPipelineJob {
  const HealthcarePipelineJobPipelineJobReconciliationPipelineJob(
    this.reconciliationPipelineJob,
  );

  final HealthcarePipelineJobReconciliationPipelineJob
  reconciliationPipelineJob;

  @override
  String get blockKey => 'reconciliation_pipeline_job';

  @override
  Map<String, Object?> encode() => {
    'reconciliation_pipeline_job': reconciliationPipelineJob.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'reconciliation_pipeline_job': TfArg.literal(
      reconciliationPipelineJob.encode(),
    ),
  };
}

/// The [HealthcarePipelineJobPipelineJob.backfillPipelineJob] choice: sets `backfill_pipeline_job`.
final class HealthcarePipelineJobPipelineJobBackfillPipelineJob
    extends HealthcarePipelineJobPipelineJob {
  const HealthcarePipelineJobPipelineJobBackfillPipelineJob(
    this.backfillPipelineJob,
  );

  final HealthcarePipelineJobBackfillPipelineJob backfillPipelineJob;

  @override
  String get blockKey => 'backfill_pipeline_job';

  @override
  Map<String, Object?> encode() => {
    'backfill_pipeline_job': backfillPipelineJob.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'backfill_pipeline_job': TfArg.literal(backfillPipelineJob.encode()),
  };
}

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
    this.destination,
    this.fhirStreamingSource,
    required this.mappingConfig,
  });

  final HealthcarePipelineJobMappingPipelineJobDestination? destination;

  final HealthcarePipelineJobMappingPipelineJobFhirStreamingSource?
  fhirStreamingSource;

  final HealthcarePipelineJobMappingPipelineJobMappingConfig mappingConfig;

  Map<String, Object?> encode() => {
    ...?destination?.encode(),
    if (fhirStreamingSource != null)
      'fhir_streaming_source': fhirStreamingSource!.encode(),
    'mapping_config': mappingConfig.encode(),
  };
}

/// At most one of `fhir_store_destination`, `reconciliation_destination` on the `mapping_pipeline_job` block of `google_healthcare_pipeline_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.fhirStoreDestination(...)`.
sealed class HealthcarePipelineJobMappingPipelineJobDestination {
  const HealthcarePipelineJobMappingPipelineJobDestination();

  /// Sets `fhir_store_destination`.
  const factory HealthcarePipelineJobMappingPipelineJobDestination.fhirStoreDestination(
    TfArg<String> fhirStoreDestination,
  ) = HealthcarePipelineJobMappingPipelineJobDestinationFhirStoreDestination;

  /// Sets `reconciliation_destination`.
  const factory HealthcarePipelineJobMappingPipelineJobDestination.reconciliationDestination(
    TfArg<bool> reconciliationDestination,
  ) = HealthcarePipelineJobMappingPipelineJobDestinationReconciliationDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [HealthcarePipelineJobMappingPipelineJobDestination.fhirStoreDestination] choice: sets `fhir_store_destination`.
final class HealthcarePipelineJobMappingPipelineJobDestinationFhirStoreDestination
    extends HealthcarePipelineJobMappingPipelineJobDestination {
  const HealthcarePipelineJobMappingPipelineJobDestinationFhirStoreDestination(
    this.fhirStoreDestination,
  );

  final TfArg<String> fhirStoreDestination;

  @override
  String get blockKey => 'fhir_store_destination';

  @override
  Map<String, Object?> encode() => {
    'fhir_store_destination': fhirStoreDestination.toTfJson(),
  };
}

/// The [HealthcarePipelineJobMappingPipelineJobDestination.reconciliationDestination] choice: sets `reconciliation_destination`.
final class HealthcarePipelineJobMappingPipelineJobDestinationReconciliationDestination
    extends HealthcarePipelineJobMappingPipelineJobDestination {
  const HealthcarePipelineJobMappingPipelineJobDestinationReconciliationDestination(
    this.reconciliationDestination,
  );

  final TfArg<bool> reconciliationDestination;

  @override
  String get blockKey => 'reconciliation_destination';

  @override
  Map<String, Object?> encode() => {
    'reconciliation_destination': reconciliationDestination.toTfJson(),
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
    HealthcarePipelineJobPipelineJob? pipelineJob,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disableLineage != null) 'disable_lineage': disableLineage,
           if (labels != null) 'labels': labels,
           'location': location,
           'name': name,
           ...?pipelineJob?.argMap,
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
