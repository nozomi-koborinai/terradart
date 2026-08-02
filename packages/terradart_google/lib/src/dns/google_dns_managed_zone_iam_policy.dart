// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_managed_zone_iam_policy`.
const Set<String> _googleDnsManagedZoneIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dns_managed_zone_iam_policy`.
///
/// Authoritative IAM policy for a Cloud DNS managed zone.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDnsManagedZoneIamMember] for single-principal grants.
final class GoogleDnsManagedZoneIamPolicy extends Resource {
  static const String tfType = 'google_dns_managed_zone_iam_policy';

  GoogleDnsManagedZoneIamPolicy({
    required super.localName,
    required TfArg<String> managedZone,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZoneIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
