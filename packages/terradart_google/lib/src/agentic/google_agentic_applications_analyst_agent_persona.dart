// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agentic_applications_analyst_agent_persona`.
const Set<String> _googleAgenticApplicationsAnalystAgentPersonaSensitive =
    <String>{'mcp_data_sources.api_key', 'mcp_data_sources.client_secret'};

/// `role` for [GoogleAgenticApplicationsAnalystAgentPersona].
extension type const AgenticApplicationsAnalystAgentPersonaRole._(
  TfArg<String> _
) implements TfArg<String> {
  AgenticApplicationsAnalystAgentPersonaRole.variable(String name)
    : this._(TfArg.variable(name));
  AgenticApplicationsAnalystAgentPersonaRole.expression(String template)
    : this._(TfArg.expression(template));
  const AgenticApplicationsAnalystAgentPersonaRole.arg(TfArg<String> arg)
    : this._(arg);

  static const genericFinanceAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_GENERIC_FINANCE_ANALYST'),
      );
  static const corporateFinanceAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_CORPORATE_FINANCE_ANALYST'),
      );
  static const crossAssetDerivativesStrategist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_CROSS_ASSET_DERIVATIVES_STRATEGIST'),
      );
  static const kycAnalyst = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_KYC_ANALYST'),
  );
  static const salesTrader = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_SALES_TRADER'),
  );
  static const quantAnalyst = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_QUANT_ANALYST'),
  );
  static const exchangeManager = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_EXCHANGE_MANAGER'),
  );
  static const portfolioManager = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_PORTFOLIO_MANAGER'),
  );
  static const wealthManager = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_WEALTH_MANAGER'),
  );
  static const institutionalPortfolioStrategist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_INSTITUTIONAL_PORTFOLIO_STRATEGIST'),
      );
  static const mnaExecutionAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_MNA_EXECUTION_ANALYST'),
      );
  static const ecmOriginationStrategist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_ECM_ORIGINATION_STRATEGIST'),
      );
  static const leveragedFinanceSpecialist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_LEVERAGED_FINANCE_SPECIALIST'),
      );
  static const investmentResearchAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_INVESTMENT_RESEARCH_ANALYST'),
      );
  static const corporateBankingAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_CORPORATE_BANKING_ANALYST'),
      );
  static const creditRiskStrategist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_CREDIT_RISK_STRATEGIST'),
      );
  static const behavioralFinancialStrategist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_BEHAVIORAL_FINANCIAL_STRATEGIST'),
      );
  static const fundAccountant = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_FUND_ACCOUNTANT'),
  );
  static const modelValidationAuditor =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_MODEL_VALIDATION_AUDITOR'),
      );
  static const privateEquitySpecialist =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_PRIVATE_EQUITY_SPECIALIST'),
      );
  static const treasuryAnalyst = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_TREASURY_ANALYST'),
  );
  static const ventureCapitalAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_VENTURE_CAPITAL_ANALYST'),
      );
  static const amlInvestigator = AgenticApplicationsAnalystAgentPersonaRole._(
    TfArgLiteral('ANALYST_ROLE_AML_INVESTIGATOR'),
  );
  static const dueDiligenceAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_DUE_DILIGENCE_ANALYST'),
      );
  static const insuranceClaimsAnalyst =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_INSURANCE_CLAIMS_ANALYST'),
      );
  static const specialtyLiabilityUnderwriter =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_SPECIALTY_LIABILITY_UNDERWRITER'),
      );
  static const catastropheExposureModeler =
      AgenticApplicationsAnalystAgentPersonaRole._(
        TfArgLiteral('ANALYST_ROLE_CATASTROPHE_EXPOSURE_MODELER'),
      );

  static const List<AgenticApplicationsAnalystAgentPersonaRole> values = [
    genericFinanceAnalyst,
    corporateFinanceAnalyst,
    crossAssetDerivativesStrategist,
    kycAnalyst,
    salesTrader,
    quantAnalyst,
    exchangeManager,
    portfolioManager,
    wealthManager,
    institutionalPortfolioStrategist,
    mnaExecutionAnalyst,
    ecmOriginationStrategist,
    leveragedFinanceSpecialist,
    investmentResearchAnalyst,
    corporateBankingAnalyst,
    creditRiskStrategist,
    behavioralFinancialStrategist,
    fundAccountant,
    modelValidationAuditor,
    privateEquitySpecialist,
    treasuryAnalyst,
    ventureCapitalAnalyst,
    amlInvestigator,
    dueDiligenceAnalyst,
    insuranceClaimsAnalyst,
    specialtyLiabilityUnderwriter,
    catastropheExposureModeler,
  ];
}

