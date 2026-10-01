// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_service.dart' show GoogleCloudRunService;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_service_iam_binding`.
const Set<String> _googleCloudRunServiceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_service_iam_binding` (derived from provider schema).
@immutable
final class CloudRunServiceIamBindingCondition {
  const CloudRunServiceIamBindingCondition({
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

/// Factory wrapper for `google_cloud_run_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Run (v1) service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudRunServiceIamMember] for additive grants.
/// Prefer [GoogleCloudRunV2ServiceIamMember] for Cloud Run v2 services.
final class GoogleCloudRunServiceIamBinding extends Resource {
  static const String tfType = 'google_cloud_run_service_iam_binding';

  GoogleCloudRunServiceIamBinding(
    super.localName, {
    required RefTo<GoogleCloudRunService> service,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    CloudRunServiceIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? service.alsoAs('location')),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunServiceIamBinding>`.
  RefTo<GoogleCloudRunServiceIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
