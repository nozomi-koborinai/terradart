// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_placement_group`.
const Set<String> _awsPlacementGroupSensitive = <String>{};

/// Placement Group Spread enum for `spread_level`.
enum PlacementGroupSpreadLevel implements TerraformEnum {
  host('host'),
  rack('rack');

  const PlacementGroupSpreadLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Placement Group enum for `strategy`.
enum PlacementGroupStrategy implements TerraformEnum {
  cluster('cluster'),
  spread('spread'),
  partition('partition'),
  precisionTime('precision-time');

  const PlacementGroupStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_placement_group`.
final class AwsPlacementGroup extends Resource {
  static const String tfType = 'aws_placement_group';

  AwsPlacementGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<num>? partitionCount,
    TfArg<String>? region,
    TfArg<PlacementGroupSpreadLevel>? spreadLevel,
    required TfArg<PlacementGroupStrategy> strategy,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPlacementGroup>`.
  RefTo<AwsPlacementGroup> get ref => RefTo.of(this);

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
