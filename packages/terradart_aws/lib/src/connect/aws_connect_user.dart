// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_user`.
const Set<String> _awsConnectUserSensitive = <String>{'password'};

/// Typed helper for the `identity_info` block of
/// `aws_connect_user` (derived from provider schema).
@immutable
final class ConnectUserIdentityInfo {
  const ConnectUserIdentityInfo({
    this.email,
    this.firstName,
    this.lastName,
    this.secondaryEmail,
  });

  final TfArg<String>? email;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? secondaryEmail;

  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'secondary_email': ?secondaryEmail?.toTfJson(),
  };
}

/// Typed helper for the `phone_config` block of
/// `aws_connect_user` (derived from provider schema).
@immutable
final class ConnectUserPhoneConfig {
  const ConnectUserPhoneConfig({
    this.afterContactWorkTimeLimit,
    this.autoAccept,
    this.deskPhoneNumber,
    required this.phoneType,
  });

  final TfArg<num>? afterContactWorkTimeLimit;

  final TfArg<bool>? autoAccept;

  final TfArg<String>? deskPhoneNumber;

  final TfArg<ConnectUserPhoneType> phoneType;

  Map<String, Object?> encode() => {
    'after_contact_work_time_limit': ?afterContactWorkTimeLimit?.toTfJson(),
    'auto_accept': ?autoAccept?.toTfJson(),
    'desk_phone_number': ?deskPhoneNumber?.toTfJson(),
    'phone_type': phoneType.toTfJson(),
  };
}

/// `phone_type` — derived from the provider schema description.
enum ConnectUserPhoneType implements TerraformEnum {
  softPhone('SOFT_PHONE'),
  deskPhone('DESK_PHONE');

  const ConnectUserPhoneType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_connect_user`.
final class AwsConnectUser extends Resource {
  static const String tfType = 'aws_connect_user';

  AwsConnectUser({
    required super.localName,
    TfArg<String>? directoryUserId,
    TfArg<String>? hierarchyGroupId,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? password,
    TfArg<String>? region,
    required TfArg<String> routingProfileId,
    required TfArg<List<String>> securityProfileIds,
    TfArg<Map<String, String>>? tags,
    ConnectUserIdentityInfo? identityInfo,
    required ConnectUserPhoneConfig phoneConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_user_id': ?directoryUserId,
           'hierarchy_group_id': ?hierarchyGroupId,
           'instance_id': instanceId,
           'name': name,
           'password': ?password,
           'region': ?region,
           'routing_profile_id': routingProfileId,
           'security_profile_ids': securityProfileIds,
           'tags': ?tags,
           if (identityInfo != null)
             'identity_info': TfArg.literal(identityInfo.encode()),
           'phone_config': TfArg.literal(phoneConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectUser>`.
  RefTo<AwsConnectUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `directory_user_id` attribute.
  TfRef<String> get directoryUserIdRef =>
      TfRef.attribute<String>(this, 'directory_user_id');

  /// Reference to `hierarchy_group_id` attribute.
  TfRef<String> get hierarchyGroupIdRef =>
      TfRef.attribute<String>(this, 'hierarchy_group_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `password` attribute.
  TfRef<String> get passwordRef => TfRef.attribute<String>(this, 'password');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileIdRef =>
      TfRef.attribute<String>(this, 'routing_profile_id');

  /// Reference to `security_profile_ids` attribute.
  TfRef<List<String>> get securityProfileIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_profile_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