/// Typed helper for the `artifact_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamples {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaResource resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifact_examples.resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaResource {
  const AgenticApplicationsAnalystAgentPersonaResource({
    this.displayLabel,
    this.modelDescription,
    this.useRag,
    this.bigqueryResource,
    this.f1Resource,
    this.googleCloudStorageResource,
    this.googleDriveResource,
    this.rawFileResource,
  });

  final TfArg<String>? displayLabel;

  final TfArg<String>? modelDescription;

  final TfArg<bool>? useRag;

  final AgenticApplicationsAnalystAgentPersonaBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaF1Resource? f1Resource;

  final AgenticApplicationsAnalystAgentPersonaGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaRawFileResource? rawFileResource;

  Map<String, Object?> encode() => {
    'display_label': ?displayLabel?.toTfJson(),
    'model_description': ?modelDescription?.toTfJson(),
    'use_rag': ?useRag?.toTfJson(),
    'bigquery_resource': ?bigqueryResource?.encode(),
    'f1_resource': ?f1Resource?.encode(),
    'google_cloud_storage_resource': ?googleCloudStorageResource?.encode(),
    'google_drive_resource': ?googleDriveResource?.encode(),
    'raw_file_resource': ?rawFileResource?.encode(),
  };
}

/// Typed helper for the `resources.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    'bigquery_dataset': ?bigqueryDataset?.toTfJson(),
    'bigquery_table': ?bigqueryTable?.toTfJson(),
    'column_descriptions': ?columnDescriptions?.toTfJson(),
  };
}

/// Typed helper for the `resources.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaF1Resource {
  const AgenticApplicationsAnalystAgentPersonaF1Resource({this.f1Table});

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {'f1_table': ?f1Table?.toTfJson()};
}

/// Typed helper for the `resources.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<String>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    'file_extension_restrictions': ?fileExtensionRestrictions?.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `resources.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<String>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    'file_extension_restrictions': ?fileExtensionRestrictions?.toTfJson(),
    'file_reference': ?fileReference?.toTfJson(),
  };
}

