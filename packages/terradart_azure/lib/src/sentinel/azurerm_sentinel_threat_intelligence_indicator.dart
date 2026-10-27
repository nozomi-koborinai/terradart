// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_threat_intelligence_indicator`.
const Set<String> _azurermSentinelThreatIntelligenceIndicatorSensitive =
    <String>{};

/// Sentinel Threat Intelligence Indicator Pattern enum for `pattern_type`.
extension type const SentinelThreatIntelligenceIndicatorPatternType._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelThreatIntelligenceIndicatorPatternType.variable(String name)
    : this._(TfArg.variable(name));
  SentinelThreatIntelligenceIndicatorPatternType.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelThreatIntelligenceIndicatorPatternType.arg(TfArg<String> arg)
    : this._(arg);

  static const domainName = SentinelThreatIntelligenceIndicatorPatternType._(
    TfArgLiteral('domain-name'),
  );
  static const file = SentinelThreatIntelligenceIndicatorPatternType._(
    TfArgLiteral('file'),
  );
  static const ipv4Addr = SentinelThreatIntelligenceIndicatorPatternType._(
    TfArgLiteral('ipv4-addr'),
  );
  static const ipv6Addr = SentinelThreatIntelligenceIndicatorPatternType._(
    TfArgLiteral('ipv6-addr'),
  );
  static const url = SentinelThreatIntelligenceIndicatorPatternType._(
    TfArgLiteral('url'),
  );

  static const List<SentinelThreatIntelligenceIndicatorPatternType> values = [
    domainName,
    file,
    ipv4Addr,
    ipv6Addr,
    url,
  ];
}

/// Typed helper for the `external_reference` block of
/// `azurerm_sentinel_threat_intelligence_indicator` (derived from provider schema).
@immutable
final class SentinelThreatIntelligenceIndicatorExternalReference {
  const SentinelThreatIntelligenceIndicatorExternalReference({
    this.description,
    this.hashes,
    this.sourceName,
    this.url,
  });

  final TfArg<String>? description;

  final TfArg<Map<String, String>>? hashes;

  final TfArg<String>? sourceName;

  final TfArg<String>? url;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'hashes': ?hashes?.toTfJson(),
    'source_name': ?sourceName?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// Typed helper for the `granular_marking` block of
/// `azurerm_sentinel_threat_intelligence_indicator` (derived from provider schema).
@immutable
final class SentinelThreatIntelligenceIndicatorGranularMarking {
  const SentinelThreatIntelligenceIndicatorGranularMarking({
    this.language,
    this.markingRef,
    this.selectors,
  });

  final TfArg<String>? language;

  final TfArg<String>? markingRef;

  final TfArg<List<String>>? selectors;

