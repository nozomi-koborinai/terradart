// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudfunctions/google_cloudfunctions_function.dart'
    show GoogleCloudfunctionsFunction;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloudfunctions_function_iam_binding`.
const Set<String> _googleCloudfunctionsFunctionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloudfunctions_function_iam_binding` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionIamBindingCondition {
  const CloudfunctionsFunctionIamBindingCondition({
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

/// Factory wrapper for `google_cloudfunctions_function_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Functions (1st gen) function.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudfunctionsFunctionIamMember] for additive grants.
/// Prefer [GoogleCloudfunctions2FunctionIamMember] for 2nd gen functions.
final class GoogleCloudfunctionsFunctionIamBinding extends Resource {
  static const String tfType = 'google_cloudfunctions_function_iam_binding';

  GoogleCloudfunctionsFunctionIamBinding({
    required super.localName,
    required RefTo<GoogleCloudfunctionsFunction> function,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    CloudfunctionsFunctionIamBindingCondition? condition,
    TfArg<String>? region,
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
           'region': ?(region ?? function.alsoAs('region')),
           'project': ?(project ?? function.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctionsFunctionIamBinding>`.
  RefTo<GoogleCloudfunctionsFunctionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunction =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
