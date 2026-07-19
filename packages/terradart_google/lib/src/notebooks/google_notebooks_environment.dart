// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_environment`.
const Set<String> _googleNotebooksEnvironmentSensitive = <String>{};

// ===========================================================================
// NotebooksEnvironmentImage -- sealed (ContainerImage | VmImage)
// ===========================================================================

/// Exactly one image source for a [GoogleNotebooksEnvironment].
sealed class NotebooksEnvironmentImage {
  const NotebooksEnvironmentImage();

  /// Terraform nested-block key (`container_image` or `vm_image`).
  String get blockKey;

  /// Single-element list matching `nesting_mode: list, max_items: 1`.
  List<Map<String, Object?>> encode();
}

/// `container_image` — start notebooks from a container repository.
@immutable
final class NotebooksEnvironmentContainerImage
    extends NotebooksEnvironmentImage {
  const NotebooksEnvironmentContainerImage({
    required this.repository,
    this.tag,
  });

  final TfArg<String> repository;
  final TfArg<String>? tag;

  @override
  String get blockKey => 'container_image';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'repository': repository.toTfJson(),
      if (tag != null) 'tag': tag!.toTfJson(),
    },
  ];
}

/// `vm_image` — start notebooks from a Compute Engine image.
///
/// Provide [imageName] and/or [imageFamily] (newest in the family when
/// only the family is set).
@immutable
final class NotebooksEnvironmentVmImage extends NotebooksEnvironmentImage {
  const NotebooksEnvironmentVmImage({
    required this.project,
    this.imageName,
    this.imageFamily,
  });

  /// Image project, e.g. `deeplearning-platform-release`.
  final TfArg<String> project;
  final TfArg<String>? imageName;
  final TfArg<String>? imageFamily;

  @override
  String get blockKey => 'vm_image';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'project': project.toTfJson(),
      if (imageName != null) 'image_name': imageName!.toTfJson(),
      if (imageFamily != null) 'image_family': imageFamily!.toTfJson(),
    },
  ];
}

/// Factory wrapper for `google_notebooks_environment`.
///
/// A Cloud AI Platform Notebook environment.
///
/// Vertex AI Workbench (Notebooks) environment — a reusable image recipe
/// for notebook instances (no VM starts until an instance uses it).
///
/// Pass exactly one [image] variant:
/// - [NotebooksEnvironmentContainerImage] — container repository (+ optional tag)
/// - [NotebooksEnvironmentVmImage] — Compute Engine image project + name/family
///
/// Enable `notebooks.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example (container image):
/// ```dart
/// GoogleNotebooksEnvironment(
///   localName: 'base_cpu',
///   name: TfArg.literal('terradart-nb-env'),
///   location: TfArg.literal('us-central1-a'),
///   image: NotebooksEnvironmentContainerImage(
///     repository: TfArg.literal(
///       'gcr.io/deeplearning-platform-release/base-cpu',
///     ),
///   ),
/// );
/// ```
final class GoogleNotebooksEnvironment extends Resource {
  static const String tfType = 'google_notebooks_environment';

  GoogleNotebooksEnvironment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required NotebooksEnvironmentImage image,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? postStartupScript,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (postStartupScript != null)
             'post_startup_script': postStartupScript,
           if (project != null) 'project': project,
           image.blockKey: TfArg.literal(image.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
