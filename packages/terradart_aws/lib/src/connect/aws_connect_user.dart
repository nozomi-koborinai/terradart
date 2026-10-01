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

  final ConnectUserPhoneType phoneType;

  Map<String, Object?> encode() => {
    'after_contact_work_time_limit': ?afterContactWorkTimeLimit?.toTfJson(),
    'auto_accept': ?autoAccept?.toTfJson(),
    'desk_phone_number': ?deskPhoneNumber?.toTfJson(),
    'phone_type': phoneType.toTfJson(),
  };
}

/// `phone_type` — derived from the provider schema description.
extension type const ConnectUserPhoneType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectUserPhoneType.variable(String name) : this._(TfArg.variable(name));
  ConnectUserPhoneType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectUserPhoneType.arg(TfArg<String> arg) : this._(arg);

  static const softPhone = ConnectUserPhoneType._(TfArgLiteral('SOFT_PHONE'));
  static const deskPhone = ConnectUserPhoneType._(TfArgLiteral('DESK_PHONE'));

  static const List<ConnectUserPhoneType> values = [softPhone, deskPhone];
}

/// Factory wrapper for `aws_connect_user`.
final class AwsConnectUser extends Resource {
  static const String tfType = 'aws_connect_user';

  AwsConnectUser(
    super.localName, {
    TfArg<String>? directoryUserId,
    TfArg<String>? hierarchyGroupId,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    Sensitive<String>? password,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `directory_user_id` attribute.
  TfRef<String> get directoryUserId =>
      TfRef.attribute<String>(this, 'directory_user_id');

  /// Reference to `hierarchy_group_id` attribute.
  TfRef<String> get hierarchyGroupId =>
      TfRef.attribute<String>(this, 'hierarchy_group_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileId =>
      TfRef.attribute<String>(this, 'routing_profile_id');

  /// Reference to `security_profile_ids` attribute.
  TfRef<List<String>> get securityProfileIds =>
      TfRef.attribute<List<String>>(this, 'security_profile_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
