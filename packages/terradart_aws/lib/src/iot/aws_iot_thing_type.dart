// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing_type`.
const Set<String> _awsIotThingTypeSensitive = <String>{};

/// Typed helper for the `properties` block of
/// `aws_iot_thing_type` (derived from provider schema).
@immutable
final class IotThingTypeProperties {
  const IotThingTypeProperties({this.description, this.searchableAttributes});

  final TfArg<String>? description;

  final TfArg<List<String>>? searchableAttributes;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'searchable_attributes': ?searchableAttributes?.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_thing_type`.
final class AwsIotThingType extends Resource {
  static const String tfType = 'aws_iot_thing_type';

  AwsIotThingType(
    super.localName, {
    TfArg<bool>? deprecated,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    IotThingTypeProperties? properties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deprecated': ?deprecated,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotThingType>`.
  RefTo<AwsIotThingType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deprecated` attribute.
  TfRef<bool> get deprecated => TfRef.attribute<bool>(this, 'deprecated');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
