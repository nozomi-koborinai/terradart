// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (excludeExactHostname != null)
      'exclude_exact_hostname': excludeExactHostname!.toTfJson(),
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
    if (includeSubdomains != null)
      'include_subdomains': includeSubdomains!.toTfJson(),
    if (preservePathSuffix != null)
      'preserve_path_suffix': preservePathSuffix!.toTfJson(),
    if (preserveQueryString != null)
      'preserve_query_string': preserveQueryString!.toTfJson(),
    'source_url': sourceUrl.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    if (subpathMatching != null)
      'subpath_matching': subpathMatching!.toTfJson(),
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
    required TfArg<String> accountId,
    TfArg<num>? asn,
    TfArg<String>? comment,
    TfArg<String>? ip,
    required TfArg<String> listId,
    ListItemHostname? hostname,
    ListItemRedirect? redirect,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (asn != null) 'asn': asn,
           if (comment != null) 'comment': comment,
           if (ip != null) 'ip': ip,
           'list_id': listId,
           if (hostname != null) 'hostname': TfArg.literal(hostname.encode()),
           if (redirect != null) 'redirect': TfArg.literal(redirect.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');
}
