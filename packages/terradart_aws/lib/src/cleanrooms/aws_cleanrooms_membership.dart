// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cleanrooms_membership`.
const Set<String> _awsCleanroomsMembershipSensitive = <String>{};

/// Cleanrooms Membership Query Log enum for `query_log_status`.
enum CleanroomsMembershipQueryLogStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const CleanroomsMembershipQueryLogStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_result_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipDefaultResultConfiguration {
  const CleanroomsMembershipDefaultResultConfiguration({
    this.roleArn,
    this.outputConfiguration,
  });

  final RefTo<AwsIamRole>? roleArn;

  final List<CleanroomsMembershipOutputConfiguration>? outputConfiguration;

  Map<String, Object?> encode() => {
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    if (outputConfiguration != null)
      'output_configuration': [
        for (final e in outputConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `default_result_configuration.output_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipOutputConfiguration {
  const CleanroomsMembershipOutputConfiguration({this.s3});

  final List<CleanroomsMembershipS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `default_result_configuration.output_configuration.s3` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipS3 {
  const CleanroomsMembershipS3({
    required this.bucket,
    this.keyPrefix,
    required this.resultFormat,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? keyPrefix;

  final TfArg<String> resultFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
    'result_format': resultFormat.toTfJson(),
  };
}

/// Typed helper for the `payment_configuration` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipPaymentConfiguration {
  const CleanroomsMembershipPaymentConfiguration({this.queryCompute});

  final List<CleanroomsMembershipQueryCompute>? queryCompute;

  Map<String, Object?> encode() => {
    if (queryCompute != null)
      'query_compute': [for (final e in queryCompute!) e.encode()],
  };
}

/// Typed helper for the `payment_configuration.query_compute` block of
/// `aws_cleanrooms_membership` (derived from provider schema).
@immutable
final class CleanroomsMembershipQueryCompute {
  const CleanroomsMembershipQueryCompute({required this.isResponsible});

  final TfArg<bool> isResponsible;

  Map<String, Object?> encode() => {'is_responsible': isResponsible.toTfJson()};
}

/// Factory wrapper for `aws_cleanrooms_membership`.
final class AwsCleanroomsMembership extends Resource {
  static const String tfType = 'aws_cleanrooms_membership';

  AwsCleanroomsMembership({
    required super.localName,
    required TfArg<String> collaborationId,
    required TfArg<CleanroomsMembershipQueryLogStatus> queryLogStatus,
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCleanroomsMembership>`.
  RefTo<AwsCleanroomsMembership> get ref => RefTo.of(this);

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

  /// Reference to `collaboration_id` attribute.
  TfRef<String> get collaborationId =>
      TfRef.attribute<String>(this, 'collaboration_id');

  /// Reference to `query_log_status` attribute.
  TfRef<String> get queryLogStatus =>
      TfRef.attribute<String>(this, 'query_log_status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
