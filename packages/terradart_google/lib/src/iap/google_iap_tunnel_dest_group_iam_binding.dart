// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_dest_group_iam_binding`.
const Set<String> _googleIapTunnelDestGroupIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_tunnel_dest_group_iam_binding` (derived from provider schema).
@immutable
final class IapTunnelDestGroupIamBindingCondition {
  const IapTunnelDestGroupIamBindingCondition({
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

/// Factory wrapper for `google_iap_tunnel_dest_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a IAP TCP-forwarding destination group.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelDestGroupIamMember] for additive grants.
final class GoogleIapTunnelDestGroupIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_dest_group_iam_binding';

  GoogleIapTunnelDestGroupIamBinding({
    required super.localName,
    required TfArg<String> destGroup,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    IapTunnelDestGroupIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dest_group': destGroup,
           'region': ?region,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelDestGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelDestGroupIamBinding>`.
  RefTo<GoogleIapTunnelDestGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
