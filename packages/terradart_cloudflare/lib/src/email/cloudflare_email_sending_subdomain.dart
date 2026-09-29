// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_sending_subdomain`.
const Set<String> _cloudflareEmailSendingSubdomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_sending_subdomain`.
final class CloudflareEmailSendingSubdomain extends Resource {
  static const String tfType = 'cloudflare_email_sending_subdomain';

  CloudflareEmailSendingSubdomain({
    required super.localName,
    TfArg<bool>? dropSuppressedRecipients,
    required TfArg<String> name,
    TfArg<bool>? previewEnabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dropSuppressedRecipients != null)
             'drop_suppressed_recipients': dropSuppressedRecipients,
           'name': name,
           if (previewEnabled != null) 'preview_enabled': previewEnabled,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSendingSubdomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSendingSubdomain>`.
  RefTo<CloudflareEmailSendingSubdomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `dkim_selector` attribute.
  TfRef<String> get dkimSelector =>
      TfRef.attribute<String>(this, 'dkim_selector');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `return_path_domain` attribute.
  TfRef<String> get returnPathDomain =>
      TfRef.attribute<String>(this, 'return_path_domain');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
