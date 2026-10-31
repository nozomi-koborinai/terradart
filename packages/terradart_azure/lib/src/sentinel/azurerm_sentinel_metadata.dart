// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_metadata`.
const Set<String> _azurermSentinelMetadataSensitive = <String>{};

/// Sentinel Metadata enum for `kind`.
extension type const SentinelMetadataKind._(TfArg<String> _)
    implements TfArg<String> {
  SentinelMetadataKind.variable(String name) : this._(TfArg.variable(name));
  SentinelMetadataKind.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelMetadataKind.arg(TfArg<String> arg) : this._(arg);

  static const analyticsrule = SentinelMetadataKind._(
    TfArgLiteral('AnalyticsRule'),
  );
  static const analyticsruletemplate = SentinelMetadataKind._(
    TfArgLiteral('AnalyticsRuleTemplate'),
  );
  static const automationrule = SentinelMetadataKind._(
    TfArgLiteral('AutomationRule'),
  );
  static const azurefunction = SentinelMetadataKind._(
    TfArgLiteral('AzureFunction'),
  );
  static const dataconnector = SentinelMetadataKind._(
    TfArgLiteral('DataConnector'),
  );
  static const datatype = SentinelMetadataKind._(TfArgLiteral('DataType'));
  static const huntingquery = SentinelMetadataKind._(
    TfArgLiteral('HuntingQuery'),
  );
  static const investigationquery = SentinelMetadataKind._(
    TfArgLiteral('InvestigationQuery'),
  );
  static const logicappscustomconnector = SentinelMetadataKind._(
    TfArgLiteral('LogicAppsCustomConnector'),
  );
  static const parser = SentinelMetadataKind._(TfArgLiteral('Parser'));
  static const playbook = SentinelMetadataKind._(TfArgLiteral('Playbook'));
  static const playbooktemplate = SentinelMetadataKind._(
    TfArgLiteral('PlaybookTemplate'),
  );
  static const solution = SentinelMetadataKind._(TfArgLiteral('Solution'));
  static const watchlist = SentinelMetadataKind._(TfArgLiteral('Watchlist'));
  static const watchlisttemplate = SentinelMetadataKind._(
    TfArgLiteral('WatchlistTemplate'),
  );
  static const workbook = SentinelMetadataKind._(TfArgLiteral('Workbook'));
  static const workbooktemplate = SentinelMetadataKind._(
    TfArgLiteral('WorkbookTemplate'),
  );

  static const List<SentinelMetadataKind> values = [
    analyticsrule,
    analyticsruletemplate,
    automationrule,
    azurefunction,
    dataconnector,
    datatype,
    huntingquery,
    investigationquery,
    logicappscustomconnector,
    parser,
    playbook,
    playbooktemplate,
    solution,
    watchlist,
    watchlisttemplate,
    workbook,
    workbooktemplate,
  ];
}

/// Sentinel Metadata Threat Analysis enum for `threat_analysis_tactics`.
extension type const SentinelMetadataThreatAnalysisTactics._(TfArg<String> _)
    implements TfArg<String> {
  SentinelMetadataThreatAnalysisTactics.variable(String name)
    : this._(TfArg.variable(name));
  SentinelMetadataThreatAnalysisTactics.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelMetadataThreatAnalysisTactics.arg(TfArg<String> arg)
    : this._(arg);

  static const reconnaissance = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Reconnaissance'),
  );
  static const resourcedevelopment = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('ResourceDevelopment'),
  );
  static const initialaccess = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('InitialAccess'),
  );
  static const execution = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Execution'),
  );
  static const persistence = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Persistence'),
  );
  static const privilegeescalation = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('PrivilegeEscalation'),
  );
  static const defenseevasion = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('DefenseEvasion'),
  );
  static const credentialaccess = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('CredentialAccess'),
  );
  static const discovery = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Discovery'),
  );
  static const lateralmovement = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('LateralMovement'),
  );
  static const collection = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Collection'),
  );
  static const commandandcontrol = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('CommandAndControl'),
  );
  static const exfiltration = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Exfiltration'),
  );
  static const impact = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('Impact'),
  );
  static const impairprocesscontrol = SentinelMetadataThreatAnalysisTactics._(
    TfArgLiteral('ImpairProcessControl'),
  );
  static const inhibitresponsefunction =
      SentinelMetadataThreatAnalysisTactics._(
        TfArgLiteral('InhibitResponseFunction'),
      );

  static const List<SentinelMetadataThreatAnalysisTactics> values = [
    reconnaissance,
    resourcedevelopment,
    initialaccess,
    execution,
    persistence,
    privilegeescalation,
    defenseevasion,
    credentialaccess,
    discovery,
    lateralmovement,
    collection,
    commandandcontrol,
    exfiltration,
    impact,
    impairprocesscontrol,
    inhibitresponsefunction,
  ];
}

