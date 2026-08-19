// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_sac_realm`.
const Set<String> _googleNetworkSecuritySacRealmSensitive = <String>{};

/// Factory wrapper for `google_network_security_sac_realm`.
final class GoogleNetworkSecuritySacRealm extends Resource {
  static const String tfType = 'google_network_security_sac_realm';

  GoogleNetworkSecuritySacRealm({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> securityService,
    TfArg<Map<String, dynamic>>? symantecOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'name': name,
           if (project != null) 'project': project,
           'security_service': securityService,
           if (symantecOptions != null) 'symantec_options': symantecOptions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkSecuritySacRealmSensitive;
}
