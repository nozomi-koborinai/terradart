// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_communication_service`.
const Set<String> _azurermCommunicationServiceSensitive = <String>{
  'primary_connection_string',
  'primary_key',
  'secondary_connection_string',
  'secondary_key',
};

/// Communication Service Data enum for `data_location`.
extension type const CommunicationServiceDataLocation._(TfArg<String> _)
    implements TfArg<String> {
  CommunicationServiceDataLocation.variable(String name)
    : this._(TfArg.variable(name));
  CommunicationServiceDataLocation.expression(String template)
    : this._(TfArg.expression(template));
  const CommunicationServiceDataLocation.arg(TfArg<String> arg) : this._(arg);

  static const africa = CommunicationServiceDataLocation._(
    TfArgLiteral('Africa'),
  );
  static const asiaPacific = CommunicationServiceDataLocation._(
    TfArgLiteral('Asia Pacific'),
  );
  static const australia = CommunicationServiceDataLocation._(
    TfArgLiteral('Australia'),
  );
  static const brazil = CommunicationServiceDataLocation._(
    TfArgLiteral('Brazil'),
  );
  static const canada = CommunicationServiceDataLocation._(
    TfArgLiteral('Canada'),
  );
  static const europe = CommunicationServiceDataLocation._(
    TfArgLiteral('Europe'),
  );
  static const france = CommunicationServiceDataLocation._(
    TfArgLiteral('France'),
  );
  static const germany = CommunicationServiceDataLocation._(
    TfArgLiteral('Germany'),
  );
  static const india = CommunicationServiceDataLocation._(
    TfArgLiteral('India'),
  );
  static const japan = CommunicationServiceDataLocation._(
    TfArgLiteral('Japan'),
  );
  static const korea = CommunicationServiceDataLocation._(
    TfArgLiteral('Korea'),
  );
  static const norway = CommunicationServiceDataLocation._(
    TfArgLiteral('Norway'),
  );
  static const switzerland = CommunicationServiceDataLocation._(
    TfArgLiteral('Switzerland'),
  );
  static const uae = CommunicationServiceDataLocation._(TfArgLiteral('UAE'));
  static const uk = CommunicationServiceDataLocation._(TfArgLiteral('UK'));
  static const unitedStates = CommunicationServiceDataLocation._(
    TfArgLiteral('United States'),
  );
  static const usgov = CommunicationServiceDataLocation._(
    TfArgLiteral('usgov'),
  );

  static const List<CommunicationServiceDataLocation> values = [
    africa,
    asiaPacific,
    australia,
    brazil,
    canada,
    europe,
    france,
    germany,
    india,
    japan,
    korea,
    norway,
    switzerland,
    uae,
    uk,
    unitedStates,
    usgov,
  ];
}

/// Factory wrapper for `azurerm_communication_service`.
final class AzurermCommunicationService extends Resource {
  static const String tfType = 'azurerm_communication_service';

  AzurermCommunicationService(
    super.localName, {
    required CommunicationServiceDataLocation dataLocation,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_location': dataLocation,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCommunicationServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCommunicationService>`.
  RefTo<AzurermCommunicationService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `data_location` attribute.
  TfRef<String> get dataLocation =>
      TfRef.attribute<String>(this, 'data_location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
