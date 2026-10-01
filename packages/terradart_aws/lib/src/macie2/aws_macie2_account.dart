// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_account`.
const Set<String> _awsMacie2AccountSensitive = <String>{};

/// Macie2 Account Finding Publishing enum for `finding_publishing_frequency`.
extension type const Macie2AccountFindingPublishingFrequency._(TfArg<String> _)
    implements TfArg<String> {
  Macie2AccountFindingPublishingFrequency.variable(String name)
    : this._(TfArg.variable(name));
  Macie2AccountFindingPublishingFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const Macie2AccountFindingPublishingFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const fifteenMinutes = Macie2AccountFindingPublishingFrequency._(
    TfArgLiteral('FIFTEEN_MINUTES'),
  );
  static const oneHour = Macie2AccountFindingPublishingFrequency._(
    TfArgLiteral('ONE_HOUR'),
  );
  static const sixHours = Macie2AccountFindingPublishingFrequency._(
    TfArgLiteral('SIX_HOURS'),
  );

  static const List<Macie2AccountFindingPublishingFrequency> values = [
    fifteenMinutes,
    oneHour,
    sixHours,
  ];
}

/// Macie2 Account enum for `status`.
extension type const Macie2AccountStatus._(TfArg<String> _)
    implements TfArg<String> {
  Macie2AccountStatus.variable(String name) : this._(TfArg.variable(name));
  Macie2AccountStatus.expression(String template)
    : this._(TfArg.expression(template));
  const Macie2AccountStatus.arg(TfArg<String> arg) : this._(arg);

  static const paused = Macie2AccountStatus._(TfArgLiteral('PAUSED'));
  static const enabled = Macie2AccountStatus._(TfArgLiteral('ENABLED'));

  static const List<Macie2AccountStatus> values = [paused, enabled];
}

/// Factory wrapper for `aws_macie2_account`.
final class AwsMacie2Account extends Resource {
  static const String tfType = 'aws_macie2_account';

  AwsMacie2Account(
    super.localName, {
    Macie2AccountFindingPublishingFrequency? findingPublishingFrequency,
    TfArg<String>? region,
    Macie2AccountStatus? status,
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

  /// Reference to `finding_publishing_frequency` attribute.
  TfRef<String> get findingPublishingFrequency =>
      TfRef.attribute<String>(this, 'finding_publishing_frequency');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
