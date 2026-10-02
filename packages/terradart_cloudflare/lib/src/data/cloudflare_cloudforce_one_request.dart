// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../cloudforce_one/cloudflare_cloudforce_one_request.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request`.
const Set<String> _cloudflareCloudforceOneRequestSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_cloudforce_one_request` (derived from provider schema).
@immutable
final class DataCloudforceOneRequestFilter {
  const DataCloudforceOneRequestFilter({
    this.completedAfter,
    this.completedBefore,
    this.createdAfter,
    this.createdBefore,
    required this.page,
    required this.perPage,
    this.requestType,
    this.sortBy,
    this.sortOrder,
    this.status,
  });

  final TfArg<String>? completedAfter;

  final TfArg<String>? completedBefore;

  final TfArg<String>? createdAfter;

  final TfArg<String>? createdBefore;

  final TfArg<num> page;

  final TfArg<num> perPage;

  final TfArg<String>? requestType;

  final TfArg<String>? sortBy;

  final DataCloudforceOneRequestSortOrder? sortOrder;

  final DataCloudforceOneRequestFilterStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'completed_after': ?completedAfter?.toTfJson(),
    'completed_before': ?completedBefore?.toTfJson(),
    'created_after': ?createdAfter?.toTfJson(),
    'created_before': ?createdBefore?.toTfJson(),
    'page': page.toTfJson(),
    'per_page': perPage.toTfJson(),
    'request_type': ?requestType?.toTfJson(),
    'sort_by': ?sortBy?.toTfJson(),
    'sort_order': ?sortOrder?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `sort_order` — derived from the provider schema description.
extension type const DataCloudforceOneRequestSortOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataCloudforceOneRequestSortOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataCloudforceOneRequestSortOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataCloudforceOneRequestSortOrder.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataCloudforceOneRequestSortOrder._(TfArgLiteral('asc'));
  static const desc = DataCloudforceOneRequestSortOrder._(TfArgLiteral('desc'));

  static const List<DataCloudforceOneRequestSortOrder> values = [asc, desc];
}

/// `status` — derived from the provider schema description.
extension type const DataCloudforceOneRequestFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCloudforceOneRequestFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCloudforceOneRequestFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCloudforceOneRequestFilterStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const open = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('open'),
  );
  static const accepted = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('accepted'),
  );
  static const reported = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('reported'),
  );
  static const approved = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('approved'),
  );
  static const completed = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('completed'),
  );
  static const declined = DataCloudforceOneRequestFilterStatus._(
    TfArgLiteral('declined'),
  );

  static const List<DataCloudforceOneRequestFilterStatus> values = [
    open,
    accepted,
    reported,
    approved,
    completed,
    declined,
  ];
}

/// Factory wrapper for `cloudflare_cloudforce_one_request`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class DataCloudflareCloudforceOneRequest extends Data {
  static const String tfType = 'cloudflare_cloudforce_one_request';

  DataCloudflareCloudforceOneRequest(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? requestId,
    DataCloudforceOneRequestFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'request_id': ?requestId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestSensitive;

  /// A reference to the `cloudflare_cloudforce_one_request` this data source reads, for
  /// arguments typed `RefTo<CloudflareCloudforceOneRequest>`.
  RefTo<CloudflareCloudforceOneRequest> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed` attribute.
  TfRef<String> get completed => TfRef.attribute<String>(this, 'completed');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `message_tokens` attribute.
  TfRef<num> get messageTokens => TfRef.attribute<num>(this, 'message_tokens');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `readable_id` attribute.
  TfRef<String> get readableId => TfRef.attribute<String>(this, 'readable_id');

  /// Reference to `request` attribute.
  TfRef<String> get request => TfRef.attribute<String>(this, 'request');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `summary` attribute.
  TfRef<String> get summary => TfRef.attribute<String>(this, 'summary');

  /// Reference to `tlp` attribute.
  TfRef<String> get tlp => TfRef.attribute<String>(this, 'tlp');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestId => TfRef.attribute<String>(this, 'request_id');
}
