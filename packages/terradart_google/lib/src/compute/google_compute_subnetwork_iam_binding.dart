// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_subnetwork_iam_binding`.
const Set<String> _googleComputeSubnetworkIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_subnetwork_iam_binding` (derived from provider schema).
@immutable
final class ComputeSubnetworkIamBindingCondition {
  const ComputeSubnetworkIamBindingCondition({
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

/// Factory wrapper for `google_compute_subnetwork_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine
/// subnetwork.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeSubnetworkIamMember] for additive grants.
final class GoogleComputeSubnetworkIamBinding extends Resource {
  static const String tfType = 'google_compute_subnetwork_iam_binding';

  GoogleComputeSubnetworkIamBinding({
    required super.localName,
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ComputeSubnetworkIamBindingCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnetwork': subnetwork.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeSubnetworkIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSubnetworkIamBinding>`.
  RefTo<GoogleComputeSubnetworkIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetworkRef =>
      TfRef.attribute<String>(this, 'subnetwork');
}
