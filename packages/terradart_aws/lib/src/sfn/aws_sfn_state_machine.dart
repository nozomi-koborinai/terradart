// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sfn_state_machine`.
const Set<String> _awsSfnStateMachineSensitive = <String>{};

/// Sfn State Machine enum for `type`.
extension type const SfnStateMachineType._(TfArg<String> _)
    implements TfArg<String> {
  SfnStateMachineType.variable(String name) : this._(TfArg.variable(name));
  SfnStateMachineType.expression(String template)
    : this._(TfArg.expression(template));
  const SfnStateMachineType.arg(TfArg<String> arg) : this._(arg);

  static const standard = SfnStateMachineType._(TfArgLiteral('STANDARD'));
  static const express = SfnStateMachineType._(TfArgLiteral('EXPRESS'));

  static const List<SfnStateMachineType> values = [standard, express];
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
      SfnStateMachineNameChoice;

  /// Sets `name_prefix`.
  const factory SfnStateMachineName.namePrefix(TfArg<String> namePrefix) =
      SfnStateMachineNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SfnStateMachineName.name] choice: sets `name`.
final class SfnStateMachineNameChoice extends SfnStateMachineName {
  const SfnStateMachineNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SfnStateMachineName.namePrefix] choice: sets `name_prefix`.
final class SfnStateMachineNamePrefix extends SfnStateMachineName {
  const SfnStateMachineNamePrefix(this.namePrefix);

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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final SfnStateMachineEncryptionConfigurationType? type;

  Map<String, Object?> encode() => {
    'kms_data_key_reuse_period_seconds': ?kmsDataKeyReusePeriodSeconds
        ?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SfnStateMachineEncryptionConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  SfnStateMachineEncryptionConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  SfnStateMachineEncryptionConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const SfnStateMachineEncryptionConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsOwnedKey = SfnStateMachineEncryptionConfigurationType._(
    TfArgLiteral('AWS_OWNED_KEY'),
  );
  static const customerManagedKmsKey =
      SfnStateMachineEncryptionConfigurationType._(
        TfArgLiteral('CUSTOMER_MANAGED_KMS_KEY'),
      );

  static const List<SfnStateMachineEncryptionConfigurationType> values = [
    awsOwnedKey,
    customerManagedKmsKey,
  ];
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

  final SfnStateMachineLevel? level;

  final TfArg<String>? logDestination;

  Map<String, Object?> encode() => {
    'include_execution_data': ?includeExecutionData?.toTfJson(),
    'level': ?level?.toTfJson(),
    'log_destination': ?logDestination?.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
extension type const SfnStateMachineLevel._(TfArg<String> _)
    implements TfArg<String> {
  SfnStateMachineLevel.variable(String name) : this._(TfArg.variable(name));
  SfnStateMachineLevel.expression(String template)
    : this._(TfArg.expression(template));
  const SfnStateMachineLevel.arg(TfArg<String> arg) : this._(arg);

  static const all = SfnStateMachineLevel._(TfArgLiteral('ALL'));
  static const error = SfnStateMachineLevel._(TfArgLiteral('ERROR'));
  static const fatal = SfnStateMachineLevel._(TfArgLiteral('FATAL'));
  static const off = SfnStateMachineLevel._(TfArgLiteral('OFF'));

  static const List<SfnStateMachineLevel> values = [all, error, fatal, off];
}

/// Typed helper for the `tracing_configuration` block of
/// `aws_sfn_state_machine` (derived from provider schema).
@immutable
final class SfnStateMachineTracingConfiguration {
  const SfnStateMachineTracingConfiguration({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `aws_sfn_state_machine`.
final class AwsSfnStateMachine extends Resource {
  static const String tfType = 'aws_sfn_state_machine';

  AwsSfnStateMachine(
    super.localName, {
    required TfArg<String> definition,
    SfnStateMachineName? name,
    TfArg<bool>? publish,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    SfnStateMachineType? type,
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
           'publish': ?publish,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'type': ?type,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSfnStateMachine>`.
  RefTo<AwsSfnStateMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `definition` attribute.
  TfRef<String> get definition => TfRef.attribute<String>(this, 'definition');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `publish` attribute.
  TfRef<bool> get publish => TfRef.attribute<bool>(this, 'publish');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
