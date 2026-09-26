// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_archive`.
const Set<String> _awsMailmanagerArchiveSensitive = <String>{};

/// Typed helper for the `retention` block of
/// `aws_mailmanager_archive` (derived from provider schema).
@immutable
final class MailmanagerArchiveRetention {
  const MailmanagerArchiveRetention({required this.retentionPeriod});

  final TfArg<String> retentionPeriod;

  Map<String, Object?> encode() => {
    'retention_period': retentionPeriod.toTfJson(),
  };
}

/// Factory wrapper for `aws_mailmanager_archive`.
final class AwsMailmanagerArchive extends Resource {
  static const String tfType = 'aws_mailmanager_archive';

  AwsMailmanagerArchive({
    required super.localName,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MailmanagerArchiveRetention>? retention,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (retention != null)
             'retention': TfArg.literal([
               for (final e in retention) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerArchiveSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `archive_state` attribute.
  TfRef<String> get archiveState =>
      TfRef.attribute<String>(this, 'archive_state');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_updated_timestamp` attribute.
  TfRef<String> get lastUpdatedTimestamp =>
      TfRef.attribute<String>(this, 'last_updated_timestamp');

  /// Reference to `retention_actual` attribute.
  TfRef<List<Map<String, Object?>>> get retentionActual =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retention_actual');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
