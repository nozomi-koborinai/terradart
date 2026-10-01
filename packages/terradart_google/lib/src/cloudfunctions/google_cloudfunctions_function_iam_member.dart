// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudfunctions/google_cloudfunctions_function.dart'
    show GoogleCloudfunctionsFunction;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloudfunctions_function_iam_member`.
const Set<String> _googleCloudfunctionsFunctionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloudfunctions_function_iam_member` (derived from provider schema).
@immutable
final class CloudfunctionsFunctionIamMemberCondition {
  const CloudfunctionsFunctionIamMemberCondition({
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

/// Factory wrapper for `google_cloudfunctions_function_iam_member`.
final class GoogleCloudfunctionsFunctionIamMember extends Resource {
  static const String tfType = 'google_cloudfunctions_function_iam_member';

  GoogleCloudfunctionsFunctionIamMember({
    required super.localName,
    required RefTo<GoogleCloudfunctionsFunction> function,
    required TfArg<String> role,
    required IamPrincipal member,
    CloudfunctionsFunctionIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?(region ?? function.alsoAs('region')),
           'project': ?(project ?? function.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctionsFunctionIamMember>`.
  RefTo<GoogleCloudfunctionsFunctionIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunctionRef =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
