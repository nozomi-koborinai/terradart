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

  final IotIndexingConfigurationThingGroupIndexingMode thingGroupIndexingMode;

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
extension type const IotIndexingConfigurationThingGroupIndexingMode._(
  TfArg<String> _
) implements TfArg<String> {
  IotIndexingConfigurationThingGroupIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationThingGroupIndexingMode.expression(String template)
    : this._(TfArg.expression(template));
  const IotIndexingConfigurationThingGroupIndexingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const off = IotIndexingConfigurationThingGroupIndexingMode._(
    TfArgLiteral('OFF'),
  );
  static const on = IotIndexingConfigurationThingGroupIndexingMode._(
    TfArgLiteral('ON'),
  );

  static const List<IotIndexingConfigurationThingGroupIndexingMode> values = [
    off,
    on,
  ];
}

/// Typed helper for the `thing_group_indexing_configuration.custom_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IotIndexingConfigurationCustomField {
  const IotIndexingConfigurationCustomField({this.name, this.type});

  final TfArg<String>? name;

  final IotIndexingConfigurationType? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const IotIndexingConfigurationType._(TfArg<String> _)
    implements TfArg<String> {
  IotIndexingConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const IotIndexingConfigurationType.arg(TfArg<String> arg) : this._(arg);

  static const number = IotIndexingConfigurationType._(TfArgLiteral('Number'));
  static const string = IotIndexingConfigurationType._(TfArgLiteral('String'));
  static const boolean = IotIndexingConfigurationType._(
    TfArgLiteral('Boolean'),
  );

  static const List<IotIndexingConfigurationType> values = [
    number,
    string,
    boolean,
  ];
}

/// Typed helper for the `thing_group_indexing_configuration.managed_field` block of
/// `aws_iot_indexing_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class IotIndexingConfigurationManagedField {
  const IotIndexingConfigurationManagedField({this.name, this.type});

  final TfArg<String>? name;

  final IotIndexingConfigurationType? type;

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

  final IotIndexingConfigurationDeviceDefenderIndexingMode?
  deviceDefenderIndexingMode;

  final IotIndexingConfigurationNamedShadowIndexingMode?
  namedShadowIndexingMode;

  final IotIndexingConfigurationThingConnectivityIndexingMode?
  thingConnectivityIndexingMode;

  final IotIndexingConfigurationThingIndexingMode thingIndexingMode;

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
extension type const IotIndexingConfigurationDeviceDefenderIndexingMode._(
  TfArg<String> _
) implements TfArg<String> {
  IotIndexingConfigurationDeviceDefenderIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationDeviceDefenderIndexingMode.expression(String template)
    : this._(TfArg.expression(template));
  const IotIndexingConfigurationDeviceDefenderIndexingMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const off = IotIndexingConfigurationDeviceDefenderIndexingMode._(
    TfArgLiteral('OFF'),
  );
  static const violations =
      IotIndexingConfigurationDeviceDefenderIndexingMode._(
        TfArgLiteral('VIOLATIONS'),
      );

  static const List<IotIndexingConfigurationDeviceDefenderIndexingMode> values =
      [off, violations];
}

/// `named_shadow_indexing_mode` — derived from the provider schema description.
extension type const IotIndexingConfigurationNamedShadowIndexingMode._(
  TfArg<String> _
) implements TfArg<String> {
  IotIndexingConfigurationNamedShadowIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationNamedShadowIndexingMode.expression(String template)
    : this._(TfArg.expression(template));
  const IotIndexingConfigurationNamedShadowIndexingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const off = IotIndexingConfigurationNamedShadowIndexingMode._(
    TfArgLiteral('OFF'),
  );
  static const on = IotIndexingConfigurationNamedShadowIndexingMode._(
    TfArgLiteral('ON'),
  );

  static const List<IotIndexingConfigurationNamedShadowIndexingMode> values = [
    off,
    on,
  ];
}

/// `thing_connectivity_indexing_mode` — derived from the provider schema description.
extension type const IotIndexingConfigurationThingConnectivityIndexingMode._(
  TfArg<String> _
) implements TfArg<String> {
  IotIndexingConfigurationThingConnectivityIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationThingConnectivityIndexingMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const IotIndexingConfigurationThingConnectivityIndexingMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const off = IotIndexingConfigurationThingConnectivityIndexingMode._(
    TfArgLiteral('OFF'),
  );
  static const status = IotIndexingConfigurationThingConnectivityIndexingMode._(
    TfArgLiteral('STATUS'),
  );

  static const List<IotIndexingConfigurationThingConnectivityIndexingMode>
  values = [off, status];
}

/// `thing_indexing_mode` — derived from the provider schema description.
extension type const IotIndexingConfigurationThingIndexingMode._(
  TfArg<String> _
) implements TfArg<String> {
  IotIndexingConfigurationThingIndexingMode.variable(String name)
    : this._(TfArg.variable(name));
  IotIndexingConfigurationThingIndexingMode.expression(String template)
    : this._(TfArg.expression(template));
  const IotIndexingConfigurationThingIndexingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const off = IotIndexingConfigurationThingIndexingMode._(
    TfArgLiteral('OFF'),
  );
  static const registry = IotIndexingConfigurationThingIndexingMode._(
    TfArgLiteral('REGISTRY'),
  );
  static const registryAndShadow = IotIndexingConfigurationThingIndexingMode._(
    TfArgLiteral('REGISTRY_AND_SHADOW'),
  );

  static const List<IotIndexingConfigurationThingIndexingMode> values = [
    off,
    registry,
    registryAndShadow,
  ];
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

  AwsIotIndexingConfiguration(
    super.localName, {
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
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
