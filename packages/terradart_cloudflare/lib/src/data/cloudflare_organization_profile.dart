// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_organization_profile.dart';

/// Sensitive field paths for `cloudflare_organization_profile`.
const Set<String> _cloudflareOrganizationProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_organization_profile`.
final class DataCloudflareOrganizationProfile extends Data {
  static const String tfType = 'cloudflare_organization_profile';

  DataCloudflareOrganizationProfile({
    required super.localName,
    required TfArg<String> organizationId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'organization_id': organizationId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationProfileSensitive;

  /// A reference to the `cloudflare_organization_profile` this data source reads, for
  /// arguments typed `RefTo<CloudflareOrganizationProfile>`.
  RefTo<CloudflareOrganizationProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');
}
