// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_user_group`.
const Set<String> _awsElasticacheUserGroupSensitive = <String>{};

/// Elasticache User Group enum for `engine`.
extension type const ElasticacheUserGroupEngine._(TfArg<String> _)
    implements TfArg<String> {
  ElasticacheUserGroupEngine.variable(String name)
    : this._(TfArg.variable(name));
  ElasticacheUserGroupEngine.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticacheUserGroupEngine.arg(TfArg<String> arg) : this._(arg);

  static const redis = ElasticacheUserGroupEngine._(TfArgLiteral('redis'));
  static const valkey = ElasticacheUserGroupEngine._(TfArgLiteral('valkey'));

  static const List<ElasticacheUserGroupEngine> values = [redis, valkey];
}

/// Factory wrapper for `aws_elasticache_user_group`.
final class AwsElasticacheUserGroup extends Resource {
  static const String tfType = 'aws_elasticache_user_group';

  AwsElasticacheUserGroup(
    super.localName, {
    required ElasticacheUserGroupEngine engine,
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
           'region': ?region,
           'tags': ?tags,
           'user_group_id': userGroupId,
           'user_ids': ?userIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheUserGroup>`.
  RefTo<AwsElasticacheUserGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupId =>
      TfRef.attribute<String>(this, 'user_group_id');

  /// Reference to `user_ids` attribute.
  TfRef<List<String>> get userIds =>
      TfRef.attribute<List<String>>(this, 'user_ids');
}
