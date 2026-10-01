// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cloudwatch_log_data_protection_policy_document`.
const Set<String> _awsCloudwatchLogDataProtectionPolicyDocumentSensitive =
    <String>{};

/// Typed helper for the `configuration` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentConfiguration {
  const DataCloudwatchLogDataProtectionPolicyDocumentConfiguration({
    this.customDataIdentifier,
  });

  final List<DataCloudwatchLogDataProtectionPolicyDocumentCustomDataIdentifier>?
  customDataIdentifier;

  Map<String, Object?> encode() => {
    if (customDataIdentifier != null)
      'custom_data_identifier': [
        for (final e in customDataIdentifier!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.custom_data_identifier` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentCustomDataIdentifier {
  const DataCloudwatchLogDataProtectionPolicyDocumentCustomDataIdentifier({
    required this.name,
    required this.regex,
  });

  final TfArg<String> name;

  final TfArg<String> regex;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'regex': regex.toTfJson(),
  };
}

/// Typed helper for the `statement` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatement {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatement({
    required this.dataIdentifiers,
    this.sid,
    required this.operation,
  });

  final TfArg<List<String>> dataIdentifiers;

  final TfArg<String>? sid;

  final DataCloudwatchLogDataProtectionPolicyDocumentOperation operation;

  Map<String, Object?> encode() => {
    'data_identifiers': dataIdentifiers.toTfJson(),
    'sid': ?sid?.toTfJson(),
    'operation': operation.encode(),
  };
}

/// Typed helper for the `statement.operation` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentOperation {
  const DataCloudwatchLogDataProtectionPolicyDocumentOperation({
    this.audit,
    this.deidentify,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentAudit? audit;

  final DataCloudwatchLogDataProtectionPolicyDocumentDeidentify? deidentify;

  Map<String, Object?> encode() => {
    'audit': ?audit?.encode(),
    'deidentify': ?deidentify?.encode(),
  };
}

/// Typed helper for the `statement.operation.audit` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentAudit {
  const DataCloudwatchLogDataProtectionPolicyDocumentAudit({
    required this.findingsDestination,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentFindingsDestination
  findingsDestination;

  Map<String, Object?> encode() => {
    'findings_destination': findingsDestination.encode(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentFindingsDestination {
  const DataCloudwatchLogDataProtectionPolicyDocumentFindingsDestination({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentCloudwatchLogs?
  cloudwatchLogs;

  final DataCloudwatchLogDataProtectionPolicyDocumentFirehose? firehose;

  final DataCloudwatchLogDataProtectionPolicyDocumentS3? s3;

  Map<String, Object?> encode() => {
    'cloudwatch_logs': ?cloudwatchLogs?.encode(),
    'firehose': ?firehose?.encode(),
    's3': ?s3?.encode(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination.cloudwatch_logs` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentCloudwatchLogs {
  const DataCloudwatchLogDataProtectionPolicyDocumentCloudwatchLogs({
    required this.logGroup,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroup;

  Map<String, Object?> encode() => {
    'log_group': logGroup.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination.firehose` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentFirehose {
  const DataCloudwatchLogDataProtectionPolicyDocumentFirehose({
    required this.deliveryStream,
  });

  final TfArg<String> deliveryStream;

  Map<String, Object?> encode() => {
    'delivery_stream': deliveryStream.toTfJson(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination.s3` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentS3 {
  const DataCloudwatchLogDataProtectionPolicyDocumentS3({required this.bucket});

  final RefTo<AwsS3Bucket> bucket;

  Map<String, Object?> encode() => {'bucket': bucket.encodeAs('id').toTfJson()};
}

/// Typed helper for the `statement.operation.deidentify` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentDeidentify {
  const DataCloudwatchLogDataProtectionPolicyDocumentDeidentify({
    required this.maskConfig,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentMaskConfig maskConfig;

  Map<String, Object?> encode() => {'mask_config': maskConfig.encode()};
}

/// Typed helper for the `statement.operation.deidentify.mask_config` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentMaskConfig {
  const DataCloudwatchLogDataProtectionPolicyDocumentMaskConfig();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_cloudwatch_log_data_protection_policy_document`.
final class DataAwsCloudwatchLogDataProtectionPolicyDocument extends Data {
  static const String tfType =
      'aws_cloudwatch_log_data_protection_policy_document';

  DataAwsCloudwatchLogDataProtectionPolicyDocument({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? version,
    DataCloudwatchLogDataProtectionPolicyDocumentConfiguration? configuration,
    required List<DataCloudwatchLogDataProtectionPolicyDocumentStatement>
    statement,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'version': ?version,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
           'statement': TfArg.literal([for (final e in statement) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDataProtectionPolicyDocumentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
