// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_organization.dart';

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

  final TfArg<List<String>>? id;

  final TfArg<num>? pageSize;

  final TfArg<String>? pageToken;

  final DataOrganizationContaining? containing;

  final DataOrganizationFilterName? name;

  final DataOrganizationParent? parent;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'page_size': ?pageSize?.toTfJson(),
    'page_token': ?pageToken?.toTfJson(),
    'containing': ?containing?.encode(),
    'name': ?name?.encode(),
    'parent': ?parent?.encode(),
  };
}

/// Typed helper for the `filter.containing` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationContaining {
  const DataOrganizationContaining({
    this.account,
    this.organization,
    this.user,
  });

  final TfArg<String>? account;

  final TfArg<String>? organization;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'organization': ?organization?.toTfJson(),
    'user': ?user?.toTfJson(),
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
    'contains': ?contains?.toTfJson(),
    'ends_with': ?endsWith?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// Typed helper for the `filter.parent` block of
/// `cloudflare_organization` (derived from provider schema).
@immutable
final class DataOrganizationParent {
  const DataOrganizationParent({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'organization_id': ?organizationId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationSensitive;

  /// A reference to the `cloudflare_organization` this data source reads, for
  /// arguments typed `RefTo<CloudflareOrganization>`.
  RefTo<CloudflareOrganization> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');
}
