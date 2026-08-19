// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_service_identity`.
const Set<String> _googleFolderServiceIdentitySensitive = <String>{};

/// Factory wrapper for `google_folder_service_identity`.
final class GoogleFolderServiceIdentity extends Resource {
  static const String tfType = 'google_folder_service_identity';

  GoogleFolderServiceIdentity({
    required super.localName,
    required TfArg<String> folder,
    required TfArg<String> service,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'folder': folder, 'service': service},
       );

  @override
  Set<String> get sensitiveFields => _googleFolderServiceIdentitySensitive;
}
