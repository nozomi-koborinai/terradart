// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_ingestion_destination`.
const Set<String> _awsAppfabricIngestionDestinationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationDestinationConfiguration {
  const AppfabricIngestionDestinationDestinationConfiguration({this.auditLog});

  final List<AppfabricIngestionDestinationDestinationConfigurationAuditLog>?
  auditLog;

  Map<String, Object?> encode() => {
    if (auditLog != null) 'audit_log': [for (final e in auditLog!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationDestinationConfigurationAuditLog {
  const AppfabricIngestionDestinationDestinationConfigurationAuditLog({
    this.destination,
  });

  final List<
    AppfabricIngestionDestinationDestinationConfigurationAuditLogDestination
  >?
  destination;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log.destination` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationDestinationConfigurationAuditLogDestination {
  const AppfabricIngestionDestinationDestinationConfigurationAuditLogDestination({
    this.firehoseStream,
    this.s3Bucket,
  });

  final List<
    AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream
  >?
  firehoseStream;

  final List<
    AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket
  >?
  s3Bucket;

  Map<String, Object?> encode() => {
    if (firehoseStream != null)
      'firehose_stream': [for (final e in firehoseStream!) e.encode()],
    if (s3Bucket != null) 's3_bucket': [for (final e in s3Bucket!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log.destination.firehose_stream` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream {
  const AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream({
    required this.streamName,
  });

  final TfArg<String> streamName;

  Map<String, Object?> encode() => {'stream_name': streamName.toTfJson()};
}

/// Typed helper for the `destination_configuration.audit_log.destination.s3_bucket` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket {
  const AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket({
    required this.bucketName,
    this.prefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `processing_configuration` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationProcessingConfiguration {
  const AppfabricIngestionDestinationProcessingConfiguration({this.auditLog});

  final List<AppfabricIngestionDestinationProcessingConfigurationAuditLog>?
  auditLog;

  Map<String, Object?> encode() => {
    if (auditLog != null) 'audit_log': [for (final e in auditLog!) e.encode()],
  };
}

/// Typed helper for the `processing_configuration.audit_log` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationProcessingConfigurationAuditLog {
  const AppfabricIngestionDestinationProcessingConfigurationAuditLog({
    required this.format,
    required this.schema,
  });

  final TfArg<String> format;

  final TfArg<String> schema;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'schema': schema.toTfJson(),
  };
}

/// Factory wrapper for `aws_appfabric_ingestion_destination`.
final class AwsAppfabricIngestionDestination extends Resource {
  static const String tfType = 'aws_appfabric_ingestion_destination';

  AwsAppfabricIngestionDestination({
    required super.localName,
    required TfArg<String> appBundleArn,
    required TfArg<String> ingestionArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppfabricIngestionDestinationDestinationConfiguration>?
    destinationConfiguration,
    List<AppfabricIngestionDestinationProcessingConfiguration>?
    processingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_bundle_arn': appBundleArn,
           'ingestion_arn': ingestionArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (destinationConfiguration != null)
             'destination_configuration': TfArg.literal([
               for (final e in destinationConfiguration) e.encode(),
             ]),
           if (processingConfiguration != null)
             'processing_configuration': TfArg.literal([
               for (final e in processingConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricIngestionDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
