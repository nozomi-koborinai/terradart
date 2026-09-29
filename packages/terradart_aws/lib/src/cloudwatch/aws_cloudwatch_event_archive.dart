// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatch_event_archive`.
const Set<String> _awsCloudwatchEventArchiveSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_archive`.
final class AwsCloudwatchEventArchive extends Resource {
  static const String tfType = 'aws_cloudwatch_event_archive';

  AwsCloudwatchEventArchive({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? eventPattern,
    required TfArg<String> eventSourceArn,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<num>? retentionDays,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'event_pattern': ?eventPattern,
           'event_source_arn': eventSourceArn,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'retention_days': ?retentionDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventArchiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventArchive>`.
  RefTo<AwsCloudwatchEventArchive> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
