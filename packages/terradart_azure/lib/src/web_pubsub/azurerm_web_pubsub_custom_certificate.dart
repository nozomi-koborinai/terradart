// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_custom_certificate`.
const Set<String> _azurermWebPubsubCustomCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_web_pubsub_custom_certificate`.
final class AzurermWebPubsubCustomCertificate extends Resource {
  static const String tfType = 'azurerm_web_pubsub_custom_certificate';

  AzurermWebPubsubCustomCertificate(
    super.localName, {
    required TfArg<String> customCertificateId,
    required TfArg<String> name,
    required TfArg<String> webPubsubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_certificate_id': customCertificateId,
           'name': name,
           'web_pubsub_id': webPubsubId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWebPubsubCustomCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubCustomCertificate>`.
  RefTo<AzurermWebPubsubCustomCertificate> get ref => RefTo.of(this);

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

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}
