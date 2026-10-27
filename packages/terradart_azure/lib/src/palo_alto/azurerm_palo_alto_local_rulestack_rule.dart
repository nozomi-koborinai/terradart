// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack_rule`.
const Set<String> _azurermPaloAltoLocalRulestackRuleSensitive = <String>{};

/// Palo Alto Local Rulestack Rule enum for `action`.
extension type const PaloAltoLocalRulestackRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  PaloAltoLocalRulestackRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = PaloAltoLocalRulestackRuleAction._(
    TfArgLiteral('Allow'),
  );
  static const denyresetboth = PaloAltoLocalRulestackRuleAction._(
    TfArgLiteral('DenyResetBoth'),
  );
  static const denyresetserver = PaloAltoLocalRulestackRuleAction._(
    TfArgLiteral('DenyResetServer'),
  );
  static const denysilent = PaloAltoLocalRulestackRuleAction._(
    TfArgLiteral('DenySilent'),
  );

  static const List<PaloAltoLocalRulestackRuleAction> values = [
    allow,
    denyresetboth,
    denyresetserver,
    denysilent,
  ];
}

/// Palo Alto Local Rulestack Rule Decryption Rule enum for `decryption_rule_type`.
extension type const PaloAltoLocalRulestackRuleDecryptionRuleType._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoLocalRulestackRuleDecryptionRuleType.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackRuleDecryptionRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackRuleDecryptionRuleType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = PaloAltoLocalRulestackRuleDecryptionRuleType._(
    TfArgLiteral('None'),
  );
  static const sslinboundinspection =
      PaloAltoLocalRulestackRuleDecryptionRuleType._(
        TfArgLiteral('SSLInboundInspection'),
      );
  static const ssloutboundinspection =
      PaloAltoLocalRulestackRuleDecryptionRuleType._(
        TfArgLiteral('SSLOutboundInspection'),
      );

  static const List<PaloAltoLocalRulestackRuleDecryptionRuleType> values = [
    none,
    sslinboundinspection,
    ssloutboundinspection,
  ];
}

/// Exactly one of `protocol`, `protocol_ports` on `azurerm_palo_alto_local_rulestack_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.protocol(...)`.
sealed class PaloAltoLocalRulestackRuleProtocol {
  const PaloAltoLocalRulestackRuleProtocol();

  /// Sets `protocol`.
  const factory PaloAltoLocalRulestackRuleProtocol.protocol(
    TfArg<String> protocol,
  ) = PaloAltoLocalRulestackRuleProtocolChoice;

  /// Sets `protocol_ports`.
  const factory PaloAltoLocalRulestackRuleProtocol.protocolPorts(
    TfArg<List<String>> protocolPorts,
  ) = PaloAltoLocalRulestackRuleProtocolPorts;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PaloAltoLocalRulestackRuleProtocol.protocol] choice: sets `protocol`.
final class PaloAltoLocalRulestackRuleProtocolChoice
    extends PaloAltoLocalRulestackRuleProtocol {
  const PaloAltoLocalRulestackRuleProtocolChoice(this.protocol);

  final TfArg<String> protocol;

  @internal
  @override
  String get blockKey => 'protocol';

  @internal
  @override
  Map<String, Object?> encode() => {'protocol': protocol.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'protocol': protocol};
}

/// The [PaloAltoLocalRulestackRuleProtocol.protocolPorts] choice: sets `protocol_ports`.
final class PaloAltoLocalRulestackRuleProtocolPorts
    extends PaloAltoLocalRulestackRuleProtocol {
  const PaloAltoLocalRulestackRuleProtocolPorts(this.protocolPorts);

  final TfArg<List<String>> protocolPorts;

  @internal
  @override
  String get blockKey => 'protocol_ports';

  @internal
  @override
  Map<String, Object?> encode() => {'protocol_ports': protocolPorts.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'protocol_ports': protocolPorts};
}

/// Typed helper for the `category` block of
/// `azurerm_palo_alto_local_rulestack_rule` (derived from provider schema).
@immutable
final class PaloAltoLocalRulestackRuleCategory {
  const PaloAltoLocalRulestackRuleCategory({
    required this.customUrls,
    this.feeds,
  });

  final TfArg<List<String>> customUrls;

  final TfArg<List<String>>? feeds;

  @internal
  Map<String, Object?> encode() => {
    'custom_urls': customUrls.toTfJson(),
    'feeds': ?feeds?.toTfJson(),
  };
}

/// Typed helper for the `destination` block of
/// `azurerm_palo_alto_local_rulestack_rule` (derived from provider schema).
@immutable
final class PaloAltoLocalRulestackRuleDestination {
  const PaloAltoLocalRulestackRuleDestination({
    this.cidrs,
    this.countries,
    this.feeds,
    this.localRulestackFqdnListIds,
    this.localRulestackPrefixListIds,
  });

