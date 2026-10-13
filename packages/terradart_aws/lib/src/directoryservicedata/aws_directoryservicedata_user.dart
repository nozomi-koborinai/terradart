// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directoryservicedata_user`.
const Set<String> _awsDirectoryservicedataUserSensitive = <String>{};

/// Factory wrapper for `aws_directoryservicedata_user`.
final class AwsDirectoryservicedataUser extends Resource {
  static const String tfType = 'aws_directoryservicedata_user';

  AwsDirectoryservicedataUser(
    super.localName, {
    required TfArg<String> directoryId,
    TfArg<String>? emailAddress,
    TfArg<String>? givenName,
    TfArg<String>? region,
    required TfArg<String> samAccountName,
    TfArg<String>? surname,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'email_address': ?emailAddress,
           'given_name': ?givenName,
           'region': ?region,
           'sam_account_name': samAccountName,
           'surname': ?surname,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryservicedataUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryservicedataUser>`.
  RefTo<AwsDirectoryservicedataUser> get ref => RefTo.of(this);

  /// Reference to `distinguished_name` attribute.
  TfRef<String> get distinguishedName =>
      TfRef.attribute<String>(this, 'distinguished_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `realm` attribute.
  TfRef<String> get realm => TfRef.attribute<String>(this, 'realm');

  /// Reference to `sid` attribute.
  TfRef<String> get sid => TfRef.attribute<String>(this, 'sid');

  /// Reference to `user_principal_name` attribute.
  TfRef<String> get userPrincipalName =>
      TfRef.attribute<String>(this, 'user_principal_name');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `given_name` attribute.
  TfRef<String> get givenName => TfRef.attribute<String>(this, 'given_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sam_account_name` attribute.
  TfRef<String> get samAccountName =>
      TfRef.attribute<String>(this, 'sam_account_name');

  /// Reference to `surname` attribute.
  TfRef<String> get surname => TfRef.attribute<String>(this, 'surname');
}
