// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_account_settings`.
const Set<String> _awsKinesisAccountSettingsSensitive = <String>{};

/// Typed helper for the `minimum_throughput_billing_commitment` block of
/// `aws_kinesis_account_settings` (derived from provider schema).
@immutable
final class KinesisAccountSettingsMinimumThroughputBillingCommitment {
  const KinesisAccountSettingsMinimumThroughputBillingCommitment({
    required this.status,
  });

  final TfArg<KinesisAccountSettingsStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum KinesisAccountSettingsStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const KinesisAccountSettingsStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kinesis_account_settings`.
final class AwsKinesisAccountSettings extends Resource {
  static const String tfType = 'aws_kinesis_account_settings';

  AwsKinesisAccountSettings({
    required super.localName,
    TfArg<String>? region,
    List<KinesisAccountSettingsMinimumThroughputBillingCommitment>?
    minimumThroughputBillingCommitment,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (minimumThroughputBillingCommitment != null)
             'minimum_throughput_billing_commitment': TfArg.literal([
               for (final e in minimumThroughputBillingCommitment) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisAccountSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisAccountSettings>`.
  RefTo<AwsKinesisAccountSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
