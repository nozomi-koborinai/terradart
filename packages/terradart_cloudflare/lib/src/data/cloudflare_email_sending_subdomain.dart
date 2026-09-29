// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_sending_subdomain.dart';

/// Sensitive field paths for `cloudflare_email_sending_subdomain`.
const Set<String> _cloudflareEmailSendingSubdomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_sending_subdomain`.
final class DataCloudflareEmailSendingSubdomain extends Data {
  static const String tfType = 'cloudflare_email_sending_subdomain';

  DataCloudflareEmailSendingSubdomain({
    required super.localName,
    required TfArg<String> subdomainId,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'subdomain_id': subdomainId, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSendingSubdomainSensitive;

  /// A reference to the `cloudflare_email_sending_subdomain` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailSendingSubdomain>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareEmailSendingSubdomain> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `dkim_selector` attribute.
  TfRef<String> get dkimSelector =>
      TfRef.attribute<String>(this, 'dkim_selector');

  /// Reference to `drop_suppressed_recipients` attribute.
  TfRef<bool> get dropSuppressedRecipients =>
      TfRef.attribute<bool>(this, 'drop_suppressed_recipients');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `preview_enabled` attribute.
  TfRef<bool> get previewEnabled =>
      TfRef.attribute<bool>(this, 'preview_enabled');

  /// Reference to `return_path_domain` attribute.
  TfRef<String> get returnPathDomain =>
      TfRef.attribute<String>(this, 'return_path_domain');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
