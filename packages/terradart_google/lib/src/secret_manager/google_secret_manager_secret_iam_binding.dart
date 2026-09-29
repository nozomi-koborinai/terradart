// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_iam_binding`.
const Set<String> _googleSecretManagerSecretIamBindingSensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secret_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Secret Manager
/// secret.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleSecretManagerSecretIamMember] for additive grants.
final class GoogleSecretManagerSecretIamBinding extends Resource {
  static const String tfType = 'google_secret_manager_secret_iam_binding';

  GoogleSecretManagerSecretIamBinding({
    required super.localName,
    required TfArg<String> secretId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           'role': role,
           'members': members,
           'condition': ?condition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecretIamBinding>`.
  RefTo<GoogleSecretManagerSecretIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
