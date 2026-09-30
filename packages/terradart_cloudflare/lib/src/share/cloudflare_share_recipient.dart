// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_recipient`.
const Set<String> _cloudflareShareRecipientSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipient`.
final class CloudflareShareRecipient extends Resource {
  static const String tfType = 'cloudflare_share_recipient';

  CloudflareShareRecipient({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeResources,
    TfArg<String>? organizationId,
    TfArg<String>? recipientAccountId,
    required TfArg<String> shareId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_resources': ?includeResources,
           'organization_id': ?organizationId,
           'recipient_account_id': ?recipientAccountId,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareShareRecipient>`.
  RefTo<CloudflareShareRecipient> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_status` attribute.
  TfRef<String> get associationStatus =>
      TfRef.attribute<String>(this, 'association_status');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResourcesRef =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `recipient_account_id` attribute.
  TfRef<String> get recipientAccountIdRef =>
      TfRef.attribute<String>(this, 'recipient_account_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareIdRef => TfRef.attribute<String>(this, 'share_id');
}
