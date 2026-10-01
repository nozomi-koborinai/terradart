// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rum_app_monitor`.
const Set<String> _awsRumAppMonitorSensitive = <String>{};

/// Exactly one of `domain`, `domain_list` on `aws_rum_app_monitor`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.domain(...)`.
sealed class RumAppMonitorDomain {
  const RumAppMonitorDomain();

  /// Sets `domain`.
  const factory RumAppMonitorDomain.domain(TfArg<String> domain) =
      RumAppMonitorDomainChoice;

  /// Sets `domain_list`.
  const factory RumAppMonitorDomain.domainList(TfArg<List<String>> domainList) =
      RumAppMonitorDomainList;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RumAppMonitorDomain.domain] choice: sets `domain`.
final class RumAppMonitorDomainChoice extends RumAppMonitorDomain {
  const RumAppMonitorDomainChoice(this.domain);

  final TfArg<String> domain;

  @override
  String get blockKey => 'domain';

  @override
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'domain': domain};
}

/// The [RumAppMonitorDomain.domainList] choice: sets `domain_list`.
final class RumAppMonitorDomainList extends RumAppMonitorDomain {
  const RumAppMonitorDomainList(this.domainList);

  final TfArg<List<String>> domainList;

  @override
  String get blockKey => 'domain_list';

  @override
  Map<String, Object?> encode() => {'domain_list': domainList.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'domain_list': domainList};
}

/// Typed helper for the `app_monitor_configuration` block of
/// `aws_rum_app_monitor` (derived from provider schema).
@immutable
final class RumAppMonitorConfiguration {
  const RumAppMonitorConfiguration({
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

  final TfArg<List<String>>? excludedPages;

  final TfArg<List<String>>? favoritePages;

  final TfArg<String>? guestRoleArn;

  final TfArg<String>? identityPoolId;

  final TfArg<List<String>>? includedPages;

  final TfArg<num>? sessionSampleRate;

  final List<RumAppMonitorTelemetries>? telemetries;

  Map<String, Object?> encode() => {
    'allow_cookies': ?allowCookies?.toTfJson(),
    'enable_xray': ?enableXray?.toTfJson(),
    'excluded_pages': ?excludedPages?.toTfJson(),
    'favorite_pages': ?favoritePages?.toTfJson(),
    'guest_role_arn': ?guestRoleArn?.toTfJson(),
    'identity_pool_id': ?identityPoolId?.toTfJson(),
    'included_pages': ?includedPages?.toTfJson(),
    'session_sample_rate': ?sessionSampleRate?.toTfJson(),
    if (telemetries != null)
      'telemetries': [for (final e in telemetries!) e.toTfJson()],
  };
}

/// `telemetries` — derived from the provider schema description.
extension type const RumAppMonitorTelemetries._(TfArg<String> _)
    implements TfArg<String> {
  RumAppMonitorTelemetries.variable(String name) : this._(TfArg.variable(name));
  RumAppMonitorTelemetries.expression(String template)
    : this._(TfArg.expression(template));
  const RumAppMonitorTelemetries.arg(TfArg<String> arg) : this._(arg);

  static const errors = RumAppMonitorTelemetries._(TfArgLiteral('errors'));
  static const performance = RumAppMonitorTelemetries._(
    TfArgLiteral('performance'),
  );
  static const http = RumAppMonitorTelemetries._(TfArgLiteral('http'));

  static const List<RumAppMonitorTelemetries> values = [
    errors,
    performance,
    http,
  ];
}

/// Typed helper for the `custom_events` block of
/// `aws_rum_app_monitor` (derived from provider schema).
@immutable
final class RumAppMonitorCustomEvents {
  const RumAppMonitorCustomEvents({this.status});

  final RumAppMonitorStatus? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const RumAppMonitorStatus._(TfArg<String> _)
    implements TfArg<String> {
  RumAppMonitorStatus.variable(String name) : this._(TfArg.variable(name));
  RumAppMonitorStatus.expression(String template)
    : this._(TfArg.expression(template));
  const RumAppMonitorStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = RumAppMonitorStatus._(TfArgLiteral('ENABLED'));
  static const disabled = RumAppMonitorStatus._(TfArgLiteral('DISABLED'));

  static const List<RumAppMonitorStatus> values = [enabled, disabled];
}

/// Factory wrapper for `aws_rum_app_monitor`.
final class AwsRumAppMonitor extends Resource {
  static const String tfType = 'aws_rum_app_monitor';

  AwsRumAppMonitor(
    super.localName, {
    TfArg<bool>? cwLogEnabled,
    required RumAppMonitorDomain domain,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RumAppMonitorConfiguration? appMonitorConfiguration,
    RumAppMonitorCustomEvents? customEvents,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cw_log_enabled': ?cwLogEnabled,
           ...domain.argMap,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRumAppMonitor>`.
  RefTo<AwsRumAppMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_monitor_id` attribute.
  TfRef<String> get appMonitorId =>
      TfRef.attribute<String>(this, 'app_monitor_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cw_log_group` attribute.
  TfRef<String> get cwLogGroup => TfRef.attribute<String>(this, 'cw_log_group');

  /// Reference to `cw_log_enabled` attribute.
  TfRef<bool> get cwLogEnabled => TfRef.attribute<bool>(this, 'cw_log_enabled');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `domain_list` attribute.
  TfRef<List<String>> get domainList =>
      TfRef.attribute<List<String>>(this, 'domain_list');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
