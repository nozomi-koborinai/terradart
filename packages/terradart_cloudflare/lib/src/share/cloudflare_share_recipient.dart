// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share_recipient`.
const Set<String> _cloudflareShareRecipientSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipient`.
final class CloudflareShareRecipient extends Resource {
  static const String tfType = 'cloudflare_share_recipient';

  CloudflareShareRecipient({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? organizationId,
    TfArg<String>? recipientAccountId,
    required TfArg<String> shareId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (organizationId != null) 'organization_id': organizationId,
           if (recipientAccountId != null)
             'recipient_account_id': recipientAccountId,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_status` attribute.
  TfRef<String> get associationStatus =>
      TfRef.attribute<String>(this, 'association_status');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
