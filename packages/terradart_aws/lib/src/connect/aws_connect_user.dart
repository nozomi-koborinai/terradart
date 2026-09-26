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
    if (email != null) 'email': email!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (secondaryEmail != null) 'secondary_email': secondaryEmail!.toTfJson(),
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

  final TfArg<String> phoneType;

  Map<String, Object?> encode() => {
    if (afterContactWorkTimeLimit != null)
      'after_contact_work_time_limit': afterContactWorkTimeLimit!.toTfJson(),
    if (autoAccept != null) 'auto_accept': autoAccept!.toTfJson(),
    if (deskPhoneNumber != null)
      'desk_phone_number': deskPhoneNumber!.toTfJson(),
    'phone_type': phoneType.toTfJson(),
  };
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
           if (directoryUserId != null) 'directory_user_id': directoryUserId,
           if (hierarchyGroupId != null) 'hierarchy_group_id': hierarchyGroupId,
           'instance_id': instanceId,
           'name': name,
           if (password != null) 'password': password,
           if (region != null) 'region': region,
           'routing_profile_id': routingProfileId,
           'security_profile_ids': securityProfileIds,
           if (tags != null) 'tags': tags,
           if (identityInfo != null)
             'identity_info': TfArg.literal(identityInfo.encode()),
           'phone_config': TfArg.literal(phoneConfig.encode()),
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

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