/// Typed helper for the `resources.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AgenticApplicationsAnalystAgentPersonaRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaRawFileResource({
    required this.fileContent,
    required this.fileTitle,
    required this.mimeType,
  });

  final TfArg<String> fileContent;

  final TfArg<String> fileTitle;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'file_content': fileContent.toTfJson(),
    'file_title': fileTitle.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfig {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfig({
    this.documentGenerationOptions,
    this.methodologyExportOptions,
    this.slideGenerationOptions,
    this.visualizationOptions,
  });

  final AgenticApplicationsAnalystAgentPersonaDocumentGenerationOptions?
  documentGenerationOptions;

  final AgenticApplicationsAnalystAgentPersonaMethodologyExportOptions?
  methodologyExportOptions;

  final AgenticApplicationsAnalystAgentPersonaSlideGenerationOptions?
  slideGenerationOptions;

  final AgenticApplicationsAnalystAgentPersonaVisualizationOptions?
  visualizationOptions;

  Map<String, Object?> encode() => {
    'document_generation_options': ?documentGenerationOptions?.encode(),
    'methodology_export_options': ?methodologyExportOptions?.encode(),
    'slide_generation_options': ?slideGenerationOptions?.encode(),
    'visualization_options': ?visualizationOptions?.encode(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaDocumentGenerationOptions {
  const AgenticApplicationsAnalystAgentPersonaDocumentGenerationOptions({
    this.exportFormat,
    this.documentExamples,
  });

  final TfArg<String>? exportFormat;

  final List<AgenticApplicationsAnalystAgentPersonaDocumentExamples>?
  documentExamples;

  Map<String, Object?> encode() => {
    'export_format': ?exportFormat?.toTfJson(),
    if (documentExamples != null)
      'document_examples': [for (final e in documentExamples!) e.encode()],
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaDocumentExamples {
  const AgenticApplicationsAnalystAgentPersonaDocumentExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaResource resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifacts_config.methodology_export_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaMethodologyExportOptions {
  const AgenticApplicationsAnalystAgentPersonaMethodologyExportOptions({
    this.appendMethodology,
    this.exportFormat,
    this.exportMethodologyArtifact,
  });

  final TfArg<bool>? appendMethodology;

  final TfArg<String>? exportFormat;

  final TfArg<bool>? exportMethodologyArtifact;

  Map<String, Object?> encode() => {
    'append_methodology': ?appendMethodology?.toTfJson(),
    'export_format': ?exportFormat?.toTfJson(),
    'export_methodology_artifact': ?exportMethodologyArtifact?.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaSlideGenerationOptions {
  const AgenticApplicationsAnalystAgentPersonaSlideGenerationOptions({
    this.exportFormat,
    this.slideExamples,
  });

  final TfArg<String>? exportFormat;

  final List<AgenticApplicationsAnalystAgentPersonaSlideExamples>?
  slideExamples;

  Map<String, Object?> encode() => {
    'export_format': ?exportFormat?.toTfJson(),
    if (slideExamples != null)
      'slide_examples': [for (final e in slideExamples!) e.encode()],
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaSlideExamples {
  const AgenticApplicationsAnalystAgentPersonaSlideExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaResource resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifacts_config.visualization_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaVisualizationOptions {
  const AgenticApplicationsAnalystAgentPersonaVisualizationOptions({
    this.visualizationExamples,
  });

  final List<AgenticApplicationsAnalystAgentPersonaVisualizationExamples>?
  visualizationExamples;

  Map<String, Object?> encode() => {
    if (visualizationExamples != null)
      'visualization_examples': [
        for (final e in visualizationExamples!) e.encode(),
      ],
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaVisualizationExamples {
  const AgenticApplicationsAnalystAgentPersonaVisualizationExamples({
    required this.visualizationType,
    required this.resource,
  });

  final TfArg<String> visualizationType;

  final AgenticApplicationsAnalystAgentPersonaResource resource;

  Map<String, Object?> encode() => {
    'visualization_type': visualizationType.toTfJson(),
    'resource': resource.encode(),
  };
}

/// Typed helper for the `external_data_sources` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSources {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSources({
    required this.enabled,
    this.airQuality,
    this.bureauLaborStatistics,
    this.coindesk,
    this.finnhub,
    this.fred,
    this.secEdgar,
    this.treasurySecuritiesAuctions,
    this.usda,
  });

  final TfArg<bool> enabled;

  final AgenticApplicationsAnalystAgentPersonaAirQuality? airQuality;

  final AgenticApplicationsAnalystAgentPersonaBureauLaborStatistics?
  bureauLaborStatistics;

  final AgenticApplicationsAnalystAgentPersonaCoindesk? coindesk;

  final AgenticApplicationsAnalystAgentPersonaFinnhub? finnhub;

  final AgenticApplicationsAnalystAgentPersonaFred? fred;

  final AgenticApplicationsAnalystAgentPersonaSecEdgar? secEdgar;

  final AgenticApplicationsAnalystAgentPersonaTreasurySecuritiesAuctions?
  treasurySecuritiesAuctions;

  final AgenticApplicationsAnalystAgentPersonaUsda? usda;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'air_quality': ?airQuality?.encode(),
    'bureau_labor_statistics': ?bureauLaborStatistics?.encode(),
    'coindesk': ?coindesk?.encode(),
    'finnhub': ?finnhub?.encode(),
    'fred': ?fred?.encode(),
    'sec_edgar': ?secEdgar?.encode(),
    'treasury_securities_auctions': ?treasurySecuritiesAuctions?.encode(),
    'usda': ?usda?.encode(),
  };
}

/// Typed helper for the `external_data_sources.air_quality` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaAirQuality {
  const AgenticApplicationsAnalystAgentPersonaAirQuality();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.bureau_labor_statistics` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaBureauLaborStatistics {
  const AgenticApplicationsAnalystAgentPersonaBureauLaborStatistics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.coindesk` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaCoindesk {
  const AgenticApplicationsAnalystAgentPersonaCoindesk();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.finnhub` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaFinnhub {
  const AgenticApplicationsAnalystAgentPersonaFinnhub();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.fred` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaFred {
  const AgenticApplicationsAnalystAgentPersonaFred();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.sec_edgar` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaSecEdgar {
  const AgenticApplicationsAnalystAgentPersonaSecEdgar();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.treasury_securities_auctions` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaTreasurySecuritiesAuctions {
  const AgenticApplicationsAnalystAgentPersonaTreasurySecuritiesAuctions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.usda` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaUsda {
  const AgenticApplicationsAnalystAgentPersonaUsda();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `mcp_data_sources` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaMcpDataSources {
  const AgenticApplicationsAnalystAgentPersonaMcpDataSources({
    this.apiKey,
    this.apiKeyName,
    this.clientId,
    this.clientSecret,
    required this.description,
    required this.displayName,
    required this.enabled,
    this.oauthTokenUrl,
    this.prompt,
    required this.serverUrl,
  });

  final Sensitive<String>? apiKey;

  final TfArg<String>? apiKeyName;

  final TfArg<String>? clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String> description;

  final TfArg<String> displayName;

  final TfArg<bool> enabled;

  final TfArg<String>? oauthTokenUrl;

  final TfArg<String>? prompt;

  final TfArg<String> serverUrl;

  Map<String, Object?> encode() => {
    'api_key': ?apiKey?.toTfJson(),
    'api_key_name': ?apiKeyName?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'description': description.toTfJson(),
    'display_name': displayName.toTfJson(),
    'enabled': enabled.toTfJson(),
    'oauth_token_url': ?oauthTokenUrl?.toTfJson(),
    'prompt': ?prompt?.toTfJson(),
    'server_url': serverUrl.toTfJson(),
  };
}

/// Typed helper for the `resources` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResources {
  const AgenticApplicationsAnalystAgentPersonaResources({
    this.displayLabel,
    this.modelDescription,
    this.useRag,
    this.bigqueryResource,
    this.f1Resource,
    this.googleCloudStorageResource,
    this.googleDriveResource,
    this.rawFileResource,
  });

  final TfArg<String>? displayLabel;

  final TfArg<String>? modelDescription;

  final TfArg<bool>? useRag;

  final AgenticApplicationsAnalystAgentPersonaBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaF1Resource? f1Resource;

  final AgenticApplicationsAnalystAgentPersonaGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaRawFileResource? rawFileResource;

  Map<String, Object?> encode() => {
    'display_label': ?displayLabel?.toTfJson(),
    'model_description': ?modelDescription?.toTfJson(),
    'use_rag': ?useRag?.toTfJson(),
    'bigquery_resource': ?bigqueryResource?.encode(),
    'f1_resource': ?f1Resource?.encode(),
    'google_cloud_storage_resource': ?googleCloudStorageResource?.encode(),
    'google_drive_resource': ?googleDriveResource?.encode(),
    'raw_file_resource': ?rawFileResource?.encode(),
  };
}

/// Typed helper for the `skills` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaSkills {
  const AgenticApplicationsAnalystAgentPersonaSkills({
    required this.content,
    this.description,
    required this.skillId,
    this.references,
  });

  final TfArg<String> content;

  final TfArg<String>? description;

  final TfArg<String> skillId;

  final List<AgenticApplicationsAnalystAgentPersonaReferences>? references;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'description': ?description?.toTfJson(),
    'skill_id': skillId.toTfJson(),
    if (references != null)
      'references': [for (final e in references!) e.encode()],
  };
}

/// Typed helper for the `skills.references` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaReferences {
  const AgenticApplicationsAnalystAgentPersonaReferences({
    required this.content,
    required this.referenceId,
  });

  final TfArg<String> content;

  final TfArg<String> referenceId;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'reference_id': referenceId.toTfJson(),
  };
}

/// Typed helper for the `tables` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaTables {
  const AgenticApplicationsAnalystAgentPersonaTables({
    this.description,
    required this.name,
    this.columns,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<AgenticApplicationsAnalystAgentPersonaColumns>? columns;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `tables.columns` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaColumns {
  const AgenticApplicationsAnalystAgentPersonaColumns({
    required this.dataType,
    this.description,
    required this.name,
  });

  final TfArg<String> dataType;

  final TfArg<String>? description;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'data_type': dataType.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_agentic_applications_analyst_agent_persona`.
///
/// Represents a persona configuration for an analyst agent in Agentic
/// Applications.
///
/// Agentic Applications **analyst agent persona** — the design-time
/// configuration a Gemini Enterprise analyst agent answers with: its
/// [role], the data [resources] it may read (BigQuery / Cloud Storage /
/// Drive / raw files), [skills] (markdown playbooks), [tables] schema
/// overrides, and artifact/visualization examples.
///
/// [analystAgentPersonaId] is the id segment of the resource name and is
/// immutable; [location] is the regional segment (e.g. `us-central1`).
/// Set [geminiEnterpriseEngine] to route one Gemini Enterprise engine's
/// requests to this persona — otherwise only personas whose name ends in
/// `/default` receive GE traffic.
///
/// `mcp_data_sources.api_key` / `client_secret` are marked sensitive:
/// pass them from a secret source rather than committing literals.
///
/// The `export_format` fields under [artifactsConfig] stay `TfArg<String>`
/// (the schema documents their values in prose, not as an enum): documents
/// accept `PDF` / `DOCX` / `GOOGLE_DOCS`, slides accept `PDF` / `PNG` /
/// `PPTX` / `GOOGLE_SLIDES`. Anything else is rejected at apply, not at
/// `terraform validate`.
///
/// **Cost:** gcp-cost: Agentic Applications `E4EE-DF31-DCDA` Finance
/// Agent Input Tokens Usage SKU `ECEB-E3A9-60D0` **$5/count** (Output
/// `8B98-07A1-58AC` **$25/count**; Cached `455D-CE9B-3B9F`
/// **$0.5/count**). billing-behavior: every SKU in the service meters
/// agent token / chat-session usage — creating a persona is config only
/// and runs no inference, so create → destroy accrues nothing.
///
/// Enable `agenticapplications.googleapis.com` via [Apis.enable] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleAgenticApplicationsAnalystAgentPersona(
///   'analyst',
///   location: TfArg.literal('us-central1'),
///   analystAgentPersonaId: TfArg.literal('terradart-analyst'),
///   displayName: TfArg.literal('TerraDart treasury analyst'),
///   role: AgenticApplicationsAnalystAgentPersonaRole.treasuryAnalyst,
///   skills: [
///     AgenticApplicationsAnalystAgentPersonaSkills(
///       skillId: TfArg.literal('cash-position'),
///       content: TfArg.literal('# Cash position\nSummarize balances.'),
///     ),
///   ],
/// );
/// ```
final class GoogleAgenticApplicationsAnalystAgentPersona extends Resource {
  static const String tfType =
      'google_agentic_applications_analyst_agent_persona';

  GoogleAgenticApplicationsAnalystAgentPersona(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> analystAgentPersonaId,
    required TfArg<String> displayName,
    AgenticApplicationsAnalystAgentPersonaRole? role,
    TfArg<String>? displayDescription,
    TfArg<String>? modelDescription,
    TfArg<List<String>>? customerContext,
    TfArg<String>? geminiEnterpriseEngine,
    List<AgenticApplicationsAnalystAgentPersonaResources>? resources,
    List<AgenticApplicationsAnalystAgentPersonaTables>? tables,
    List<AgenticApplicationsAnalystAgentPersonaSkills>? skills,
    List<AgenticApplicationsAnalystAgentPersonaArtifactExamples>?
    artifactExamples,
    AgenticApplicationsAnalystAgentPersonaArtifactsConfig? artifactsConfig,
    List<AgenticApplicationsAnalystAgentPersonaExternalDataSources>?
    externalDataSources,
    List<AgenticApplicationsAnalystAgentPersonaMcpDataSources>? mcpDataSources,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'analyst_agent_persona_id': analystAgentPersonaId,
           'display_name': displayName,
           'role': ?role,
           'display_description': ?displayDescription,
           'model_description': ?modelDescription,
           'customer_context': ?customerContext,
           'gemini_enterprise_engine': ?geminiEnterpriseEngine,
           if (resources != null)
             'resources': TfArg.literal([
               for (final e in resources) e.encode(),
             ]),
           if (tables != null)
             'tables': TfArg.literal([for (final e in tables) e.encode()]),
           if (skills != null)
             'skills': TfArg.literal([for (final e in skills) e.encode()]),
           if (artifactExamples != null)
             'artifact_examples': TfArg.literal([
               for (final e in artifactExamples) e.encode(),
             ]),
           if (artifactsConfig != null)
             'artifacts_config': TfArg.literal(artifactsConfig.encode()),
           if (externalDataSources != null)
             'external_data_sources': TfArg.literal([
               for (final e in externalDataSources) e.encode(),
             ]),
           if (mcpDataSources != null)
             'mcp_data_sources': TfArg.literal([
               for (final e in mcpDataSources) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgenticApplicationsAnalystAgentPersonaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgenticApplicationsAnalystAgentPersona>`.
  RefTo<GoogleAgenticApplicationsAnalystAgentPersona> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `analyst_agent_persona_id` attribute.
  TfRef<String> get analystAgentPersonaId =>
      TfRef.attribute<String>(this, 'analyst_agent_persona_id');

  /// Reference to `customer_context` attribute.
  TfRef<List<String>> get customerContext =>
      TfRef.attribute<List<String>>(this, 'customer_context');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_description` attribute.
  TfRef<String> get displayDescription =>
      TfRef.attribute<String>(this, 'display_description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gemini_enterprise_engine` attribute.
  TfRef<String> get geminiEnterpriseEngine =>
      TfRef.attribute<String>(this, 'gemini_enterprise_engine');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `model_description` attribute.
  TfRef<String> get modelDescription =>
      TfRef.attribute<String>(this, 'model_description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
