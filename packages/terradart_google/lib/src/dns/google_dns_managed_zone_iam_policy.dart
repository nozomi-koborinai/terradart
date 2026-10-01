// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dns/google_dns_managed_zone.dart' show GoogleDnsManagedZone;

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
    required RefTo<GoogleDnsManagedZone> managedZone,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? managedZone.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZoneIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsManagedZoneIamPolicy>`.
  RefTo<GoogleDnsManagedZoneIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `managed_zone` attribute.
  TfRef<String> get managedZone =>
      TfRef.attribute<String>(this, 'managed_zone');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
