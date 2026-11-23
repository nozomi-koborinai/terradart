// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_admin_account`.
const Set<String> _awsNetworksecuritymanagerAdminAccountSensitive = <String>{};

/// Typed helper for the `admin_scope` block of
/// `aws_networksecuritymanager_admin_account` (derived from provider schema).
@immutable
final class NetworksecuritymanagerAdminAccountAdminScope {
  const NetworksecuritymanagerAdminAccountAdminScope({
    this.firewallTypeScope,
    this.scopeFilter,
  });

  final List<NetworksecuritymanagerAdminAccountFirewallTypeScope>?
  firewallTypeScope;

  final List<NetworksecuritymanagerAdminAccountScopeFilter>? scopeFilter;

  @internal
  Map<String, Object?> encode() => {
    if (firewallTypeScope != null)
      'firewall_type_scope': [for (final e in firewallTypeScope!) e.encode()],
    if (scopeFilter != null)
      'scope_filter': [for (final e in scopeFilter!) e.encode()],
  };
}

/// Typed helper for the `admin_scope.firewall_type_scope` block of
/// `aws_networksecuritymanager_admin_account` (derived from provider schema).
@immutable
final class NetworksecuritymanagerAdminAccountFirewallTypeScope {
  const NetworksecuritymanagerAdminAccountFirewallTypeScope({
    this.allFirewallTypesEnabled,
    this.firewallTypes,
  });

  final TfArg<bool>? allFirewallTypesEnabled;

  final EnumList<NetworksecuritymanagerAdminAccountFirewallTypes>?
  firewallTypes;

  @internal
  Map<String, Object?> encode() => {
    'all_firewall_types_enabled': ?allFirewallTypesEnabled?.toTfJson(),
    'firewall_types': ?firewallTypes?.toTfJson(),
  };
}

/// `firewall_types` — derived from the provider schema description.
extension type const NetworksecuritymanagerAdminAccountFirewallTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworksecuritymanagerAdminAccountFirewallTypes.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerAdminAccountFirewallTypes.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerAdminAccountFirewallTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const waf = NetworksecuritymanagerAdminAccountFirewallTypes._(
    TfArgLiteral('WAF'),
  );
  static const shieldAdvanced =
      NetworksecuritymanagerAdminAccountFirewallTypes._(
        TfArgLiteral('SHIELD_ADVANCED'),
      );

  static const List<NetworksecuritymanagerAdminAccountFirewallTypes> values = [
    waf,
    shieldAdvanced,
  ];
}

/// Exactly one of `exclude_only`, `include_all`, `include_only` on the `admin_scope.scope_filter` block of `aws_networksecuritymanager_admin_account`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.excludeOnly(...)`.
sealed class NetworksecuritymanagerAdminAccountScopeFilter {
  const NetworksecuritymanagerAdminAccountScopeFilter();

  /// Sets `exclude_only`.
  const factory NetworksecuritymanagerAdminAccountScopeFilter.excludeOnly(
    List<NetworksecuritymanagerAdminAccountExcludeOnly> excludeOnly,
  ) = NetworksecuritymanagerAdminAccountScopeFilterExcludeOnly;

  /// Sets `include_all`.
  const factory NetworksecuritymanagerAdminAccountScopeFilter.includeAll(
    TfArg<bool> includeAll,
  ) = NetworksecuritymanagerAdminAccountScopeFilterIncludeAll;

  /// Sets `include_only`.
  const factory NetworksecuritymanagerAdminAccountScopeFilter.includeOnly(
    List<NetworksecuritymanagerAdminAccountIncludeOnly> includeOnly,
  ) = NetworksecuritymanagerAdminAccountScopeFilterIncludeOnly;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [NetworksecuritymanagerAdminAccountScopeFilter.excludeOnly] choice: sets `exclude_only`.
final class NetworksecuritymanagerAdminAccountScopeFilterExcludeOnly
    extends NetworksecuritymanagerAdminAccountScopeFilter {
  const NetworksecuritymanagerAdminAccountScopeFilterExcludeOnly(
    this.excludeOnly,
  );

  final List<NetworksecuritymanagerAdminAccountExcludeOnly> excludeOnly;

  @internal
  @override
  String get blockKey => 'exclude_only';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude_only': [for (final e in excludeOnly) e.encode()],
  };
}

/// The [NetworksecuritymanagerAdminAccountScopeFilter.includeAll] choice: sets `include_all`.
final class NetworksecuritymanagerAdminAccountScopeFilterIncludeAll
    extends NetworksecuritymanagerAdminAccountScopeFilter {
  const NetworksecuritymanagerAdminAccountScopeFilterIncludeAll(
    this.includeAll,
  );

  final TfArg<bool> includeAll;

  @internal
  @override
  String get blockKey => 'include_all';

  @internal
  @override
  Map<String, Object?> encode() => {'include_all': includeAll.toTfJson()};
}

/// The [NetworksecuritymanagerAdminAccountScopeFilter.includeOnly] choice: sets `include_only`.
final class NetworksecuritymanagerAdminAccountScopeFilterIncludeOnly
    extends NetworksecuritymanagerAdminAccountScopeFilter {
  const NetworksecuritymanagerAdminAccountScopeFilterIncludeOnly(
    this.includeOnly,
  );

  final List<NetworksecuritymanagerAdminAccountIncludeOnly> includeOnly;

  @internal
  @override
  String get blockKey => 'include_only';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include_only': [for (final e in includeOnly) e.encode()],
  };
}

/// Typed helper for the `admin_scope.scope_filter.exclude_only` block of
/// `aws_networksecuritymanager_admin_account` (derived from provider schema).
@immutable
final class NetworksecuritymanagerAdminAccountExcludeOnly {
  const NetworksecuritymanagerAdminAccountExcludeOnly({
    this.accounts,
    this.organizationalUnits,
  });

  final TfArg<List<String>>? accounts;

  final TfArg<List<String>>? organizationalUnits;

  @internal
  Map<String, Object?> encode() => {
    'accounts': ?accounts?.toTfJson(),
    'organizational_units': ?organizationalUnits?.toTfJson(),
  };
}

/// Typed helper for the `admin_scope.scope_filter.include_only` block of
/// `aws_networksecuritymanager_admin_account` (derived from provider schema).
@immutable
final class NetworksecuritymanagerAdminAccountIncludeOnly {
  const NetworksecuritymanagerAdminAccountIncludeOnly({
    this.accounts,
    this.organizationalUnits,
  });

  final TfArg<List<String>>? accounts;

  final TfArg<List<String>>? organizationalUnits;

  @internal
  Map<String, Object?> encode() => {
    'accounts': ?accounts?.toTfJson(),
    'organizational_units': ?organizationalUnits?.toTfJson(),
  };
}

/// Factory wrapper for `aws_networksecuritymanager_admin_account`.
final class AwsNetworksecuritymanagerAdminAccount extends Resource {
  static const String tfType = 'aws_networksecuritymanager_admin_account';

  AwsNetworksecuritymanagerAdminAccount(
    super.localName, {
    required TfArg<String> accountId,
    required TfArg<num> priority,
    TfArg<String>? region,
    List<NetworksecuritymanagerAdminAccountAdminScope>? adminScope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'priority': priority,
           'region': ?region,
           if (adminScope != null)
             'admin_scope': TfArg.literal([
               for (final e in adminScope) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworksecuritymanagerAdminAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerAdminAccount>`.
  RefTo<AwsNetworksecuritymanagerAdminAccount> get ref => RefTo.of(this);

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
