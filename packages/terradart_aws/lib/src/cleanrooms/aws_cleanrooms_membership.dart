// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cleanrooms_membership`.
const Set<String> _awsCleanroomsMembershipSensitive = <String>{};

/// Typed helper for the `default_result_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipDefaultResultConfiguration {
  const CleanroomsMembershipDefaultResultConfiguration({
    this.roleArn,
    this.outputConfiguration,
  });

  final TfArg<String>? roleArn;

  final List<CleanroomsMembershipDefaultResultConfigurationOutputConfiguration>?
  outputConfiguration;

  Map<String, Object?> encode() => {
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (outputConfiguration != null)
      'output_configuration': [
        for (final e in outputConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `default_result_configuration.output_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipDefaultResultConfigurationOutputConfiguration {
  const CleanroomsMembershipDefaultResultConfigurationOutputConfiguration({
    this.s3,
  });

  final List<
    CleanroomsMembershipDefaultResultConfigurationOutputConfigurationS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `default_result_configuration.output_configuration.s3` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipDefaultResultConfigurationOutputConfigurationS3 {
  const CleanroomsMembershipDefaultResultConfigurationOutputConfigurationS3({
    required this.bucket,
    this.keyPrefix,
    required this.resultFormat,
  });

  final TfArg<String> bucket;

  final TfArg<String>? keyPrefix;

  final TfArg<String> resultFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
    'result_format': resultFormat.toTfJson(),
  };
}

/// Typed helper for the `payment_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipPaymentConfiguration {
  const CleanroomsMembershipPaymentConfiguration({this.queryCompute});

  final List<CleanroomsMembershipPaymentConfigurationQueryCompute>?
  queryCompute;

  Map<String, Object?> encode() => {
    if (queryCompute != null)
      'query_compute': [for (final e in queryCompute!) e.encode()],
  };
}

/// Typed helper for the `payment_configuration.query_compute` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipPaymentConfigurationQueryCompute {
  const CleanroomsMembershipPaymentConfigurationQueryCompute({
    required this.isResponsible,
  });

  final TfArg<bool> isResponsible;

  Map<String, Object?> encode() => {'is_responsible': isResponsible.toTfJson()};
}

/// Factory wrapper for `aws_cleanrooms_membership`.
final class AwsCleanroomsMembership extends Resource {
  static const String tfType = 'aws_cleanrooms_membership';

  AwsCleanroomsMembership({
    required super.localName,
    required TfArg<String> collaborationId,
    required TfArg<String> queryLogStatus,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CleanroomsMembershipDefaultResultConfiguration>?
    defaultResultConfiguration,
    List<CleanroomsMembershipPaymentConfiguration>? paymentConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collaboration_id': collaborationId,
           'query_log_status': queryLogStatus,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (defaultResultConfiguration != null)
             'default_result_configuration': TfArg.literal([
               for (final e in defaultResultConfiguration) e.encode(),
             ]),
           if (paymentConfiguration != null)
             'payment_configuration': TfArg.literal([
               for (final e in paymentConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCleanroomsMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `collaboration_arn` attribute.
  TfRef<String> get collaborationArn =>
      TfRef.attribute<String>(this, 'collaboration_arn');

  /// Reference to `collaboration_creator_account_id` attribute.
  TfRef<String> get collaborationCreatorAccountId =>
      TfRef.attribute<String>(this, 'collaboration_creator_account_id');

  /// Reference to `collaboration_creator_display_name` attribute.
  TfRef<String> get collaborationCreatorDisplayName =>
      TfRef.attribute<String>(this, 'collaboration_creator_display_name');

  /// Reference to `collaboration_name` attribute.
  TfRef<String> get collaborationName =>
      TfRef.attribute<String>(this, 'collaboration_name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `member_abilities` attribute.
  TfRef<List<String>> get memberAbilities =>
      TfRef.attribute<List<String>>(this, 'member_abilities');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
