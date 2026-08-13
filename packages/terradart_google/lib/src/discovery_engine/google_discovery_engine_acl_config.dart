// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_acl_config`.
const Set<String> _googleDiscoveryEngineAclConfigSensitive = <String>{};

/// Typed helper for the `idp_config` block of
/// `google_discovery_engine_acl_config` (derived from provider schema).
@immutable
final class DiscoveryEngineAclConfigIdpConfig {
  const DiscoveryEngineAclConfigIdpConfig({
    this.idpType,
    this.externalIdpConfig,
  });

  final TfArg<DiscoveryEngineAclConfigIdpConfigIdpType>? idpType;

  final DiscoveryEngineAclConfigIdpConfigExternalIdpConfig? externalIdpConfig;

  Map<String, Object?> encode() => {
    if (idpType != null) 'idp_type': idpType!.toTfJson(),
    if (externalIdpConfig != null)
      'external_idp_config': externalIdpConfig!.encode(),
  };
}

/// `idp_type` — derived from the provider schema description.
enum DiscoveryEngineAclConfigIdpConfigIdpType implements TerraformEnum {
  gsuite('GSUITE'),
  thirdParty('THIRD_PARTY');

  const DiscoveryEngineAclConfigIdpConfigIdpType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `idp_config.external_idp_config` block of
/// `google_discovery_engine_acl_config` (derived from provider schema).
@immutable
final class DiscoveryEngineAclConfigIdpConfigExternalIdpConfig {
  const DiscoveryEngineAclConfigIdpConfigExternalIdpConfig({
    this.workforcePoolName,
  });

  final TfArg<String>? workforcePoolName;

  Map<String, Object?> encode() => {
    if (workforcePoolName != null)
      'workforce_pool_name': workforcePoolName!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_acl_config`.
///
/// Access Control Configuration.
///
/// Vertex AI Search **ACL config** — per-location project singleton
/// (`projects/{project}/locations/{location}/aclConfig`). Create is PATCH;
/// Magic Modules `exclude_delete: true` so Terraform cannot destroy it.
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Search API
/// Request Count - Standard `BADA-EE26-7BDA` **$1.50/count after 10k**.
/// billing-behavior: IdP metadata only; query SKUs fire only on Search API
/// requests. Mutating this on a shared project is unsafe (same class as
/// other `exclude_delete` project singletons). **Never** wire into
/// apply-smoke.
final class GoogleDiscoveryEngineAclConfig extends Resource {
  static const String tfType = 'google_discovery_engine_acl_config';

  GoogleDiscoveryEngineAclConfig({
    required super.localName,
    required TfArg<String> location,
    DiscoveryEngineAclConfigIdpConfig? idpConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (idpConfig != null)
             'idp_config': TfArg.literal(idpConfig.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineAclConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
