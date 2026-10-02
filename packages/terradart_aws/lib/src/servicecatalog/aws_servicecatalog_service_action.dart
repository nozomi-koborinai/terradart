// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_service_action`.
const Set<String> _awsServicecatalogServiceActionSensitive = <String>{};

/// Servicecatalog Service Action Accept enum for `accept_language`.
extension type const ServicecatalogServiceActionAcceptLanguage._(
  TfArg<String> _
) implements TfArg<String> {
  ServicecatalogServiceActionAcceptLanguage.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogServiceActionAcceptLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogServiceActionAcceptLanguage.arg(TfArg<String> arg)
    : this._(arg);

  static const en = ServicecatalogServiceActionAcceptLanguage._(
    TfArgLiteral('en'),
  );
  static const jp = ServicecatalogServiceActionAcceptLanguage._(
    TfArgLiteral('jp'),
  );
  static const zh = ServicecatalogServiceActionAcceptLanguage._(
    TfArgLiteral('zh'),
  );

  static const List<ServicecatalogServiceActionAcceptLanguage> values = [
    en,
    jp,
    zh,
  ];
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

  final ServicecatalogServiceActionType? type;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'assume_role': ?assumeRole?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'type': ?type?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ServicecatalogServiceActionType._(TfArg<String> _)
    implements TfArg<String> {
  ServicecatalogServiceActionType.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogServiceActionType.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogServiceActionType.arg(TfArg<String> arg) : this._(arg);

  static const ssmAutomation = ServicecatalogServiceActionType._(
    TfArgLiteral('SSM_AUTOMATION'),
  );

  static const List<ServicecatalogServiceActionType> values = [ssmAutomation];
}

/// Factory wrapper for `aws_servicecatalog_service_action`.
final class AwsServicecatalogServiceAction extends Resource {
  static const String tfType = 'aws_servicecatalog_service_action';

  AwsServicecatalogServiceAction(
    super.localName, {
    ServicecatalogServiceActionAcceptLanguage? acceptLanguage,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
