// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights_standard_web_test`.
const Set<String> _azurermApplicationInsightsStandardWebTestSensitive =
    <String>{};

/// Typed helper for the `request` block of
/// `azurerm_application_insights_standard_web_test` (derived from provider schema).
@immutable
final class ApplicationInsightsStandardWebTestRequest {
  const ApplicationInsightsStandardWebTestRequest({
    this.body,
    this.followRedirectsEnabled,
    this.httpVerb,
    this.parseDependentRequestsEnabled,
    required this.url,
    this.header,
  });

  final TfArg<String>? body;

  final TfArg<bool>? followRedirectsEnabled;

  final ApplicationInsightsStandardWebTestHttpVerb? httpVerb;

  final TfArg<bool>? parseDependentRequestsEnabled;

  final TfArg<String> url;

  final List<ApplicationInsightsStandardWebTestHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'body': ?body?.toTfJson(),
    'follow_redirects_enabled': ?followRedirectsEnabled?.toTfJson(),
    'http_verb': ?httpVerb?.toTfJson(),
    'parse_dependent_requests_enabled': ?parseDependentRequestsEnabled
        ?.toTfJson(),
    'url': url.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// `http_verb` — derived from the provider schema description.
extension type const ApplicationInsightsStandardWebTestHttpVerb._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationInsightsStandardWebTestHttpVerb.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationInsightsStandardWebTestHttpVerb.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationInsightsStandardWebTestHttpVerb.arg(TfArg<String> arg)
    : this._(arg);

  static const get = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('GET'),
  );
  static const post = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('POST'),
  );
  static const put = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('PUT'),
  );
  static const patch = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('PATCH'),
  );
  static const delete = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('DELETE'),
  );
  static const head = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('HEAD'),
  );
  static const options = ApplicationInsightsStandardWebTestHttpVerb._(
    TfArgLiteral('OPTIONS'),
  );

  static const List<ApplicationInsightsStandardWebTestHttpVerb> values = [
    get,
    post,
    put,
    patch,
    delete,
    head,
    options,
  ];
}

/// Typed helper for the `request.header` block of
/// `azurerm_application_insights_standard_web_test` (derived from provider schema).
@immutable
final class ApplicationInsightsStandardWebTestHeader {
  const ApplicationInsightsStandardWebTestHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `validation_rules` block of
/// `azurerm_application_insights_standard_web_test` (derived from provider schema).
@immutable
final class ApplicationInsightsStandardWebTestValidationRules {
  const ApplicationInsightsStandardWebTestValidationRules({
    this.expectedStatusCode,
    this.sslCertRemainingLifetime,
    this.sslCheckEnabled,
    this.content,
  });

  final TfArg<num>? expectedStatusCode;

  final TfArg<num>? sslCertRemainingLifetime;

  final TfArg<bool>? sslCheckEnabled;

  final ApplicationInsightsStandardWebTestContent? content;

  @internal
  Map<String, Object?> encode() => {
    'expected_status_code': ?expectedStatusCode?.toTfJson(),
    'ssl_cert_remaining_lifetime': ?sslCertRemainingLifetime?.toTfJson(),
    'ssl_check_enabled': ?sslCheckEnabled?.toTfJson(),
    'content': ?content?.encode(),
  };
}

/// Typed helper for the `validation_rules.content` block of
/// `azurerm_application_insights_standard_web_test` (derived from provider schema).
@immutable
final class ApplicationInsightsStandardWebTestContent {
  const ApplicationInsightsStandardWebTestContent({
    required this.contentMatch,
    this.ignoreCase,
    this.passIfTextFound,
  });

  final TfArg<String> contentMatch;

  final TfArg<bool>? ignoreCase;

  final TfArg<bool>? passIfTextFound;

  @internal
  Map<String, Object?> encode() => {
    'content_match': contentMatch.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'pass_if_text_found': ?passIfTextFound?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_application_insights_standard_web_test`.
final class AzurermApplicationInsightsStandardWebTest extends Resource {
  static const String tfType = 'azurerm_application_insights_standard_web_test';

  AzurermApplicationInsightsStandardWebTest(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<num>? frequency,
    required TfArg<List<String>> geoLocations,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? retryEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    required ApplicationInsightsStandardWebTestRequest request,
    ApplicationInsightsStandardWebTestValidationRules? validationRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'description': ?description,
           'enabled': ?enabled,
           'frequency': ?frequency,
           'geo_locations': geoLocations,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retry_enabled': ?retryEnabled,
           'tags': ?tags,
           'timeout': ?timeout,
           'request': TfArg.literal(request.encode()),
           if (validationRules != null)
             'validation_rules': TfArg.literal(validationRules.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsStandardWebTestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsStandardWebTest>`.
  RefTo<AzurermApplicationInsightsStandardWebTest> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `synthetic_monitor_id` attribute.
  TfRef<String> get syntheticMonitorId =>
      TfRef.attribute<String>(this, 'synthetic_monitor_id');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frequency` attribute.
  TfRef<num> get frequency => TfRef.attribute<num>(this, 'frequency');

  /// Reference to `geo_locations` attribute.
  TfRef<List<String>> get geoLocations =>
      TfRef.attribute<List<String>>(this, 'geo_locations');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retry_enabled` attribute.
  TfRef<bool> get retryEnabled => TfRef.attribute<bool>(this, 'retry_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');
}
