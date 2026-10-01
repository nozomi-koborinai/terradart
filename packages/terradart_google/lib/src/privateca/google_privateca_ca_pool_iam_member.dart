// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../privateca/google_privateca_ca_pool.dart' show GooglePrivatecaCaPool;

/// Sensitive field paths for `google_privateca_ca_pool_iam_member`.
const Set<String> _googlePrivatecaCaPoolIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_privateca_ca_pool_iam_member` (derived from provider schema).
@immutable
final class PrivatecaCaPoolIamMemberCondition {
  const PrivatecaCaPoolIamMemberCondition({
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

/// Factory wrapper for `google_privateca_ca_pool_iam_member`.
///
/// Additive IAM member on a [GooglePrivatecaCaPool] (Certificate Authority Service).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [caPool]: pool ID — `TfArg.ref(pool.id)` from [GooglePrivatecaCaPool].
/// - [role]: CAS role (e.g. `roles/privateca.auditor`).
/// - [member]: IAM principal (`user:…`, `group:…`, `serviceAccount:…`).
///
/// Example:
/// ```dart
/// GooglePrivatecaCaPoolIamMember(
///   localName: 'pool_auditor',
///   caPool: caPool.ref,
///   role: TfArg.literal('roles/privateca.auditor'),
///   member: .group('security@example.com'),
/// );
/// ```
final class GooglePrivatecaCaPoolIamMember extends Resource {
  static const String tfType = 'google_privateca_ca_pool_iam_member';

  GooglePrivatecaCaPoolIamMember({
    required super.localName,
    required RefTo<GooglePrivatecaCaPool> caPool,
    required TfArg<String> role,
    required IamPrincipal member,
    PrivatecaCaPoolIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_pool': caPool.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCaPoolIamMember>`.
  RefTo<GooglePrivatecaCaPoolIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `ca_pool` attribute.
  TfRef<String> get caPool => TfRef.attribute<String>(this, 'ca_pool');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
