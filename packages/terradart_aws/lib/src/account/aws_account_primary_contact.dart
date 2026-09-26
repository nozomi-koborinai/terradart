// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_primary_contact`.
const Set<String> _awsAccountPrimaryContactSensitive = <String>{};

/// Factory wrapper for `aws_account_primary_contact`.
final class AwsAccountPrimaryContact extends Resource {
  static const String tfType = 'aws_account_primary_contact';

  AwsAccountPrimaryContact({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> addressLine1,
    TfArg<String>? addressLine2,
    TfArg<String>? addressLine3,
    required TfArg<String> city,
    TfArg<String>? companyName,
    required TfArg<String> countryCode,
    TfArg<String>? districtOrCounty,
    required TfArg<String> fullName,
    required TfArg<String> phoneNumber,
    required TfArg<String> postalCode,
    TfArg<String>? stateOrRegion,
    TfArg<String>? websiteUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'address_line_1': addressLine1,
           if (addressLine2 != null) 'address_line_2': addressLine2,
           if (addressLine3 != null) 'address_line_3': addressLine3,
           'city': city,
           if (companyName != null) 'company_name': companyName,
           'country_code': countryCode,
           if (districtOrCounty != null) 'district_or_county': districtOrCounty,
           'full_name': fullName,
           'phone_number': phoneNumber,
           'postal_code': postalCode,
           if (stateOrRegion != null) 'state_or_region': stateOrRegion,
           if (websiteUrl != null) 'website_url': websiteUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountPrimaryContactSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
