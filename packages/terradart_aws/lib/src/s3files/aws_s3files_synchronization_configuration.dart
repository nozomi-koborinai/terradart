// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_synchronization_configuration`.
const Set<String> _awsS3filesSynchronizationConfigurationSensitive = <String>{};

/// Typed helper for the `expiration_data_rule` block of
/// `aws_s3files_synchronization_configuration` (derived from provider schema).
@immutable
final class S3filesSynchronizationConfigurationExpirationDataRule {
  const S3filesSynchronizationConfigurationExpirationDataRule({
    required this.daysAfterLastAccess,
  });

  final TfArg<num> daysAfterLastAccess;

  Map<String, Object?> encode() => {
    'days_after_last_access': daysAfterLastAccess.toTfJson(),
  };
}

/// Typed helper for the `import_data_rule` block of
/// `aws_s3files_synchronization_configuration` (derived from provider schema).
@immutable
final class S3filesSynchronizationConfigurationImportDataRule {
  const S3filesSynchronizationConfigurationImportDataRule({
    required this.prefix,
    required this.sizeLessThan,
    required this.trigger,
  });

  final TfArg<String> prefix;

  final TfArg<num> sizeLessThan;

  final TfArg<String> trigger;

  Map<String, Object?> encode() => {
    'prefix': prefix.toTfJson(),
    'size_less_than': sizeLessThan.toTfJson(),
    'trigger': trigger.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3files_synchronization_configuration`.
final class AwsS3filesSynchronizationConfiguration extends Resource {
  static const String tfType = 'aws_s3files_synchronization_configuration';

  AwsS3filesSynchronizationConfiguration({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<num>? latestVersionNumber,
    TfArg<String>? region,
    List<S3filesSynchronizationConfigurationExpirationDataRule>?
    expirationDataRule,
    List<S3filesSynchronizationConfigurationImportDataRule>? importDataRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           if (latestVersionNumber != null)
             'latest_version_number': latestVersionNumber,
           if (region != null) 'region': region,
           if (expirationDataRule != null)
             'expiration_data_rule': TfArg.literal([
               for (final e in expirationDataRule) e.encode(),
             ]),
           if (importDataRule != null)
             'import_data_rule': TfArg.literal([
               for (final e in importDataRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3filesSynchronizationConfigurationSensitive;
}