/// Typed helper for the `author` block of
/// `azurerm_sentinel_metadata` (derived from provider schema).
@immutable
final class SentinelMetadataAuthor {
  const SentinelMetadataAuthor({this.email, this.link, this.name});

  final TfArg<String>? email;

  final TfArg<String>? link;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'link': ?link?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `category` block of
/// `azurerm_sentinel_metadata` (derived from provider schema).
@immutable
final class SentinelMetadataCategory {
  const SentinelMetadataCategory({this.domains, this.verticals});

  final TfArg<List<String>>? domains;

  final TfArg<List<String>>? verticals;

  @internal
  Map<String, Object?> encode() => {
    'domains': ?domains?.toTfJson(),
    'verticals': ?verticals?.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `azurerm_sentinel_metadata` (derived from provider schema).
@immutable
final class SentinelMetadataSource {
  const SentinelMetadataSource({this.id, required this.kind, this.name});

  final TfArg<String>? id;

  final SentinelMetadataSourceKind kind;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'kind': kind.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// `kind` — derived from the provider schema description.
extension type const SentinelMetadataSourceKind._(TfArg<String> _)
    implements TfArg<String> {
  SentinelMetadataSourceKind.variable(String name)
    : this._(TfArg.variable(name));
  SentinelMetadataSourceKind.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelMetadataSourceKind.arg(TfArg<String> arg) : this._(arg);

  static const community = SentinelMetadataSourceKind._(
    TfArgLiteral('Community'),
  );
  static const localworkspace = SentinelMetadataSourceKind._(
    TfArgLiteral('LocalWorkspace'),
  );
  static const solution = SentinelMetadataSourceKind._(
    TfArgLiteral('Solution'),
  );
  static const sourcerepository = SentinelMetadataSourceKind._(
    TfArgLiteral('SourceRepository'),
  );

  static const List<SentinelMetadataSourceKind> values = [
    community,
    localworkspace,
    solution,
    sourcerepository,
  ];
}

/// Typed helper for the `support` block of
/// `azurerm_sentinel_metadata` (derived from provider schema).
@immutable
final class SentinelMetadataSupport {
  const SentinelMetadataSupport({
    this.email,
    this.link,
    this.name,
    required this.tier,
  });

  final TfArg<String>? email;

  final TfArg<String>? link;

  final TfArg<String>? name;

  final SentinelMetadataTier tier;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'link': ?link?.toTfJson(),
    'name': ?name?.toTfJson(),
    'tier': tier.toTfJson(),
  };
}

/// `tier` — derived from the provider schema description.
extension type const SentinelMetadataTier._(TfArg<String> _)
    implements TfArg<String> {
  SentinelMetadataTier.variable(String name) : this._(TfArg.variable(name));
  SentinelMetadataTier.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelMetadataTier.arg(TfArg<String> arg) : this._(arg);

  static const community = SentinelMetadataTier._(TfArgLiteral('Community'));
  static const microsoft = SentinelMetadataTier._(TfArgLiteral('Microsoft'));
  static const partner = SentinelMetadataTier._(TfArgLiteral('Partner'));

  static const List<SentinelMetadataTier> values = [
    community,
    microsoft,
    partner,
  ];
}

/// Factory wrapper for `azurerm_sentinel_metadata`.
final class AzurermSentinelMetadata extends Resource {
  static const String tfType = 'azurerm_sentinel_metadata';

  AzurermSentinelMetadata(
    super.localName, {
    required TfArg<String> contentId,
    TfArg<String>? contentSchemaVersion,
    TfArg<String>? customVersion,
    TfArg<String>? dependency,
    TfArg<String>? firstPublishDate,
    TfArg<String>? iconId,
    required SentinelMetadataKind kind,
    TfArg<String>? lastPublishDate,
    required TfArg<String> name,
    required TfArg<String> parentId,
    TfArg<List<String>>? previewImages,
    TfArg<List<String>>? previewImagesDark,
    TfArg<List<String>>? providers,
    EnumList<SentinelMetadataThreatAnalysisTactics>? threatAnalysisTactics,
    TfArg<List<String>>? threatAnalysisTechniques,
    TfArg<String>? version,
    required TfArg<String> workspaceId,
    SentinelMetadataAuthor? author,
    SentinelMetadataCategory? category,
    SentinelMetadataSource? source,
    SentinelMetadataSupport? support,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_id': contentId,
           'content_schema_version': ?contentSchemaVersion,
           'custom_version': ?customVersion,
           'dependency': ?dependency,
           'first_publish_date': ?firstPublishDate,
           'icon_id': ?iconId,
           'kind': kind,
           'last_publish_date': ?lastPublishDate,
           'name': name,
           'parent_id': parentId,
           'preview_images': ?previewImages,
           'preview_images_dark': ?previewImagesDark,
           'providers': ?providers,
           'threat_analysis_tactics': ?threatAnalysisTactics,
           'threat_analysis_techniques': ?threatAnalysisTechniques,
           'version': ?version,
           'workspace_id': workspaceId,
           if (author != null) 'author': TfArg.literal(author.encode()),
           if (category != null) 'category': TfArg.literal(category.encode()),
           if (source != null) 'source': TfArg.literal(source.encode()),
           if (support != null) 'support': TfArg.literal(support.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelMetadataSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelMetadata>`.
  RefTo<AzurermSentinelMetadata> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content_id` attribute.
  TfRef<String> get contentId => TfRef.attribute<String>(this, 'content_id');

  /// Reference to `content_schema_version` attribute.
  TfRef<String> get contentSchemaVersion =>
      TfRef.attribute<String>(this, 'content_schema_version');

  /// Reference to `custom_version` attribute.
  TfRef<String> get customVersion =>
      TfRef.attribute<String>(this, 'custom_version');

  /// Reference to `dependency` attribute.
  TfRef<String> get dependency => TfRef.attribute<String>(this, 'dependency');

  /// Reference to `first_publish_date` attribute.
  TfRef<String> get firstPublishDate =>
      TfRef.attribute<String>(this, 'first_publish_date');

  /// Reference to `icon_id` attribute.
  TfRef<String> get iconId => TfRef.attribute<String>(this, 'icon_id');

  /// Reference to `last_publish_date` attribute.
  TfRef<String> get lastPublishDate =>
      TfRef.attribute<String>(this, 'last_publish_date');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `preview_images` attribute.
  TfRef<List<String>> get previewImages =>
      TfRef.attribute<List<String>>(this, 'preview_images');

  /// Reference to `preview_images_dark` attribute.
  TfRef<List<String>> get previewImagesDark =>
      TfRef.attribute<List<String>>(this, 'preview_images_dark');

  /// Reference to `providers` attribute.
  TfRef<List<String>> get providers =>
      TfRef.attribute<List<String>>(this, 'providers');

  /// Reference to `threat_analysis_tactics` attribute.
  TfRef<List<String>> get threatAnalysisTactics =>
      TfRef.attribute<List<String>>(this, 'threat_analysis_tactics');

  /// Reference to `threat_analysis_techniques` attribute.
  TfRef<List<String>> get threatAnalysisTechniques =>
      TfRef.attribute<List<String>>(this, 'threat_analysis_techniques');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
