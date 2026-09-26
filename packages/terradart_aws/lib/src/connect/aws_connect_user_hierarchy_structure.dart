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
final class ConnectUserHierarchyStructureHierarchyStructure {
  const ConnectUserHierarchyStructureHierarchyStructure({
    this.levelFive,
    this.levelFour,
    this.levelOne,
    this.levelThree,
    this.levelTwo,
  });

  final ConnectUserHierarchyStructureHierarchyStructureLevelFive? levelFive;

  final ConnectUserHierarchyStructureHierarchyStructureLevelFour? levelFour;

  final ConnectUserHierarchyStructureHierarchyStructureLevelOne? levelOne;

  final ConnectUserHierarchyStructureHierarchyStructureLevelThree? levelThree;

  final ConnectUserHierarchyStructureHierarchyStructureLevelTwo? levelTwo;

  Map<String, Object?> encode() => {
    if (levelFive != null) 'level_five': levelFive!.encode(),
    if (levelFour != null) 'level_four': levelFour!.encode(),
    if (levelOne != null) 'level_one': levelOne!.encode(),
    if (levelThree != null) 'level_three': levelThree!.encode(),
    if (levelTwo != null) 'level_two': levelTwo!.encode(),
  };
}

/// Typed helper for the `hierarchy_structure.level_five` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureHierarchyStructureLevelFive {
  const ConnectUserHierarchyStructureHierarchyStructureLevelFive({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_four` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureHierarchyStructureLevelFour {
  const ConnectUserHierarchyStructureHierarchyStructureLevelFour({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_one` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureHierarchyStructureLevelOne {
  const ConnectUserHierarchyStructureHierarchyStructureLevelOne({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_three` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureHierarchyStructureLevelThree {
  const ConnectUserHierarchyStructureHierarchyStructureLevelThree({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `hierarchy_structure.level_two` block of
/// `aws_connect_user_hierarchy_structure` (derived from provider schema).
@immutable
final class ConnectUserHierarchyStructureHierarchyStructureLevelTwo {
  const ConnectUserHierarchyStructureHierarchyStructureLevelTwo({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_connect_user_hierarchy_structure`.
final class AwsConnectUserHierarchyStructure extends Resource {
  static const String tfType = 'aws_connect_user_hierarchy_structure';

  AwsConnectUserHierarchyStructure({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required ConnectUserHierarchyStructureHierarchyStructure hierarchyStructure,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'hierarchy_structure': TfArg.literal(hierarchyStructure.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyStructureSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
