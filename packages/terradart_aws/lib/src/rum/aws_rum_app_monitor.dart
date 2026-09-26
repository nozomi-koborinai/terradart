// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rum_app_monitor`.
const Set<String> _awsRumAppMonitorSensitive = <String>{};

/// Typed helper for the `app_monitor_configuration` block of
/// `aws_rum_app_monitor` (derived from provider schema).
@immutable
final class RumAppMonitorAppMonitorConfiguration {
  const RumAppMonitorAppMonitorConfiguration({
    this.allowCookies,
    this.enableXray,
    this.excludedPages,
    this.favoritePages,
    this.guestRoleArn,
    this.identityPoolId,
    this.includedPages,
    this.sessionSampleRate,
    this.telemetries,
  });

  final TfArg<bool>? allowCookies;

  final TfArg<bool>? enableXray;

  final TfArg<List<Object?>>? excludedPages;

  final TfArg<List<Object?>>? favoritePages;

  final TfArg<String>? guestRoleArn;

  final TfArg<String>? identityPoolId;

  final TfArg<List<Object?>>? includedPages;

  final TfArg<num>? sessionSampleRate;

  final TfArg<List<Object?>>? telemetries;

  Map<String, Object?> encode() => {
    if (allowCookies != null) 'allow_cookies': allowCookies!.toTfJson(),
    if (enableXray != null) 'enable_xray': enableXray!.toTfJson(),
    if (excludedPages != null) 'excluded_pages': excludedPages!.toTfJson(),
    if (favoritePages != null) 'favorite_pages': favoritePages!.toTfJson(),
    if (guestRoleArn != null) 'guest_role_arn': guestRoleArn!.toTfJson(),
    if (identityPoolId != null) 'identity_pool_id': identityPoolId!.toTfJson(),
    if (includedPages != null) 'included_pages': includedPages!.toTfJson(),
    if (sessionSampleRate != null)
      'session_sample_rate': sessionSampleRate!.toTfJson(),
    if (telemetries != null) 'telemetries': telemetries!.toTfJson(),
  };
}

/// Typed helper for the `custom_events` block of
/// `aws_rum_app_monitor` (derived from provider schema).
@immutable
final class RumAppMonitorCustomEvents {
  const RumAppMonitorCustomEvents({this.status});

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `aws_rum_app_monitor`.
final class AwsRumAppMonitor extends Resource {
  static const String tfType = 'aws_rum_app_monitor';

  AwsRumAppMonitor({
    required super.localName,
    TfArg<bool>? cwLogEnabled,
    TfArg<String>? domain,
    TfArg<List<String>>? domainList,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RumAppMonitorAppMonitorConfiguration? appMonitorConfiguration,
    RumAppMonitorCustomEvents? customEvents,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cwLogEnabled != null) 'cw_log_enabled': cwLogEnabled,
           if (domain != null) 'domain': domain,
           if (domainList != null) 'domain_list': domainList,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (appMonitorConfiguration != null)
             'app_monitor_configuration': TfArg.literal(
               appMonitorConfiguration.encode(),
             ),
           if (customEvents != null)
             'custom_events': TfArg.literal(customEvents.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRumAppMonitorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_monitor_id` attribute.
  TfRef<String> get appMonitorId =>
      TfRef.attribute<String>(this, 'app_monitor_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cw_log_group` attribute.
  TfRef<String> get cwLogGroup => TfRef.attribute<String>(this, 'cw_log_group');
}
