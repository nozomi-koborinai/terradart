// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_guest_policies`.
const Set<String> _googleOsConfigGuestPoliciesSensitive = <String>{};

/// Factory wrapper for `google_os_config_guest_policies`.
final class GoogleOsConfigGuestPolicies extends Resource {
  static const String tfType = 'google_os_config_guest_policies';

  GoogleOsConfigGuestPolicies({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? etag,
    required TfArg<String> guestPolicyId,
    TfArg<String>? project,
    required TfArg<Map<String, dynamic>> assignment,
    TfArg<List<Map<String, dynamic>>>? packageRepositories,
    TfArg<List<Map<String, dynamic>>>? packages,
    TfArg<List<Map<String, dynamic>>>? recipes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (etag != null) 'etag': etag,
           'guest_policy_id': guestPolicyId,
           if (project != null) 'project': project,
           'assignment': assignment,
           if (packageRepositories != null)
             'package_repositories': packageRepositories,
           if (packages != null) 'packages': packages,
           if (recipes != null) 'recipes': recipes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigGuestPoliciesSensitive;
}
