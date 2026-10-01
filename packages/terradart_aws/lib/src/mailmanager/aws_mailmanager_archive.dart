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

  final MailmanagerArchiveRetentionPeriod retentionPeriod;

  Map<String, Object?> encode() => {
    'retention_period': retentionPeriod.toTfJson(),
  };
}

/// `retention_period` — derived from the provider schema description.
extension type const MailmanagerArchiveRetentionPeriod._(TfArg<String> _)
    implements TfArg<String> {
  MailmanagerArchiveRetentionPeriod.variable(String name)
    : this._(TfArg.variable(name));
  MailmanagerArchiveRetentionPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const MailmanagerArchiveRetentionPeriod.arg(TfArg<String> arg) : this._(arg);

  static const threeMonths = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('THREE_MONTHS'),
  );
  static const sixMonths = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('SIX_MONTHS'),
  );
  static const nineMonths = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('NINE_MONTHS'),
  );
  static const oneYear = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('ONE_YEAR'),
  );
  static const eighteenMonths = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('EIGHTEEN_MONTHS'),
  );
  static const twoYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('TWO_YEARS'),
  );
  static const thirtyMonths = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('THIRTY_MONTHS'),
  );
  static const threeYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('THREE_YEARS'),
  );
  static const fourYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('FOUR_YEARS'),
  );
  static const fiveYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('FIVE_YEARS'),
  );
  static const sixYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('SIX_YEARS'),
  );
  static const sevenYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('SEVEN_YEARS'),
  );
  static const eightYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('EIGHT_YEARS'),
  );
  static const nineYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('NINE_YEARS'),
  );
  static const tenYears = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('TEN_YEARS'),
  );
  static const permanent = MailmanagerArchiveRetentionPeriod._(
    TfArgLiteral('PERMANENT'),
  );

  static const List<MailmanagerArchiveRetentionPeriod> values = [
    threeMonths,
    sixMonths,
    nineMonths,
    oneYear,
    eighteenMonths,
    twoYears,
    thirtyMonths,
    threeYears,
    fourYears,
    fiveYears,
    sixYears,
    sevenYears,
    eightYears,
    nineYears,
    tenYears,
    permanent,
  ];
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
