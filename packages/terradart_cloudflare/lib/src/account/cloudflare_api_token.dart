// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_token`.
const Set<String> _cloudflareApiTokenSensitive = <String>{'value'};

/// Typed helper for the `condition` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenCondition {
  const ApiTokenCondition({this.requestIp});

  final ApiTokenConditionRequestIp? requestIp;

  Map<String, Object?> encode() => {
    if (requestIp != null) 'request_ip': requestIp!.encode(),
  };
}

/// Typed helper for the `condition.request_ip` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenConditionRequestIp {
  const ApiTokenConditionRequestIp({this.inCase, this.notIn});

  final TfArg<List<Object?>>? inCase;

  final TfArg<List<Object?>>? notIn;

  Map<String, Object?> encode() => {
    if (inCase != null) 'in': inCase!.toTfJson(),
    if (notIn != null) 'not_in': notIn!.toTfJson(),
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

  final TfArg<String> effect;

  final TfArg<String> resources;

  final List<ApiTokenPoliciesPermissionGroups> permissionGroups;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'resources': resources.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
  };
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_api_token` (derived from provider schema).
@immutable
final class ApiTokenPoliciesPermissionGroups {
  const ApiTokenPoliciesPermissionGroups({required this.id});

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

  CloudflareApiToken({
    required super.localName,
    TfArg<String>? expiresOn,
    required TfArg<String> name,
    TfArg<String>? notBefore,
    TfArg<String>? status,
    ApiTokenCondition? condition,
    required List<ApiTokenPolicies> policies,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (expiresOn != null) 'expires_on': expiresOn,
           'name': name,
           if (notBefore != null) 'not_before': notBefore,
           if (status != null) 'status': status,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
