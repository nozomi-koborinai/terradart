// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api_operation`.
const Set<String> _azurermApiManagementApiOperationSensitive = <String>{};

/// Typed helper for the `request` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
@immutable
final class ApiManagementApiOperationRequest {
  const ApiManagementApiOperationRequest({
    this.description,
    this.header,
    this.queryParameter,
    this.representation,
  });

  final TfArg<String>? description;

  final List<ApiManagementApiOperationHeader>? header;

  final List<ApiManagementApiOperationQueryParameter>? queryParameter;

  final List<ApiManagementApiOperationRepresentation>? representation;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (queryParameter != null)
      'query_parameter': [for (final e in queryParameter!) e.encode()],
    if (representation != null)
      'representation': [for (final e in representation!) e.encode()],
  };
}

/// Typed helper for the `request.header` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiOperationHeader {
  const ApiManagementApiOperationHeader({
    this.defaultValue,
    this.description,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
    this.example,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String>? schemaId;

  final TfArg<String> type;

  final TfArg<String>? typeName;

  final TfArg<List<String>>? values;

  final List<ApiManagementApiOperationExample>? example;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type': type.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'values': ?values?.toTfJson(),
    if (example != null) 'example': [for (final e in example!) e.encode()],
  };
}

/// Typed helper for the `template_parameter.example` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiOperationExample {
  const ApiManagementApiOperationExample({
    this.description,
    this.externalValue,
    required this.name,
    this.summary,
    this.value,
  });

  final TfArg<String>? description;

  final TfArg<String>? externalValue;

  final TfArg<String> name;

  final TfArg<String>? summary;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'external_value': ?externalValue?.toTfJson(),
    'name': name.toTfJson(),
    'summary': ?summary?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `request.query_parameter` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
@immutable
final class ApiManagementApiOperationQueryParameter {
  const ApiManagementApiOperationQueryParameter({
    this.defaultValue,
    this.description,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
    this.example,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String>? schemaId;

  final TfArg<String> type;

  final TfArg<String>? typeName;

  final TfArg<List<String>>? values;

  final List<ApiManagementApiOperationExample>? example;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type': type.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'values': ?values?.toTfJson(),
    if (example != null) 'example': [for (final e in example!) e.encode()],
  };
}

/// Typed helper for the `request.representation` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiOperationRepresentation {
  const ApiManagementApiOperationRepresentation({
    required this.contentType,
    this.schemaId,
    this.typeName,
    this.example,
    this.formParameter,
  });

  final TfArg<String> contentType;

  final TfArg<String>? schemaId;

  final TfArg<String>? typeName;

  final List<ApiManagementApiOperationExample>? example;

  final List<ApiManagementApiOperationFormParameter>? formParameter;

  @internal
  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    if (example != null) 'example': [for (final e in example!) e.encode()],
    if (formParameter != null)
      'form_parameter': [for (final e in formParameter!) e.encode()],
  };
}

/// Typed helper for the `request.representation.form_parameter` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiOperationFormParameter {
  const ApiManagementApiOperationFormParameter({
    this.defaultValue,
    this.description,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
    this.example,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String>? schemaId;

  final TfArg<String> type;

  final TfArg<String>? typeName;

  final TfArg<List<String>>? values;

  final List<ApiManagementApiOperationExample>? example;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type': type.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'values': ?values?.toTfJson(),
    if (example != null) 'example': [for (final e in example!) e.encode()],
  };
}

/// Typed helper for the `response` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
@immutable
final class ApiManagementApiOperationResponse {
  const ApiManagementApiOperationResponse({
    this.description,
    required this.statusCode,
    this.header,
    this.representation,
  });

  final TfArg<String>? description;

  final TfArg<num> statusCode;

  final List<ApiManagementApiOperationHeader>? header;

  final List<ApiManagementApiOperationRepresentation>? representation;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'status_code': statusCode.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (representation != null)
      'representation': [for (final e in representation!) e.encode()],
  };
}

/// Typed helper for the `template_parameter` block of
/// `azurerm_api_management_api_operation` (derived from provider schema).
@immutable
final class ApiManagementApiOperationTemplateParameter {
  const ApiManagementApiOperationTemplateParameter({
    this.defaultValue,
    this.description,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
    this.example,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String>? schemaId;

  final TfArg<String> type;

  final TfArg<String>? typeName;

  final TfArg<List<String>>? values;

  final List<ApiManagementApiOperationExample>? example;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type': type.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'values': ?values?.toTfJson(),
    if (example != null) 'example': [for (final e in example!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_api_management_api_operation`.
final class AzurermApiManagementApiOperation extends Resource {
  static const String tfType = 'azurerm_api_management_api_operation';

  AzurermApiManagementApiOperation(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> apiName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> method,
    required TfArg<String> operationId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> urlTemplate,
    ApiManagementApiOperationRequest? request,
    List<ApiManagementApiOperationResponse>? response,
    List<ApiManagementApiOperationTemplateParameter>? templateParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'api_name': apiName,
           'description': ?description,
           'display_name': displayName,
           'method': method,
           'operation_id': operationId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'url_template': urlTemplate,
           if (request != null) 'request': TfArg.literal(request.encode()),
           if (response != null)
             'response': TfArg.literal([for (final e in response) e.encode()]),
           if (templateParameter != null)
             'template_parameter': TfArg.literal([
               for (final e in templateParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementApiOperationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiOperation>`.
  RefTo<AzurermApiManagementApiOperation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `api_name` attribute.
  TfRef<String> get apiName => TfRef.attribute<String>(this, 'api_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `url_template` attribute.
  TfRef<String> get urlTemplate =>
      TfRef.attribute<String>(this, 'url_template');
}
