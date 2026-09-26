// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_alternate_contact`.
const Set<String> _awsAccountAlternateContactSensitive = <String>{};

/// Factory wrapper for `aws_account_alternate_contact`.
final class AwsAccountAlternateContact extends Resource {
  static const String tfType = 'aws_account_alternate_contact';

  AwsAccountAlternateContact({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> alternateContactType,
    required TfArg<String> emailAddress,
    required TfArg<String> name,
    required TfArg<String> phoneNumber,
    required TfArg<String> title,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'alternate_contact_type': alternateContactType,
           'email_address': emailAddress,
           'name': name,
           'phone_number': phoneNumber,
           'title': title,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountAlternateContactSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
