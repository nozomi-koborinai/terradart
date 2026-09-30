// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_alternate_contact`.
const Set<String> _awsAccountAlternateContactSensitive = <String>{};

/// Account Alternate Contact Alternate Contact enum for `alternate_contact_type`.
enum AccountAlternateContactAlternateContactType implements TerraformEnum {
  billing('BILLING'),
  operations('OPERATIONS'),
  security('SECURITY');

  const AccountAlternateContactAlternateContactType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_account_alternate_contact`.
final class AwsAccountAlternateContact extends Resource {
  static const String tfType = 'aws_account_alternate_contact';

  AwsAccountAlternateContact({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<AccountAlternateContactAlternateContactType>
    alternateContactType,
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
           'account_id': ?accountId,
           'alternate_contact_type': alternateContactType,
           'email_address': emailAddress,
           'name': name,
           'phone_number': phoneNumber,
           'title': title,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountAlternateContactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccountAlternateContact>`.
  RefTo<AwsAccountAlternateContact> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `alternate_contact_type` attribute.
  TfRef<String> get alternateContactTypeRef =>
      TfRef.attribute<String>(this, 'alternate_contact_type');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddressRef =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumberRef =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `title` attribute.
  TfRef<String> get titleRef => TfRef.attribute<String>(this, 'title');
}
