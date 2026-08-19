// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_service_identity`.
const Set<String> _googleFolderServiceIdentitySensitive = <String>{};

/// Factory wrapper for `google_folder_service_identity`.
///
/// Folder **service identity** (beta-only) — provisions the per-service
/// service agent ahead of first use, so IAM grants on that agent never
/// race its lazy creation.
///
/// The [member] / [email] outputs feed IAM grants directly:
/// `GoogleFolderIamMember(member: identity.member, ...)`.
final class GoogleFolderServiceIdentity extends Resource {
  static const String tfType = 'google_folder_service_identity';

  GoogleFolderServiceIdentity({
    required super.localName,
    required TfArg<String> service,
    required TfArg<String> folder,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'service': service, 'folder': folder},
       );

  @override
  Set<String> get sensitiveFields => _googleFolderServiceIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');
}
