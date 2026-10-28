// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventhub_namespace_schema_group`.
const Set<String> _azurermEventhubNamespaceSchemaGroupSensitive = <String>{};

/// Eventhub Namespace Schema Group Schema enum for `schema_compatibility`.
extension type const EventhubNamespaceSchemaGroupSchemaCompatibility._(
  TfArg<String> _
) implements TfArg<String> {
  EventhubNamespaceSchemaGroupSchemaCompatibility.variable(String name)
    : this._(TfArg.variable(name));
  EventhubNamespaceSchemaGroupSchemaCompatibility.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubNamespaceSchemaGroupSchemaCompatibility.arg(TfArg<String> arg)
    : this._(arg);

  static const backward = EventhubNamespaceSchemaGroupSchemaCompatibility._(
    TfArgLiteral('Backward'),
  );
  static const forward = EventhubNamespaceSchemaGroupSchemaCompatibility._(
    TfArgLiteral('Forward'),
  );
  static const none = EventhubNamespaceSchemaGroupSchemaCompatibility._(
    TfArgLiteral('None'),
  );

  static const List<EventhubNamespaceSchemaGroupSchemaCompatibility> values = [
    backward,
    forward,
    none,
  ];
}

/// Factory wrapper for `azurerm_eventhub_namespace_schema_group`.
final class AzurermEventhubNamespaceSchemaGroup extends Resource {
  static const String tfType = 'azurerm_eventhub_namespace_schema_group';

  AzurermEventhubNamespaceSchemaGroup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    required EventhubNamespaceSchemaGroupSchemaCompatibility
    schemaCompatibility,
    required TfArg<String> schemaType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_id': namespaceId,
           'schema_compatibility': schemaCompatibility,
           'schema_type': schemaType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventhubNamespaceSchemaGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhubNamespaceSchemaGroup>`.
  RefTo<AzurermEventhubNamespaceSchemaGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `schema_compatibility` attribute.
  TfRef<String> get schemaCompatibility =>
      TfRef.attribute<String>(this, 'schema_compatibility');

  /// Reference to `schema_type` attribute.
  TfRef<String> get schemaType => TfRef.attribute<String>(this, 'schema_type');
}
