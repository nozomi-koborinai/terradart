// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_token`.
const Set<String> _cloudflareApiTokenSensitive = <String>{'value'};

/// Api Token enum for `status`.
extension type const ApiTokenStatus._(TfArg<String> _)
    implements TfArg<String> {
  ApiTokenStatus.variable(String name) : this._(TfArg.variable(name));
  ApiTokenStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ApiTokenStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = ApiTokenStatus._(TfArgLiteral('active'));
  static const disabled = ApiTokenStatus._(TfArgLiteral('disabled'));
  static const expired = ApiTokenStatus._(TfArgLiteral('expired'));

  static const List<ApiTokenStatus> values = [active, disabled, expired];
}

/// Typed helper for the `condition` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenCondition {
  const ApiTokenCondition({this.requestIp});

  final ApiTokenRequestIp? requestIp;

  Map<String, Object?> encode() => {'request_ip': ?requestIp?.encode()};
}

/// Typed helper for the `condition.request_ip` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenRequestIp {
  const ApiTokenRequestIp({this.inCase, this.notIn});

  final TfArg<List<String>>? inCase;

  final TfArg<List<String>>? notIn;

  Map<String, Object?> encode() => {
    'in': ?inCase?.toTfJson(),
    'not_in': ?notIn?.toTfJson(),
  };
}

/// Typed helper for the `policies` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenPolicies {
  const ApiTokenPolicies({
    required this.effect,
    required this.resources,
    required this.permissionGroups,
  });

  final ApiTokenEffect effect;

  final TfArg<String> resources;

  final List<ApiTokenPermissionGroups> permissionGroups;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'resources': resources.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
  };
}

/// `effect` — derived from the provider schema description.
extension type const ApiTokenEffect._(TfArg<String> _)
    implements TfArg<String> {
  ApiTokenEffect.variable(String name) : this._(TfArg.variable(name));
  ApiTokenEffect.expression(String template)
    : this._(TfArg.expression(template));
  const ApiTokenEffect.arg(TfArg<String> arg) : this._(arg);

  static const allow = ApiTokenEffect._(TfArgLiteral('allow'));
  static const deny = ApiTokenEffect._(TfArgLiteral('deny'));

  static const List<ApiTokenEffect> values = [allow, deny];
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenPermissionGroups {
  const ApiTokenPermissionGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_api_token`.
///
/// Accepted Permissions
///
/// - `API Tokens Read` - `API Tokens Write`
final class CloudflareApiToken extends Resource {
  static const String tfType = 'cloudflare_api_token';

  CloudflareApiToken(
    super.localName, {
    TfArg<String>? expiresOn,
    required TfArg<String> name,
    TfArg<String>? notBefore,
    ApiTokenStatus? status,
    ApiTokenCondition? condition,
    required List<ApiTokenPolicies> policies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
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
  Set<String> get sensitiveFields => _cloudflareApiTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiToken>`.
  RefTo<CloudflareApiToken> get ref => RefTo.of(this);

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

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
