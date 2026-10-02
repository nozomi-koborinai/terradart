// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organizations`.
const Set<String> _cloudflareOrganizationsSensitive = <String>{};

/// Typed helper for the `containing` block of
/// `cloudflare_organizations` (derived from provider schema).
@immutable
final class DataOrganizationsContaining {
  const DataOrganizationsContaining({
    this.account,
    this.organization,
    this.user,
  });

  final TfArg<String>? account;

  final TfArg<String>? organization;

  final TfArg<String>? user;

  @internal
  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'organization': ?organization?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `name` block of
/// `cloudflare_organizations` (derived from provider schema).
@immutable
final class DataOrganizationsName {
  const DataOrganizationsName({this.contains, this.endsWith, this.startsWith});

  final TfArg<String>? contains;

  final TfArg<String>? endsWith;

  final TfArg<String>? startsWith;

  @internal
  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'ends_with': ?endsWith?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// Typed helper for the `parent` block of
/// `cloudflare_organizations` (derived from provider schema).
@immutable
final class DataOrganizationsParent {
  const DataOrganizationsParent();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `cloudflare_organizations`.
///
/// Accepted Permissions
///
/// - `User Details Read` - `User Details Write`
final class DataCloudflareOrganizations extends Data {
  static const String tfType = 'cloudflare_organizations';

  DataCloudflareOrganizations(
    super.localName, {
    TfArg<num>? maxItems,
    TfArg<num>? pageSize,
    TfArg<String>? pageToken,
    DataOrganizationsContaining? containing,
    DataOrganizationsName? name,
    DataOrganizationsParent? parent,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_items': ?maxItems,
           'page_size': ?pageSize,
           'page_token': ?pageToken,
           if (containing != null)
             'containing': TfArg.literal(containing.encode()),
           if (name != null) 'name': TfArg.literal(name.encode()),
           if (parent != null) 'parent': TfArg.literal(parent.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `page_size` attribute.
  TfRef<num> get pageSize => TfRef.attribute<num>(this, 'page_size');

  /// Reference to `page_token` attribute.
  TfRef<String> get pageToken => TfRef.attribute<String>(this, 'page_token');
}
