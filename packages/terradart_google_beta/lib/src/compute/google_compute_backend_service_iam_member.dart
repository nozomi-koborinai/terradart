// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeBackendService, IamPrincipal;

/// Sensitive field paths for `google_compute_backend_service_iam_member`.
const Set<String> _googleComputeBackendServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_backend_service_iam_member` (derived from provider schema).
@immutable
final class ComputeBackendServiceIamMemberCondition {
  const ComputeBackendServiceIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_backend_service_iam_member`.
final class GoogleComputeBackendServiceIamMember extends Resource {
  static const String tfType = 'google_compute_backend_service_iam_member';

  GoogleComputeBackendServiceIamMember(
    super.localName, {
    required IamPrincipal member,
    required RefTo<GoogleComputeBackendService> backendService,
    TfArg<String>? project,
    required TfArg<String> role,
    ComputeBackendServiceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'member': member,
           'name': backendService.encodeAs('name'),
           'project': ?(project ?? backendService.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceIamMemberSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendServiceIamMember>`.
  RefTo<GoogleComputeBackendServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
