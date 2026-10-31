// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_impersonation_registries`.
const Set<String> _cloudflareEmailSecurityImpersonationRegistriesSensitive =
    <String>{};

/// Data Email Security Impersonation Registries enum for `direction`.
extension type const DataEmailSecurityImpersonationRegistriesDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityImpersonationRegistriesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityImpersonationRegistriesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityImpersonationRegistriesDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityImpersonationRegistriesDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityImpersonationRegistriesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityImpersonationRegistriesDirection> values =
      [asc, desc];
}

/// Data Email Security Impersonation Registries enum for `order`.
extension type const DataEmailSecurityImpersonationRegistriesOrder._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityImpersonationRegistriesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityImpersonationRegistriesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityImpersonationRegistriesOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataEmailSecurityImpersonationRegistriesOrder._(
    TfArgLiteral('name'),
  );
  static const email = DataEmailSecurityImpersonationRegistriesOrder._(
    TfArgLiteral('email'),
  );
  static const createdAt = DataEmailSecurityImpersonationRegistriesOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityImpersonationRegistriesOrder> values = [
    name,
    email,
    createdAt,
  ];
}

/// Data Email Security Impersonation Registries enum for `provenance`.
extension type const DataEmailSecurityImpersonationRegistriesProvenance._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityImpersonationRegistriesProvenance.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityImpersonationRegistriesProvenance.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityImpersonationRegistriesProvenance.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const a1sInternal =
      DataEmailSecurityImpersonationRegistriesProvenance._(
        TfArgLiteral('A1S_INTERNAL'),
      );
  static const snoopyCasbOffice365 =
      DataEmailSecurityImpersonationRegistriesProvenance._(
        TfArgLiteral('SNOOPY-CASB_OFFICE_365'),
      );
  static const snoopyOffice365 =
      DataEmailSecurityImpersonationRegistriesProvenance._(
        TfArgLiteral('SNOOPY-OFFICE_365'),
      );
  static const snoopyGoogleDirectory =
      DataEmailSecurityImpersonationRegistriesProvenance._(
        TfArgLiteral('SNOOPY-GOOGLE_DIRECTORY'),
      );

  static const List<DataEmailSecurityImpersonationRegistriesProvenance> values =
      [
        a1sInternal,
        snoopyCasbOffice365,
        snoopyOffice365,
        snoopyGoogleDirectory,
      ];
}

/// Factory wrapper for `cloudflare_email_security_impersonation_registries`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityImpersonationRegistries extends Data {
  static const String tfType =
      'cloudflare_email_security_impersonation_registries';

  DataCloudflareEmailSecurityImpersonationRegistries(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataEmailSecurityImpersonationRegistriesDirection? direction,
    TfArg<num>? maxItems,
    DataEmailSecurityImpersonationRegistriesOrder? order,
    DataEmailSecurityImpersonationRegistriesProvenance? provenance,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'provenance': ?provenance,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistriesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `provenance` attribute.
  TfRef<String> get provenance => TfRef.attribute<String>(this, 'provenance');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
