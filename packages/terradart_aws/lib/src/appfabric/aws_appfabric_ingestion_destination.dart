// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_appfabric_ingestion_destination`.
const Set<String> _awsAppfabricIngestionDestinationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationConfiguration {
  const AppfabricIngestionDestinationConfiguration({this.auditLog});

  final List<AppfabricIngestionDestinationConfigurationAuditLog>? auditLog;

  @internal
  Map<String, Object?> encode() => {
    if (auditLog != null) 'audit_log': [for (final e in auditLog!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationConfigurationAuditLog {
  const AppfabricIngestionDestinationConfigurationAuditLog({this.destination});

  final List<AppfabricIngestionDestination>? destination;

  @internal
  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log.destination` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestination {
  const AppfabricIngestionDestination({this.firehoseStream, this.s3Bucket});

  final List<AppfabricIngestionDestinationFirehoseStream>? firehoseStream;

  final List<AppfabricIngestionDestinationS3Bucket>? s3Bucket;

  @internal
  Map<String, Object?> encode() => {
    if (firehoseStream != null)
      'firehose_stream': [for (final e in firehoseStream!) e.encode()],
    if (s3Bucket != null) 's3_bucket': [for (final e in s3Bucket!) e.encode()],
  };
}

/// Typed helper for the `destination_configuration.audit_log.destination.firehose_stream` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationFirehoseStream {
  const AppfabricIngestionDestinationFirehoseStream({required this.streamName});

  final TfArg<String> streamName;

  @internal
  Map<String, Object?> encode() => {'stream_name': streamName.toTfJson()};
}

/// Typed helper for the `destination_configuration.audit_log.destination.s3_bucket` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationS3Bucket {
  const AppfabricIngestionDestinationS3Bucket({
    required this.bucketName,
    this.prefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? prefix;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `processing_configuration` block of
/// `aws_appfabric_ingestion_destination` (derived from provider schema).
@immutable
final class AppfabricIngestionDestinationProcessingConfiguration {
  const AppfabricIngestionDestinationProcessingConfiguration({this.auditLog});

  final List<AppfabricIngestionDestinationProcessingConfigurationAuditLog>?
  auditLog;

  @internal
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

  final AppfabricIngestionDestinationFormat format;

  final AppfabricIngestionDestinationSchema schema;

  @internal
  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'schema': schema.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
extension type const AppfabricIngestionDestinationFormat._(TfArg<String> _)
    implements TfArg<String> {
  AppfabricIngestionDestinationFormat.variable(String name)
    : this._(TfArg.variable(name));
  AppfabricIngestionDestinationFormat.expression(String template)
    : this._(TfArg.expression(template));
  const AppfabricIngestionDestinationFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const json = AppfabricIngestionDestinationFormat._(
    TfArgLiteral('json'),
  );
  static const parquet = AppfabricIngestionDestinationFormat._(
    TfArgLiteral('parquet'),
  );

  static const List<AppfabricIngestionDestinationFormat> values = [
    json,
    parquet,
  ];
}

/// `schema` — derived from the provider schema description.
extension type const AppfabricIngestionDestinationSchema._(TfArg<String> _)
    implements TfArg<String> {
  AppfabricIngestionDestinationSchema.variable(String name)
    : this._(TfArg.variable(name));
  AppfabricIngestionDestinationSchema.expression(String template)
    : this._(TfArg.expression(template));
  const AppfabricIngestionDestinationSchema.arg(TfArg<String> arg)
    : this._(arg);

  static const ocsf = AppfabricIngestionDestinationSchema._(
    TfArgLiteral('ocsf'),
  );
  static const raw = AppfabricIngestionDestinationSchema._(TfArgLiteral('raw'));

  static const List<AppfabricIngestionDestinationSchema> values = [ocsf, raw];
}

/// Factory wrapper for `aws_appfabric_ingestion_destination`.
final class AwsAppfabricIngestionDestination extends Resource {
  static const String tfType = 'aws_appfabric_ingestion_destination';

  AwsAppfabricIngestionDestination(
    super.localName, {
    required TfArg<String> appBundleArn,
    required TfArg<String> ingestionArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppfabricIngestionDestinationConfiguration>? destinationConfiguration,
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppfabricIngestionDestination>`.
  RefTo<AwsAppfabricIngestionDestination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `app_bundle_arn` attribute.
  TfRef<String> get appBundleArn =>
      TfRef.attribute<String>(this, 'app_bundle_arn');

  /// Reference to `ingestion_arn` attribute.
  TfRef<String> get ingestionArn =>
      TfRef.attribute<String>(this, 'ingestion_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
