// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_wan_static_route`.
const Set<String> _cloudflareMagicWanStaticRouteSensitive = <String>{};

/// Typed helper for the `scope` block of
/// `cloudflare_magic_wan_static_route` (derived from provider schema).
@immutable
final class MagicWanStaticRouteScope {
  const MagicWanStaticRouteScope({this.coloNames, this.coloRegions});

  final TfArg<List<String>>? coloNames;

  final TfArg<List<String>>? coloRegions;

  Map<String, Object?> encode() => {
    'colo_names': ?coloNames?.toTfJson(),
    'colo_regions': ?coloRegions?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_wan_static_route`.
final class CloudflareMagicWanStaticRoute extends Resource {
  static const String tfType = 'cloudflare_magic_wan_static_route';

  CloudflareMagicWanStaticRoute({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    required TfArg<String> nexthop,
    required TfArg<String> prefix,
    required TfArg<num> priority,
    TfArg<num>? weight,
    MagicWanStaticRouteScope? scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'nexthop': nexthop,
           'prefix': prefix,
           'priority': priority,
           'weight': ?weight,
           if (scope != null) 'scope': TfArg.literal(scope.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanStaticRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicWanStaticRoute>`.
  RefTo<CloudflareMagicWanStaticRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
