// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_group`.
const Set<String> _awsCloudwatchLogGroupSensitive = <String>{};

/// Cloudwatch Log Group Log Group enum for `log_group_class`.
enum CloudwatchLogGroupLogGroupClass implements TerraformEnum {
  standard('STANDARD'),
  infrequentAccess('INFREQUENT_ACCESS'),
  delivery('DELIVERY');

  const CloudwatchLogGroupLogGroupClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_cloudwatch_log_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CloudwatchLogGroupNameOrNamePrefix {
  const CloudwatchLogGroupNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [CloudwatchLogGroupNameOrNamePrefix] choices).
final class CloudwatchLogGroupNameOption
    extends CloudwatchLogGroupNameOrNamePrefix {
  const CloudwatchLogGroupNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [CloudwatchLogGroupNameOrNamePrefix] choices).
final class CloudwatchLogGroupNamePrefixOption
    extends CloudwatchLogGroupNameOrNamePrefix {
  const CloudwatchLogGroupNamePrefixOption({required this.namePrefix});

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
    TfArg<String>? kmsKeyId,
    TfArg<CloudwatchLogGroupLogGroupClass>? logGroupClass,
    CloudwatchLogGroupNameOrNamePrefix? nameOrNamePrefix,
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
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (logGroupClass != null) 'log_group_class': logGroupClass,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           if (retentionInDays != null) 'retention_in_days': retentionInDays,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
