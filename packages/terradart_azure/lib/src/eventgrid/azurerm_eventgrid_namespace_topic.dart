// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventgrid_namespace_topic`.
const Set<String> _azurermEventgridNamespaceTopicSensitive = <String>{};

/// Factory wrapper for `azurerm_eventgrid_namespace_topic`.
final class AzurermEventgridNamespaceTopic extends Resource {
  static const String tfType = 'azurerm_eventgrid_namespace_topic';

  AzurermEventgridNamespaceTopic(
    super.localName, {
    TfArg<num>? eventRetentionInDays,
    required TfArg<String> eventgridNamespaceId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'event_retention_in_days': ?eventRetentionInDays,
           'eventgrid_namespace_id': eventgridNamespaceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridNamespaceTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridNamespaceTopic>`.
  RefTo<AzurermEventgridNamespaceTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_retention_in_days` attribute.
  TfRef<num> get eventRetentionInDays =>
      TfRef.attribute<num>(this, 'event_retention_in_days');

  /// Reference to `eventgrid_namespace_id` attribute.
  TfRef<String> get eventgridNamespaceId =>
      TfRef.attribute<String>(this, 'eventgrid_namespace_id');
}
