// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsguru_resource_collection`.
const Set<String> _awsDevopsguruResourceCollectionSensitive = <String>{};

/// Typed helper for the `cloudformation` block of
/// `aws_devopsguru_resource_collection` (derived from provider schema).
@immutable
final class DevopsguruResourceCollectionCloudformation {
  const DevopsguruResourceCollectionCloudformation({required this.stackNames});

  final TfArg<List<Object?>> stackNames;

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

  final TfArg<List<Object?>> tagValues;

  Map<String, Object?> encode() => {
    'app_boundary_key': appBoundaryKey.toTfJson(),
    'tag_values': tagValues.toTfJson(),
  };
}

/// Factory wrapper for `aws_devopsguru_resource_collection`.
final class AwsDevopsguruResourceCollection extends Resource {
  static const String tfType = 'aws_devopsguru_resource_collection';

  AwsDevopsguruResourceCollection({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> type,
    List<DevopsguruResourceCollectionCloudformation>? cloudformation,
    List<DevopsguruResourceCollectionTags>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
