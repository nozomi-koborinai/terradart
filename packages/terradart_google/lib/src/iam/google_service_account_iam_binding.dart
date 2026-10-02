// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_service_account_iam_binding`.
const Set<String> _googleServiceAccountIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_service_account_iam_binding` (derived from provider schema).
@immutable
final class ServiceAccountIamBindingCondition {
  const ServiceAccountIamBindingCondition({
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

/// Factory wrapper for `google_service_account_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a service account
/// resource (who can impersonate / mint tokens for this SA).
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleServiceAccountIamMember] for additive grants.
final class GoogleServiceAccountIamBinding extends Resource {
  static const String tfType = 'google_service_account_iam_binding';

  GoogleServiceAccountIamBinding(
    super.localName, {
    required RefTo<GoogleServiceAccount> serviceAccount,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ServiceAccountIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_account_id': serviceAccount.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceAccountIamBinding>`.
  RefTo<GoogleServiceAccountIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');
}
