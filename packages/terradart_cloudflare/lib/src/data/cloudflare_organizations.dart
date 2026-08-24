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

  Map<String, Object?> encode() => {
    if (account != null) 'account': account!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endsWith != null) 'ends_with': endsWith!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Typed helper for the `parent` block of
/// `cloudflare_organizations` (derived from provider schema).
@immutable
final class DataOrganizationsParent {
  const DataOrganizationsParent();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `cloudflare_organizations`.
///
/// Accepted Permissions
///
/// - `User Details Read` - `User Details Write`
final class DataCloudflareOrganizations extends Data {
  static const String tfType = 'cloudflare_organizations';

  DataCloudflareOrganizations({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<num>? pageSize,
    TfArg<String>? pageToken,
    DataOrganizationsContaining? containing,
    DataOrganizationsName? name,
    DataOrganizationsParent? parent,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (pageSize != null) 'page_size': pageSize,
           if (pageToken != null) 'page_token': pageToken,
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
}
