// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_ca_pool_iam_member`.
const Set<String> _googlePrivatecaCaPoolIamMemberSensitive = <String>{};

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
///   caPool: TfArg.ref(caPool.id),
///   role: TfArg.literal('roles/privateca.auditor'),
///   member: TfArg.literal('group:security@example.com'),
/// );
/// ```
final class GooglePrivatecaCaPoolIamMember extends Resource {
  static const String tfType = 'google_privateca_ca_pool_iam_member';

  GooglePrivatecaCaPoolIamMember({
    required super.localName,
    required TfArg<String> caPool,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_pool': caPool,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
