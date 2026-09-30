// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway_iam_member`.
const Set<String> _googleApiGatewayGatewayIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_api_gateway_gateway_iam_member` (derived from provider schema).
@immutable
final class ApiGatewayGatewayIamMemberCondition {
  const ApiGatewayGatewayIamMemberCondition({
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

/// Factory wrapper for `google_api_gateway_gateway_iam_member`.
final class GoogleApiGatewayGatewayIamMember extends Resource {
  static const String tfType = 'google_api_gateway_gateway_iam_member';

  GoogleApiGatewayGatewayIamMember({
    required super.localName,
    required TfArg<String> gateway,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    ApiGatewayGatewayIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'gateway': gateway,
           'member': member,
           'project': ?project,
           'region': ?region,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewayIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayGatewayIamMember>`.
  RefTo<GoogleApiGatewayGatewayIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `gateway` attribute.
  TfRef<String> get gatewayRef => TfRef.attribute<String>(this, 'gateway');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
