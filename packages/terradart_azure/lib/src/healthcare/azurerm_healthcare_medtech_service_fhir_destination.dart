// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_healthcare_medtech_service_fhir_destination`.
const Set<String> _azurermHealthcareMedtechServiceFhirDestinationSensitive =
    <String>{};

/// Healthcare Medtech Service Fhir Destination Identity Resolution enum for `destination_identity_resolution_type`.
extension type const HealthcareMedtechServiceFhirDestinationIdentityResolutionType._(
  TfArg<String> _
) implements TfArg<String> {
  HealthcareMedtechServiceFhirDestinationIdentityResolutionType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  HealthcareMedtechServiceFhirDestinationIdentityResolutionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const HealthcareMedtechServiceFhirDestinationIdentityResolutionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const create =
      HealthcareMedtechServiceFhirDestinationIdentityResolutionType._(
        TfArgLiteral('Create'),
      );
  static const lookup =
      HealthcareMedtechServiceFhirDestinationIdentityResolutionType._(
        TfArgLiteral('Lookup'),
      );

  static const List<
    HealthcareMedtechServiceFhirDestinationIdentityResolutionType
  >
  values = [create, lookup];
}

/// Factory wrapper for `azurerm_healthcare_medtech_service_fhir_destination`.
final class AzurermHealthcareMedtechServiceFhirDestination extends Resource {
  static const String tfType =
      'azurerm_healthcare_medtech_service_fhir_destination';

  AzurermHealthcareMedtechServiceFhirDestination(
    super.localName, {
    required TfArg<String> destinationFhirMappingJson,
    required TfArg<String> destinationFhirServiceId,
    required HealthcareMedtechServiceFhirDestinationIdentityResolutionType
    destinationIdentityResolutionType,
    required TfArg<String> location,
    required TfArg<String> medtechServiceId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_fhir_mapping_json': destinationFhirMappingJson,
           'destination_fhir_service_id': destinationFhirServiceId,
           'destination_identity_resolution_type':
               destinationIdentityResolutionType,
           'location': location,
           'medtech_service_id': medtechServiceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermHealthcareMedtechServiceFhirDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthcareMedtechServiceFhirDestination>`.
  RefTo<AzurermHealthcareMedtechServiceFhirDestination> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_fhir_mapping_json` attribute.
  TfRef<String> get destinationFhirMappingJson =>
      TfRef.attribute<String>(this, 'destination_fhir_mapping_json');

  /// Reference to `destination_fhir_service_id` attribute.
  TfRef<String> get destinationFhirServiceId =>
      TfRef.attribute<String>(this, 'destination_fhir_service_id');

  /// Reference to `destination_identity_resolution_type` attribute.
  TfRef<String> get destinationIdentityResolutionType =>
      TfRef.attribute<String>(this, 'destination_identity_resolution_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `medtech_service_id` attribute.
  TfRef<String> get medtechServiceId =>
      TfRef.attribute<String>(this, 'medtech_service_id');
}
