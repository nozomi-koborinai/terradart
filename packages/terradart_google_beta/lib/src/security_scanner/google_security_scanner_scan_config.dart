// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_security_scanner_scan_config`.
const Set<String> _googleSecurityScannerScanConfigSensitive = <String>{
  'authentication.custom_account.password',
  'authentication.google_account.password',
};

/// Factory wrapper for `google_security_scanner_scan_config`.
final class GoogleSecurityScannerScanConfig extends Resource {
  static const String tfType = 'google_security_scanner_scan_config';

  GoogleSecurityScannerScanConfig({
    required super.localName,
    TfArg<List<String>>? blacklistPatterns,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<String>? exportToSecurityCommandCenter,
    TfArg<bool>? ignoreHttpStatusErrors,
    TfArg<num>? maxQps,
    TfArg<String>? project,
    required TfArg<List<String>> startingUrls,
    TfArg<List<String>>? targetPlatforms,
    TfArg<String>? userAgent,
    TfArg<Map<String, dynamic>>? authentication,
    TfArg<Map<String, dynamic>>? schedule,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (blacklistPatterns != null)
             'blacklist_patterns': blacklistPatterns,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (exportToSecurityCommandCenter != null)
             'export_to_security_command_center': exportToSecurityCommandCenter,
           if (ignoreHttpStatusErrors != null)
             'ignore_http_status_errors': ignoreHttpStatusErrors,
           if (maxQps != null) 'max_qps': maxQps,
           if (project != null) 'project': project,
           'starting_urls': startingUrls,
           if (targetPlatforms != null) 'target_platforms': targetPlatforms,
           if (userAgent != null) 'user_agent': userAgent,
           if (authentication != null) 'authentication': authentication,
           if (schedule != null) 'schedule': schedule,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecurityScannerScanConfigSensitive;
}
