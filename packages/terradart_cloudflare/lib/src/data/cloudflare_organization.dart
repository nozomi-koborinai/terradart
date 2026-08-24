// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organization`.
const Set<String> _cloudflareOrganizationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationFilter {
  const DataOrganizationFilter({
    this.id,
    this.pageSize,
    this.pageToken,
    this.containing,
    this.name,
    this.parent,
  });

  final TfArg<List<Object?>>? id;

  final TfArg<num>? pageSize;

  final TfArg<String>? pageToken;

  final DataOrganizationFilterContaining? containing;

  final DataOrganizationFilterName? name;

  final DataOrganizationFilterParent? parent;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (pageSize != null) 'page_size': pageSize!.toTfJson(),
    if (pageToken != null) 'page_token': pageToken!.toTfJson(),
    if (containing != null) 'containing': containing!.encode(),
    if (name != null) 'name': name!.encode(),
    if (parent != null) 'parent': parent!.encode(),
  };
}

/// Typed helper for the `filter.containing` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationFilterContaining {
  const DataOrganizationFilterContaining({
    this.account,
    this.organization,
    this.user,
  });

  final TfArg<String>? account;

  final TfArg<String>? organization;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    if (account != null) 'account': account!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
  };
}

/// Typed helper for the `filter.name` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationFilterName {
  const DataOrganizationFilterName({
    this.contains,
    this.endsWith,
    this.startsWith,
  });

  final TfArg<String>? contains;

  final TfArg<String>? endsWith;

  final TfArg<String>? startsWith;

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endsWith != null) 'ends_with': endsWith!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Typed helper for the `filter.parent` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationFilterParent {
  const DataOrganizationFilterParent({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
}

/// Factory wrapper for `cloudflare_organization`.
///
/// Accepted Permissions
///
/// - `User Details Read` - `User Details Write`
final class DataCloudflareOrganization extends Data {
  static const String tfType = 'cloudflare_organization';

  DataCloudflareOrganization({
    required super.localName,
    TfArg<String>? organizationId,
    DataOrganizationFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (organizationId != null) 'organization_id': organizationId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
