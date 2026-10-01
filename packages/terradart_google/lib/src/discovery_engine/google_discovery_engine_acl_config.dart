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

  final DiscoveryEngineAclConfigIdpType? idpType;

  final DiscoveryEngineAclConfigExternalIdpConfig? externalIdpConfig;

  @internal
  Map<String, Object?> encode() => {
    'idp_type': ?idpType?.toTfJson(),
    'external_idp_config': ?externalIdpConfig?.encode(),
  };
}

/// `idp_type` — derived from the provider schema description.
extension type const DiscoveryEngineAclConfigIdpType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineAclConfigIdpType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineAclConfigIdpType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineAclConfigIdpType.arg(TfArg<String> arg) : this._(arg);

  static const gsuite = DiscoveryEngineAclConfigIdpType._(
    TfArgLiteral('GSUITE'),
  );
  static const thirdParty = DiscoveryEngineAclConfigIdpType._(
    TfArgLiteral('THIRD_PARTY'),
  );

  static const List<DiscoveryEngineAclConfigIdpType> values = [
    gsuite,
    thirdParty,
  ];
}

/// Typed helper for the `idp_config.external_idp_config` block of
/// `google_discovery_engine_acl_config` (derived from provider schema).
@immutable
final class DiscoveryEngineAclConfigExternalIdpConfig {
  const DiscoveryEngineAclConfigExternalIdpConfig({this.workforcePoolName});

  final TfArg<String>? workforcePoolName;

  @internal
  Map<String, Object?> encode() => {
    'workforce_pool_name': ?workforcePoolName?.toTfJson(),
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

  GoogleDiscoveryEngineAclConfig(
    super.localName, {
    required TfArg<String> location,
    DiscoveryEngineAclConfigIdpConfig? idpConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (idpConfig != null)
             'idp_config': TfArg.literal(idpConfig.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineAclConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineAclConfig>`.
  RefTo<GoogleDiscoveryEngineAclConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
