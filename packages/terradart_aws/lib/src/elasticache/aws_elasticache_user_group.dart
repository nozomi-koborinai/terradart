// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_user_group`.
const Set<String> _awsElasticacheUserGroupSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_user_group`.
final class AwsElasticacheUserGroup extends Resource {
  static const String tfType = 'aws_elasticache_user_group';

  AwsElasticacheUserGroup({
    required super.localName,
    required TfArg<String> engine,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userGroupId,
    TfArg<List<String>>? userIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine': engine,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'user_group_id': userGroupId,
           if (userIds != null) 'user_ids': userIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
