// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_sending_subdomain`.
const Set<String> _cloudflareEmailSendingSubdomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_sending_subdomain`.
///
/// Email Sending subdomain: a name inside the zone that Cloudflare Email
/// Sending sends from. A wildcard is allowed only as the whole leftmost
/// label (`*.example.com`) and needs the account's wildcard entitlement.
final class CloudflareEmailSendingSubdomain extends Resource {
  static const String tfType = 'cloudflare_email_sending_subdomain';

  CloudflareEmailSendingSubdomain({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    required TfArg<String> name,
    TfArg<bool>? dropSuppressedRecipients,
    TfArg<bool>? previewEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'name': name,
           'drop_suppressed_recipients': ?dropSuppressedRecipients,
           'preview_enabled': ?previewEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSendingSubdomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSendingSubdomain>`.
  RefTo<CloudflareEmailSendingSubdomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `drop_suppressed_recipients` attribute.
  TfRef<bool> get dropSuppressedRecipients =>
      TfRef.attribute<bool>(this, 'drop_suppressed_recipients');

  /// Reference to `preview_enabled` attribute.
  TfRef<bool> get previewEnabled =>
      TfRef.attribute<bool>(this, 'preview_enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
