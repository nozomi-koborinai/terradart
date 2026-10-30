// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_integrations`.
const Set<String> _cloudflareZeroTrustCasbIntegrationsSensitive = <String>{};

/// Data Zero Trust Casb Integrations enum for `direction`.
extension type const DataZeroTrustCasbIntegrationsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCasbIntegrationsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCasbIntegrationsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCasbIntegrationsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Casb Integrations enum for `order`.
extension type const DataZeroTrustCasbIntegrationsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationsOrder.arg(TfArg<String> arg) : this._(arg);

  static const application = DataZeroTrustCasbIntegrationsOrder._(
    TfArgLiteral('application'),
  );
  static const created = DataZeroTrustCasbIntegrationsOrder._(
    TfArgLiteral('created'),
  );
  static const name = DataZeroTrustCasbIntegrationsOrder._(
    TfArgLiteral('name'),
  );
  static const status = DataZeroTrustCasbIntegrationsOrder._(
    TfArgLiteral('status'),
  );

  static const List<DataZeroTrustCasbIntegrationsOrder> values = [
    application,
    created,
    name,
    status,
  ];
}

/// Data Zero Trust Casb Integrations enum for `status`.
extension type const DataZeroTrustCasbIntegrationsStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationsStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationsStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const healthy = DataZeroTrustCasbIntegrationsStatus._(
    TfArgLiteral('Healthy'),
  );
  static const initializing = DataZeroTrustCasbIntegrationsStatus._(
    TfArgLiteral('Initializing'),
  );
  static const offline = DataZeroTrustCasbIntegrationsStatus._(
    TfArgLiteral('Offline'),
  );
  static const unhealthy = DataZeroTrustCasbIntegrationsStatus._(
    TfArgLiteral('Unhealthy'),
  );

  static const List<DataZeroTrustCasbIntegrationsStatus> values = [
    healthy,
    initializing,
    offline,
    unhealthy,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_casb_integrations`.
final class DataCloudflareZeroTrustCasbIntegrations extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_integrations';

  DataCloudflareZeroTrustCasbIntegrations(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? application,
    DataZeroTrustCasbIntegrationsDirection? direction,
    TfArg<bool>? dlpEnabled,
    TfArg<num>? maxItems,
    DataZeroTrustCasbIntegrationsOrder? order,
    TfArg<num>? page,
    TfArg<num>? pageSize,
    TfArg<String>? search,
    DataZeroTrustCasbIntegrationsStatus? status,
    TfArg<String>? useCases,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'application': ?application,
           'direction': ?direction,
           'dlp_enabled': ?dlpEnabled,
           'max_items': ?maxItems,
           'order': ?order,
           'page': ?page,
           'page_size': ?pageSize,
           'search': ?search,
           'status': ?status,
           'use_cases': ?useCases,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbIntegrationsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `application` attribute.
  TfRef<String> get application => TfRef.attribute<String>(this, 'application');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `dlp_enabled` attribute.
  TfRef<bool> get dlpEnabled => TfRef.attribute<bool>(this, 'dlp_enabled');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `page` attribute.
  TfRef<num> get page => TfRef.attribute<num>(this, 'page');

  /// Reference to `page_size` attribute.
  TfRef<num> get pageSize => TfRef.attribute<num>(this, 'page_size');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `use_cases` attribute.
  TfRef<String> get useCases => TfRef.attribute<String>(this, 'use_cases');
}
