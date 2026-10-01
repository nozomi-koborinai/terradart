// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_mailmanager_archive`.
const Set<String> _awsMailmanagerArchiveSensitive = <String>{};

/// Typed helper for the `retention` block of
/// `aws_mailmanager_archive` (derived from provider schema).
@immutable
final class MailmanagerArchiveRetention {
  const MailmanagerArchiveRetention({required this.retentionPeriod});

  final TfArg<MailmanagerArchiveRetentionPeriod> retentionPeriod;

  Map<String, Object?> encode() => {
    'retention_period': retentionPeriod.toTfJson(),
  };
}

/// `retention_period` — derived from the provider schema description.
enum MailmanagerArchiveRetentionPeriod implements TerraformEnum {
  threeMonths('THREE_MONTHS'),
  sixMonths('SIX_MONTHS'),
  nineMonths('NINE_MONTHS'),
  oneYear('ONE_YEAR'),
  eighteenMonths('EIGHTEEN_MONTHS'),
  twoYears('TWO_YEARS'),
  thirtyMonths('THIRTY_MONTHS'),
  threeYears('THREE_YEARS'),
  fourYears('FOUR_YEARS'),
  fiveYears('FIVE_YEARS'),
  sixYears('SIX_YEARS'),
  sevenYears('SEVEN_YEARS'),
  eightYears('EIGHT_YEARS'),
  nineYears('NINE_YEARS'),
  tenYears('TEN_YEARS'),
  permanent('PERMANENT');

  const MailmanagerArchiveRetentionPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_mailmanager_archive`.
final class AwsMailmanagerArchive extends Resource {
  static const String tfType = 'aws_mailmanager_archive';

  AwsMailmanagerArchive(
    super.localName, {
    RefTo<AwsKmsKey>? kmsKeyArn,
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
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (retention != null)
             'retention': TfArg.literal([
               for (final e in retention) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerArchiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMailmanagerArchive>`.
  RefTo<AwsMailmanagerArchive> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
