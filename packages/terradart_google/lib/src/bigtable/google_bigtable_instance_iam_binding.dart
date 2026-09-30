// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_instance_iam_binding`.
const Set<String> _googleBigtableInstanceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigtable_instance_iam_binding` (derived from provider schema).
@immutable
final class BigtableInstanceIamBindingCondition {
  const BigtableInstanceIamBindingCondition({
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

/// Factory wrapper for `google_bigtable_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Bigtable instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigtableInstanceIamMember] for additive grants.
final class GoogleBigtableInstanceIamBinding extends Resource {
  static const String tfType = 'google_bigtable_instance_iam_binding';

  GoogleBigtableInstanceIamBinding({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigtableInstanceIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableInstanceIamBinding>`.
  RefTo<GoogleBigtableInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
