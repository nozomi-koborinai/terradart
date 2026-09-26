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

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
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
           if (region != null) 'region': region,
           if (minimumThroughputBillingCommitment != null)
             'minimum_throughput_billing_commitment': TfArg.literal([
               for (final e in minimumThroughputBillingCommitment) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisAccountSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
