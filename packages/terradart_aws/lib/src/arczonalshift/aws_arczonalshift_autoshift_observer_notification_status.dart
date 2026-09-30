// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arczonalshift_autoshift_observer_notification_status`.
const Set<String>
_awsArczonalshiftAutoshiftObserverNotificationStatusSensitive = <String>{};

/// Arczonalshift Autoshift Observer Notification Status enum for `status`.
enum ArczonalshiftAutoshiftObserverNotificationStatusStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const ArczonalshiftAutoshiftObserverNotificationStatusStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_arczonalshift_autoshift_observer_notification_status`.
final class AwsArczonalshiftAutoshiftObserverNotificationStatus
    extends Resource {
  static const String tfType =
      'aws_arczonalshift_autoshift_observer_notification_status';

  AwsArczonalshiftAutoshiftObserverNotificationStatus({
    required super.localName,
    TfArg<String>? region,
    required TfArg<ArczonalshiftAutoshiftObserverNotificationStatusStatus>
    status,
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
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');
}
