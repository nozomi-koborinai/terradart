// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_service_slot_custom_hostname_binding`.
const Set<String> _azurermAppServiceSlotCustomHostnameBindingSensitive =
    <String>{};

/// App Service Slot Custom Hostname Binding Ssl enum for `ssl_state`.
extension type const AppServiceSlotCustomHostnameBindingSslState._(
  TfArg<String> _
) implements TfArg<String> {
  AppServiceSlotCustomHostnameBindingSslState.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceSlotCustomHostnameBindingSslState.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceSlotCustomHostnameBindingSslState.arg(TfArg<String> arg)
    : this._(arg);

  static const ipbasedenabled = AppServiceSlotCustomHostnameBindingSslState._(
    TfArgLiteral('IpBasedEnabled'),
  );
  static const snienabled = AppServiceSlotCustomHostnameBindingSslState._(
    TfArgLiteral('SniEnabled'),
  );

  static const List<AppServiceSlotCustomHostnameBindingSslState> values = [
    ipbasedenabled,
    snienabled,
  ];
}

/// Factory wrapper for `azurerm_app_service_slot_custom_hostname_binding`.
final class AzurermAppServiceSlotCustomHostnameBinding extends Resource {
  static const String tfType =
      'azurerm_app_service_slot_custom_hostname_binding';

  AzurermAppServiceSlotCustomHostnameBinding(
    super.localName, {
    required TfArg<String> appServiceSlotId,
    required TfArg<String> hostname,
    AppServiceSlotCustomHostnameBindingSslState? sslState,
    TfArg<String>? thumbprint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_slot_id': appServiceSlotId,
           'hostname': hostname,
           'ssl_state': ?sslState,
           'thumbprint': ?thumbprint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceSlotCustomHostnameBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceSlotCustomHostnameBinding>`.
  RefTo<AzurermAppServiceSlotCustomHostnameBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `virtual_ip` attribute.
  TfRef<String> get virtualIp => TfRef.attribute<String>(this, 'virtual_ip');

  /// Reference to `app_service_slot_id` attribute.
  TfRef<String> get appServiceSlotId =>
      TfRef.attribute<String>(this, 'app_service_slot_id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `ssl_state` attribute.
  TfRef<String> get sslState => TfRef.attribute<String>(this, 'ssl_state');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');
}
