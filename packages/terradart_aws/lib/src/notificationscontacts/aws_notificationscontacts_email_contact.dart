// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notificationscontacts_email_contact`.
const Set<String> _awsNotificationscontactsEmailContactSensitive = <String>{};

/// Factory wrapper for `aws_notificationscontacts_email_contact`.
final class AwsNotificationscontactsEmailContact extends Resource {
  static const String tfType = 'aws_notificationscontacts_email_contact';

  AwsNotificationscontactsEmailContact({
    required super.localName,
    required TfArg<String> emailAddress,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email_address': emailAddress,
           'name': name,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationscontactsEmailContactSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
