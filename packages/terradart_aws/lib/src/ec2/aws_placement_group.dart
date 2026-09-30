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
           'partition_count': ?partitionCount,
           'region': ?region,
           'spread_level': ?spreadLevel,
           'strategy': strategy,
           'tags': ?tags,
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

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCountRef =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `spread_level` attribute.
  TfRef<String> get spreadLevelRef =>
      TfRef.attribute<String>(this, 'spread_level');

  /// Reference to `strategy` attribute.
  TfRef<String> get strategyRef => TfRef.attribute<String>(this, 'strategy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
