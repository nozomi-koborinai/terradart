// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_envgroup`.
const Set<String> _googleApigeeEnvgroupSensitive = <String>{};

/// Factory wrapper for `google_apigee_envgroup`.
///
/// An `Environment group` in Apigee.
///
/// Apigee **environment group** — hostname routing group for environments.
///
/// **Cost:** gcp-cost: no dedicated envgroup SKU under Apigee
/// `1C2D-8C78-EC58` (gateway/environment usage hours bill parents).
/// billing-behavior: hostname group metadata on a never_apply
/// [GoogleApigeeOrganization]. Deferred with the org Wave (no apply-smoke
/// quickstart).
final class GoogleApigeeEnvgroup extends Resource {
  static const String tfType = 'google_apigee_envgroup';

  GoogleApigeeEnvgroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    TfArg<List<String>>? hostnames,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'hostnames': ?hostnames,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvgroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvgroup>`.
  RefTo<GoogleApigeeEnvgroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}
