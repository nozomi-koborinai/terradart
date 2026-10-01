// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_custom_domain`.
const Set<String> _googleFirebaseHostingCustomDomainSensitive = <String>{};

/// Firebase Hosting Custom Domain Cert enum for `cert_preference`.
extension type const FirebaseHostingCustomDomainCertPreference._(
  TfArg<String> _
) implements TfArg<String> {
  FirebaseHostingCustomDomainCertPreference.variable(String name)
    : this._(TfArg.variable(name));
  FirebaseHostingCustomDomainCertPreference.expression(String template)
    : this._(TfArg.expression(template));
  const FirebaseHostingCustomDomainCertPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const grouped = FirebaseHostingCustomDomainCertPreference._(
    TfArgLiteral('GROUPED'),
  );
  static const projectGrouped = FirebaseHostingCustomDomainCertPreference._(
    TfArgLiteral('PROJECT_GROUPED'),
  );
  static const dedicated = FirebaseHostingCustomDomainCertPreference._(
    TfArgLiteral('DEDICATED'),
  );

  static const List<FirebaseHostingCustomDomainCertPreference> values = [
    grouped,
    projectGrouped,
    dedicated,
  ];
}

/// Firebase Hosting Custom Domain Ownership enum for `ownership_state`.
extension type const FirebaseHostingCustomDomainOwnershipState._(
  TfArg<String> _
) implements TfArg<String> {
  FirebaseHostingCustomDomainOwnershipState.variable(String name)
    : this._(TfArg.variable(name));
  FirebaseHostingCustomDomainOwnershipState.expression(String template)
    : this._(TfArg.expression(template));
  const FirebaseHostingCustomDomainOwnershipState.arg(TfArg<String> arg)
    : this._(arg);

  static const ownershipMissing = FirebaseHostingCustomDomainOwnershipState._(
    TfArgLiteral('OWNERSHIP_MISSING'),
  );
  static const ownershipUnreachable =
      FirebaseHostingCustomDomainOwnershipState._(
        TfArgLiteral('OWNERSHIP_UNREACHABLE'),
      );
  static const ownershipMismatch = FirebaseHostingCustomDomainOwnershipState._(
    TfArgLiteral('OWNERSHIP_MISMATCH'),
  );
  static const ownershipConflict = FirebaseHostingCustomDomainOwnershipState._(
    TfArgLiteral('OWNERSHIP_CONFLICT'),
  );
  static const ownershipPending = FirebaseHostingCustomDomainOwnershipState._(
    TfArgLiteral('OWNERSHIP_PENDING'),
  );
  static const active = FirebaseHostingCustomDomainOwnershipState._(
    TfArgLiteral('ACTIVE'),
  );

  static const List<FirebaseHostingCustomDomainOwnershipState> values = [
    ownershipMissing,
    ownershipUnreachable,
    ownershipMismatch,
    ownershipConflict,
    ownershipPending,
    active,
  ];
}

/// Factory wrapper for `google_firebase_hosting_custom_domain`.
///
/// Manages Custom Domains for Firebase Hosting. Custom Domains link your domain
/// names with Firebase Hosting sites, allowing Hosting to serve content on
/// those domain names.
final class GoogleFirebaseHostingCustomDomain extends Resource {
  static const String tfType = 'google_firebase_hosting_custom_domain';

  GoogleFirebaseHostingCustomDomain(
    super.localName, {
    FirebaseHostingCustomDomainCertPreference? certPreference,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get certPreference =>
      TfRef.attribute<String>(this, 'cert_preference');

  /// Reference to `custom_domain` attribute.
  TfRef<String> get customDomain =>
      TfRef.attribute<String>(this, 'custom_domain');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `redirect_target` attribute.
  TfRef<String> get redirectTarget =>
      TfRef.attribute<String>(this, 'redirect_target');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `wait_dns_verification` attribute.
  TfRef<bool> get waitDnsVerification =>
      TfRef.attribute<bool>(this, 'wait_dns_verification');
}
