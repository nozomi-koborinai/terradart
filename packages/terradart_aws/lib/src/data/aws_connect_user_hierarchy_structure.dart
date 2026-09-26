// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
         argMap: {
           'instance_id': instanceId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyStructureSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hierarchy_structure` attribute.
  TfRef<List<Map<String, Object?>>> get hierarchyStructure =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hierarchy_structure');
}
