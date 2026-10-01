// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_list_item`.
const Set<String> _cloudflareListItemSensitive = <String>{};

/// Typed helper for the `hostname` block of
/// `cloudflare_list_item` (derived from provider schema).
@immutable
final class ListItemHostname {
  const ListItemHostname({
    this.excludeExactHostname,
    required this.urlHostname,
  });

  final TfArg<bool>? excludeExactHostname;

  final TfArg<String> urlHostname;

  Map<String, Object?> encode() => {
    'exclude_exact_hostname': ?excludeExactHostname?.toTfJson(),
    'url_hostname': urlHostname.toTfJson(),
  };
}

/// Typed helper for the `redirect` block of
/// `cloudflare_list_item` (derived from provider schema).
@immutable
final class ListItemRedirect {
  const ListItemRedirect({
    this.includeSubdomains,
    this.preservePathSuffix,
    this.preserveQueryString,
    required this.sourceUrl,
    this.statusCode,
    this.subpathMatching,
    required this.targetUrl,
  });

  final TfArg<bool>? includeSubdomains;

  final TfArg<bool>? preservePathSuffix;

  final TfArg<bool>? preserveQueryString;

  final TfArg<String> sourceUrl;

  final TfArg<num>? statusCode;

  final TfArg<bool>? subpathMatching;

  final TfArg<String> targetUrl;

  Map<String, Object?> encode() => {
    'include_subdomains': ?includeSubdomains?.toTfJson(),
    'preserve_path_suffix': ?preservePathSuffix?.toTfJson(),
    'preserve_query_string': ?preserveQueryString?.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
    'subpath_matching': ?subpathMatching?.toTfJson(),
    'target_url': targetUrl.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_list_item`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Edit` - `Account Filter Lists Read`
final class CloudflareListItem extends Resource {
  static const String tfType = 'cloudflare_list_item';

  CloudflareListItem({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? asn,
    TfArg<String>? comment,
    TfArg<String>? ip,
    required TfArg<String> listId,
    ListItemHostname? hostname,
    ListItemRedirect? redirect,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'asn': ?asn,
           'comment': ?comment,
           'ip': ?ip,
           'list_id': listId,
           if (hostname != null) 'hostname': TfArg.literal(hostname.encode()),
           if (redirect != null) 'redirect': TfArg.literal(redirect.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareListItem>`.
  RefTo<CloudflareListItem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `asn` attribute.
  TfRef<num> get asn => TfRef.attribute<num>(this, 'asn');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `ip` attribute.
  TfRef<String> get ip => TfRef.attribute<String>(this, 'ip');

  /// Reference to `list_id` attribute.
  TfRef<String> get listId => TfRef.attribute<String>(this, 'list_id');
}
