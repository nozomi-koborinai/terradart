// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arczonalshift_autoshift_observer_notification_status`.
const Set<String>
_awsArczonalshiftAutoshiftObserverNotificationStatusSensitive = <String>{};

/// Arczonalshift Autoshift Observer Notification enum for `status`.
extension type const ArczonalshiftAutoshiftObserverNotificationStatus._(
  TfArg<String> _
) implements TfArg<String> {
  ArczonalshiftAutoshiftObserverNotificationStatus.variable(String name)
    : this._(TfArg.variable(name));
  ArczonalshiftAutoshiftObserverNotificationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ArczonalshiftAutoshiftObserverNotificationStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = ArczonalshiftAutoshiftObserverNotificationStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = ArczonalshiftAutoshiftObserverNotificationStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<ArczonalshiftAutoshiftObserverNotificationStatus> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_arczonalshift_autoshift_observer_notification_status`.
final class AwsArczonalshiftAutoshiftObserverNotificationStatus
    extends Resource {
  static const String tfType =
      'aws_arczonalshift_autoshift_observer_notification_status';

  AwsArczonalshiftAutoshiftObserverNotificationStatus(
    super.localName, {
    TfArg<String>? region,
    required ArczonalshiftAutoshiftObserverNotificationStatus status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'status': status},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsArczonalshiftAutoshiftObserverNotificationStatusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsArczonalshiftAutoshiftObserverNotificationStatus>`.
  RefTo<AwsArczonalshiftAutoshiftObserverNotificationStatus> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
