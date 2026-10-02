// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../beyondcorp/google_beyondcorp_security_gateway.dart'
    show GoogleBeyondcorpSecurityGateway;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_beyondcorp_security_gateway_iam_binding`.
const Set<String> _googleBeyondcorpSecurityGatewayIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_beyondcorp_security_gateway_iam_binding` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayIamBindingCondition {
  const BeyondcorpSecurityGatewayIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_beyondcorp_security_gateway_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BeyondCorp Security Gateway.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayIamMember] for additive grants.
final class GoogleBeyondcorpSecurityGatewayIamBinding extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway_iam_binding';

  GoogleBeyondcorpSecurityGatewayIamBinding(
    super.localName, {
    required RefTo<GoogleBeyondcorpSecurityGateway> securityGateway,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BeyondcorpSecurityGatewayIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGateway.encodeAs(
             'security_gateway_id',
           ),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? securityGateway.alsoAs('location')),
           'project': ?(project ?? securityGateway.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayIamBinding>`.
  RefTo<GoogleBeyondcorpSecurityGatewayIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayId =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
