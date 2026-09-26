// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sfn_state_machine`.
const Set<String> _awsSfnStateMachineSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_sfn_state_machine` (derived from provider schema).
@immutable
final class SfnStateMachineEncryptionConfiguration {
  const SfnStateMachineEncryptionConfiguration({
    this.kmsDataKeyReusePeriodSeconds,
    this.kmsKeyId,
    this.type,
  });

  final TfArg<num>? kmsDataKeyReusePeriodSeconds;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (kmsDataKeyReusePeriodSeconds != null)
      'kms_data_key_reuse_period_seconds': kmsDataKeyReusePeriodSeconds!
          .toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `logging_configuration` block of
/// `aws_sfn_state_machine` (derived from provider schema).
@immutable
final class SfnStateMachineLoggingConfiguration {
  const SfnStateMachineLoggingConfiguration({
    this.includeExecutionData,
    this.level,
    this.logDestination,
  });

  final TfArg<bool>? includeExecutionData;

  final TfArg<String>? level;

  final TfArg<String>? logDestination;

  Map<String, Object?> encode() => {
    if (includeExecutionData != null)
      'include_execution_data': includeExecutionData!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
    if (logDestination != null) 'log_destination': logDestination!.toTfJson(),
  };
}

/// Typed helper for the `tracing_configuration` block of
/// `aws_sfn_state_machine` (derived from provider schema).
@immutable
final class SfnStateMachineTracingConfiguration {
  const SfnStateMachineTracingConfiguration({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sfn_state_machine`.
final class AwsSfnStateMachine extends Resource {
  static const String tfType = 'aws_sfn_state_machine';

  AwsSfnStateMachine({
    required super.localName,
    required TfArg<String> definition,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<bool>? publish,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    SfnStateMachineEncryptionConfiguration? encryptionConfiguration,
    SfnStateMachineLoggingConfiguration? loggingConfiguration,
    SfnStateMachineTracingConfiguration? tracingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'definition': definition,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (publish != null) 'publish': publish,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
           if (tracingConfiguration != null)
             'tracing_configuration': TfArg.literal(
               tracingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSfnStateMachineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `state_machine_version_arn` attribute.
  TfRef<String> get stateMachineVersionArn =>
      TfRef.attribute<String>(this, 'state_machine_version_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');
}
