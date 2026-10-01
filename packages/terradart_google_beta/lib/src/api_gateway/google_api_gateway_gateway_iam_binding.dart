// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../api_gateway/google_api_gateway_gateway.dart'
    show GoogleApiGatewayGateway;

/// Sensitive field paths for `google_api_gateway_gateway_iam_binding`.
const Set<String> _googleApiGatewayGatewayIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_api_gateway_gateway_iam_binding` (derived from provider schema).
@immutable
final class ApiGatewayGatewayIamBindingCondition {
  const ApiGatewayGatewayIamBindingCondition({
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

/// Factory wrapper for `google_api_gateway_gateway_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a API Gateway Gateway.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleApiGatewayGatewayIamMember] for additive grants.
final class GoogleApiGatewayGatewayIamBinding extends Resource {
  static const String tfType = 'google_api_gateway_gateway_iam_binding';

  GoogleApiGatewayGatewayIamBinding(
    super.localName, {
    required RefTo<GoogleApiGatewayGateway> gateway,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    ApiGatewayGatewayIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'gateway': gateway.encodeAs('name'),
           'members': members,
           'project': ?(project ?? gateway.alsoAs('project')),
           'region': ?(region ?? gateway.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApiGatewayGatewayIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayGatewayIamBinding>`.
  RefTo<GoogleApiGatewayGatewayIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `gateway` attribute.
  TfRef<String> get gateway => TfRef.attribute<String>(this, 'gateway');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
