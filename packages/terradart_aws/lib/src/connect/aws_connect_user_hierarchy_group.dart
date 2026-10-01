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
           'parent_group_id': ?parentGroupId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserHierarchyGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectUserHierarchyGroup>`.
  RefTo<AwsConnectUserHierarchyGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `parent_group_id` attribute.
  TfRef<String> get parentGroupId =>
      TfRef.attribute<String>(this, 'parent_group_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
