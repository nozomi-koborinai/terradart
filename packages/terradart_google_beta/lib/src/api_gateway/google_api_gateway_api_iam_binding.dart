// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../api_gateway/google_api_gateway_api.dart' show GoogleApiGatewayApi;

/// Sensitive field paths for `google_api_gateway_api_iam_binding`.
const Set<String> _googleApiGatewayApiIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_api_gateway_api_iam_binding` (derived from provider schema).
@immutable
final class ApiGatewayApiIamBindingCondition {
  const ApiGatewayApiIamBindingCondition({
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

/// Factory wrapper for `google_api_gateway_api_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a API Gateway API.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleApiGatewayApiIamMember] for additive grants.
final class GoogleApiGatewayApiIamBinding extends Resource {
  static const String tfType = 'google_api_gateway_api_iam_binding';

  GoogleApiGatewayApiIamBinding(
    super.localName, {
    required RefTo<GoogleApiGatewayApi> api,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    ApiGatewayApiIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api': api.encodeAs('name'),
           'members': members,
           'project': ?(project ?? api.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiIamBindingSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiIamBinding>`.
  RefTo<GoogleApiGatewayApiIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api` attribute.
  TfRef<String> get api => TfRef.attribute<String>(this, 'api');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
