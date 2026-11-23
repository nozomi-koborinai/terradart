// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_addon`.
const Set<String> _googleApihubAddonSensitive = <String>{};

/// Exactly one of `gateway_plugin_addon_config`, `all_data_addon_config` on the `config` block of `google_apihub_addon`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayPluginAddonConfig(...)`.
sealed class ApihubAddonConfig {
  const ApihubAddonConfig();

  /// Sets `gateway_plugin_addon_config`.
  const factory ApihubAddonConfig.gatewayPluginAddonConfig(
    ApihubAddonGatewayPluginAddonConfig gatewayPluginAddonConfig,
  ) = ApihubAddonGatewayPluginAddonConfigChoice;

  /// Sets `all_data_addon_config`.
  const factory ApihubAddonConfig.allDataAddonConfig(
    ApihubAddonAllDataAddonConfig allDataAddonConfig,
  ) = ApihubAddonAllDataAddonConfigChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApihubAddonConfig.gatewayPluginAddonConfig] choice: sets `gateway_plugin_addon_config`.
final class ApihubAddonGatewayPluginAddonConfigChoice
    extends ApihubAddonConfig {
  const ApihubAddonGatewayPluginAddonConfigChoice(
    this.gatewayPluginAddonConfig,
  );

  final ApihubAddonGatewayPluginAddonConfig gatewayPluginAddonConfig;

  @internal
  @override
  String get blockKey => 'gateway_plugin_addon_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gateway_plugin_addon_config': gatewayPluginAddonConfig.encode(),
  };
}

/// The [ApihubAddonConfig.allDataAddonConfig] choice: sets `all_data_addon_config`.
final class ApihubAddonAllDataAddonConfigChoice extends ApihubAddonConfig {
  const ApihubAddonAllDataAddonConfigChoice(this.allDataAddonConfig);

  final ApihubAddonAllDataAddonConfig allDataAddonConfig;

  @internal
  @override
  String get blockKey => 'all_data_addon_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'all_data_addon_config': allDataAddonConfig.encode(),
  };
}

/// Typed helper for the `config.all_data_addon_config` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonAllDataAddonConfig {
  const ApihubAddonAllDataAddonConfig({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `config.gateway_plugin_addon_config` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonGatewayPluginAddonConfig {
  const ApihubAddonGatewayPluginAddonConfig({
    required this.gatewayPluginConfigs,
  });

  final List<ApihubAddonGatewayPluginConfigs> gatewayPluginConfigs;

  @internal
  Map<String, Object?> encode() => {
    'gateway_plugin_configs': [
      for (final e in gatewayPluginConfigs) e.encode(),
    ],
  };
}

/// Typed helper for the `config.gateway_plugin_addon_config.gateway_plugin_configs` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonGatewayPluginConfigs {
  const ApihubAddonGatewayPluginConfigs({
    required this.pluginInstance,
    this.apigeeEdgeConfig,
    this.apigeeOpdkConfig,
    this.apigeeXHybridConfig,
  });

  final TfArg<String> pluginInstance;

  final ApihubAddonApigeeEdgeConfig? apigeeEdgeConfig;

  final ApihubAddonApigeeOpdkConfig? apigeeOpdkConfig;

  final ApihubAddonApigeeXHybridConfig? apigeeXHybridConfig;

  @internal
  Map<String, Object?> encode() => {
    'plugin_instance': pluginInstance.toTfJson(),
    'apigee_edge_config': ?apigeeEdgeConfig?.encode(),
    'apigee_opdk_config': ?apigeeOpdkConfig?.encode(),
    'apigee_x_hybrid_config': ?apigeeXHybridConfig?.encode(),
  };
}

/// Typed helper for the `config.gateway_plugin_addon_config.gateway_plugin_configs.apigee_edge_config` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonApigeeEdgeConfig {
  const ApihubAddonApigeeEdgeConfig({this.environmentFilter});

  final ApihubAddonEnvironmentFilter? environmentFilter;

  @internal
  Map<String, Object?> encode() => {
    'environment_filter': ?environmentFilter?.encode(),
  };
}

/// Typed helper for the `config.gateway_plugin_addon_config.gateway_plugin_configs.apigee_edge_config.environment_filter` block of
/// `google_apihub_addon` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApihubAddonEnvironmentFilter {
  const ApihubAddonEnvironmentFilter({this.allEnvironments, this.environments});

  final TfArg<bool>? allEnvironments;

  final TfArg<List<String>>? environments;

  @internal
  Map<String, Object?> encode() => {
    'all_environments': ?allEnvironments?.toTfJson(),
    'environments': ?environments?.toTfJson(),
  };
}

/// Typed helper for the `config.gateway_plugin_addon_config.gateway_plugin_configs.apigee_opdk_config` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonApigeeOpdkConfig {
  const ApihubAddonApigeeOpdkConfig({this.environmentFilter});

  final ApihubAddonEnvironmentFilter? environmentFilter;

  @internal
  Map<String, Object?> encode() => {
    'environment_filter': ?environmentFilter?.encode(),
  };
}

/// Typed helper for the `config.gateway_plugin_addon_config.gateway_plugin_configs.apigee_x_hybrid_config` block of
/// `google_apihub_addon` (derived from provider schema).
@immutable
final class ApihubAddonApigeeXHybridConfig {
  const ApihubAddonApigeeXHybridConfig({this.environmentFilter});

  final ApihubAddonEnvironmentFilter? environmentFilter;

  @internal
  Map<String, Object?> encode() => {
    'environment_filter': ?environmentFilter?.encode(),
  };
}

/// Factory wrapper for `google_apihub_addon`.
///
/// Addons are used to configure value-added services inside the API Hub.
final class GoogleApihubAddon extends Resource {
  static const String tfType = 'google_apihub_addon';

  GoogleApihubAddon(
    super.localName, {
    required TfArg<String> addonId,
    required TfArg<String> location,
    TfArg<String>? project,
    required ApihubAddonConfig config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_id': addonId,
           'location': location,
           'project': ?project,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubAddonSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApihubAddon>`.
  RefTo<GoogleApihubAddon> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `boost_spec_gemini_region_id` attribute.
  TfRef<String> get boostSpecGeminiRegionId =>
      TfRef.attribute<String>(this, 'boost_spec_gemini_region_id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `addon_id` attribute.
  TfRef<String> get addonId => TfRef.attribute<String>(this, 'addon_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