  @internal
  Map<String, Object?> encode() => {
    'language': ?language?.toTfJson(),
    'marking_ref': ?markingRef?.toTfJson(),
    'selectors': ?selectors?.toTfJson(),
  };
}

/// Typed helper for the `kill_chain_phase` block of
/// `azurerm_sentinel_threat_intelligence_indicator` (derived from provider schema).
@immutable
final class SentinelThreatIntelligenceIndicatorKillChainPhase {
  const SentinelThreatIntelligenceIndicatorKillChainPhase({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `azurerm_sentinel_threat_intelligence_indicator`.
final class AzurermSentinelThreatIntelligenceIndicator extends Resource {
  static const String tfType = 'azurerm_sentinel_threat_intelligence_indicator';

  AzurermSentinelThreatIntelligenceIndicator(
    super.localName, {
    TfArg<num>? confidence,
    TfArg<String>? createdBy,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? extension,
    TfArg<String>? language,
    TfArg<List<String>>? objectMarkingRefs,
    required TfArg<String> pattern,
    required SentinelThreatIntelligenceIndicatorPatternType patternType,
    TfArg<String>? patternVersion,
    TfArg<bool>? revoked,
    required TfArg<String> source,
    TfArg<List<String>>? tags,
    TfArg<List<String>>? threatTypes,
    required TfArg<String> validateFromUtc,
    TfArg<String>? validateUntilUtc,
    required TfArg<String> workspaceId,
    List<SentinelThreatIntelligenceIndicatorExternalReference>?
    externalReference,
    List<SentinelThreatIntelligenceIndicatorGranularMarking>? granularMarking,
    List<SentinelThreatIntelligenceIndicatorKillChainPhase>? killChainPhase,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'confidence': ?confidence,
           'created_by': ?createdBy,
           'description': ?description,
           'display_name': displayName,
           'extension': ?extension,
           'language': ?language,
           'object_marking_refs': ?objectMarkingRefs,
           'pattern': pattern,
           'pattern_type': patternType,
           'pattern_version': ?patternVersion,
           'revoked': ?revoked,
           'source': source,
           'tags': ?tags,
           'threat_types': ?threatTypes,
           'validate_from_utc': validateFromUtc,
           'validate_until_utc': ?validateUntilUtc,
           'workspace_id': workspaceId,
           if (externalReference != null)
             'external_reference': TfArg.literal([
               for (final e in externalReference) e.encode(),
             ]),
           if (granularMarking != null)
             'granular_marking': TfArg.literal([
               for (final e in granularMarking) e.encode(),
             ]),
           if (killChainPhase != null)
             'kill_chain_phase': TfArg.literal([
               for (final e in killChainPhase) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelThreatIntelligenceIndicatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelThreatIntelligenceIndicator>`.
  RefTo<AzurermSentinelThreatIntelligenceIndicator> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `defanged` attribute.
  TfRef<bool> get defanged => TfRef.attribute<bool>(this, 'defanged');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

  /// Reference to `external_last_updated_time_utc` attribute.
  TfRef<String> get externalLastUpdatedTimeUtc =>
      TfRef.attribute<String>(this, 'external_last_updated_time_utc');

  /// Reference to `guid` attribute.
  TfRef<String> get guid => TfRef.attribute<String>(this, 'guid');

  /// Reference to `indicator_type` attribute.
  TfRef<List<String>> get indicatorType =>
      TfRef.attribute<List<String>>(this, 'indicator_type');

  /// Reference to `last_updated_time_utc` attribute.
  TfRef<String> get lastUpdatedTimeUtc =>
      TfRef.attribute<String>(this, 'last_updated_time_utc');

  /// Reference to `parsed_pattern` attribute.
  TfRef<List<Map<String, Object?>>> get parsedPattern =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parsed_pattern');

  /// Reference to `confidence` attribute.
  TfRef<num> get confidence => TfRef.attribute<num>(this, 'confidence');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `extension` attribute.
  TfRef<String> get extension => TfRef.attribute<String>(this, 'extension');

  /// Reference to `language` attribute.
  TfRef<String> get language => TfRef.attribute<String>(this, 'language');

  /// Reference to `object_marking_refs` attribute.
  TfRef<List<String>> get objectMarkingRefs =>
      TfRef.attribute<List<String>>(this, 'object_marking_refs');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `pattern_type` attribute.
  TfRef<String> get patternType =>
      TfRef.attribute<String>(this, 'pattern_type');

  /// Reference to `pattern_version` attribute.
  TfRef<String> get patternVersion =>
      TfRef.attribute<String>(this, 'pattern_version');

  /// Reference to `revoked` attribute.
  TfRef<bool> get revoked => TfRef.attribute<bool>(this, 'revoked');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `threat_types` attribute.
  TfRef<List<String>> get threatTypes =>
      TfRef.attribute<List<String>>(this, 'threat_types');

  /// Reference to `validate_from_utc` attribute.
  TfRef<String> get validateFromUtc =>
      TfRef.attribute<String>(this, 'validate_from_utc');

  /// Reference to `validate_until_utc` attribute.
  TfRef<String> get validateUntilUtc =>
      TfRef.attribute<String>(this, 'validate_until_utc');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
