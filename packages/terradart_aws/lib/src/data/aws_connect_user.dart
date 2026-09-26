// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_user`.
const Set<String> _awsConnectUserSensitive = <String>{};

/// Factory wrapper for `aws_connect_user`.
final class DataAwsConnectUser extends Data {
  static const String tfType = 'aws_connect_user';

  DataAwsConnectUser({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (userId != null) 'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `directory_user_id` attribute.
  TfRef<String> get directoryUserId =>
      TfRef.attribute<String>(this, 'directory_user_id');

  /// Reference to `hierarchy_group_id` attribute.
  TfRef<String> get hierarchyGroupId =>
      TfRef.attribute<String>(this, 'hierarchy_group_id');

  /// Reference to `identity_info` attribute.
  TfRef<List<Map<String, Object?>>> get identityInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_info');

  /// Reference to `phone_config` attribute.
  TfRef<List<Map<String, Object?>>> get phoneConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'phone_config');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileId =>
      TfRef.attribute<String>(this, 'routing_profile_id');

  /// Reference to `security_profile_ids` attribute.
  TfRef<List<String>> get securityProfileIds =>
      TfRef.attribute<List<String>>(this, 'security_profile_ids');
}
