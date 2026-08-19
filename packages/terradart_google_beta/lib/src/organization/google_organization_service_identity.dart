// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_service_identity`.
const Set<String> _googleOrganizationServiceIdentitySensitive = <String>{};

/// Factory wrapper for `google_organization_service_identity`.
///
/// Organization **service identity** (beta-only) — provisions the
/// per-service service agent ahead of first use, so IAM grants on that
/// agent never race its lazy creation.
///
/// The [member] / [email] outputs feed IAM grants directly:
/// `GoogleOrganizationIamMember(member: identity.member, ...)`.
final class GoogleOrganizationServiceIdentity extends Resource {
  static const String tfType = 'google_organization_service_identity';

  GoogleOrganizationServiceIdentity({
    required super.localName,
    required TfArg<String> service,
    required TfArg<String> organization,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'service': service, 'organization': organization},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOrganizationServiceIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');
}
