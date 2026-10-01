// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_indexing_configuration`.
const Set<String> _awsIotIndexingConfigurationSensitive = <String>{};

/// Typed helper for the `thing_group_indexing_configuration` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingGroupIndexingConfiguration {
  const IotIndexingConfigurationThingGroupIndexingConfiguration({
    required this.thingGroupIndexingMode,
    this.customField,
    this.managedField,
  });

  final TfArg<IotIndexingConfigurationThingGroupIndexingMode>
  thingGroupIndexingMode;

  final List<IotIndexingConfigurationCustomField>? customField;

  final List<IotIndexingConfigurationManagedField>? managedField;

  Map<String, Object?> encode() => {
    'thing_group_indexing_mode': thingGroupIndexingMode.toTfJson(),
    if (customField != null)
      'custom_field': [for (final e in customField!) e.encode()],
    if (managedField != null)
      'managed_field': [for (final e in managedField!) e.encode()],
  };
}

/// `thing_group_indexing_mode` — derived from the provider schema description.
enum IotIndexingConfigurationThingGroupIndexingMode implements TerraformEnum {
  off('OFF'),
  on('ON');

  const IotIndexingConfigurationThingGroupIndexingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `thing_group_indexing_configuration.custom_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IotIndexingConfigurationCustomField {
  const IotIndexingConfigurationCustomField({this.name, this.type});

  final TfArg<String>? name;

  final TfArg<IotIndexingConfigurationType>? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum IotIndexingConfigurationType implements TerraformEnum {
  number('Number'),
  string('String'),
  boolean('Boolean');

  const IotIndexingConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `thing_group_indexing_configuration.managed_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IotIndexingConfigurationManagedField {
  const IotIndexingConfigurationManagedField({this.name, this.type});

  final TfArg<String>? name;

  final TfArg<IotIndexingConfigurationType>? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `thing_indexing_configuration` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingIndexingConfiguration {
  const IotIndexingConfigurationThingIndexingConfiguration({
    this.deviceDefenderIndexingMode,
    this.namedShadowIndexingMode,
    this.thingConnectivityIndexingMode,
    required this.thingIndexingMode,
    this.customField,
    this.filter,
    this.managedField,
  });

  final TfArg<IotIndexingConfigurationDeviceDefenderIndexingMode>?
  deviceDefenderIndexingMode;

  final TfArg<IotIndexingConfigurationNamedShadowIndexingMode>?
  namedShadowIndexingMode;

  final TfArg<IotIndexingConfigurationThingConnectivityIndexingMode>?
  thingConnectivityIndexingMode;

  final TfArg<IotIndexingConfigurationThingIndexingMode> thingIndexingMode;

  final List<IotIndexingConfigurationCustomField>? customField;

  final IotIndexingConfigurationFilter? filter;

  final List<IotIndexingConfigurationManagedField>? managedField;

  Map<String, Object?> encode() => {
    'device_defender_indexing_mode': ?deviceDefenderIndexingMode?.toTfJson(),
    'named_shadow_indexing_mode': ?namedShadowIndexingMode?.toTfJson(),
    'thing_connectivity_indexing_mode': ?thingConnectivityIndexingMode
        ?.toTfJson(),
    'thing_indexing_mode': thingIndexingMode.toTfJson(),
    if (customField != null)
      'custom_field': [for (final e in customField!) e.encode()],
    'filter': ?filter?.encode(),
    if (managedField != null)
      'managed_field': [for (final e in managedField!) e.encode()],
  };
}

/// `device_defender_indexing_mode` — derived from the provider schema description.
enum IotIndexingConfigurationDeviceDefenderIndexingMode
    implements TerraformEnum {
  off('OFF'),
  violations('VIOLATIONS');

  const IotIndexingConfigurationDeviceDefenderIndexingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `named_shadow_indexing_mode` — derived from the provider schema description.
enum IotIndexingConfigurationNamedShadowIndexingMode implements TerraformEnum {
  off('OFF'),
  on('ON');

  const IotIndexingConfigurationNamedShadowIndexingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `thing_connectivity_indexing_mode` — derived from the provider schema description.
enum IotIndexingConfigurationThingConnectivityIndexingMode
    implements TerraformEnum {
  off('OFF'),
  status('STATUS');

  const IotIndexingConfigurationThingConnectivityIndexingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `thing_indexing_mode` — derived from the provider schema description.
enum IotIndexingConfigurationThingIndexingMode implements TerraformEnum {
  off('OFF'),
  registry('REGISTRY'),
  registryAndShadow('REGISTRY_AND_SHADOW');

  const IotIndexingConfigurationThingIndexingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `thing_indexing_configuration.filter` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationFilter {
  const IotIndexingConfigurationFilter({this.namedShadowNames});

  final TfArg<List<String>>? namedShadowNames;

  Map<String, Object?> encode() => {
    'named_shadow_names': ?namedShadowNames?.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_indexing_configuration`.
final class AwsIotIndexingConfiguration extends Resource {
  static const String tfType = 'aws_iot_indexing_configuration';

  AwsIotIndexingConfiguration({
    required super.localName,
    TfArg<String>? region,
    IotIndexingConfigurationThingGroupIndexingConfiguration?
    thingGroupIndexingConfiguration,
    IotIndexingConfigurationThingIndexingConfiguration?
    thingIndexingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (thingGroupIndexingConfiguration != null)
             'thing_group_indexing_configuration': TfArg.literal(
               thingGroupIndexingConfiguration.encode(),
             ),
           if (thingIndexingConfiguration != null)
             'thing_indexing_configuration': TfArg.literal(
               thingIndexingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotIndexingConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotIndexingConfiguration>`.
  RefTo<AwsIotIndexingConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
