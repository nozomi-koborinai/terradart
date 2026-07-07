// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_location_web_iam_member`.
const Set<String> _googleIapLocationWebIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_location_web_iam_member`.
///
/// Additive IAM grant for Identity-Aware Proxy access on **web
/// resources** at a regional location.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [location]: regional location (e.g. `'us-central1'`).
/// - [role]: typically `'roles/iap.httpsResourceAccessor'`.
/// - [member]: IAM principal (`user:…`, `group:…`, `serviceAccount:…`).
///
/// Example:
/// ```dart
/// GoogleIapLocationWebIamMember(
///   localName: 'location_web_invoker',
///   location: TfArg.literal('us-central1'),
///   role: TfArg.literal('roles/iap.httpsResourceAccessor'),
///   member: TfArg.ref(sa.iamMember),
/// );
/// ```
final class GoogleIapLocationWebIamMember extends Resource {
  static const String tfType = 'google_iap_location_web_iam_member';

  GoogleIapLocationWebIamMember({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapLocationWebIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
