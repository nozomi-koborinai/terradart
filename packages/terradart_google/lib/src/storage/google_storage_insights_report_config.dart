// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_insights_report_config`.
const Set<String> _googleStorageInsightsReportConfigSensitive = <String>{};

/// Inventory report file format (MM `exactly_one_of`: `csv_options` /
/// `parquet_options`).
sealed class StorageInsightsReportConfigFormat {
  const StorageInsightsReportConfigFormat();

  /// `csv_options` — CSV inventory reports.
  const factory StorageInsightsReportConfigFormat.csv({
    TfArg<String>? delimiter,
    TfArg<bool>? headerRequired,
    TfArg<String>? recordSeparator,
  }) = StorageInsightsReportConfigCsvFormat;

  /// `parquet_options` — Parquet inventory reports (empty options object).
  const factory StorageInsightsReportConfigFormat.parquet() =
      StorageInsightsReportConfigParquetFormat;

  String get blockKey;

  /// Single-element list (`nesting_mode: list, max_items: 1`). Parquet
  /// is an empty object (`allow_empty_object`).
  List<Map<String, Object?>> encode();
}

/// `csv_options` — CSV inventory reports.
@immutable
final class StorageInsightsReportConfigCsvFormat
    extends StorageInsightsReportConfigFormat {
  const StorageInsightsReportConfigCsvFormat({
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
final class StorageInsightsReportConfigParquetFormat
    extends StorageInsightsReportConfigFormat {
  const StorageInsightsReportConfigParquetFormat();

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

  final TfArg<StorageInsightsReportConfigFrequency> frequency;

  final StorageInsightsReportConfigEndDate endDate;

  final StorageInsightsReportConfigStartDate startDate;

  Map<String, Object?> encode() => {
    'frequency': frequency.toTfJson(),
    'end_date': endDate.encode(),
    'start_date': startDate.encode(),
  };
}

/// `frequency` — derived from the provider schema description.
enum StorageInsightsReportConfigFrequency implements TerraformEnum {
  daily('DAILY'),
  weekly('WEEKLY');

  const StorageInsightsReportConfigFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `frequency_options.end_date` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigEndDate {
  const StorageInsightsReportConfigEndDate({
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
final class StorageInsightsReportConfigStartDate {
  const StorageInsightsReportConfigStartDate({
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

  final TfArg<List<String>> metadataFields;

  final StorageInsightsReportConfigStorageDestinationOptions
  storageDestinationOptions;

  final StorageInsightsReportConfigStorageFilters? storageFilters;

  Map<String, Object?> encode() => {
    'metadata_fields': metadataFields.toTfJson(),
    'storage_destination_options': storageDestinationOptions.encode(),
    'storage_filters': ?storageFilters?.encode(),
  };
}

/// Typed helper for the `object_metadata_report_options.storage_destination_options` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigStorageDestinationOptions {
  const StorageInsightsReportConfigStorageDestinationOptions({
    required this.bucket,
    this.destinationPath,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? destinationPath;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'destination_path': ?destinationPath?.toTfJson(),
  };
}

/// Typed helper for the `object_metadata_report_options.storage_filters` block of
/// `google_storage_insights_report_config` (derived from provider schema).
@immutable
final class StorageInsightsReportConfigStorageFilters {
  const StorageInsightsReportConfigStorageFilters({this.bucket});

  final RefTo<GoogleStorageBucket>? bucket;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
  };
}

/// Factory wrapper for `google_storage_insights_report_config`.
///
/// Represents an inventory report configuration.
///
/// Cloud Storage **inventory report** config — periodic CSV or Parquet
/// object-metadata dumps into a destination bucket. Pick exactly one
/// [StorageInsightsReportConfigFormat].
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
///   format: const StorageInsightsReportConfigCsvFormat(),
///   frequencyOptions: StorageInsightsReportConfigFrequencyOptions(
///     frequency: TfArg.literal(
///       StorageInsightsReportConfigFrequency.weekly,
///     ),
///     startDate: StorageInsightsReportConfigStartDate(
///       year: TfArg.literal(2099),
///       month: TfArg.literal(1),
///       day: TfArg.literal(1),
///     ),
///     endDate: StorageInsightsReportConfigEndDate(
///       year: TfArg.literal(2099),
///       month: TfArg.literal(12),
///       day: TfArg.literal(31),
///     ),
///   ),
///   objectMetadataReportOptions:
///       StorageInsightsReportConfigObjectMetadataReportOptions(
///     metadataFields: TfArg.literal(['name', 'size']),
///     storageDestinationOptions:
///         StorageInsightsReportConfigStorageDestinationOptions(
///       bucket: reports.ref,
///     ),
///     storageFilters:
///         StorageInsightsReportConfigStorageFilters(
///       bucket: source.ref,
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
    required StorageInsightsReportConfigFormat format,
    StorageInsightsReportConfigFrequencyOptions? frequencyOptions,
    StorageInsightsReportConfigObjectMetadataReportOptions?
    objectMetadataReportOptions,
    TfArg<bool>? forceDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': ?displayName,
           if (frequencyOptions != null)
             'frequency_options': TfArg.literal(frequencyOptions.encode()),
           if (objectMetadataReportOptions != null)
             'object_metadata_report_options': TfArg.literal(
               objectMetadataReportOptions.encode(),
             ),
           'force_destroy': ?forceDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           format.blockKey: TfArg.literal(format.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageInsightsReportConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageInsightsReportConfig>`.
  RefTo<GoogleStorageInsightsReportConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `name` attribute (report config UUID).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
