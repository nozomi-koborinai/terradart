// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_token`.
const Set<String> _cloudflareAccountTokenSensitive = <String>{'value'};

/// Account Token enum for `status`.
extension type const AccountTokenStatus._(TfArg<String> _)
    implements TfArg<String> {
  AccountTokenStatus.variable(String name) : this._(TfArg.variable(name));
  AccountTokenStatus.expression(String template)
    : this._(TfArg.expression(template));
  const AccountTokenStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = AccountTokenStatus._(TfArgLiteral('active'));
  static const disabled = AccountTokenStatus._(TfArgLiteral('disabled'));
  static const expired = AccountTokenStatus._(TfArgLiteral('expired'));

  static const List<AccountTokenStatus> values = [active, disabled, expired];
}

/// Typed helper for the `condition` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class AccountTokenCondition {
  const AccountTokenCondition({this.requestIp});

  final AccountTokenRequestIp? requestIp;

  @internal
  Map<String, Object?> encode() => {'request_ip': ?requestIp?.encode()};
}

/// Typed helper for the `condition.request_ip` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class AccountTokenRequestIp {
  const AccountTokenRequestIp({this.inCase, this.notIn});

  final TfArg<List<String>>? inCase;

  final TfArg<List<String>>? notIn;

  @internal
  Map<String, Object?> encode() => {
    'in': ?inCase?.toTfJson(),
    'not_in': ?notIn?.toTfJson(),
  };
}

/// Typed helper for the `policies` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class AccountTokenPolicies {
  const AccountTokenPolicies({
    required this.effect,
    required this.resources,
    required this.permissionGroups,
  });

  final AccountTokenEffect effect;

  final TfArg<String> resources;

  final List<AccountTokenPermissionGroups> permissionGroups;

  @internal
  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'resources': resources.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
  };
}

/// `effect` — derived from the provider schema description.
extension type const AccountTokenEffect._(TfArg<String> _)
    implements TfArg<String> {
  AccountTokenEffect.variable(String name) : this._(TfArg.variable(name));
  AccountTokenEffect.expression(String template)
    : this._(TfArg.expression(template));
  const AccountTokenEffect.arg(TfArg<String> arg) : this._(arg);

  static const allow = AccountTokenEffect._(TfArgLiteral('allow'));
  static const deny = AccountTokenEffect._(TfArgLiteral('deny'));

  static const List<AccountTokenEffect> values = [allow, deny];
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class AccountTokenPermissionGroups {
  const AccountTokenPermissionGroups({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_account_token`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class CloudflareAccountToken extends Resource {
  static const String tfType = 'cloudflare_account_token';

  CloudflareAccountToken(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? expiresOn,
    required TfArg<String> name,
    TfArg<String>? notBefore,
    AccountTokenStatus? status,
    AccountTokenCondition? condition,
    required List<AccountTokenPolicies> policies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'expires_on': ?expiresOn,
           'name': name,
           'not_before': ?notBefore,
           'status': ?status,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccountToken>`.
  RefTo<CloudflareAccountToken> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `issued_on` attribute.
  TfRef<String> get issuedOn => TfRef.attribute<String>(this, 'issued_on');

  /// Reference to `last_used_on` attribute.
  TfRef<String> get lastUsedOn => TfRef.attribute<String>(this, 'last_used_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
