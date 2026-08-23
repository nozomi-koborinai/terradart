// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_access_rule`.
const Set<String> _cloudflareAccessRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleFilter {
  const DataAccessRuleFilter({
    this.direction,
    this.match,
    this.mode,
    this.notes,
    this.order,
    this.configuration,
  });

  final TfArg<String>? direction;

  final TfArg<String>? match;

  final TfArg<String>? mode;

  final TfArg<String>? notes;

  final TfArg<String>? order;

  final DataAccessRuleFilterConfiguration? configuration;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (match != null) 'match': match!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (notes != null) 'notes': notes!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.encode(),
  };
}

/// Typed helper for the `filter.configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleFilterConfiguration {
  const DataAccessRuleFilterConfiguration({this.target, this.value});

  final TfArg<String>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_access_rule`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class DataCloudflareAccessRule extends Data {
  static const String tfType = 'cloudflare_access_rule';

  DataCloudflareAccessRule({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? ruleId,
    TfArg<String>? zoneId,
    DataAccessRuleFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (ruleId != null) 'rule_id': ruleId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccessRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_modes` attribute.
  TfRef<List<String>> get allowedModes =>
      TfRef.attribute<List<String>>(this, 'allowed_modes');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');
}
