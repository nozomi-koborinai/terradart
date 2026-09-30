// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_feature_iam_binding`.
const Set<String> _googleGkeHubFeatureIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_hub_feature_iam_binding` (derived from provider schema).
@immutable
final class GkeHubFeatureIamBindingCondition {
  const GkeHubFeatureIamBindingCondition({
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

/// Factory wrapper for `google_gke_hub_feature_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Hub fleet feature.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubFeatureIamMember] for additive grants.
final class GoogleGkeHubFeatureIamBinding extends Resource {
  static const String tfType = 'google_gke_hub_feature_iam_binding';

  GoogleGkeHubFeatureIamBinding({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    GkeHubFeatureIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubFeatureIamBinding>`.
  RefTo<GoogleGkeHubFeatureIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
