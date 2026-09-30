// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime_template_iam_member`.
const Set<String> _googleColabRuntimeTemplateIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_colab_runtime_template_iam_member` (derived from provider schema).
@immutable
final class ColabRuntimeTemplateIamMemberCondition {
  const ColabRuntimeTemplateIamMemberCondition({
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

/// Factory wrapper for `google_colab_runtime_template_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a
/// [GoogleColabRuntimeTemplate]. Prefer an in-stack service account for
/// apply-smoke (placeholder identities fail at apply).
final class GoogleColabRuntimeTemplateIamMember extends Resource {
  static const String tfType = 'google_colab_runtime_template_iam_member';

  GoogleColabRuntimeTemplateIamMember({
    required super.localName,
    required TfArg<String> runtimeTemplate,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    ColabRuntimeTemplateIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_template': runtimeTemplate,
           'role': role,
           'member': member,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabRuntimeTemplateIamMember>`.
  RefTo<GoogleColabRuntimeTemplateIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `runtime_template` attribute.
  TfRef<String> get runtimeTemplateRef =>
      TfRef.attribute<String>(this, 'runtime_template');
}
