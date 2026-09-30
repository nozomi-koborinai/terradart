// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_service_account_iam_member`.
const Set<String> _googleServiceAccountIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_service_account_iam_member` (derived from provider schema).
@immutable
final class ServiceAccountIamMemberCondition {
  const ServiceAccountIamMemberCondition({
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

/// Factory wrapper for `google_service_account_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a service
/// account resource** — i.e. who can impersonate / generate tokens / sign
/// blobs for this SA. This is distinct from `google_project_iam_member`
/// (which grants the SA *itself* a role on a project).
///
/// Picking the right `*_iam_*` variant:
///
/// - `*_iam_member` (this resource) — **additive**: grants ONE
///   (role, member) tuple. Does not touch other principals' bindings.
///   Safe in 95% of cases; prefer this unless you have a concrete reason
///   to use one of the authoritative variants below.
/// - `*_iam_binding` — **authoritative per role**: takes a list of
///   members and *replaces* the entire member list for that role. Will
///   silently erase any other principal previously bound to that role
///   on this service account.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the SA's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `serviceAccountId`: the **fully-qualified resource path** of the
///   target SA, i.e. `projects/{project}/serviceAccounts/{email}`. Pass
///   `TfArg.ref(sa.id)` (or `sa.name`, same value) rather than the bare
///   email — short forms are rejected by the API.
/// - `role`: role name, typically `'roles/iam.serviceAccountUser'`
///   (impersonation) or `'roles/iam.serviceAccountTokenCreator'`
///   (generate access tokens).
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleServiceAccountIamMember extends Resource {
  static const String tfType = 'google_service_account_iam_member';

  GoogleServiceAccountIamMember({
    required super.localName,
    required RefTo<GoogleServiceAccount> serviceAccountId,
    required TfArg<String> role,
    required TfArg<String> member,
    ServiceAccountIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_account_id': serviceAccountId.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceAccountIamMember>`.
  RefTo<GoogleServiceAccountIamMember> get ref => RefTo.of(this);

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
