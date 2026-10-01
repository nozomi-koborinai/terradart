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
sealed class HealthcarePipelineJobTask {
  const HealthcarePipelineJobTask();

  /// Sets `mapping_pipeline_job`.
  const factory HealthcarePipelineJobTask.mappingPipelineJob(
    HealthcarePipelineJobMappingPipelineJob mappingPipelineJob,
  ) = HealthcarePipelineJobTaskMappingPipelineJob;

  /// Sets `reconciliation_pipeline_job`.
  const factory HealthcarePipelineJobTask.reconciliationPipelineJob(
    HealthcarePipelineJobReconciliationPipelineJob reconciliationPipelineJob,
  ) = HealthcarePipelineJobTaskReconciliationPipelineJob;

  /// Sets `backfill_pipeline_job`.
  const factory HealthcarePipelineJobTask.backfillPipelineJob(
    HealthcarePipelineJobBackfillPipelineJob backfillPipelineJob,
  ) = HealthcarePipelineJobTaskBackfillPipelineJob;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [HealthcarePipelineJobTask.mappingPipelineJob] choice: sets `mapping_pipeline_job`.
final class HealthcarePipelineJobTaskMappingPipelineJob
    extends HealthcarePipelineJobTask {
  const HealthcarePipelineJobTaskMappingPipelineJob(this.mappingPipelineJob);

  final HealthcarePipelineJobMappingPipelineJob mappingPipelineJob;

  @internal
  @override
  String get blockKey => 'mapping_pipeline_job';

  @internal
  @override
  Map<String, Object?> encode() => {
    'mapping_pipeline_job': mappingPipelineJob.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mapping_pipeline_job': TfArg.literal(mappingPipelineJob.encode()),
  };
}

/// The [HealthcarePipelineJobTask.reconciliationPipelineJob] choice: sets `reconciliation_pipeline_job`.
final class HealthcarePipelineJobTaskReconciliationPipelineJob
    extends HealthcarePipelineJobTask {
  const HealthcarePipelineJobTaskReconciliationPipelineJob(
    this.reconciliationPipelineJob,
  );

  final HealthcarePipelineJobReconciliationPipelineJob
  reconciliationPipelineJob;

  @internal
  @override
  String get blockKey => 'reconciliation_pipeline_job';

  @internal
  @override
  Map<String, Object?> encode() => {
    'reconciliation_pipeline_job': reconciliationPipelineJob.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'reconciliation_pipeline_job': TfArg.literal(
      reconciliationPipelineJob.encode(),
    ),
  };
}

/// The [HealthcarePipelineJobTask.backfillPipelineJob] choice: sets `backfill_pipeline_job`.
final class HealthcarePipelineJobTaskBackfillPipelineJob
    extends HealthcarePipelineJobTask {
  const HealthcarePipelineJobTaskBackfillPipelineJob(this.backfillPipelineJob);

  final HealthcarePipelineJobBackfillPipelineJob backfillPipelineJob;

  @internal
  @override
  String get blockKey => 'backfill_pipeline_job';

  @internal
  @override
  Map<String, Object?> encode() => {
    'backfill_pipeline_job': backfillPipelineJob.encode(),
  };

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'mapping_pipeline_job': ?mappingPipelineJob?.toTfJson(),
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

  final HealthcarePipelineJobDestination? destination;

  final HealthcarePipelineJobFhirStreamingSource? fhirStreamingSource;

  final HealthcarePipelineJobMappingConfig mappingConfig;

  @internal
  Map<String, Object?> encode() => {
    ...?destination?.encode(),
    'fhir_streaming_source': ?fhirStreamingSource?.encode(),
    'mapping_config': mappingConfig.encode(),
  };
}

/// At most one of `fhir_store_destination`, `reconciliation_destination` on the `mapping_pipeline_job` block of `google_healthcare_pipeline_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.fhirStoreDestination(...)`.
sealed class HealthcarePipelineJobDestination {
  const HealthcarePipelineJobDestination();

