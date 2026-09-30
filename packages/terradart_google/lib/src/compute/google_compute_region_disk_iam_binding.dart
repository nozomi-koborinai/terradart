// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_disk_iam_binding`.
const Set<String> _googleComputeRegionDiskIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_region_disk_iam_binding` (derived from provider schema).
@immutable
final class ComputeRegionDiskIamBindingCondition {
  const ComputeRegionDiskIamBindingCondition({
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

/// Factory wrapper for `google_compute_region_disk_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine regional disk.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeRegionDiskIamMember] for additive grants.
final class GoogleComputeRegionDiskIamBinding extends Resource {
  static const String tfType = 'google_compute_region_disk_iam_binding';

  GoogleComputeRegionDiskIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    ComputeRegionDiskIamBindingCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
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
      _googleComputeRegionDiskIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionDiskIamBinding>`.
  RefTo<GoogleComputeRegionDiskIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
