// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_application_live_view`.
const Set<String> _azurermSpringCloudApplicationLiveViewSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_application_live_view`.
final class AzurermSpringCloudApplicationLiveView extends Resource {
  static const String tfType = 'azurerm_spring_cloud_application_live_view';

  AzurermSpringCloudApplicationLiveView(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudApplicationLiveViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudApplicationLiveView>`.
  RefTo<AzurermSpringCloudApplicationLiveView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
