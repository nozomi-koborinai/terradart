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

  @internal
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

  final S3filesSynchronizationConfigurationTrigger trigger;

  @internal
  Map<String, Object?> encode() => {
    'prefix': prefix.toTfJson(),
    'size_less_than': sizeLessThan.toTfJson(),
    'trigger': trigger.toTfJson(),
  };
}

/// `trigger` — derived from the provider schema description.
extension type const S3filesSynchronizationConfigurationTrigger._(
  TfArg<String> _
) implements TfArg<String> {
  S3filesSynchronizationConfigurationTrigger.variable(String name)
    : this._(TfArg.variable(name));
  S3filesSynchronizationConfigurationTrigger.expression(String template)
    : this._(TfArg.expression(template));
  const S3filesSynchronizationConfigurationTrigger.arg(TfArg<String> arg)
    : this._(arg);

  static const onDirectoryFirstAccess =
      S3filesSynchronizationConfigurationTrigger._(
        TfArgLiteral('ON_DIRECTORY_FIRST_ACCESS'),
      );
  static const onFileAccess = S3filesSynchronizationConfigurationTrigger._(
    TfArgLiteral('ON_FILE_ACCESS'),
  );

  static const List<S3filesSynchronizationConfigurationTrigger> values = [
    onDirectoryFirstAccess,
    onFileAccess,
  ];
}

/// Factory wrapper for `aws_s3files_synchronization_configuration`.
final class AwsS3filesSynchronizationConfiguration extends Resource {
  static const String tfType = 'aws_s3files_synchronization_configuration';

  AwsS3filesSynchronizationConfiguration(
    super.localName, {
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
           'latest_version_number': ?latestVersionNumber,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3filesSynchronizationConfiguration>`.
  RefTo<AwsS3filesSynchronizationConfiguration> get ref => RefTo.of(this);

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `latest_version_number` attribute.
  TfRef<num> get latestVersionNumber =>
      TfRef.attribute<num>(this, 'latest_version_number');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
