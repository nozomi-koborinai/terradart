// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../beyondcorp/google_beyondcorp_security_gateway_application.dart'
    show GoogleBeyondcorpSecurityGatewayApplication;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_beyondcorp_security_gateway_application_iam_member`.
const Set<String>
_googleBeyondcorpSecurityGatewayApplicationIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_beyondcorp_security_gateway_application_iam_member` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationIamMemberCondition {
  const BeyondcorpSecurityGatewayApplicationIamMemberCondition({
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

/// Factory wrapper for `google_beyondcorp_security_gateway_application_iam_member`.
final class GoogleBeyondcorpSecurityGatewayApplicationIamMember
    extends Resource {
  static const String tfType =
      'google_beyondcorp_security_gateway_application_iam_member';

  GoogleBeyondcorpSecurityGatewayApplicationIamMember({
    required super.localName,
    TfArg<String>? securityGatewayId,
    required RefTo<GoogleBeyondcorpSecurityGatewayApplication> application,
    required TfArg<String> role,
    required IamPrincipal member,
    BeyondcorpSecurityGatewayApplicationIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id':
               ?(securityGatewayId ??
               application.alsoAs('security_gateway_id')),
           'application_id': application.encodeAs('application_id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? application.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamMember>`.
  RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamMember> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayIdRef =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
