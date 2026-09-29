// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_api_gateway_api_iam_member`.
final class GoogleApiGatewayApiIamMember extends Resource {
  static const String tfType = 'google_api_gateway_api_iam_member';

  GoogleApiGatewayApiIamMember({
    required super.localName,
    required TfArg<String> api,
    required TfArg<String> member,
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
           'api': api,
           'member': member,
           if (project != null) 'project': project,
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
}
