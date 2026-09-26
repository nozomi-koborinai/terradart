// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsguru_notification_channel`.
const Set<String> _awsDevopsguruNotificationChannelSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_devopsguru_notification_channel` (derived from provider schema).
@immutable
final class DataDevopsguruNotificationChannelFilters {
  const DataDevopsguruNotificationChannelFilters();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `sns` block of
/// `aws_devopsguru_notification_channel` (derived from provider schema).
@immutable
final class DataDevopsguruNotificationChannelSns {
  const DataDevopsguruNotificationChannelSns();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_devopsguru_notification_channel`.
final class DataAwsDevopsguruNotificationChannel extends Data {
  static const String tfType = 'aws_devopsguru_notification_channel';

  DataAwsDevopsguruNotificationChannel({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    List<DataDevopsguruNotificationChannelFilters>? filters,
    List<DataDevopsguruNotificationChannelSns>? sns,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (filters != null)
             'filters': TfArg.literal([for (final e in filters) e.encode()]),
           if (sns != null)
             'sns': TfArg.literal([for (final e in sns) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruNotificationChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
