// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_email_communication_service`.
const Set<String> _azurermEmailCommunicationServiceSensitive = <String>{};

/// Email Communication Service Data enum for `data_location`.
extension type const EmailCommunicationServiceDataLocation._(TfArg<String> _)
    implements TfArg<String> {
  EmailCommunicationServiceDataLocation.variable(String name)
    : this._(TfArg.variable(name));
  EmailCommunicationServiceDataLocation.expression(String template)
    : this._(TfArg.expression(template));
  const EmailCommunicationServiceDataLocation.arg(TfArg<String> arg)
    : this._(arg);

  static const africa = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Africa'),
  );
  static const asiaPacific = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Asia Pacific'),
  );
  static const australia = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Australia'),
  );
  static const brazil = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Brazil'),
  );
  static const canada = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Canada'),
  );
  static const europe = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Europe'),
  );
  static const france = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('France'),
  );
  static const germany = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Germany'),
  );
  static const india = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('India'),
  );
  static const japan = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Japan'),
  );
  static const korea = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Korea'),
  );
  static const norway = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Norway'),
  );
  static const switzerland = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('Switzerland'),
  );
  static const uae = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('UAE'),
  );
  static const uk = EmailCommunicationServiceDataLocation._(TfArgLiteral('UK'));
  static const unitedStates = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('United States'),
  );
  static const usgov = EmailCommunicationServiceDataLocation._(
    TfArgLiteral('usgov'),
  );

  static const List<EmailCommunicationServiceDataLocation> values = [
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

/// Factory wrapper for `azurerm_email_communication_service`.
final class AzurermEmailCommunicationService extends Resource {
  static const String tfType = 'azurerm_email_communication_service';

  AzurermEmailCommunicationService(
    super.localName, {
    required EmailCommunicationServiceDataLocation dataLocation,
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
  Set<String> get sensitiveFields => _azurermEmailCommunicationServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEmailCommunicationService>`.
  RefTo<AzurermEmailCommunicationService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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