  final TfArg<List<String>>? cidrs;

  final TfArg<List<String>>? countries;

  final TfArg<List<String>>? feeds;

  final TfArg<List<String>>? localRulestackFqdnListIds;

  final TfArg<List<String>>? localRulestackPrefixListIds;

  @internal
  Map<String, Object?> encode() => {
    'cidrs': ?cidrs?.toTfJson(),
    'countries': ?countries?.toTfJson(),
    'feeds': ?feeds?.toTfJson(),
    'local_rulestack_fqdn_list_ids': ?localRulestackFqdnListIds?.toTfJson(),
    'local_rulestack_prefix_list_ids': ?localRulestackPrefixListIds?.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `azurerm_palo_alto_local_rulestack_rule` (derived from provider schema).
@immutable
final class PaloAltoLocalRulestackRuleSource {
  const PaloAltoLocalRulestackRuleSource({
    this.cidrs,
    this.countries,
    this.feeds,
    this.localRulestackPrefixListIds,
  });

  final TfArg<List<String>>? cidrs;

  final TfArg<List<String>>? countries;

  final TfArg<List<String>>? feeds;

  final TfArg<List<String>>? localRulestackPrefixListIds;

  @internal
  Map<String, Object?> encode() => {
    'cidrs': ?cidrs?.toTfJson(),
    'countries': ?countries?.toTfJson(),
    'feeds': ?feeds?.toTfJson(),
    'local_rulestack_prefix_list_ids': ?localRulestackPrefixListIds?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_palo_alto_local_rulestack_rule`.
final class AzurermPaloAltoLocalRulestackRule extends Resource {
  static const String tfType = 'azurerm_palo_alto_local_rulestack_rule';

  AzurermPaloAltoLocalRulestackRule(
    super.localName, {
    required PaloAltoLocalRulestackRuleAction action,
    required TfArg<List<String>> applications,
    TfArg<String>? auditComment,
    PaloAltoLocalRulestackRuleDecryptionRuleType? decryptionRuleType,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? inspectionCertificateId,
    TfArg<bool>? loggingEnabled,
    required TfArg<String> name,
    TfArg<bool>? negateDestination,
    TfArg<bool>? negateSource,
    required TfArg<num> priority,
    required PaloAltoLocalRulestackRuleProtocol protocol,
    required TfArg<String> rulestackId,
    TfArg<Map<String, String>>? tags,
    PaloAltoLocalRulestackRuleCategory? category,
    required PaloAltoLocalRulestackRuleDestination destination,
    required PaloAltoLocalRulestackRuleSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'applications': applications,
           'audit_comment': ?auditComment,
           'decryption_rule_type': ?decryptionRuleType,
           'description': ?description,
           'enabled': ?enabled,
           'inspection_certificate_id': ?inspectionCertificateId,
           'logging_enabled': ?loggingEnabled,
           'name': name,
           'negate_destination': ?negateDestination,
           'negate_source': ?negateSource,
           'priority': priority,
           ...protocol.argMap,
           'rulestack_id': rulestackId,
           'tags': ?tags,
           if (category != null) 'category': TfArg.literal(category.encode()),
           'destination': TfArg.literal(destination.encode()),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoLocalRulestackRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoLocalRulestackRule>`.
  RefTo<AzurermPaloAltoLocalRulestackRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `applications` attribute.
  TfRef<List<String>> get applications =>
      TfRef.attribute<List<String>>(this, 'applications');

  /// Reference to `audit_comment` attribute.
  TfRef<String> get auditComment =>
      TfRef.attribute<String>(this, 'audit_comment');

  /// Reference to `decryption_rule_type` attribute.
  TfRef<String> get decryptionRuleType =>
      TfRef.attribute<String>(this, 'decryption_rule_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `inspection_certificate_id` attribute.
  TfRef<String> get inspectionCertificateId =>
      TfRef.attribute<String>(this, 'inspection_certificate_id');

  /// Reference to `logging_enabled` attribute.
  TfRef<bool> get loggingEnabled =>
      TfRef.attribute<bool>(this, 'logging_enabled');

  /// Reference to `negate_destination` attribute.
  TfRef<bool> get negateDestination =>
      TfRef.attribute<bool>(this, 'negate_destination');

  /// Reference to `negate_source` attribute.
  TfRef<bool> get negateSource => TfRef.attribute<bool>(this, 'negate_source');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `protocol_ports` attribute.
  TfRef<List<String>> get protocolPorts =>
      TfRef.attribute<List<String>>(this, 'protocol_ports');

  /// Reference to `rulestack_id` attribute.
  TfRef<String> get rulestackId =>
      TfRef.attribute<String>(this, 'rulestack_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
