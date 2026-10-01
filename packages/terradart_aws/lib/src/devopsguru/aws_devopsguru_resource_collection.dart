// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsguru_resource_collection`.
const Set<String> _awsDevopsguruResourceCollectionSensitive = <String>{};

/// Devopsguru Resource Collection enum for `type`.
extension type const DevopsguruResourceCollectionType._(TfArg<String> _)
    implements TfArg<String> {
  DevopsguruResourceCollectionType.variable(String name)
    : this._(TfArg.variable(name));
  DevopsguruResourceCollectionType.expression(String template)
    : this._(TfArg.expression(template));
  const DevopsguruResourceCollectionType.arg(TfArg<String> arg) : this._(arg);

  static const awsCloudFormation = DevopsguruResourceCollectionType._(
    TfArgLiteral('AWS_CLOUD_FORMATION'),
  );
  static const awsService = DevopsguruResourceCollectionType._(
    TfArgLiteral('AWS_SERVICE'),
  );
  static const awsTags = DevopsguruResourceCollectionType._(
    TfArgLiteral('AWS_TAGS'),
  );

  static const List<DevopsguruResourceCollectionType> values = [
    awsCloudFormation,
    awsService,
    awsTags,
  ];
}

/// Typed helper for the `cloudformation` block of
/// `aws_devopsguru_resource_collection` (derived from provider schema).
@immutable
final class DevopsguruResourceCollectionCloudformation {
  const DevopsguruResourceCollectionCloudformation({required this.stackNames});

  final TfArg<List<String>> stackNames;

  @internal
  Map<String, Object?> encode() => {'stack_names': stackNames.toTfJson()};
}

/// Typed helper for the `tags` block of
/// `aws_devopsguru_resource_collection` (derived from provider schema).
@immutable
final class DevopsguruResourceCollectionTags {
  const DevopsguruResourceCollectionTags({
    required this.appBoundaryKey,
    required this.tagValues,
  });

  final TfArg<String> appBoundaryKey;

  final TfArg<List<String>> tagValues;

  @internal
  Map<String, Object?> encode() => {
    'app_boundary_key': appBoundaryKey.toTfJson(),
    'tag_values': tagValues.toTfJson(),
  };
}

/// Factory wrapper for `aws_devopsguru_resource_collection`.
final class AwsDevopsguruResourceCollection extends Resource {
  static const String tfType = 'aws_devopsguru_resource_collection';

  AwsDevopsguruResourceCollection(
    super.localName, {
    TfArg<String>? region,
    required DevopsguruResourceCollectionType type,
    List<DevopsguruResourceCollectionCloudformation>? cloudformation,
    List<DevopsguruResourceCollectionTags>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'type': type,
           if (cloudformation != null)
             'cloudformation': TfArg.literal([
               for (final e in cloudformation) e.encode(),
             ]),
           if (tags != null)
             'tags': TfArg.literal([for (final e in tags) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruResourceCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsguruResourceCollection>`.
  RefTo<AwsDevopsguruResourceCollection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
