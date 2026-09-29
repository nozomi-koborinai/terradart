// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_service_action`.
const Set<String> _awsServicecatalogServiceActionSensitive = <String>{};

/// Servicecatalog Service Action Accept enum for `accept_language`.
enum ServicecatalogServiceActionAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogServiceActionAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition` block of
/// `aws_servicecatalog_service_action` (derived from provider schema).
@immutable
final class ServicecatalogServiceActionDefinition {
  const ServicecatalogServiceActionDefinition({
    this.assumeRole,
    required this.name,
    this.parameters,
    this.type,
    required this.version,
  });

  final TfArg<String>? assumeRole;

  final TfArg<String> name;

  final TfArg<String>? parameters;

  final TfArg<ServicecatalogServiceActionDefinitionType>? type;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'assume_role': ?assumeRole?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'type': ?type?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ServicecatalogServiceActionDefinitionType implements TerraformEnum {
  ssmAutomation('SSM_AUTOMATION');

  const ServicecatalogServiceActionDefinitionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_service_action`.
final class AwsServicecatalogServiceAction extends Resource {
  static const String tfType = 'aws_servicecatalog_service_action';

  AwsServicecatalogServiceAction({
    required super.localName,
    TfArg<ServicecatalogServiceActionAcceptLanguage>? acceptLanguage,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required ServicecatalogServiceActionDefinition definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'description': ?description,
           'name': name,
           'region': ?region,
           'definition': TfArg.literal(definition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogServiceActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogServiceAction>`.
  RefTo<AwsServicecatalogServiceAction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
