// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_instance_iam_member`.
const Set<String> _googleBigtableInstanceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigtable_instance_iam_member` (derived from provider schema).
@immutable
final class BigtableInstanceIamMemberCondition {
  const BigtableInstanceIamMemberCondition({
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

/// Factory wrapper for `google_bigtable_instance_iam_member`.
final class GoogleBigtableInstanceIamMember extends Resource {
  static const String tfType = 'google_bigtable_instance_iam_member';

  GoogleBigtableInstanceIamMember({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> role,
    required TfArg<String> member,
    BigtableInstanceIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableInstanceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableInstanceIamMember>`.
  RefTo<GoogleBigtableInstanceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
