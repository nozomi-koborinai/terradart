// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_casb_integration.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_integration`.
const Set<String> _cloudflareZeroTrustCasbIntegrationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class DataZeroTrustCasbIntegrationFilter {
  const DataZeroTrustCasbIntegrationFilter({
    this.application,
    this.direction,
    this.dlpEnabled,
    this.order,
    this.page,
    this.pageSize,
    this.search,
    this.status,
    this.useCases,
  });

  final TfArg<String>? application;

  final DataZeroTrustCasbIntegrationDirection? direction;

  final TfArg<bool>? dlpEnabled;

  final DataZeroTrustCasbIntegrationOrder? order;

  final TfArg<num>? page;

  final TfArg<num>? pageSize;

  final TfArg<String>? search;

  final DataZeroTrustCasbIntegrationFilterStatus? status;

  final TfArg<String>? useCases;

  @internal
  Map<String, Object?> encode() => {
    'application': ?application?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'dlp_enabled': ?dlpEnabled?.toTfJson(),
    'order': ?order?.toTfJson(),
    'page': ?page?.toTfJson(),
    'page_size': ?pageSize?.toTfJson(),
    'search': ?search?.toTfJson(),
    'status': ?status?.toTfJson(),
    'use_cases': ?useCases?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCasbIntegrationDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCasbIntegrationDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCasbIntegrationDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCasbIntegrationDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCasbIntegrationOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationOrder.arg(TfArg<String> arg) : this._(arg);

  static const application = DataZeroTrustCasbIntegrationOrder._(
    TfArgLiteral('application'),
  );
  static const created = DataZeroTrustCasbIntegrationOrder._(
    TfArgLiteral('created'),
  );
  static const name = DataZeroTrustCasbIntegrationOrder._(TfArgLiteral('name'));
  static const status = DataZeroTrustCasbIntegrationOrder._(
    TfArgLiteral('status'),
  );

  static const List<DataZeroTrustCasbIntegrationOrder> values = [
    application,
    created,
    name,
    status,
  ];
}

/// `status` — derived from the provider schema description.
extension type const DataZeroTrustCasbIntegrationFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCasbIntegrationFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCasbIntegrationFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCasbIntegrationFilterStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const healthy = DataZeroTrustCasbIntegrationFilterStatus._(
    TfArgLiteral('Healthy'),
  );
  static const initializing = DataZeroTrustCasbIntegrationFilterStatus._(
    TfArgLiteral('Initializing'),
  );
  static const offline = DataZeroTrustCasbIntegrationFilterStatus._(
    TfArgLiteral('Offline'),
  );
  static const unhealthy = DataZeroTrustCasbIntegrationFilterStatus._(
    TfArgLiteral('Unhealthy'),
  );

  static const List<DataZeroTrustCasbIntegrationFilterStatus> values = [
    healthy,
    initializing,
    offline,
    unhealthy,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_casb_integration`.
final class DataCloudflareZeroTrustCasbIntegration extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_integration';

  DataCloudflareZeroTrustCasbIntegration(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataZeroTrustCasbIntegrationFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbIntegrationSensitive;

  /// A reference to the `cloudflare_zero_trust_casb_integration` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCasbIntegration>`.
  RefTo<CloudflareZeroTrustCasbIntegration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application` attribute.
  TfRef<Map<String, String>> get application =>
      TfRef.attribute<Map<String, String>>(this, 'application');

  /// Reference to `auth_method` attribute.
  TfRef<Map<String, String>> get authMethod =>
      TfRef.attribute<Map<String, String>>(this, 'auth_method');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `credentials_expiry` attribute.
  TfRef<String> get credentialsExpiry =>
      TfRef.attribute<String>(this, 'credentials_expiry');

  /// Reference to `dlp_profiles` attribute.
  TfRef<List<String>> get dlpProfiles =>
      TfRef.attribute<List<String>>(this, 'dlp_profiles');

  /// Reference to `health_details` attribute.
  TfRef<List<Map<String, String>>> get healthDetails =>
      TfRef.attribute<List<Map<String, String>>>(this, 'health_details');

  /// Reference to `is_paused` attribute.
  TfRef<bool> get isPaused => TfRef.attribute<bool>(this, 'is_paused');

  /// Reference to `last_hydrated` attribute.
  TfRef<String> get lastHydrated =>
      TfRef.attribute<String>(this, 'last_hydrated');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `use_cases` attribute.
  TfRef<List<Map<String, String>>> get useCases =>
      TfRef.attribute<List<Map<String, String>>>(this, 'use_cases');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
