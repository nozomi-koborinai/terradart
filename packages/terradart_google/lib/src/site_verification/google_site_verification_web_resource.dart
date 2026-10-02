// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_site_verification_web_resource`.
const Set<String> _googleSiteVerificationWebResourceSensitive = <String>{};

/// Site Verification Web Resource Verification enum for `verification_method`.
extension type const SiteVerificationWebResourceVerificationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  SiteVerificationWebResourceVerificationMethod.variable(String name)
    : this._(TfArg.variable(name));
  SiteVerificationWebResourceVerificationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const SiteVerificationWebResourceVerificationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const analytics = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('ANALYTICS'),
  );
  static const dnsCname = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('DNS_CNAME'),
  );
  static const dnsTxt = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('DNS_TXT'),
  );
  static const file = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('FILE'),
  );
  static const meta = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('META'),
  );
  static const tagManager = SiteVerificationWebResourceVerificationMethod._(
    TfArgLiteral('TAG_MANAGER'),
  );

  static const List<SiteVerificationWebResourceVerificationMethod> values = [
    analytics,
    dnsCname,
    dnsTxt,
    file,
    meta,
    tagManager,
  ];
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

  final SiteVerificationWebResourceType type;

  @internal
  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SiteVerificationWebResourceType._(TfArg<String> _)
    implements TfArg<String> {
  SiteVerificationWebResourceType.variable(String name)
    : this._(TfArg.variable(name));
  SiteVerificationWebResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const SiteVerificationWebResourceType.arg(TfArg<String> arg) : this._(arg);

  static const inetDomain = SiteVerificationWebResourceType._(
    TfArgLiteral('INET_DOMAIN'),
  );
  static const site = SiteVerificationWebResourceType._(TfArgLiteral('SITE'));

  static const List<SiteVerificationWebResourceType> values = [
    inetDomain,
    site,
  ];
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

  GoogleSiteVerificationWebResource(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required SiteVerificationWebResourceVerificationMethod verificationMethod,
    required SiteVerificationWebResourceSite site,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'verification_method': verificationMethod,
           'site': TfArg.literal(site.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSiteVerificationWebResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSiteVerificationWebResource>`.
  RefTo<GoogleSiteVerificationWebResource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owners` attribute.
  TfRef<List<String>> get owners =>
      TfRef.attribute<List<String>>(this, 'owners');

  /// Reference to `web_resource_id` attribute.
  TfRef<String> get webResourceId =>
      TfRef.attribute<String>(this, 'web_resource_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `verification_method` attribute.
  TfRef<String> get verificationMethod =>
      TfRef.attribute<String>(this, 'verification_method');
}
