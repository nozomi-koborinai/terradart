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
/// Vertex AI Search **ACL config** — project identity-provider settings for
/// document-level access control in a Discovery Engine location.
///
/// This is a per-project location singleton. Prefer `location: global` and
/// `idpType: GSUITE` for smoke stacks (no workforce pool required).
/// `THIRD_PARTY` needs an existing workforce pool name under
/// [idpConfig].`externalIdpConfig`.
///
/// Creating or updating ACL config does not index documents or serve
/// queries — Vertex AI Search query/indexing SKUs apply only when search
/// traffic or indexing runs.
///
/// Enable `discoveryengine.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleDiscoveryEngineAclConfig(
///   localName: 'acl',
///   location: TfArg.literal('global'),
///   idpConfig: DiscoveryEngineAclConfigIdpConfig(
///     idpType: TfArg.literal(
///       DiscoveryEngineAclConfigIdpConfigIdpType.gsuite,
///     ),
///   ),
/// );
/// ```
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
