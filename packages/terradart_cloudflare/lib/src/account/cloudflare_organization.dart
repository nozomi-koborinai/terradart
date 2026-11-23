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

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `profile` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class OrganizationProfile {
  const OrganizationProfile({
    this.businessAddress,
    this.businessEmail,
    this.businessName,
    this.businessPhone,
    this.externalMetadata,
  });

  final TfArg<String>? businessAddress;

  final TfArg<String>? businessEmail;

  final TfArg<String>? businessName;

  final TfArg<String>? businessPhone;

  final TfArg<String>? externalMetadata;

  @internal
  Map<String, Object?> encode() => {
    'business_address': ?businessAddress?.toTfJson(),
    'business_email': ?businessEmail?.toTfJson(),
    'business_name': ?businessName?.toTfJson(),
    'business_phone': ?businessPhone?.toTfJson(),
    'external_metadata': ?externalMetadata?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_organization`.
///
/// Accepted Permissions
///
/// - `User Details Write`
///
/// User API tokens can list and create Organizations, but reading, updating, or
/// deleting an Organization requires a Global API key and your registered email
/// address. The `cloudflare_organization` Terraform resource therefore requires
/// a Global API key for its full lifecycle.
///
/// See [Organizations authentication
/// limitations](https://developers.cloudflare.com/fundamentals/organizations/limitations/#api-authentication)
/// for credential compatibility by operation. Each endpoint’s **Security**
/// section lists its supported authentication methods, with **Accepted
/// Permissions** where applicable.
final class CloudflareOrganization extends Resource {
  static const String tfType = 'cloudflare_organization';

  CloudflareOrganization(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? parentId,
    OrganizationParent? parent,
    OrganizationProfile? profile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent_id': ?parentId,
           if (parent != null) 'parent': TfArg.literal(parent.encode()),
           if (profile != null) 'profile': TfArg.literal(profile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareOrganization>`.
  RefTo<CloudflareOrganization> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');
}
