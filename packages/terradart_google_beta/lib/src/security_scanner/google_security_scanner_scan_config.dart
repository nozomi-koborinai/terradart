// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_security_scanner_scan_config`.
const Set<String> _googleSecurityScannerScanConfigSensitive = <String>{
  'authentication.custom_account.password',
  'authentication.google_account.password',
};

/// Security Scanner Scan Config Export To Security Command enum for `export_to_security_command_center`.
enum SecurityScannerScanConfigExportToSecurityCommandCenter
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityScannerScanConfigExportToSecurityCommandCenter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Security Scanner Scan Config Target enum for `target_platforms`.
enum SecurityScannerScanConfigTargetPlatforms implements TerraformEnum {
  appEngine('APP_ENGINE'),
  compute('COMPUTE');

  const SecurityScannerScanConfigTargetPlatforms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Security Scanner Scan Config User enum for `user_agent`.
enum SecurityScannerScanConfigUserAgent implements TerraformEnum {
  userAgentUnspecified('USER_AGENT_UNSPECIFIED'),
  chromeLinux('CHROME_LINUX'),
  chromeAndroid('CHROME_ANDROID'),
  safariIphone('SAFARI_IPHONE');

  const SecurityScannerScanConfigUserAgent(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authentication` block of
/// `google_security_scanner_scan_config` (derived from provider schema).
@immutable
final class SecurityScannerScanConfigAuthentication {
  const SecurityScannerScanConfigAuthentication({
    this.customAccount,
    this.googleAccount,
  });

  final SecurityScannerScanConfigAuthenticationCustomAccount? customAccount;

  final SecurityScannerScanConfigAuthenticationGoogleAccount? googleAccount;

  Map<String, Object?> encode() => {
    'custom_account': ?customAccount?.encode(),
    'google_account': ?googleAccount?.encode(),
  };
}

/// Typed helper for the `authentication.custom_account` block of
/// `google_security_scanner_scan_config` (derived from provider schema).
@immutable
final class SecurityScannerScanConfigAuthenticationCustomAccount {
  const SecurityScannerScanConfigAuthenticationCustomAccount({
    required this.loginUrl,
    required this.password,
    required this.username,
  });

  final TfArg<String> loginUrl;

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'login_url': loginUrl.toTfJson(),
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `authentication.google_account` block of
/// `google_security_scanner_scan_config` (derived from provider schema).
@immutable
final class SecurityScannerScanConfigAuthenticationGoogleAccount {
  const SecurityScannerScanConfigAuthenticationGoogleAccount({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `google_security_scanner_scan_config` (derived from provider schema).
@immutable
final class SecurityScannerScanConfigSchedule {
  const SecurityScannerScanConfigSchedule({
    required this.intervalDurationDays,
    this.scheduleTime,
  });

  final TfArg<num> intervalDurationDays;

  final TfArg<String>? scheduleTime;

  Map<String, Object?> encode() => {
    'interval_duration_days': intervalDurationDays.toTfJson(),
    'schedule_time': ?scheduleTime?.toTfJson(),
  };
}

/// Factory wrapper for `google_security_scanner_scan_config`.
///
/// A ScanConfig resource contains the configurations to launch a scan.
final class GoogleSecurityScannerScanConfig extends Resource {
  static const String tfType = 'google_security_scanner_scan_config';

  GoogleSecurityScannerScanConfig({
    required super.localName,
    TfArg<List<String>>? blacklistPatterns,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<SecurityScannerScanConfigExportToSecurityCommandCenter>?
    exportToSecurityCommandCenter,
    TfArg<bool>? ignoreHttpStatusErrors,
    TfArg<num>? maxQps,
    TfArg<String>? project,
    required TfArg<List<String>> startingUrls,
    TfArg<bool>? staticIpScan,
    List<TfArg<SecurityScannerScanConfigTargetPlatforms>>? targetPlatforms,
    TfArg<SecurityScannerScanConfigUserAgent>? userAgent,
    SecurityScannerScanConfigAuthentication? authentication,
    SecurityScannerScanConfigSchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'blacklist_patterns': ?blacklistPatterns,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'export_to_security_command_center': ?exportToSecurityCommandCenter,
           'ignore_http_status_errors': ?ignoreHttpStatusErrors,
           'max_qps': ?maxQps,
           'project': ?project,
           'starting_urls': startingUrls,
           'static_ip_scan': ?staticIpScan,
           if (targetPlatforms != null)
             'target_platforms': TfArg.literal([
               for (final e in targetPlatforms) e.toTfJson(),
             ]),
           'user_agent': ?userAgent,
           if (authentication != null)
             'authentication': TfArg.literal(authentication.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecurityScannerScanConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecurityScannerScanConfig>`.
  RefTo<GoogleSecurityScannerScanConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
