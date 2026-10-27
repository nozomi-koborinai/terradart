// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_certificate_order`.
const Set<String> _azurermAppServiceCertificateOrderSensitive = <String>{};

/// App Service Certificate Order Product enum for `product_type`.
extension type const AppServiceCertificateOrderProductType._(TfArg<String> _)
    implements TfArg<String> {
  AppServiceCertificateOrderProductType.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceCertificateOrderProductType.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceCertificateOrderProductType.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = AppServiceCertificateOrderProductType._(
    TfArgLiteral('Standard'),
  );
  static const wildcard = AppServiceCertificateOrderProductType._(
    TfArgLiteral('WildCard'),
  );

  static const List<AppServiceCertificateOrderProductType> values = [
    standard,
    wildcard,
  ];
}

/// At most one of `csr`, `distinguished_name` on `azurerm_app_service_certificate_order`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.csr(...)`.
sealed class AppServiceCertificateOrderCsrOrDistinguishedName {
  const AppServiceCertificateOrderCsrOrDistinguishedName();

  /// Sets `csr`.
  const factory AppServiceCertificateOrderCsrOrDistinguishedName.csr(
    TfArg<String> csr,
  ) = AppServiceCertificateOrderCsrOrDistinguishedNameCsr;

  /// Sets `distinguished_name`.
  const factory AppServiceCertificateOrderCsrOrDistinguishedName.distinguishedName(
    TfArg<String> distinguishedName,
  ) = AppServiceCertificateOrderCsrOrDistinguishedNameChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppServiceCertificateOrderCsrOrDistinguishedName.csr] choice: sets `csr`.
final class AppServiceCertificateOrderCsrOrDistinguishedNameCsr
    extends AppServiceCertificateOrderCsrOrDistinguishedName {
  const AppServiceCertificateOrderCsrOrDistinguishedNameCsr(this.csr);

  final TfArg<String> csr;

  @internal
  @override
  String get blockKey => 'csr';

  @internal
  @override
  Map<String, Object?> encode() => {'csr': csr.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'csr': csr};
}

/// The [AppServiceCertificateOrderCsrOrDistinguishedName.distinguishedName] choice: sets `distinguished_name`.
final class AppServiceCertificateOrderCsrOrDistinguishedNameChoice
    extends AppServiceCertificateOrderCsrOrDistinguishedName {
  const AppServiceCertificateOrderCsrOrDistinguishedNameChoice(
    this.distinguishedName,
  );

  final TfArg<String> distinguishedName;

  @internal
  @override
  String get blockKey => 'distinguished_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'distinguished_name': distinguishedName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'distinguished_name': distinguishedName,
  };
}

/// Factory wrapper for `azurerm_app_service_certificate_order`.
final class AzurermAppServiceCertificateOrder extends Resource {
  static const String tfType = 'azurerm_app_service_certificate_order';

  AzurermAppServiceCertificateOrder(
    super.localName, {
    TfArg<bool>? autoRenew,
    AppServiceCertificateOrderCsrOrDistinguishedName? csrOrDistinguishedName,
    TfArg<num>? keySize,
    required TfArg<String> location,
    required TfArg<String> name,
    AppServiceCertificateOrderProductType? productType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? validityInYears,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_renew': ?autoRenew,
           ...?csrOrDistinguishedName?.argMap,
           'key_size': ?keySize,
           'location': location,
           'name': name,
           'product_type': ?productType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'validity_in_years': ?validityInYears,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceCertificateOrderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceCertificateOrder>`.
  RefTo<AzurermAppServiceCertificateOrder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_certificate_not_renewable_reasons` attribute.
  TfRef<List<String>> get appServiceCertificateNotRenewableReasons =>
      TfRef.attribute<List<String>>(
        this,
        'app_service_certificate_not_renewable_reasons',
      );

  /// Reference to `certificates` attribute.
  TfRef<List<Map<String, Object?>>> get certificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificates');

  /// Reference to `domain_verification_token` attribute.
  TfRef<String> get domainVerificationToken =>
      TfRef.attribute<String>(this, 'domain_verification_token');

  /// Reference to `expiration_time` attribute.
  TfRef<String> get expirationTime =>
      TfRef.attribute<String>(this, 'expiration_time');

  /// Reference to `intermediate_thumbprint` attribute.
  TfRef<String> get intermediateThumbprint =>
      TfRef.attribute<String>(this, 'intermediate_thumbprint');

  /// Reference to `is_private_key_external` attribute.
  TfRef<bool> get isPrivateKeyExternal =>
      TfRef.attribute<bool>(this, 'is_private_key_external');

  /// Reference to `root_thumbprint` attribute.
  TfRef<String> get rootThumbprint =>
      TfRef.attribute<String>(this, 'root_thumbprint');

  /// Reference to `signed_certificate_thumbprint` attribute.
  TfRef<String> get signedCertificateThumbprint =>
      TfRef.attribute<String>(this, 'signed_certificate_thumbprint');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenew => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `distinguished_name` attribute.
  TfRef<String> get distinguishedName =>
      TfRef.attribute<String>(this, 'distinguished_name');

  /// Reference to `key_size` attribute.
  TfRef<num> get keySize => TfRef.attribute<num>(this, 'key_size');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `product_type` attribute.
  TfRef<String> get productType =>
      TfRef.attribute<String>(this, 'product_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `validity_in_years` attribute.
  TfRef<num> get validityInYears =>
      TfRef.attribute<num>(this, 'validity_in_years');
}
