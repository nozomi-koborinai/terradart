// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organization`.
const Set<String> _cloudflareOrganizationSensitive = <String>{};

/// Typed helper for the `parent` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class OrganizationParent {
  const OrganizationParent({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `profile` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class OrganizationProfile {
  const OrganizationProfile({
    required this.businessAddress,
    required this.businessEmail,
    required this.businessName,
    required this.businessPhone,
    required this.externalMetadata,
  });

  final TfArg<String> businessAddress;

  final TfArg<String> businessEmail;

  final TfArg<String> businessName;

  final TfArg<String> businessPhone;

  final TfArg<String> externalMetadata;

  Map<String, Object?> encode() => {
    'business_address': businessAddress.toTfJson(),
    'business_email': businessEmail.toTfJson(),
    'business_name': businessName.toTfJson(),
    'business_phone': businessPhone.toTfJson(),
    'external_metadata': externalMetadata.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_organization`.
///
/// Accepted Permissions
///
/// - `User Details Write`
final class CloudflareOrganization extends Resource {
  static const String tfType = 'cloudflare_organization';

  CloudflareOrganization({
    required super.localName,
    required TfArg<String> name,
    OrganizationParent? parent,
    OrganizationProfile? profile,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (parent != null) 'parent': TfArg.literal(parent.encode()),
           if (profile != null) 'profile': TfArg.literal(profile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
