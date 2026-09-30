// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_location_web_iam_binding`.
const Set<String> _googleIapLocationWebIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_location_web_iam_binding` (derived from provider schema).
@immutable
final class IapLocationWebIamBindingCondition {
  const IapLocationWebIamBindingCondition({
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

/// Factory wrapper for `google_iap_location_web_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP **web resources**
/// at a regional location.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapLocationWebIamMember] for additive grants.
final class GoogleIapLocationWebIamBinding extends Resource {
  static const String tfType = 'google_iap_location_web_iam_binding';

  GoogleIapLocationWebIamBinding({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    IapLocationWebIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapLocationWebIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapLocationWebIamBinding>`.
  RefTo<GoogleIapLocationWebIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
