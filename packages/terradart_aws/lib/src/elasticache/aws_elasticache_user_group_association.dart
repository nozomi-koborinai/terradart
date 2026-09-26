// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_user_group_association`.
const Set<String> _awsElasticacheUserGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_user_group_association`.
final class AwsElasticacheUserGroupAssociation extends Resource {
  static const String tfType = 'aws_elasticache_user_group_association';

  AwsElasticacheUserGroupAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> userGroupId,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'user_group_id': userGroupId,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticacheUserGroupAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
