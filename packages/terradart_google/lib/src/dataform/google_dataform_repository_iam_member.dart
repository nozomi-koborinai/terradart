// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataform/google_dataform_repository.dart'
    show GoogleDataformRepository;

/// Sensitive field paths for `google_dataform_repository_iam_member`.
const Set<String> _googleDataformRepositoryIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataform_repository_iam_member` (derived from provider schema).
@immutable
final class DataformRepositoryIamMemberCondition {
  const DataformRepositoryIamMemberCondition({
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

/// Factory wrapper for `google_dataform_repository_iam_member`.
///
/// Additive IAM grant of one `role` to one `member` on a Dataform
/// repository.
///
/// Leaves grants made outside Terraform in place — prefer this over
/// [GoogleDataformRepositoryIamBinding] and
/// [GoogleDataformRepositoryIamPolicy] unless you need authoritative
/// updates.
final class GoogleDataformRepositoryIamMember extends Resource {
  static const String tfType = 'google_dataform_repository_iam_member';

  GoogleDataformRepositoryIamMember({
    required super.localName,
    required RefTo<GoogleDataformRepository> repository,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? region,
    TfArg<String>? project,
    DataformRepositoryIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository.encodeAs('name'),
           'role': role,
           'member': member,
           'region': ?(region ?? repository.alsoAs('region')),
           'project': ?(project ?? repository.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryIamMember>`.
  RefTo<GoogleDataformRepositoryIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
