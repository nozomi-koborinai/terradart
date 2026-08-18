// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_service_identity`.
const Set<String> _googleProjectServiceIdentitySensitive = <String>{};

/// Factory wrapper for `google_project_service_identity`.
///
/// Project **service identity** (beta-only) — provisions the per-service
/// service agent (e.g. the Pub/Sub or Cloud Build agent) ahead of first
/// use, so IAM grants on that agent never race its lazy creation.
///
/// Free: the identity is account metadata with no billed resource behind
/// it. Terraform destroy removes only the Terraform record — the service
/// agent itself persists (upstream behavior).
///
/// The [member] / [email] outputs feed IAM grants directly:
/// `GoogleProjectIamMember(member: identity.member, ...)`.
final class GoogleProjectServiceIdentity extends Resource {
  static const String tfType = 'google_project_service_identity';

  GoogleProjectServiceIdentity({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'service': service, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleProjectServiceIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');
}
