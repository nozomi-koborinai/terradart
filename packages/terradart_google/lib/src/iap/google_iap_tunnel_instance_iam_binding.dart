// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_instance_iam_binding`.
const Set<String> _googleIapTunnelInstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_tunnel_instance_iam_binding` (derived from provider schema).
@immutable
final class IapTunnelInstanceIamBindingCondition {
  const IapTunnelInstanceIamBindingCondition({
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

/// Factory wrapper for `google_iap_tunnel_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP TCP forwarding to a
/// Compute Engine instance (`iap.tunnel.instances.<instance>`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelInstanceIamMember] for additive grants.
final class GoogleIapTunnelInstanceIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_instance_iam_binding';

  GoogleIapTunnelInstanceIamBinding({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    IapTunnelInstanceIamBindingCondition? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelInstanceIamBinding>`.
  RefTo<GoogleIapTunnelInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
