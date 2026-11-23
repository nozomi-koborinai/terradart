// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share`.
const Set<String> _cloudflareShareSensitive = <String>{};

/// Share Include Tags enum for `include_tags_from`.
extension type const ShareIncludeTagsFrom._(TfArg<String> _)
    implements TfArg<String> {
  ShareIncludeTagsFrom.variable(String name) : this._(TfArg.variable(name));
  ShareIncludeTagsFrom.expression(String template)
    : this._(TfArg.expression(template));
  const ShareIncludeTagsFrom.arg(TfArg<String> arg) : this._(arg);

  static const api = ShareIncludeTagsFrom._(TfArgLiteral('api'));
  static const mirror = ShareIncludeTagsFrom._(TfArgLiteral('mirror'));

  static const List<ShareIncludeTagsFrom> values = [api, mirror];
}

/// Typed helper for the `excluded_recipients` block of
/// `cloudflare_share` (derived from provider schema).
@immutable
final class ShareExcludedRecipients {
  const ShareExcludedRecipients({required this.accountId});

  final RefTo<CloudflareAccount> accountId;

  @internal
  Map<String, Object?> encode() => {
    'account_id': accountId.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `recipients` block of
/// `cloudflare_share` (derived from provider schema).
@immutable
final class ShareRecipients {
  const ShareRecipients({this.organizationId, this.recipientAccountId});

  final TfArg<String>? organizationId;

  final TfArg<String>? recipientAccountId;

  @internal
  Map<String, Object?> encode() => {
    'organization_id': ?organizationId?.toTfJson(),
    'recipient_account_id': ?recipientAccountId?.toTfJson(),
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

  final ShareResourceType resourceType;

  @internal
  Map<String, Object?> encode() => {
    'meta': meta.toTfJson(),
    'resource_account_id': resourceAccountId.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const ShareResourceType._(TfArg<String> _)
    implements TfArg<String> {
  ShareResourceType.variable(String name) : this._(TfArg.variable(name));
  ShareResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ShareResourceType.arg(TfArg<String> arg) : this._(arg);

  static const customRuleset = ShareResourceType._(
    TfArgLiteral('custom-ruleset'),
  );
  static const gatewayPolicy = ShareResourceType._(
    TfArgLiteral('gateway-policy'),
  );
  static const gatewayDestinationIp = ShareResourceType._(
    TfArgLiteral('gateway-destination-ip'),
  );
  static const gatewayBlockPageSettings = ShareResourceType._(
    TfArgLiteral('gateway-block-page-settings'),
  );
  static const gatewayExtendedEmailMatching = ShareResourceType._(
    TfArgLiteral('gateway-extended-email-matching'),
  );
  static const idpFederationGrant = ShareResourceType._(
    TfArgLiteral('idp-federation-grant'),
  );
  static const trustGrant = ShareResourceType._(TfArgLiteral('trust-grant'));

  static const List<ShareResourceType> values = [
    customRuleset,
    gatewayPolicy,
    gatewayDestinationIp,
    gatewayBlockPageSettings,
    gatewayExtendedEmailMatching,
    idpFederationGrant,
    trustGrant,
  ];
}

/// Factory wrapper for `cloudflare_share`.
///
/// Accepted Permissions
///
/// - `Resource Sharing Read`
final class CloudflareShare extends Resource {
  static const String tfType = 'cloudflare_share';

  CloudflareShare(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    ShareIncludeTagsFrom? includeTagsFrom,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<ShareExcludedRecipients>? excludedRecipients,
    List<ShareRecipients>? recipients,
    List<ShareResources>? resources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_recipient_counts': ?includeRecipientCounts,
           'include_resources': ?includeResources,
           'include_tags_from': ?includeTagsFrom,
           'name': name,
           'tags': ?tags,
           if (excludedRecipients != null)
             'excluded_recipients': TfArg.literal([
               for (final e in excludedRecipients) e.encode(),
             ]),
           if (recipients != null)
             'recipients': TfArg.literal([
               for (final e in recipients) e.encode(),
             ]),
           if (resources != null)
             'resources': TfArg.literal([
               for (final e in resources) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareShare>`.
  RefTo<CloudflareShare> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_recipient_counts` attribute.
  TfRef<bool> get includeRecipientCounts =>
      TfRef.attribute<bool>(this, 'include_recipient_counts');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResources =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `include_tags_from` attribute.
  TfRef<String> get includeTagsFrom =>
      TfRef.attribute<String>(this, 'include_tags_from');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
