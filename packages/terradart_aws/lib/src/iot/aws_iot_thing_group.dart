// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing_group`.
const Set<String> _awsIotThingGroupSensitive = <String>{};

/// Typed helper for the `properties` block of
/// `aws_iot_thing_group` (derived from provider schema).
@immutable
final class IotThingGroupProperties {
  const IotThingGroupProperties({this.description, this.attributePayload});

  final TfArg<String>? description;

  final IotThingGroupPropertiesAttributePayload? attributePayload;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'attribute_payload': ?attributePayload?.encode(),
  };
}

/// Typed helper for the `properties.attribute_payload` block of
/// `aws_iot_thing_group` (derived from provider schema).
@immutable
final class IotThingGroupPropertiesAttributePayload {
  const IotThingGroupPropertiesAttributePayload({this.attributes});

  final TfArg<Map<String, String>>? attributes;

  Map<String, Object?> encode() => {'attributes': ?attributes?.toTfJson()};
}

/// Factory wrapper for `aws_iot_thing_group`.
final class AwsIotThingGroup extends Resource {
  static const String tfType = 'aws_iot_thing_group';

  AwsIotThingGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? parentGroupName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    IotThingGroupProperties? properties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent_group_name': ?parentGroupName,
           'region': ?region,
           'tags': ?tags,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotThingGroup>`.
  RefTo<AwsIotThingGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `parent_group_name` attribute.
  TfRef<String> get parentGroupNameRef =>
      TfRef.attribute<String>(this, 'parent_group_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
