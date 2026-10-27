// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_domain_topic`.
const Set<String> _azurermEventgridDomainTopicSensitive = <String>{};

/// Factory wrapper for `azurerm_eventgrid_domain_topic`.
final class AzurermEventgridDomainTopic extends Resource {
  static const String tfType = 'azurerm_eventgrid_domain_topic';

  AzurermEventgridDomainTopic(
    super.localName, {
    required TfArg<String> domainName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridDomainTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridDomainTopic>`.
  RefTo<AzurermEventgridDomainTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
