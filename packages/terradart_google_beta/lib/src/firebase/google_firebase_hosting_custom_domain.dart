// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_custom_domain`.
const Set<String> _googleFirebaseHostingCustomDomainSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_custom_domain`.
final class GoogleFirebaseHostingCustomDomain extends Resource {
  static const String tfType = 'google_firebase_hosting_custom_domain';

  GoogleFirebaseHostingCustomDomain({
    required super.localName,
    TfArg<String>? certPreference,
    required TfArg<String> customDomain,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? redirectTarget,
    required TfArg<String> siteId,
    TfArg<bool>? waitDnsVerification,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (certPreference != null) 'cert_preference': certPreference,
           'custom_domain': customDomain,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           if (redirectTarget != null) 'redirect_target': redirectTarget,
           'site_id': siteId,
           if (waitDnsVerification != null)
             'wait_dns_verification': waitDnsVerification,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseHostingCustomDomainSensitive;
}
