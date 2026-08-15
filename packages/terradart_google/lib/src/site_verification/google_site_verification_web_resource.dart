// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_site_verification_web_resource`.
const Set<String> _googleSiteVerificationWebResourceSensitive = <String>{};

/// Site Verification Web Resource Verification enum for `verification_method`.
enum SiteVerificationWebResourceVerificationMethod implements TerraformEnum {
  analytics('ANALYTICS'),
  dnsCname('DNS_CNAME'),
  dnsTxt('DNS_TXT'),
  file('FILE'),
  meta('META'),
  tagManager('TAG_MANAGER');

  const SiteVerificationWebResourceVerificationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `site` block of
/// `google_site_verification_web_resource` (derived from provider schema).
@immutable
final class SiteVerificationWebResourceSite {
  const SiteVerificationWebResourceSite({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final TfArg<SiteVerificationWebResourceSiteType> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SiteVerificationWebResourceSiteType implements TerraformEnum {
  inetDomain('INET_DOMAIN'),
  site('SITE');

  const SiteVerificationWebResourceSiteType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_site_verification_web_resource`.
///
/// A web resource is a website or domain with verified ownership. Once your
/// ownership is verified you will be able to manage your website in the [Google
/// Search Console](https://www.google.com/webmasters/tools/).
///
/// ~> **Note:** The verification data (DNS `TXT` record, HTML file, `meta` tag,
/// etc.) must already exist before the web resource is created, and must be
/// deleted before the web resource is destroyed. The Google Site Verification
/// API checks that the verification data exists at creation time and does not
/// exist at destruction time and will fail if the required condition is not
/// met.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSiteVerificationWebResource extends Resource {
  static const String tfType = 'google_site_verification_web_resource';

  GoogleSiteVerificationWebResource({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<SiteVerificationWebResourceVerificationMethod>
    verificationMethod,
    required SiteVerificationWebResourceSite site,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'verification_method': verificationMethod,
           'site': TfArg.literal(site.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSiteVerificationWebResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owners` attribute.
  TfRef<List<String>> get owners =>
      TfRef.attribute<List<String>>(this, 'owners');

  /// Reference to `web_resource_id` attribute.
  TfRef<String> get webResourceId =>
      TfRef.attribute<String>(this, 'web_resource_id');
}
