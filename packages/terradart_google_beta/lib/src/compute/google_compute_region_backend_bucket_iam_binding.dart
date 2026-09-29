// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_backend_bucket_iam_binding`.
const Set<String> _googleComputeRegionBackendBucketIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_region_backend_bucket_iam_binding` (derived from provider schema).
@immutable
final class ComputeRegionBackendBucketIamBindingCondition {
  const ComputeRegionBackendBucketIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_backend_bucket_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Region Backend Bucket.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeRegionBackendBucketIamMember] for additive grants.
final class GoogleComputeRegionBackendBucketIamBinding extends Resource {
  static const String tfType =
      'google_compute_region_backend_bucket_iam_binding';

  GoogleComputeRegionBackendBucketIamBinding({
    required super.localName,
    required TfArg<List<String>> members,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    ComputeRegionBackendBucketIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'members': members,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendBucketIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendBucketIamBinding>`.
  RefTo<GoogleComputeRegionBackendBucketIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
