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

  final KinesisAccountSettingsStatus status;

  @internal
  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const KinesisAccountSettingsStatus._(TfArg<String> _)
    implements TfArg<String> {
  KinesisAccountSettingsStatus.variable(String name)
    : this._(TfArg.variable(name));
  KinesisAccountSettingsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisAccountSettingsStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = KinesisAccountSettingsStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = KinesisAccountSettingsStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<KinesisAccountSettingsStatus> values = [enabled, disabled];
}

/// Factory wrapper for `aws_kinesis_account_settings`.
final class AwsKinesisAccountSettings extends Resource {
  static const String tfType = 'aws_kinesis_account_settings';

  AwsKinesisAccountSettings(
    super.localName, {
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
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
