// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_configuration_feature`.
const Set<String> _azurermAppConfigurationFeatureSensitive = <String>{};

/// Typed helper for the `custom_filter` block of
/// `azurerm_app_configuration_feature` (derived from provider schema).
@immutable
final class AppConfigurationFeatureCustomFilter {
  const AppConfigurationFeatureCustomFilter({
    required this.name,
    this.parameters,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `targeting_filter` block of
/// `azurerm_app_configuration_feature` (derived from provider schema).
@immutable
final class AppConfigurationFeatureTargetingFilter {
  const AppConfigurationFeatureTargetingFilter({
    required this.defaultRolloutPercentage,
    this.users,
    this.groups,
  });

  final TfArg<num> defaultRolloutPercentage;

  final TfArg<List<String>>? users;

  final List<AppConfigurationFeatureGroups>? groups;

  @internal
  Map<String, Object?> encode() => {
    'default_rollout_percentage': defaultRolloutPercentage.toTfJson(),
    'users': ?users?.toTfJson(),
    if (groups != null) 'groups': [for (final e in groups!) e.encode()],
  };
}

/// Typed helper for the `targeting_filter.groups` block of
/// `azurerm_app_configuration_feature` (derived from provider schema).
@immutable
final class AppConfigurationFeatureGroups {
  const AppConfigurationFeatureGroups({
    required this.name,
    required this.rolloutPercentage,
  });

  final TfArg<String> name;

  final TfArg<num> rolloutPercentage;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'rollout_percentage': rolloutPercentage.toTfJson(),
  };
}

/// Typed helper for the `timewindow_filter` block of
/// `azurerm_app_configuration_feature` (derived from provider schema).
@immutable
final class AppConfigurationFeatureTimewindowFilter {
  const AppConfigurationFeatureTimewindowFilter({this.end, this.start});

  final TfArg<String>? end;

  final TfArg<String>? start;

  @internal
  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_app_configuration_feature`.
final class AzurermAppConfigurationFeature extends Resource {
  static const String tfType = 'azurerm_app_configuration_feature';

  AzurermAppConfigurationFeature(
    super.localName, {
    required TfArg<String> configurationStoreId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? etag,
    TfArg<String>? key,
    TfArg<String>? label,
    TfArg<bool>? locked,
    required TfArg<String> name,
    TfArg<num>? percentageFilterValue,
    TfArg<Map<String, String>>? tags,
    List<AppConfigurationFeatureCustomFilter>? customFilter,
    List<AppConfigurationFeatureTargetingFilter>? targetingFilter,
    List<AppConfigurationFeatureTimewindowFilter>? timewindowFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_store_id': configurationStoreId,
           'description': ?description,
           'enabled': ?enabled,
           'etag': ?etag,
           'key': ?key,
           'label': ?label,
           'locked': ?locked,
           'name': name,
           'percentage_filter_value': ?percentageFilterValue,
           'tags': ?tags,
           if (customFilter != null)
             'custom_filter': TfArg.literal([
               for (final e in customFilter) e.encode(),
             ]),
           if (targetingFilter != null)
             'targeting_filter': TfArg.literal([
               for (final e in targetingFilter) e.encode(),
             ]),
           if (timewindowFilter != null)
             'timewindow_filter': TfArg.literal([
               for (final e in timewindowFilter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppConfigurationFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppConfigurationFeature>`.
  RefTo<AzurermAppConfigurationFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_store_id` attribute.
  TfRef<String> get configurationStoreId =>
      TfRef.attribute<String>(this, 'configuration_store_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `percentage_filter_value` attribute.
  TfRef<num> get percentageFilterValue =>
      TfRef.attribute<num>(this, 'percentage_filter_value');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
