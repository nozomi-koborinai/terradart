// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack_prefix_list`.
const Set<String> _azurermPaloAltoLocalRulestackPrefixListSensitive =
    <String>{};

/// Factory wrapper for `azurerm_palo_alto_local_rulestack_prefix_list`.
final class AzurermPaloAltoLocalRulestackPrefixList extends Resource {
  static const String tfType = 'azurerm_palo_alto_local_rulestack_prefix_list';

  AzurermPaloAltoLocalRulestackPrefixList(
    super.localName, {
    TfArg<String>? auditComment,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<List<String>> prefixList,
    required TfArg<String> rulestackId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audit_comment': ?auditComment,
           'description': ?description,
           'name': name,
           'prefix_list': prefixList,
           'rulestack_id': rulestackId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoLocalRulestackPrefixListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoLocalRulestackPrefixList>`.
  RefTo<AzurermPaloAltoLocalRulestackPrefixList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `audit_comment` attribute.
  TfRef<String> get auditComment =>
      TfRef.attribute<String>(this, 'audit_comment');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `prefix_list` attribute.
  TfRef<List<String>> get prefixList =>
      TfRef.attribute<List<String>>(this, 'prefix_list');

  /// Reference to `rulestack_id` attribute.
  TfRef<String> get rulestackId =>
      TfRef.attribute<String>(this, 'rulestack_id');
}
