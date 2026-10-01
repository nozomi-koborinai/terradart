// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../api_gateway/google_api_gateway_api_config.dart'
    show GoogleApiGatewayApiConfig;

/// Sensitive field paths for `google_api_gateway_api_config_iam_binding`.
const Set<String> _googleApiGatewayApiConfigIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_api_gateway_api_config_iam_binding` (derived from provider schema).
@immutable
final class ApiGatewayApiConfigIamBindingCondition {
  const ApiGatewayApiConfigIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_api_gateway_api_config_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a API Gateway API Config.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleApiGatewayApiConfigIamMember] for additive grants.
final class GoogleApiGatewayApiConfigIamBinding extends Resource {
  static const String tfType = 'google_api_gateway_api_config_iam_binding';

  GoogleApiGatewayApiConfigIamBinding({
    required super.localName,
    TfArg<String>? api,
    required RefTo<GoogleApiGatewayApiConfig> apiConfig,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    ApiGatewayApiConfigIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api': ?(api ?? apiConfig.alsoAs('api')),
           'api_config': apiConfig.encodeAs('name'),
           'members': members,
           'project': ?(project ?? apiConfig.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApiGatewayApiConfigIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiConfigIamBinding>`.
  RefTo<GoogleApiGatewayApiConfigIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api` attribute.
  TfRef<String> get apiRef => TfRef.attribute<String>(this, 'api');

  /// Reference to `api_config` attribute.
  TfRef<String> get apiConfigRef => TfRef.attribute<String>(this, 'api_config');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
