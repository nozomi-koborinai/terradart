// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_signalr_service_custom_certificate`.
const Set<String> _azurermSignalrServiceCustomCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_signalr_service_custom_certificate`.
final class AzurermSignalrServiceCustomCertificate extends Resource {
  static const String tfType = 'azurerm_signalr_service_custom_certificate';

  AzurermSignalrServiceCustomCertificate(
    super.localName, {
    required TfArg<String> customCertificateId,
    required TfArg<String> name,
    required TfArg<String> signalrServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_certificate_id': customCertificateId,
           'name': name,
           'signalr_service_id': signalrServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSignalrServiceCustomCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSignalrServiceCustomCertificate>`.
  RefTo<AzurermSignalrServiceCustomCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_version` attribute.
  TfRef<String> get certificateVersion =>
      TfRef.attribute<String>(this, 'certificate_version');

  /// Reference to `custom_certificate_id` attribute.
  TfRef<String> get customCertificateId =>
      TfRef.attribute<String>(this, 'custom_certificate_id');

  /// Reference to `signalr_service_id` attribute.
  TfRef<String> get signalrServiceId =>
      TfRef.attribute<String>(this, 'signalr_service_id');
}
