// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleBeyondcorpSecurityGatewayIamBinding({
    required super.localName,
    required TfArg<String> securityGatewayId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
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
           'security_gateway_id': securityGatewayId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
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
}
