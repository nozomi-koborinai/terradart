// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_insights_report_config`.
const Set<String> _googleStorageInsightsReportConfigSensitive = <String>{};

/// Inventory report file format (MM `exactly_one_of`: `csv_options` /
/// `parquet_options`).
sealed class StorageInsightsReportFormat {
  const StorageInsightsReportFormat();

  String get blockKey;

  /// Single-element list (`nesting_mode: list, max_items: 1`). Parquet
  /// is an empty object (`allow_empty_object`).
  List<Map<String, Object?>> encode();
}

/// `csv_options` — CSV inventory reports.
@immutable
final class StorageInsightsReportCsvFormat extends StorageInsightsReportFormat {
  const StorageInsightsReportCsvFormat({
    this.delimiter,
    this.headerRequired,
    this.recordSeparator,
  });

  final TfArg<String>? delimiter;
  final TfArg<bool>? headerRequired;
  final TfArg<String>? recordSeparator;

  @override
  String get blockKey => 'csv_options';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
      if (headerRequired != null) 'header_required': headerRequired!.toTfJson(),
      if (recordSeparator != null)
        'record_separator': recordSeparator!.toTfJson(),
    },
  ];
}

/// `parquet_options` — Parquet inventory reports (empty options object).
@immutable
final class StorageInsightsReportParquetFormat
    extends StorageInsightsReportFormat {
  const StorageInsightsReportParquetFormat();

  @override
  String get blockKey => 'parquet_options';

  @override
  List<Map<String, Object?>> encode() => [{}];
}

/// Typed helper for the `frequency_options` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigFrequencyOptions {
  const StorageInsightsReportConfigFrequencyOptions({
    required this.frequency,
    required this.endDate,
    required this.startDate,
  });

  final TfArg<StorageInsightsReportConfigFrequencyOptionsFrequency> frequency;

  final StorageInsightsReportConfigFrequencyOptionsEndDate endDate;

  final StorageInsightsReportConfigFrequencyOptionsStartDate startDate;

  Map<String, Object?> encode() => {
    'frequency': frequency.toTfJson(),
    'end_date': endDate.encode(),
    'start_date': startDate.encode(),
  };
}

/// `frequency` — derived from the provider schema description.
enum StorageInsightsReportConfigFrequencyOptionsFrequency
    implements TerraformEnum {
  daily('DAILY'),
  weekly('WEEKLY');

  const StorageInsightsReportConfigFrequencyOptionsFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `frequency_options.end_date` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigFrequencyOptionsEndDate {
  const StorageInsightsReportConfigFrequencyOptionsEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `frequency_options.start_date` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigFrequencyOptionsStartDate {
  const StorageInsightsReportConfigFrequencyOptionsStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `object_metadata_report_options` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigObjectMetadataReportOptions {
  const StorageInsightsReportConfigObjectMetadataReportOptions({
    required this.metadataFields,
    required this.storageDestinationOptions,
    this.storageFilters,
  });

  final TfArg<List<Object?>> metadataFields;

  final StorageInsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions
  storageDestinationOptions;

  final StorageInsightsReportConfigObjectMetadataReportOptionsStorageFilters?
  storageFilters;

  Map<String, Object?> encode() => {
    'metadata_fields': metadataFields.toTfJson(),
    'storage_destination_options': storageDestinationOptions.encode(),
    if (storageFilters != null) 'storage_filters': storageFilters!.encode(),
  };
}

/// Typed helper for the `object_metadata_report_options.storage_destination_options` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions {
  const StorageInsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions({
    required this.bucket,
    this.destinationPath,
  });

  final TfArg<String> bucket;

  final TfArg<String>? destinationPath;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (destinationPath != null)
      'destination_path': destinationPath!.toTfJson(),
  };
}

/// Typed helper for the `object_metadata_report_options.storage_filters` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigObjectMetadataReportOptionsStorageFilters {
  const StorageInsightsReportConfigObjectMetadataReportOptionsStorageFilters({
    this.bucket,
  });

  final TfArg<String>? bucket;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_insights_report_config`.
///
/// Represents an inventory report configuration.
///
/// Cloud Storage **inventory report** config — periodic CSV or Parquet
/// object-metadata dumps into a destination bucket. Pick exactly one
/// [StorageInsightsReportFormat].
///
/// **Cost:** gcp-cost: Cloud Storage `95FF-2EF5-5EA1` list_skus
/// keyword=inventory → 0; Class A ops `4DBF-185F-A415` **$0.005/count
/// after 5k**. billing-behavior: the config is free metadata; report
/// objects (if generated) are usage-metered Standard Storage + Class A.
/// Use a future [frequencyOptions] start date in smoke so no files land.
/// Set [forceDestroy] so Terraform can delete leftover report objects.
///
/// Example:
/// ```dart
/// GoogleStorageInsightsReportConfig(
///   localName: 'inventory',
///   location: TfArg.literal('asia-northeast1'),
///   displayName: TfArg.literal('terradart-inventory'),
///   forceDestroy: TfArg.literal(true),
///   format: const StorageInsightsReportCsvFormat(),
///   frequencyOptions: StorageInsightsReportConfigFrequencyOptions(
///     frequency: TfArg.literal(
///       StorageInsightsReportConfigFrequencyOptionsFrequency.weekly,
///     ),
///     startDate: StorageInsightsReportConfigFrequencyOptionsStartDate(
///       year: TfArg.literal(2099),
///       month: TfArg.literal(1),
///       day: TfArg.literal(1),
///     ),
///     endDate: StorageInsightsReportConfigFrequencyOptionsEndDate(
///       year: TfArg.literal(2099),
///       month: TfArg.literal(12),
///       day: TfArg.literal(31),
///     ),
///   ),
///   objectMetadataReportOptions:
///       StorageInsightsReportConfigObjectMetadataReportOptions(
///     metadataFields: TfArg.literal(['name', 'size']),
///     storageDestinationOptions:
///         StorageInsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions(
///       bucket: TfArg.ref(reports.nameRef),
///     ),
///     storageFilters:
///         StorageInsightsReportConfigObjectMetadataReportOptionsStorageFilters(
///       bucket: TfArg.ref(source.nameRef),
///     ),
///   ),
/// );
/// ```
final class GoogleStorageInsightsReportConfig extends Resource {
  static const String tfType = 'google_storage_insights_report_config';

  GoogleStorageInsightsReportConfig({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? displayName,
    required StorageInsightsReportFormat format,
    StorageInsightsReportConfigFrequencyOptions? frequencyOptions,
    StorageInsightsReportConfigObjectMetadataReportOptions?
    objectMetadataReportOptions,
    TfArg<bool>? forceDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (frequencyOptions != null)
             'frequency_options': TfArg.literal(frequencyOptions.encode()),
           if (objectMetadataReportOptions != null)
             'object_metadata_report_options': TfArg.literal(
               objectMetadataReportOptions.encode(),
             ),
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           format.blockKey: TfArg.literal(format.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageInsightsReportConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (report config UUID).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
