// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_billing_view`.
const Set<String> _awsBillingViewSensitive = <String>{};

/// Typed helper for the `data_filter_expression` block of
/// `aws_billing_view` (derived from provider schema).
@immutable
final class BillingViewDataFilterExpression {
  const BillingViewDataFilterExpression({
    this.dimensions,
    this.tags,
    this.timeRange,
  });

  final List<BillingViewDimensions>? dimensions;

  final List<BillingViewDataFilterExpressionTags>? tags;

  final List<BillingViewTimeRange>? timeRange;

  @internal
  Map<String, Object?> encode() => {
    if (dimensions != null)
      'dimensions': [for (final e in dimensions!) e.encode()],
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
    if (timeRange != null)
      'time_range': [for (final e in timeRange!) e.encode()],
  };
}

/// Typed helper for the `data_filter_expression.dimensions` block of
/// `aws_billing_view` (derived from provider schema).
@immutable
final class BillingViewDimensions {
  const BillingViewDimensions({required this.key, required this.values});

  final BillingViewKey key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const BillingViewKey._(TfArg<String> _)
    implements TfArg<String> {
  BillingViewKey.variable(String name) : this._(TfArg.variable(name));
  BillingViewKey.expression(String template)
    : this._(TfArg.expression(template));
  const BillingViewKey.arg(TfArg<String> arg) : this._(arg);

  static const linkedAccount = BillingViewKey._(TfArgLiteral('LINKED_ACCOUNT'));

  static const List<BillingViewKey> values = [linkedAccount];
}

/// Typed helper for the `data_filter_expression.tags` block of
/// `aws_billing_view` (derived from provider schema).
@immutable
final class BillingViewDataFilterExpressionTags {
  const BillingViewDataFilterExpressionTags({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `data_filter_expression.time_range` block of
/// `aws_billing_view` (derived from provider schema).
@immutable
final class BillingViewTimeRange {
  const BillingViewTimeRange({
    required this.beginDateInclusive,
    required this.endDateInclusive,
  });

  final TfArg<String> beginDateInclusive;

  final TfArg<String> endDateInclusive;

  @internal
  Map<String, Object?> encode() => {
    'begin_date_inclusive': beginDateInclusive.toTfJson(),
    'end_date_inclusive': endDateInclusive.toTfJson(),
  };
}

/// Factory wrapper for `aws_billing_view`.
final class AwsBillingView extends Resource {
  static const String tfType = 'aws_billing_view';

  AwsBillingView(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<List<String>>? sourceViews,
    TfArg<Map<String, String>>? tags,
    List<BillingViewDataFilterExpression>? dataFilterExpression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'source_views': ?sourceViews,
           'tags': ?tags,
           if (dataFilterExpression != null)
             'data_filter_expression': TfArg.literal([
               for (final e in dataFilterExpression) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBillingViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBillingView>`.
  RefTo<AwsBillingView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `billing_view_type` attribute.
  TfRef<String> get billingViewType =>
      TfRef.attribute<String>(this, 'billing_view_type');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `derived_view_count` attribute.
  TfRef<num> get derivedViewCount =>
      TfRef.attribute<num>(this, 'derived_view_count');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `source_account_id` attribute.
  TfRef<String> get sourceAccountId =>
      TfRef.attribute<String>(this, 'source_account_id');

  /// Reference to `source_view_count` attribute.
  TfRef<num> get sourceViewCount =>
      TfRef.attribute<num>(this, 'source_view_count');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `view_definition_last_updated_at` attribute.
  TfRef<String> get viewDefinitionLastUpdatedAt =>
      TfRef.attribute<String>(this, 'view_definition_last_updated_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `source_views` attribute.
  TfRef<List<String>> get sourceViews =>
      TfRef.attribute<List<String>>(this, 'source_views');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
