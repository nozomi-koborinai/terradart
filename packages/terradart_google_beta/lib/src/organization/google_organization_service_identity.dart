// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_service_identity`.
const Set<String> _googleOrganizationServiceIdentitySensitive = <String>{};

/// Factory wrapper for `google_organization_service_identity`.
final class GoogleOrganizationServiceIdentity extends Resource {
  static const String tfType = 'google_organization_service_identity';

  GoogleOrganizationServiceIdentity({
    required super.localName,
    required TfArg<String> organization,
    required TfArg<String> service,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'organization': organization, 'service': service},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOrganizationServiceIdentitySensitive;
}
