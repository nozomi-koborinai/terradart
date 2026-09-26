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

  final TfArg<String> thingGroupIndexingMode;

  final List<
    IotIndexingConfigurationThingGroupIndexingConfigurationCustomField
  >?
  customField;

  final List<
    IotIndexingConfigurationThingGroupIndexingConfigurationManagedField
  >?
  managedField;

  Map<String, Object?> encode() => {
    'thing_group_indexing_mode': thingGroupIndexingMode.toTfJson(),
    if (customField != null)
      'custom_field': [for (final e in customField!) e.encode()],
    if (managedField != null)
      'managed_field': [for (final e in managedField!) e.encode()],
  };
}

/// Typed helper for the `thing_group_indexing_configuration.custom_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingGroupIndexingConfigurationCustomField {
  const IotIndexingConfigurationThingGroupIndexingConfigurationCustomField({
    this.name,
    this.type,
  });

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `thing_group_indexing_configuration.managed_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingGroupIndexingConfigurationManagedField {
  const IotIndexingConfigurationThingGroupIndexingConfigurationManagedField({
    this.name,
    this.type,
  });

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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

  final TfArg<String>? deviceDefenderIndexingMode;

  final TfArg<String>? namedShadowIndexingMode;

  final TfArg<String>? thingConnectivityIndexingMode;

  final TfArg<String> thingIndexingMode;

  final List<IotIndexingConfigurationThingIndexingConfigurationCustomField>?
  customField;

  final IotIndexingConfigurationThingIndexingConfigurationFilter? filter;

  final List<IotIndexingConfigurationThingIndexingConfigurationManagedField>?
  managedField;

  Map<String, Object?> encode() => {
    if (deviceDefenderIndexingMode != null)
      'device_defender_indexing_mode': deviceDefenderIndexingMode!.toTfJson(),
    if (namedShadowIndexingMode != null)
      'named_shadow_indexing_mode': namedShadowIndexingMode!.toTfJson(),
    if (thingConnectivityIndexingMode != null)
      'thing_connectivity_indexing_mode': thingConnectivityIndexingMode!
          .toTfJson(),
    'thing_indexing_mode': thingIndexingMode.toTfJson(),
    if (customField != null)
      'custom_field': [for (final e in customField!) e.encode()],
    if (filter != null) 'filter': filter!.encode(),
    if (managedField != null)
      'managed_field': [for (final e in managedField!) e.encode()],
  };
}

/// Typed helper for the `thing_indexing_configuration.custom_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingIndexingConfigurationCustomField {
  const IotIndexingConfigurationThingIndexingConfigurationCustomField({
    this.name,
    this.type,
  });

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `thing_indexing_configuration.filter` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingIndexingConfigurationFilter {
  const IotIndexingConfigurationThingIndexingConfigurationFilter({
    this.namedShadowNames,
  });

  final TfArg<List<Object?>>? namedShadowNames;

  Map<String, Object?> encode() => {
    if (namedShadowNames != null)
      'named_shadow_names': namedShadowNames!.toTfJson(),
  };
}

/// Typed helper for the `thing_indexing_configuration.managed_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
@immutable
final class IotIndexingConfigurationThingIndexingConfigurationManagedField {
  const IotIndexingConfigurationThingIndexingConfigurationManagedField({
    this.name,
    this.type,
  });

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
