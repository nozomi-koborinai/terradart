// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_application_iam_binding`.
const Set<String>
_googleBeyondcorpSecurityGatewayApplicationIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_beyondcorp_security_gateway_application_iam_binding` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationIamBindingCondition {
  const BeyondcorpSecurityGatewayApplicationIamBindingCondition({
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

/// Factory wrapper for `google_beyondcorp_security_gateway_application_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BeyondCorp Security Gateway application.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayApplicationIamMember] for additive grants.
final class GoogleBeyondcorpSecurityGatewayApplicationIamBinding
    extends Resource {
  static const String tfType =
      'google_beyondcorp_security_gateway_application_iam_binding';

  GoogleBeyondcorpSecurityGatewayApplicationIamBinding({
    required super.localName,
    required TfArg<String> securityGatewayId,
    required TfArg<String> applicationId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BeyondcorpSecurityGatewayApplicationIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           'application_id': applicationId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamBinding>`.
  RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayIdRef =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
