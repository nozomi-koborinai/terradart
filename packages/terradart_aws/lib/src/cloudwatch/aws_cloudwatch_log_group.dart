// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatch_log_group`.
const Set<String> _awsCloudwatchLogGroupSensitive = <String>{};

/// Cloudwatch Log Group enum for `log_group_class`.
enum CloudwatchLogGroupClass implements TerraformEnum {
  standard('STANDARD'),
  infrequentAccess('INFREQUENT_ACCESS'),
  delivery('DELIVERY');

  const CloudwatchLogGroupClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_cloudwatch_log_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class CloudwatchLogGroupName {
  const CloudwatchLogGroupName();

  /// Sets `name`.
  const factory CloudwatchLogGroupName.name(TfArg<String> name) =
      CloudwatchLogGroupNameChoice;

  /// Sets `name_prefix`.
  const factory CloudwatchLogGroupName.namePrefix(TfArg<String> namePrefix) =
      CloudwatchLogGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchLogGroupName.name] choice: sets `name`.
final class CloudwatchLogGroupNameChoice extends CloudwatchLogGroupName {
  const CloudwatchLogGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudwatchLogGroupName.namePrefix] choice: sets `name_prefix`.
final class CloudwatchLogGroupNamePrefix extends CloudwatchLogGroupName {
  const CloudwatchLogGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_cloudwatch_log_group`.
///
/// AWS **CloudWatch Logs log group**. Declare a Lambda function's group
/// (`/aws/lambda/<function name>`) yourself to control
/// `retentionInDays`; otherwise Lambda creates it on first invocation
/// with no expiry, outside Terraform.
final class AwsCloudwatchLogGroup extends Resource {
  static const String tfType = 'aws_cloudwatch_log_group';

  AwsCloudwatchLogGroup({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<CloudwatchLogGroupClass>? logGroupClass,
    CloudwatchLogGroupName? name,
    TfArg<String>? region,
    TfArg<num>? retentionInDays,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'log_group_class': ?logGroupClass,
           ...?name?.argMap,
           'region': ?region,
           'retention_in_days': ?retentionInDays,
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogGroup>`.
  RefTo<AwsCloudwatchLogGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `log_group_class` attribute.
  TfRef<String> get logGroupClass =>
      TfRef.attribute<String>(this, 'log_group_class');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
