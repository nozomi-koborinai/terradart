// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../api_gateway/google_api_gateway_api.dart' show GoogleApiGatewayApi;

/// Sensitive field paths for `google_api_gateway_api_iam_member`.
const Set<String> _googleApiGatewayApiIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_api_gateway_api_iam_member` (derived from provider schema).
@immutable
final class ApiGatewayApiIamMemberCondition {
  const ApiGatewayApiIamMemberCondition({
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

/// Factory wrapper for `google_api_gateway_api_iam_member`.
final class GoogleApiGatewayApiIamMember extends Resource {
  static const String tfType = 'google_api_gateway_api_iam_member';

  GoogleApiGatewayApiIamMember(
    super.localName, {
    required RefTo<GoogleApiGatewayApi> api,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    ApiGatewayApiIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api': api.encodeAs('name'),
           'member': member,
           'project': ?(project ?? api.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiIamMember>`.
  RefTo<GoogleApiGatewayApiIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api` attribute.
  TfRef<String> get api => TfRef.attribute<String>(this, 'api');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
