// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notificationscontacts_email_contact`.
const Set<String> _awsNotificationscontactsEmailContactSensitive = <String>{};

/// Factory wrapper for `aws_notificationscontacts_email_contact`.
final class AwsNotificationscontactsEmailContact extends Resource {
  static const String tfType = 'aws_notificationscontacts_email_contact';

  AwsNotificationscontactsEmailContact(
    super.localName, {
    required TfArg<String> emailAddress,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'email_address': emailAddress, 'name': name, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationscontactsEmailContactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationscontactsEmailContact>`.
  RefTo<AwsNotificationscontactsEmailContact> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
