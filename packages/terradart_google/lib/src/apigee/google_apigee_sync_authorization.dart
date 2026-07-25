// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_sync_authorization`.
const Set<String> _googleApigeeSyncAuthorizationSensitive = <String>{};

/// Factory wrapper for `google_apigee_sync_authorization`.
///
/// Authorize the Synchronizer to download environment data from the control
/// plane.
///
/// Apigee **sync authorization** — identities allowed to synchronize
/// control-plane config for an organization.
///
/// **Cost / apply:** gcp-cost: no Sync/Authorization SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Sync/Authorization → 0).
/// billing-behavior: requires a never_apply [GoogleApigeeOrganization]
/// (Gateway Node Hours `0136-18C1-DD41` **$1.025/h**). Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeSyncAuthorization extends Resource {
  static const String tfType = 'google_apigee_sync_authorization';

  GoogleApigeeSyncAuthorization({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> identities,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'identities': identities},
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSyncAuthorizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute (for concurrent updates).
  TfRef<String> get etagRef => TfRef.attribute<String>(this, 'etag');
}
