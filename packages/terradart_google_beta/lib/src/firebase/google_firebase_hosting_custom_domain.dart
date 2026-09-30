// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_custom_domain`.
const Set<String> _googleFirebaseHostingCustomDomainSensitive = <String>{};

/// Firebase Hosting Custom Domain Cert enum for `cert_preference`.
enum FirebaseHostingCustomDomainCertPreference implements TerraformEnum {
  grouped('GROUPED'),
  projectGrouped('PROJECT_GROUPED'),
  dedicated('DEDICATED');

  const FirebaseHostingCustomDomainCertPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Firebase Hosting Custom Domain Ownership enum for `ownership_state`.
enum FirebaseHostingCustomDomainOwnershipState implements TerraformEnum {
  ownershipMissing('OWNERSHIP_MISSING'),
  ownershipUnreachable('OWNERSHIP_UNREACHABLE'),
  ownershipMismatch('OWNERSHIP_MISMATCH'),
  ownershipConflict('OWNERSHIP_CONFLICT'),
  ownershipPending('OWNERSHIP_PENDING'),
  active('ACTIVE');

  const FirebaseHostingCustomDomainOwnershipState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_firebase_hosting_custom_domain`.
///
/// Manages Custom Domains for Firebase Hosting. Custom Domains link your domain
/// names with Firebase Hosting sites, allowing Hosting to serve content on
/// those domain names.
final class GoogleFirebaseHostingCustomDomain extends Resource {
  static const String tfType = 'google_firebase_hosting_custom_domain';

  GoogleFirebaseHostingCustomDomain({
    required super.localName,
    TfArg<FirebaseHostingCustomDomainCertPreference>? certPreference,
    required TfArg<String> customDomain,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? redirectTarget,
    required TfArg<String> siteId,
    TfArg<bool>? waitDnsVerification,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'cert_preference': ?certPreference,
           'custom_domain': customDomain,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'redirect_target': ?redirectTarget,
           'site_id': siteId,
           'wait_dns_verification': ?waitDnsVerification,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseHostingCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingCustomDomain>`.
  RefTo<GoogleFirebaseHostingCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cert` attribute.
  TfRef<List<Map<String, Object?>>> get cert =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cert');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `host_state` attribute.
  TfRef<String> get hostState => TfRef.attribute<String>(this, 'host_state');

  /// Reference to `issues` attribute.
  TfRef<List<Map<String, Object?>>> get issues =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'issues');

  /// Reference to `ownership_state` attribute.
  TfRef<String> get ownershipState =>
      TfRef.attribute<String>(this, 'ownership_state');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `required_dns_updates` attribute.
  TfRef<List<Map<String, Object?>>> get requiredDnsUpdates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'required_dns_updates');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `cert_preference` attribute.
  TfRef<String> get certPreferenceRef =>
      TfRef.attribute<String>(this, 'cert_preference');

  /// Reference to `custom_domain` attribute.
  TfRef<String> get customDomainRef =>
      TfRef.attribute<String>(this, 'custom_domain');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `redirect_target` attribute.
  TfRef<String> get redirectTargetRef =>
      TfRef.attribute<String>(this, 'redirect_target');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteIdRef => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `wait_dns_verification` attribute.
  TfRef<bool> get waitDnsVerificationRef =>
      TfRef.attribute<bool>(this, 'wait_dns_verification');
}
