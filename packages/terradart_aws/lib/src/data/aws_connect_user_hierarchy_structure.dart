// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_user_hierarchy_structure.dart';

/// Sensitive field paths for `aws_connect_user_hierarchy_structure`.
const Set<String> _awsConnectUserHierarchyStructureSensitive = <String>{};

/// Factory wrapper for `aws_connect_user_hierarchy_structure`.
final class DataAwsConnectUserHierarchyStructure extends Data {
  static const String tfType = 'aws_connect_user_hierarchy_structure';

  DataAwsConnectUserHierarchyStructure({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'instance_id': instanceId, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyStructureSensitive;

  /// A reference to the `aws_connect_user_hierarchy_structure` this data source reads, for
  /// arguments typed `RefTo<AwsConnectUserHierarchyStructure>`.
  RefTo<AwsConnectUserHierarchyStructure> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hierarchy_structure` attribute.
  TfRef<List<Map<String, Object?>>> get hierarchyStructure =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hierarchy_structure');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
