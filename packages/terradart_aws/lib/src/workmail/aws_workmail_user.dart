// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workmail_user`.
const Set<String> _awsWorkmailUserSensitive = <String>{'password'};

/// Workmail User User enum for `user_role`.
enum WorkmailUserUserRole implements TerraformEnum {
  user('USER'),
  resource('RESOURCE'),
  systemUser('SYSTEM_USER'),
  remoteUser('REMOTE_USER');

  const WorkmailUserUserRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workmail_user`.
final class AwsWorkmailUser extends Resource {
  static const String tfType = 'aws_workmail_user';

  AwsWorkmailUser({
    required super.localName,
    TfArg<String>? city,
    TfArg<String>? company,
    TfArg<String>? country,
    TfArg<String>? department,
    required TfArg<String> displayName,
    required TfArg<String> email,
    TfArg<String>? firstName,
    TfArg<bool>? hiddenFromGlobalAddressList,
    TfArg<String>? identityProviderUserId,
    TfArg<String>? initials,
    TfArg<String>? jobTitle,
    TfArg<String>? lastName,
    required TfArg<String> name,
    TfArg<String>? office,
    required TfArg<String> organizationId,
    TfArg<String>? password,
    TfArg<String>? region,
    TfArg<String>? street,
    TfArg<String>? telephone,
    TfArg<WorkmailUserUserRole>? userRole,
    TfArg<String>? zipCode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'city': ?city,
           'company': ?company,
           'country': ?country,
           'department': ?department,
           'display_name': displayName,
           'email': email,
           'first_name': ?firstName,
           'hidden_from_global_address_list': ?hiddenFromGlobalAddressList,
           'identity_provider_user_id': ?identityProviderUserId,
           'initials': ?initials,
           'job_title': ?jobTitle,
           'last_name': ?lastName,
           'name': name,
           'office': ?office,
           'organization_id': organizationId,
           'password': ?password,
           'region': ?region,
           'street': ?street,
           'telephone': ?telephone,
           'user_role': ?userRole,
           'zip_code': ?zipCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkmailUser>`.
  RefTo<AwsWorkmailUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `disabled_date` attribute.
  TfRef<String> get disabledDate =>
      TfRef.attribute<String>(this, 'disabled_date');

  /// Reference to `enabled_date` attribute.
  TfRef<String> get enabledDate =>
      TfRef.attribute<String>(this, 'enabled_date');

  /// Reference to `identity_provider_identity_store_id` attribute.
  TfRef<String> get identityProviderIdentityStoreId =>
      TfRef.attribute<String>(this, 'identity_provider_identity_store_id');

  /// Reference to `mailbox_deprovisioned_date` attribute.
  TfRef<String> get mailboxDeprovisionedDate =>
      TfRef.attribute<String>(this, 'mailbox_deprovisioned_date');

  /// Reference to `mailbox_provisioned_date` attribute.
  TfRef<String> get mailboxProvisionedDate =>
      TfRef.attribute<String>(this, 'mailbox_provisioned_date');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
