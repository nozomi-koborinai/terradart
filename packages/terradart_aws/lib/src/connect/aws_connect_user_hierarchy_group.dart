// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_user_hierarchy_group`.
const Set<String> _awsConnectUserHierarchyGroupSensitive = <String>{};

/// Factory wrapper for `aws_connect_user_hierarchy_group`.
final class AwsConnectUserHierarchyGroup extends Resource {
  static const String tfType = 'aws_connect_user_hierarchy_group';

  AwsConnectUserHierarchyGroup({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? parentGroupId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'name': name,
           if (parentGroupId != null) 'parent_group_id': parentGroupId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hierarchy_group_id` attribute.
  TfRef<String> get hierarchyGroupId =>
      TfRef.attribute<String>(this, 'hierarchy_group_id');

  /// Reference to `hierarchy_path` attribute.
  TfRef<List<Map<String, Object?>>> get hierarchyPath =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hierarchy_path');

  /// Reference to `level_id` attribute.
  TfRef<String> get levelId => TfRef.attribute<String>(this, 'level_id');
}
