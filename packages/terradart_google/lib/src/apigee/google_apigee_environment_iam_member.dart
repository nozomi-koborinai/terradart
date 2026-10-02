// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../apigee/google_apigee_environment.dart' show GoogleApigeeEnvironment;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_apigee_environment_iam_member`.
const Set<String> _googleApigeeEnvironmentIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_apigee_environment_iam_member` (derived from provider schema).
@immutable
final class ApigeeEnvironmentIamMemberCondition {
  const ApigeeEnvironmentIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_environment_iam_member`.
final class GoogleApigeeEnvironmentIamMember extends Resource {
  static const String tfType = 'google_apigee_environment_iam_member';

  GoogleApigeeEnvironmentIamMember(
    super.localName, {
    TfArg<String>? orgId,
    required RefTo<GoogleApigeeEnvironment> environment,
    required TfArg<String> role,
    required IamPrincipal member,
    ApigeeEnvironmentIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': ?(orgId ?? environment.alsoAs('org_id')),
           'env_id': environment.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentIamMember>`.
  RefTo<GoogleApigeeEnvironmentIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
