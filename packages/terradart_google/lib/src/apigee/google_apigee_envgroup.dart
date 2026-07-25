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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           if (hostnames != null) 'hostnames': hostnames,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvgroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
