// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_list`.
const Set<String> _cloudflareListSensitive = <String>{};

/// List enum for `kind`.
enum ListKind implements TerraformEnum {
  ip('ip'),
  redirect('redirect'),
  hostname('hostname'),
  asn('asn');

  const ListKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `items` block of
/// `cloudflare_list` (derived from provider schema).
@immutable
final class ListItems {
  const ListItems({this.asnOrIpOrHostnameOrRedirect, this.comment});

  final ListItemsAsnOrIpOrHostnameOrRedirect? asnOrIpOrHostnameOrRedirect;

  final TfArg<String>? comment;

  Map<String, Object?> encode() => {
    ...?asnOrIpOrHostnameOrRedirect?.encode(),
    if (comment != null) 'comment': comment!.toTfJson(),
  };
}

/// At most one of `asn`, `ip`, `hostname`, `redirect` on the `items` block of `cloudflare_list`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.asn(...)`.
sealed class ListItemsAsnOrIpOrHostnameOrRedirect {
  const ListItemsAsnOrIpOrHostnameOrRedirect();

  /// Sets `asn`.
  const factory ListItemsAsnOrIpOrHostnameOrRedirect.asn(TfArg<num> asn) =
      ListItemsAsnOrIpOrHostnameOrRedirectAsn;

  /// Sets `ip`.
  const factory ListItemsAsnOrIpOrHostnameOrRedirect.ip(TfArg<String> ip) =
      ListItemsAsnOrIpOrHostnameOrRedirectIp;

  /// Sets `hostname`.
  const factory ListItemsAsnOrIpOrHostnameOrRedirect.hostname(
    ListItemsHostname hostname,
  ) = ListItemsAsnOrIpOrHostnameOrRedirectHostname;

  /// Sets `redirect`.
  const factory ListItemsAsnOrIpOrHostnameOrRedirect.redirect(
    ListItemsRedirect redirect,
  ) = ListItemsAsnOrIpOrHostnameOrRedirectRedirect;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ListItemsAsnOrIpOrHostnameOrRedirect.asn] choice: sets `asn`.
final class ListItemsAsnOrIpOrHostnameOrRedirectAsn
    extends ListItemsAsnOrIpOrHostnameOrRedirect {
  const ListItemsAsnOrIpOrHostnameOrRedirectAsn(this.asn);

  final TfArg<num> asn;

  @override
  String get blockKey => 'asn';

  @override
  Map<String, Object?> encode() => {'asn': asn.toTfJson()};
}

/// The [ListItemsAsnOrIpOrHostnameOrRedirect.ip] choice: sets `ip`.
final class ListItemsAsnOrIpOrHostnameOrRedirectIp
    extends ListItemsAsnOrIpOrHostnameOrRedirect {
  const ListItemsAsnOrIpOrHostnameOrRedirectIp(this.ip);

  final TfArg<String> ip;

  @override
  String get blockKey => 'ip';

  @override
  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// The [ListItemsAsnOrIpOrHostnameOrRedirect.hostname] choice: sets `hostname`.
final class ListItemsAsnOrIpOrHostnameOrRedirectHostname
    extends ListItemsAsnOrIpOrHostnameOrRedirect {
  const ListItemsAsnOrIpOrHostnameOrRedirectHostname(this.hostname);

  final ListItemsHostname hostname;

  @override
  String get blockKey => 'hostname';

  @override
  Map<String, Object?> encode() => {'hostname': hostname.encode()};
}

/// The [ListItemsAsnOrIpOrHostnameOrRedirect.redirect] choice: sets `redirect`.
final class ListItemsAsnOrIpOrHostnameOrRedirectRedirect
    extends ListItemsAsnOrIpOrHostnameOrRedirect {
  const ListItemsAsnOrIpOrHostnameOrRedirectRedirect(this.redirect);

  final ListItemsRedirect redirect;

  @override
  String get blockKey => 'redirect';

  @override
  Map<String, Object?> encode() => {'redirect': redirect.encode()};
}

/// Typed helper for the `items.hostname` block of
/// `cloudflare_list` (derived from provider schema).
@immutable
final class ListItemsHostname {
  const ListItemsHostname({
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

/// Typed helper for the `items.redirect` block of
/// `cloudflare_list` (derived from provider schema).
@immutable
final class ListItemsRedirect {
  const ListItemsRedirect({
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

/// Factory wrapper for `cloudflare_list`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Edit` - `Account Filter Lists Read`
final class CloudflareList extends Resource {
  static const String tfType = 'cloudflare_list';

  CloudflareList({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<ListKind> kind,
    required TfArg<String> name,
    List<ListItems>? items,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'kind': kind,
           'name': name,
           if (items != null)
             'items': TfArg.literal([for (final e in items) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareList>`.
  RefTo<CloudflareList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `num_items` attribute.
  TfRef<num> get numItems => TfRef.attribute<num>(this, 'num_items');

  /// Reference to `num_referencing_filters` attribute.
  TfRef<num> get numReferencingFilters =>
      TfRef.attribute<num>(this, 'num_referencing_filters');
}
