// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_tunnel_iam_binding`.
const Set<String> _googleIapTunnelIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_tunnel_iam_binding` (derived from provider schema).
@immutable
final class IapTunnelIamBindingCondition {
  const IapTunnelIamBindingCondition({
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

/// Factory wrapper for `google_iap_tunnel_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP TCP forwarding
/// at **project scope** (`iap.tunnel`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelIamMember] for additive grants.
final class GoogleIapTunnelIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_iam_binding';

  GoogleIapTunnelIamBinding({
    required super.localName,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    IapTunnelIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelIamBinding>`.
  RefTo<GoogleIapTunnelIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
