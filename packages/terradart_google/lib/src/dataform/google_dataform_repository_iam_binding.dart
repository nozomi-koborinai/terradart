// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataform/google_dataform_repository.dart'
    show GoogleDataformRepository;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataform_repository_iam_binding`.
const Set<String> _googleDataformRepositoryIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataform_repository_iam_binding` (derived from provider schema).
@immutable
final class DataformRepositoryIamBindingCondition {
  const DataformRepositoryIamBindingCondition({
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

/// Factory wrapper for `google_dataform_repository_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataform repository.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataformRepositoryIamMember] for
/// additive grants.
final class GoogleDataformRepositoryIamBinding extends Resource {
  static const String tfType = 'google_dataform_repository_iam_binding';

  GoogleDataformRepositoryIamBinding(
    super.localName, {
    required RefTo<GoogleDataformRepository> repository,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? region,
    TfArg<String>? project,
    DataformRepositoryIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository.encodeAs('name'),
           'role': role,
           'members': members,
           'region': ?(region ?? repository.alsoAs('region')),
           'project': ?(project ?? repository.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryIamBinding>`.
  RefTo<GoogleDataformRepositoryIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
