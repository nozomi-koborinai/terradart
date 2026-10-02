// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_user_hierarchy_structure`.
const Set<String> _awsConnectUserHierarchyStructureSensitive = <String>{};

/// Typed helper for the `hierarchy_structure` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructure {
  const ConnectUserHierarchyStructure({
    this.levelFive,
    this.levelFour,
    this.levelOne,
    this.levelThree,
    this.levelTwo,
  });

  final ConnectUserHierarchyStructureLevelFive? levelFive;

  final ConnectUserHierarchyStructureLevelFour? levelFour;

  final ConnectUserHierarchyStructureLevelOne? levelOne;

  final ConnectUserHierarchyStructureLevelThree? levelThree;

  final ConnectUserHierarchyStructureLevelTwo? levelTwo;

  @internal
  Map<String, Object?> encode() => {
    'level_five': ?levelFive?.encode(),
    'level_four': ?levelFour?.encode(),
    'level_one': ?levelOne?.encode(),
    'level_three': ?levelThree?.encode(),
    'level_two': ?levelTwo?.encode(),
  };
}

/// Typed helper for the `hierarchy_structure.level_five` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureLevelFive {
  const ConnectUserHierarchyStructureLevelFive({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_four` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureLevelFour {
  const ConnectUserHierarchyStructureLevelFour({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_one` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureLevelOne {
  const ConnectUserHierarchyStructureLevelOne({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_three` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureLevelThree {
  const ConnectUserHierarchyStructureLevelThree({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_two` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureLevelTwo {
  const ConnectUserHierarchyStructureLevelTwo({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_connect_user_hierarchy_structure`.
final class AwsConnectUserHierarchyStructure extends Resource {
  static const String tfType = 'aws_connect_user_hierarchy_structure';

  AwsConnectUserHierarchyStructure(
    super.localName, {
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required ConnectUserHierarchyStructure hierarchyStructure,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'region': ?region,
           'hierarchy_structure': TfArg.literal(hierarchyStructure.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyStructureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectUserHierarchyStructure>`.
  RefTo<AwsConnectUserHierarchyStructure> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