  /// Sets `fhir_store_destination`.
  const factory HealthcarePipelineJobDestination.fhirStoreDestination(
    TfArg<String> fhirStoreDestination,
  ) = HealthcarePipelineJobFhirStoreDestination;

  /// Sets `reconciliation_destination`.
  const factory HealthcarePipelineJobDestination.reconciliationDestination(
    TfArg<bool> reconciliationDestination,
  ) = HealthcarePipelineJobReconciliationDestination;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [HealthcarePipelineJobDestination.fhirStoreDestination] choice: sets `fhir_store_destination`.
final class HealthcarePipelineJobFhirStoreDestination
    extends HealthcarePipelineJobDestination {
  const HealthcarePipelineJobFhirStoreDestination(this.fhirStoreDestination);

  final TfArg<String> fhirStoreDestination;

  @internal
  @override
  String get blockKey => 'fhir_store_destination';

  @internal
  @override
  Map<String, Object?> encode() => {
    'fhir_store_destination': fhirStoreDestination.toTfJson(),
  };
}

/// The [HealthcarePipelineJobDestination.reconciliationDestination] choice: sets `reconciliation_destination`.
final class HealthcarePipelineJobReconciliationDestination
    extends HealthcarePipelineJobDestination {
  const HealthcarePipelineJobReconciliationDestination(
    this.reconciliationDestination,
  );

  final TfArg<bool> reconciliationDestination;

  @internal
  @override
  String get blockKey => 'reconciliation_destination';

  @internal
  @override
  Map<String, Object?> encode() => {
    'reconciliation_destination': reconciliationDestination.toTfJson(),
  };
}

/// Typed helper for the `mapping_pipeline_job.fhir_streaming_source` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobFhirStreamingSource {
  const HealthcarePipelineJobFhirStreamingSource({
    this.description,
    required this.fhirStore,
  });

  final TfArg<String>? description;

  final TfArg<String> fhirStore;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'fhir_store': fhirStore.toTfJson(),
  };
}

/// Typed helper for the `mapping_pipeline_job.mapping_config` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMappingConfig {
  const HealthcarePipelineJobMappingConfig({
    this.description,
    this.whistleConfigSource,
  });

  final TfArg<String>? description;

  final HealthcarePipelineJobWhistleConfigSource? whistleConfigSource;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'whistle_config_source': ?whistleConfigSource?.encode(),
  };
}

/// Typed helper for the `mapping_pipeline_job.mapping_config.whistle_config_source` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class HealthcarePipelineJobWhistleConfigSource {
  const HealthcarePipelineJobWhistleConfigSource({
    required this.importUriPrefix,
    required this.uri,
  });

  final TfArg<String> importUriPrefix;

  final TfArg<String> uri;

  @internal
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

  final HealthcarePipelineJobMergeConfig mergeConfig;

  @internal
  Map<String, Object?> encode() => {
    'fhir_store_destination': ?fhirStoreDestination?.toTfJson(),
    'matching_uri_prefix': matchingUriPrefix.toTfJson(),
    'merge_config': mergeConfig.encode(),
  };
}

/// Typed helper for the `reconciliation_pipeline_job.merge_config` block of
/// `google_healthcare_pipeline_job` (derived from provider schema).
@immutable
final class HealthcarePipelineJobMergeConfig {
  const HealthcarePipelineJobMergeConfig({
    this.description,
    required this.whistleConfigSource,
  });

  final TfArg<String>? description;

  final HealthcarePipelineJobWhistleConfigSource whistleConfigSource;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'whistle_config_source': whistleConfigSource.encode(),
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

  GoogleHealthcarePipelineJob(
    super.localName, {
    required TfArg<String> dataset,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disableLineage,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    HealthcarePipelineJobTask? task,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset,
           'deletion_policy': ?deletionPolicy,
           'disable_lineage': ?disableLineage,
           'labels': ?labels,
           'location': location,
           'name': name,
           ...?task?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcarePipelineJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcarePipelineJob>`.
  RefTo<GoogleHealthcarePipelineJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_lineage` attribute.
  TfRef<bool> get disableLineage =>
      TfRef.attribute<bool>(this, 'disable_lineage');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
