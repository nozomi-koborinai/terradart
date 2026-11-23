// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_organizations`.
const Set<String> _cloudflareOrganizationsSensitive = <String>{};

/// Data Organizations enum for `direction`.
extension type const DataOrganizationsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataOrganizationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataOrganizationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataOrganizationsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataOrganizationsDirection._(TfArgLiteral('asc'));
  static const desc = DataOrganizationsDirection._(TfArgLiteral('desc'));

  static const List<DataOrganizationsDirection> values = [asc, desc];
}

/// Data Organizations Order enum for `order_by`.
extension type const DataOrganizationsOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataOrganizationsOrderBy.variable(String name) : this._(TfArg.variable(name));
  DataOrganizationsOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataOrganizationsOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataOrganizationsOrderBy._(TfArgLiteral('name'));

  static const List<DataOrganizationsOrderBy> values = [name];
}

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

/// Typed helper for the `member` block of
/// `cloudflare_organizations` (derived from provider schema).
@immutable
final class DataOrganizationsMember {
  const DataOrganizationsMember({this.email});

  final TfArg<String>? email;

  @internal
  Map<String, Object?> encode() => {'email': ?email?.toTfJson()};
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
///
/// User API tokens can list and create Organizations, but reading, updating, or
/// deleting an Organization requires a Global API key and your registered email
/// address. The `cloudflare_organization` Terraform resource therefore requires
/// a Global API key for its full lifecycle.
///
/// See [Organizations authentication
/// limitations](https://developers.cloudflare.com/fundamentals/organizations/limitations/#api-authentication)
/// for credential compatibility by operation. Each endpoint’s **Security**
/// section lists its supported authentication methods, with **Accepted
/// Permissions** where applicable.
final class DataCloudflareOrganizations extends Data {
  static const String tfType = 'cloudflare_organizations';

  DataCloudflareOrganizations(
    super.localName, {
    DataOrganizationsDirection? direction,
    TfArg<num>? maxItems,
    DataOrganizationsOrderBy? orderBy,
    TfArg<num>? pageSize,
    TfArg<String>? pageToken,
    DataOrganizationsContaining? containing,
    DataOrganizationsMember? member,
    DataOrganizationsName? name,
    DataOrganizationsParent? parent,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'page_size': ?pageSize,
           'page_token': ?pageToken,
           if (containing != null)
             'containing': TfArg.literal(containing.encode()),
           if (member != null) 'member': TfArg.literal(member.encode()),
           if (name != null) 'name': TfArg.literal(name.encode()),
           if (parent != null) 'parent': TfArg.literal(parent.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOrganizationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `page_size` attribute.
  TfRef<num> get pageSize => TfRef.attribute<num>(this, 'page_size');

  /// Reference to `page_token` attribute.
  TfRef<String> get pageToken => TfRef.attribute<String>(this, 'page_token');
}
