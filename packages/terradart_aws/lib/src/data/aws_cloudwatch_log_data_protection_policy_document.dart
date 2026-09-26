// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<
    DataCloudwatchLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier
  >?
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
final class DataCloudwatchLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier {
  const DataCloudwatchLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier({
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

  final TfArg<List<Object?>> dataIdentifiers;

  final TfArg<String>? sid;

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperation
  operation;

  Map<String, Object?> encode() => {
    'data_identifiers': dataIdentifiers.toTfJson(),
    if (sid != null) 'sid': sid!.toTfJson(),
    'operation': operation.encode(),
  };
}

/// Typed helper for the `statement.operation` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperation {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperation({
    this.audit,
    this.deidentify,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAudit?
  audit;

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentify?
  deidentify;

  Map<String, Object?> encode() => {
    if (audit != null) 'audit': audit!.encode(),
    if (deidentify != null) 'deidentify': deidentify!.encode(),
  };
}

/// Typed helper for the `statement.operation.audit` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAudit {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAudit({
    required this.findingsDestination,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination
  findingsDestination;

  Map<String, Object?> encode() => {
    'findings_destination': findingsDestination.encode(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs?
  cloudwatchLogs;

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose?
  firehose;

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3?
  s3;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
  };
}

/// Typed helper for the `statement.operation.audit.findings_destination.cloudwatch_logs` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs({
    required this.logGroup,
  });

  final TfArg<String> logGroup;

  Map<String, Object?> encode() => {'log_group': logGroup.toTfJson()};
}

/// Typed helper for the `statement.operation.audit.findings_destination.firehose` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose({
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
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3 {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3({
    required this.bucket,
  });

  final TfArg<String> bucket;

  Map<String, Object?> encode() => {'bucket': bucket.toTfJson()};
}

/// Typed helper for the `statement.operation.deidentify` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentify {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentify({
    required this.maskConfig,
  });

  final DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfig
  maskConfig;

  Map<String, Object?> encode() => {'mask_config': maskConfig.encode()};
}

/// Typed helper for the `statement.operation.deidentify.mask_config` block of
/// `aws_cloudwatch_log_data_protection_policy_document` (derived from provider schema).
@immutable
final class DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfig {
  const DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfig();

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
           if (description != null) 'description': description,
           'name': name,
           if (version != null) 'version': version,
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
}
