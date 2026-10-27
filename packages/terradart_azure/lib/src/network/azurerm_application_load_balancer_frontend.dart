// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_load_balancer_frontend`.
const Set<String> _azurermApplicationLoadBalancerFrontendSensitive = <String>{};

/// Factory wrapper for `azurerm_application_load_balancer_frontend`.
final class AzurermApplicationLoadBalancerFrontend extends Resource {
  static const String tfType = 'azurerm_application_load_balancer_frontend';

  AzurermApplicationLoadBalancerFrontend(
    super.localName, {
    required TfArg<String> applicationLoadBalancerId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_load_balancer_id': applicationLoadBalancerId,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationLoadBalancerFrontendSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationLoadBalancerFrontend>`.
  RefTo<AzurermApplicationLoadBalancerFrontend> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fully_qualified_domain_name` attribute.
  TfRef<String> get fullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'fully_qualified_domain_name');

  /// Reference to `application_load_balancer_id` attribute.
  TfRef<String> get applicationLoadBalancerId =>
      TfRef.attribute<String>(this, 'application_load_balancer_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
