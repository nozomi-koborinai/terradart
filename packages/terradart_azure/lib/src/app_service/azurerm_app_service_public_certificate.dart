// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_public_certificate`.
const Set<String> _azurermAppServicePublicCertificateSensitive = <String>{};

/// App Service Public Certificate enum for `certificate_location`.
extension type const AppServicePublicCertificateLocation._(TfArg<String> _)
    implements TfArg<String> {
  AppServicePublicCertificateLocation.variable(String name)
    : this._(TfArg.variable(name));
  AppServicePublicCertificateLocation.expression(String template)
    : this._(TfArg.expression(template));
  const AppServicePublicCertificateLocation.arg(TfArg<String> arg)
    : this._(arg);

  static const currentusermy = AppServicePublicCertificateLocation._(
    TfArgLiteral('CurrentUserMy'),
  );
  static const localmachinemy = AppServicePublicCertificateLocation._(
    TfArgLiteral('LocalMachineMy'),
  );
  static const unknown = AppServicePublicCertificateLocation._(
    TfArgLiteral('Unknown'),
  );

  static const List<AppServicePublicCertificateLocation> values = [
    currentusermy,
    localmachinemy,
    unknown,
  ];
}

/// Factory wrapper for `azurerm_app_service_public_certificate`.
final class AzurermAppServicePublicCertificate extends Resource {
  static const String tfType = 'azurerm_app_service_public_certificate';

  AzurermAppServicePublicCertificate(
    super.localName, {
    required TfArg<String> appServiceName,
    required TfArg<String> blob,
    required AppServicePublicCertificateLocation certificateLocation,
    required TfArg<String> certificateName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_name': appServiceName,
           'blob': blob,
           'certificate_location': certificateLocation,
           'certificate_name': certificateName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServicePublicCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServicePublicCertificate>`.
  RefTo<AzurermAppServicePublicCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `app_service_name` attribute.
  TfRef<String> get appServiceName =>
      TfRef.attribute<String>(this, 'app_service_name');

  /// Reference to `blob` attribute.
  TfRef<String> get blob => TfRef.attribute<String>(this, 'blob');

  /// Reference to `certificate_location` attribute.
  TfRef<String> get certificateLocation =>
      TfRef.attribute<String>(this, 'certificate_location');

  /// Reference to `certificate_name` attribute.
  TfRef<String> get certificateName =>
      TfRef.attribute<String>(this, 'certificate_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
