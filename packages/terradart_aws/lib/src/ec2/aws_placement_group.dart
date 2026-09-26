// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_placement_group`.
const Set<String> _awsPlacementGroupSensitive = <String>{};

/// Factory wrapper for `aws_placement_group`.
final class AwsPlacementGroup extends Resource {
  static const String tfType = 'aws_placement_group';

  AwsPlacementGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<num>? partitionCount,
    TfArg<String>? region,
    TfArg<String>? spreadLevel,
    required TfArg<String> strategy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (partitionCount != null) 'partition_count': partitionCount,
           if (region != null) 'region': region,
           if (spreadLevel != null) 'spread_level': spreadLevel,
           'strategy': strategy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPlacementGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `placement_group_id` attribute.
  TfRef<String> get placementGroupId =>
      TfRef.attribute<String>(this, 'placement_group_id');
}
