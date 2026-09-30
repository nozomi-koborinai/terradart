// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime_template_iam_binding`.
const Set<String> _googleColabRuntimeTemplateIamBindingSensitive = <String>{};

/// Factory wrapper for `google_colab_runtime_template_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Colab Enterprise
/// runtime template.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleColabRuntimeTemplateIamMember] for additive grants.
final class GoogleColabRuntimeTemplateIamBinding extends Resource {
  static const String tfType = 'google_colab_runtime_template_iam_binding';

  GoogleColabRuntimeTemplateIamBinding({
    required super.localName,
    required TfArg<String> runtimeTemplate,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
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
           'members': members,
           'location': ?location,
           'condition': ?condition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabRuntimeTemplateIamBinding>`.
  RefTo<GoogleColabRuntimeTemplateIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `runtime_template` attribute.
  TfRef<String> get runtimeTemplateRef =>
      TfRef.attribute<String>(this, 'runtime_template');
}
