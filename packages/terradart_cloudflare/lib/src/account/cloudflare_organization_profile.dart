// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organization_profile`.
const Set<String> _cloudflareOrganizationProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_organization_profile`.
final class CloudflareOrganizationProfile extends Resource {
  static const String tfType = 'cloudflare_organization_profile';

  CloudflareOrganizationProfile({
    required super.localName,
    required TfArg<String> businessAddress,
    required TfArg<String> businessEmail,
    required TfArg<String> businessName,
    required TfArg<String> businessPhone,
    required TfArg<String> externalMetadata,
    required TfArg<String> organizationId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'business_address': businessAddress,
           'business_email': businessEmail,
           'business_name': businessName,
           'business_phone': businessPhone,
           'external_metadata': externalMetadata,
           'organization_id': organizationId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationProfileSensitive;
}
