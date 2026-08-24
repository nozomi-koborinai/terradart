// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share`.
const Set<String> _cloudflareShareSensitive = <String>{};

/// Typed helper for the `recipients` block of
/// `cloudflare_share` (derived from provider schema).
@immutable
final class ShareRecipients {
  const ShareRecipients({this.organizationId, this.recipientAccountId});

  final TfArg<String>? organizationId;

  final TfArg<String>? recipientAccountId;

  Map<String, Object?> encode() => {
    if (organizationId != null) 'organization_id': organizationId!.toTfJson(),
    if (recipientAccountId != null)
      'recipient_account_id': recipientAccountId!.toTfJson(),
  };
}

/// Typed helper for the `resources` block of
/// `cloudflare_share` (derived from provider schema).
@immutable
final class ShareResources {
  const ShareResources({
    required this.meta,
    required this.resourceAccountId,
    required this.resourceId,
    required this.resourceType,
  });

  final TfArg<String> meta;

  final TfArg<String> resourceAccountId;

  final TfArg<String> resourceId;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    'meta': meta.toTfJson(),
    'resource_account_id': resourceAccountId.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_share`.
final class CloudflareShare extends Resource {
  static const String tfType = 'cloudflare_share';

  CloudflareShare({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required List<ShareRecipients> recipients,
    required List<ShareResources> resources,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'recipients': TfArg.literal([
             for (final e in recipients) e.encode(),
           ]),
           'resources': TfArg.literal([for (final e in resources) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `associated_recipient_count` attribute.
  TfRef<num> get associatedRecipientCount =>
      TfRef.attribute<num>(this, 'associated_recipient_count');

  /// Reference to `associating_recipient_count` attribute.
  TfRef<num> get associatingRecipientCount =>
      TfRef.attribute<num>(this, 'associating_recipient_count');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `disassociated_recipient_count` attribute.
  TfRef<num> get disassociatedRecipientCount =>
      TfRef.attribute<num>(this, 'disassociated_recipient_count');

  /// Reference to `disassociating_recipient_count` attribute.
  TfRef<num> get disassociatingRecipientCount =>
      TfRef.attribute<num>(this, 'disassociating_recipient_count');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
