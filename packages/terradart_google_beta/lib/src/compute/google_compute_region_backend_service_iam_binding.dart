// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeRegionBackendService, IamPrincipal;

/// Sensitive field paths for `google_compute_region_backend_service_iam_binding`.
const Set<String> _googleComputeRegionBackendServiceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_region_backend_service_iam_binding` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceIamBindingCondition {
  const ComputeRegionBackendServiceIamBindingCondition({
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

/// Factory wrapper for `google_compute_region_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Region Backend Service.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeRegionBackendServiceIamMember] for additive grants.
final class GoogleComputeRegionBackendServiceIamBinding extends Resource {
  static const String tfType =
      'google_compute_region_backend_service_iam_binding';

  GoogleComputeRegionBackendServiceIamBinding(
    super.localName, {
    required TfArg<List<IamPrincipal>> members,
    required RefTo<GoogleComputeRegionBackendService> backendService,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    ComputeRegionBackendServiceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'members': members,
           'name': backendService.encodeAs('name'),
           'project': ?(project ?? backendService.alsoAs('project')),
           'region': ?(region ?? backendService.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendServiceIamBindingSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendServiceIamBinding>`.
  RefTo<GoogleComputeRegionBackendServiceIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
