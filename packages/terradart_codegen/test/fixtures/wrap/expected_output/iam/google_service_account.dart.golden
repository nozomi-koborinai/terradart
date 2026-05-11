// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_service_account.schema.dart'
    show $GoogleServiceAccount, googleServiceAccountSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GoogleServiceAccountSchemaInstance implements $GoogleServiceAccount {
  const _GoogleServiceAccountSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_service_account`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Creates an IAM service account on a project. The most user-facing computed
/// attribute is [member] — a pre-formatted `serviceAccount:<email>` string
/// you pass straight into IAM bindings, sidestepping the manual
/// `'serviceAccount:' + email` concatenation that's easy to typo.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_service_account.`).
/// - `accountId`: short ID before the `@` in the resulting email
///   (e.g. `'my-runner'` → `my-runner@<project>.iam.gserviceaccount.com`).
///   Must be 6-30 chars matching `[a-z]([-a-z0-9]*[a-z0-9])`. **ForceNew**:
///   changing this destroys and recreates the SA.
///
/// Optional knobs:
/// - `project`: explicit project ID; defaults to the provider's `project`
///   when omitted. **ForceNew** in the provider.
/// - `displayName`: human-readable name shown in the GCP console.
/// - `description`: free-form text (≤ 256 UTF-8 bytes).
/// - `createIgnoreAlreadyExists`: when `true`, skip creation if an SA with
///   the same email already exists. Useful for shared environments where a
///   peer Terraform stack may have created the SA first.
/// - `disabled`: disables the SA without deleting it. Defaults to `false`.
///
/// Example pairing with [GooglePubsubTopicIamMember] — the canonical
/// `sa.member` flow:
/// ```dart
/// final sa = GoogleServiceAccount(
///   localName: 'publisher',
///   accountId: TfArg.literal('orders-publisher'),
///   displayName: TfArg.literal('Orders publisher'),
/// );
///
/// final orders = GooglePubsubTopic(
///   localName: 'orders',
///   name: TfArg.literal('orders-prod'),
/// );
///
/// // member is `serviceAccount:orders-publisher@<project>.iam.gserviceaccount.com`
/// // — pass it directly without manually prefixing `serviceAccount:`.
/// GooglePubsubTopicIamMember(
///   localName: 'orders_publisher_binding',
///   topic: TfArg.ref(orders.nameRef),
///   role: TfArg.literal('roles/pubsub.publisher'),
///   member: TfArg.ref(sa.member),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleServiceAccount>` for
/// runtime behavior, implements `$GoogleServiceAccount` for the schemantic
/// schema surface. `argMap` stores `TfArg<dynamic>?` entries directly;
/// synth's JSON-encoding pass walks them and calls `arg.toTfJson()` to
/// encode at write time.
final class GoogleServiceAccount extends Resource<$GoogleServiceAccount> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_service_account';

  GoogleServiceAccount({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? project,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? createIgnoreAlreadyExists,
    TfArg<bool>? disabled,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleServiceAccountSchemaInstance(),
         argMap: {
           'account_id': accountId,
           if (project != null) 'project': project,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (createIgnoreAlreadyExists != null)
             'create_ignore_already_exists': createIgnoreAlreadyExists,
           if (disabled != null) 'disabled': disabled,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleServiceAccountSensitive;

  /// `id` — full resource path
  /// `projects/{project}/serviceAccounts/{email}`.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// `email` — `<accountId>@<project>.iam.gserviceaccount.com`. Use this
  /// when you need the bare email (e.g. injecting into an external
  /// system's config) — for IAM bindings prefer [member].
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// `name` — same as [id] (legacy alias retained by the provider).
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// `unique_id` — numeric unique identifier assigned by GCP. Stable across
  /// rename if you change `display_name`; differs from [id] / [email].
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// `member` — pre-formatted `serviceAccount:<email>` string. **Use this
  /// for IAM bindings** (e.g. `member: TfArg.ref(sa.member)`) — it
  /// eliminates the manual `'serviceAccount:' + email` concatenation that
  /// is easy to typo and brittle when refactoring.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');
}
