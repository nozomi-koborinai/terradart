// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_placement_group`.
const Set<String> _awsPlacementGroupSensitive = <String>{};

/// Placement Group Spread enum for `spread_level`.
extension type const PlacementGroupSpreadLevel._(TfArg<String> _)
    implements TfArg<String> {
  PlacementGroupSpreadLevel.variable(String name)
    : this._(TfArg.variable(name));
  PlacementGroupSpreadLevel.expression(String template)
    : this._(TfArg.expression(template));
  const PlacementGroupSpreadLevel.arg(TfArg<String> arg) : this._(arg);

  static const host = PlacementGroupSpreadLevel._(TfArgLiteral('host'));
  static const rack = PlacementGroupSpreadLevel._(TfArgLiteral('rack'));

  static const List<PlacementGroupSpreadLevel> values = [host, rack];
}

/// Placement Group enum for `strategy`.
extension type const PlacementGroupStrategy._(TfArg<String> _)
    implements TfArg<String> {
  PlacementGroupStrategy.variable(String name) : this._(TfArg.variable(name));
  PlacementGroupStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const PlacementGroupStrategy.arg(TfArg<String> arg) : this._(arg);

  static const cluster = PlacementGroupStrategy._(TfArgLiteral('cluster'));
  static const spread = PlacementGroupStrategy._(TfArgLiteral('spread'));
  static const partition = PlacementGroupStrategy._(TfArgLiteral('partition'));
  static const precisionTime = PlacementGroupStrategy._(
    TfArgLiteral('precision-time'),
  );

  static const List<PlacementGroupStrategy> values = [
    cluster,
    spread,
    partition,
    precisionTime,
  ];
}

/// Factory wrapper for `aws_placement_group`.
final class AwsPlacementGroup extends Resource {
  static const String tfType = 'aws_placement_group';

  AwsPlacementGroup(
    super.localName, {
    required TfArg<String> name,
    TfArg<num>? partitionCount,
    TfArg<String>? region,
    PlacementGroupSpreadLevel? spreadLevel,
    required PlacementGroupStrategy strategy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `placement_group_id` attribute.
  TfRef<String> get placementGroupId =>
      TfRef.attribute<String>(this, 'placement_group_id');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `spread_level` attribute.
  TfRef<String> get spreadLevel =>
      TfRef.attribute<String>(this, 'spread_level');

  /// Reference to `strategy` attribute.
  TfRef<String> get strategy => TfRef.attribute<String>(this, 'strategy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
