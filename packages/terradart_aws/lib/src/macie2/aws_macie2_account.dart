// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_account`.
const Set<String> _awsMacie2AccountSensitive = <String>{};

/// Macie2 Account Finding Publishing enum for `finding_publishing_frequency`.
enum Macie2AccountFindingPublishingFrequency implements TerraformEnum {
  fifteenMinutes('FIFTEEN_MINUTES'),
  oneHour('ONE_HOUR'),
  sixHours('SIX_HOURS');

  const Macie2AccountFindingPublishingFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Macie2 Account enum for `status`.
enum Macie2AccountStatus implements TerraformEnum {
  paused('PAUSED'),
  enabled('ENABLED');

  const Macie2AccountStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_macie2_account`.
final class AwsMacie2Account extends Resource {
  static const String tfType = 'aws_macie2_account';

  AwsMacie2Account({
    required super.localName,
    TfArg<Macie2AccountFindingPublishingFrequency>? findingPublishingFrequency,
    TfArg<String>? region,
    TfArg<Macie2AccountStatus>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'finding_publishing_frequency': ?findingPublishingFrequency,
           'region': ?region,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2AccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMacie2Account>`.
  RefTo<AwsMacie2Account> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
