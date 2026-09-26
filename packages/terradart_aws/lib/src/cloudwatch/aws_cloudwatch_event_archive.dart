// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? kmsKeyIdentifier,
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
           if (description != null) 'description': description,
           if (eventPattern != null) 'event_pattern': eventPattern,
           'event_source_arn': eventSourceArn,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           'name': name,
           if (region != null) 'region': region,
           if (retentionDays != null) 'retention_days': retentionDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventArchiveSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
