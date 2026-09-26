// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_hours_of_operation`.
const Set<String> _awsConnectHoursOfOperationSensitive = <String>{};

/// Typed helper for the `config` block of
/// `aws_connect_hours_of_operation` (derived from provider schema).
@immutable
final class ConnectHoursOfOperationConfig {
  const ConnectHoursOfOperationConfig({
    required this.day,
    required this.endTime,
    required this.startTime,
  });

  final TfArg<String> day;

  final ConnectHoursOfOperationConfigEndTime endTime;

  final ConnectHoursOfOperationConfigStartTime startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'end_time': endTime.encode(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `config.end_time` block of
/// `aws_connect_hours_of_operation` (derived from provider schema).
@immutable
final class ConnectHoursOfOperationConfigEndTime {
  const ConnectHoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  final TfArg<num> hours;

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
  };
}

/// Typed helper for the `config.start_time` block of
/// `aws_connect_hours_of_operation` (derived from provider schema).
@immutable
final class ConnectHoursOfOperationConfigStartTime {
  const ConnectHoursOfOperationConfigStartTime({
    required this.hours,
    required this.minutes,
  });

  final TfArg<num> hours;

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_hours_of_operation`.
final class AwsConnectHoursOfOperation extends Resource {
  static const String tfType = 'aws_connect_hours_of_operation';

  AwsConnectHoursOfOperation({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> timeZone,
    required List<ConnectHoursOfOperationConfig> config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_id': instanceId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'time_zone': timeZone,
           'config': TfArg.literal([for (final e in config) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectHoursOfOperationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hours_of_operation_id` attribute.
  TfRef<String> get hoursOfOperationId =>
      TfRef.attribute<String>(this, 'hours_of_operation_id');
}
