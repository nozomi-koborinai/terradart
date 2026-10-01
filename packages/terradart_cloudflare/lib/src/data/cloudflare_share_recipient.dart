// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../share/cloudflare_share_recipient.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_recipient`.
const Set<String> _cloudflareShareRecipientSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipient`.
final class DataCloudflareShareRecipient extends Data {
  static const String tfType = 'cloudflare_share_recipient';

  DataCloudflareShareRecipient({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeResources,
    required TfArg<String> recipientId,
    required TfArg<String> shareId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_resources': ?includeResources,
           'recipient_id': recipientId,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientSensitive;

  /// A reference to the `cloudflare_share_recipient` this data source reads, for
  /// arguments typed `RefTo<CloudflareShareRecipient>`.
  RefTo<CloudflareShareRecipient> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResources =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `recipient_id` attribute.
  TfRef<String> get recipientId =>
      TfRef.attribute<String>(this, 'recipient_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
