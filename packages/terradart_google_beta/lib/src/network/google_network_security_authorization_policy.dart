// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_authorization_policy`.
const Set<String> _googleNetworkSecurityAuthorizationPolicySensitive =
    <String>{};

/// Factory wrapper for `google_network_security_authorization_policy`.
final class GoogleNetworkSecurityAuthorizationPolicy extends Resource {
  static const String tfType = 'google_network_security_authorization_policy';

  GoogleNetworkSecurityAuthorizationPolicy({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<List<Map<String, dynamic>>>? rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'action': action,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           'name': name,
           if (project != null) 'project': project,
           if (rules != null) 'rules': rules,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAuthorizationPolicySensitive;
}
