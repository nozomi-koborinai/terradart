// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_functions/google_cloudfunctions2_function.dart'
    show GoogleCloudfunctions2Function;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloudfunctions2_function_iam_binding`.
const Set<String> _googleCloudfunctions2FunctionIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_cloudfunctions2_function_iam_binding` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionIamBindingCondition {
  const Cloudfunctions2FunctionIamBindingCondition({
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

/// Factory wrapper for `google_cloudfunctions2_function_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Functions (2nd gen)
/// function.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudfunctions2FunctionIamMember] for additive grants.
final class GoogleCloudfunctions2FunctionIamBinding extends Resource {
  static const String tfType = 'google_cloudfunctions2_function_iam_binding';

  GoogleCloudfunctions2FunctionIamBinding({
    required super.localName,
    required RefTo<GoogleCloudfunctions2Function> function,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    Cloudfunctions2FunctionIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': function.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? function.alsoAs('location')),
           'project': ?(project ?? function.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctions2FunctionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctions2FunctionIamBinding>`.
  RefTo<GoogleCloudfunctions2FunctionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunctionRef =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
