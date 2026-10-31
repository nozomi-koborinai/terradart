// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_site_verification_token`.
const Set<String> _googleSiteVerificationTokenSensitive = <String>{};

/// Data Site Verification Token enum for `type`.
extension type const DataSiteVerificationTokenType._(TfArg<String> _)
    implements TfArg<String> {
  DataSiteVerificationTokenType.variable(String name)
    : this._(TfArg.variable(name));
  DataSiteVerificationTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const DataSiteVerificationTokenType.arg(TfArg<String> arg) : this._(arg);

  static const inetDomain = DataSiteVerificationTokenType._(
    TfArgLiteral('INET_DOMAIN'),
  );
  static const site = DataSiteVerificationTokenType._(TfArgLiteral('SITE'));

  static const List<DataSiteVerificationTokenType> values = [inetDomain, site];
}

/// Data Site Verification Token Verification enum for `verification_method`.
extension type const DataSiteVerificationTokenVerificationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  DataSiteVerificationTokenVerificationMethod.variable(String name)
    : this._(TfArg.variable(name));
  DataSiteVerificationTokenVerificationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DataSiteVerificationTokenVerificationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const analytics = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('ANALYTICS'),
  );
  static const dnsCname = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('DNS_CNAME'),
  );
  static const dnsTxt = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('DNS_TXT'),
  );
  static const file = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('FILE'),
  );
  static const meta = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('META'),
  );
  static const tagManager = DataSiteVerificationTokenVerificationMethod._(
    TfArgLiteral('TAG_MANAGER'),
  );

  static const List<DataSiteVerificationTokenVerificationMethod> values = [
    analytics,
    dnsCname,
    dnsTxt,
    file,
    meta,
    tagManager,
  ];
}

/// Factory wrapper for `google_site_verification_token`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSiteVerificationToken extends Data {
  static const String tfType = 'google_site_verification_token';

  DataGoogleSiteVerificationToken(
    super.localName, {
    required TfArg<String> identifier,
    required DataSiteVerificationTokenType type,
    required DataSiteVerificationTokenVerificationMethod verificationMethod,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           'type': type,
           'verification_method': verificationMethod,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSiteVerificationTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `verification_method` attribute.
  TfRef<String> get verificationMethod =>
      TfRef.attribute<String>(this, 'verification_method');
}
