// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sfn_state_machine`.
const Set<String> _awsSfnStateMachineSensitive = <String>{};

/// Sfn State Machine enum for `type`.
enum SfnStateMachineType implements TerraformEnum {
  standard('STANDARD'),
  express('EXPRESS');

  const SfnStateMachineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_sfn_state_machine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SfnStateMachineName {
  const SfnStateMachineName();

  /// Sets `name`.
  const factory SfnStateMachineName.name(TfArg<String> name) =
      SfnStateMachineNameName;

  /// Sets `name_prefix`.
  const factory SfnStateMachineName.namePrefix(TfArg<String> namePrefix) =
      SfnStateMachineNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SfnStateMachineName.name] choice: sets `name`.
final class SfnStateMachineNameName extends SfnStateMachineName {
  const SfnStateMachineNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SfnStateMachineName.namePrefix] choice: sets `name_prefix`.
final class SfnStateMachineNameNamePrefix extends SfnStateMachineName {
  const SfnStateMachineNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

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

  final TfArg<SfnStateMachineEncryptionConfigurationType>? type;

  Map<String, Object?> encode() => {
    if (kmsDataKeyReusePeriodSeconds != null)
      'kms_data_key_reuse_period_seconds': kmsDataKeyReusePeriodSeconds!
          .toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SfnStateMachineEncryptionConfigurationType implements TerraformEnum {
  awsOwnedKey('AWS_OWNED_KEY'),
  customerManagedKmsKey('CUSTOMER_MANAGED_KMS_KEY');

  const SfnStateMachineEncryptionConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SfnStateMachineLoggingConfigurationLevel>? level;

  final TfArg<String>? logDestination;

  Map<String, Object?> encode() => {
    if (includeExecutionData != null)
      'include_execution_data': includeExecutionData!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
    if (logDestination != null) 'log_destination': logDestination!.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
enum SfnStateMachineLoggingConfigurationLevel implements TerraformEnum {
  all('ALL'),
  error('ERROR'),
  fatal('FATAL'),
  off('OFF');

  const SfnStateMachineLoggingConfigurationLevel(this.terraformValue);
  @override
  final String terraformValue;
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
    SfnStateMachineName? name,
    TfArg<bool>? publish,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<SfnStateMachineType>? type,
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
           ...?name?.argMap,
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
