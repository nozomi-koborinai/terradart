// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_user_store`.
const Set<String> _googleDiscoveryEngineUserStoreSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_user_store`.
///
/// Represents a user store.
///
/// Vertex AI Search / Gemini Enterprise **user store** — project-level
/// store that can auto-register users onto a default [licenseConfig].
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**). billing-behavior: [defaultLicenseConfig]
/// + [enableLicenseAutoRegister] assign seat subscriptions (same class as
/// [GoogleDiscoveryEngineLicenseConfig]); MM `exclude_delete: true` so
/// Terraform cannot destroy the store. **Never** wire into apply-smoke.
///
/// [userStoreId] currently accepts only `default_user_store`.
final class GoogleDiscoveryEngineUserStore extends Resource {
  static const String tfType = 'google_discovery_engine_user_store';

  GoogleDiscoveryEngineUserStore({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? userStoreId,
    TfArg<String>? defaultLicenseConfig,
    TfArg<bool>? enableLicenseAutoRegister,
    TfArg<bool>? enableExpiredLicenseAutoUpdate,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (userStoreId != null) 'user_store_id': userStoreId,
           if (defaultLicenseConfig != null)
             'default_license_config': defaultLicenseConfig,
           if (enableLicenseAutoRegister != null)
             'enable_license_auto_register': enableLicenseAutoRegister,
           if (enableExpiredLicenseAutoUpdate != null)
             'enable_expired_license_auto_update':
                 enableExpiredLicenseAutoUpdate,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineUserStoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
