// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organization_profile`.
const Set<String> _cloudflareOrganizationProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_organization_profile`.
final class DataCloudflareOrganizationProfile extends Data {
  static const String tfType = 'cloudflare_organization_profile';

  DataCloudflareOrganizationProfile({
    required super.localName,
    required TfArg<String> organizationId,
  }) : super(
         terraformType: tfType,
         argMap: {'organization_id': organizationId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationProfileSensitive;

  /// Reference to `business_address` attribute.
  TfRef<String> get businessAddress =>
      TfRef.attribute<String>(this, 'business_address');

  /// Reference to `business_email` attribute.
  TfRef<String> get businessEmail =>
      TfRef.attribute<String>(this, 'business_email');

  /// Reference to `business_name` attribute.
  TfRef<String> get businessName =>
      TfRef.attribute<String>(this, 'business_name');

  /// Reference to `business_phone` attribute.
  TfRef<String> get businessPhone =>
      TfRef.attribute<String>(this, 'business_phone');

  /// Reference to `external_metadata` attribute.
  TfRef<String> get externalMetadata =>
      TfRef.attribute<String>(this, 'external_metadata');
}
