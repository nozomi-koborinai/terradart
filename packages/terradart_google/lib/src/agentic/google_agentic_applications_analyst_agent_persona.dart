// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agentic_applications_analyst_agent_persona`.
const Set<String> _googleAgenticApplicationsAnalystAgentPersonaSensitive =
    <String>{'mcp_data_sources.api_key', 'mcp_data_sources.client_secret'};

/// `role` for [GoogleAgenticApplicationsAnalystAgentPersona].
enum AgenticApplicationsAnalystAgentPersonaRole implements TerraformEnum {
  genericFinanceAnalyst('ANALYST_ROLE_GENERIC_FINANCE_ANALYST'),
  corporateFinanceAnalyst('ANALYST_ROLE_CORPORATE_FINANCE_ANALYST'),
  crossAssetDerivativesStrategist(
    'ANALYST_ROLE_CROSS_ASSET_DERIVATIVES_STRATEGIST',
  ),
  kycAnalyst('ANALYST_ROLE_KYC_ANALYST'),
  salesTrader('ANALYST_ROLE_SALES_TRADER'),
  quantAnalyst('ANALYST_ROLE_QUANT_ANALYST'),
  exchangeManager('ANALYST_ROLE_EXCHANGE_MANAGER'),
  portfolioManager('ANALYST_ROLE_PORTFOLIO_MANAGER'),
  wealthManager('ANALYST_ROLE_WEALTH_MANAGER'),
  institutionalPortfolioStrategist(
    'ANALYST_ROLE_INSTITUTIONAL_PORTFOLIO_STRATEGIST',
  ),
  mnaExecutionAnalyst('ANALYST_ROLE_MNA_EXECUTION_ANALYST'),
  ecmOriginationStrategist('ANALYST_ROLE_ECM_ORIGINATION_STRATEGIST'),
  leveragedFinanceSpecialist('ANALYST_ROLE_LEVERAGED_FINANCE_SPECIALIST'),
  investmentResearchAnalyst('ANALYST_ROLE_INVESTMENT_RESEARCH_ANALYST'),
  corporateBankingAnalyst('ANALYST_ROLE_CORPORATE_BANKING_ANALYST'),
  creditRiskStrategist('ANALYST_ROLE_CREDIT_RISK_STRATEGIST'),
  behavioralFinancialStrategist('ANALYST_ROLE_BEHAVIORAL_FINANCIAL_STRATEGIST'),
  fundAccountant('ANALYST_ROLE_FUND_ACCOUNTANT'),
  modelValidationAuditor('ANALYST_ROLE_MODEL_VALIDATION_AUDITOR'),
  privateEquitySpecialist('ANALYST_ROLE_PRIVATE_EQUITY_SPECIALIST'),
  treasuryAnalyst('ANALYST_ROLE_TREASURY_ANALYST'),
  ventureCapitalAnalyst('ANALYST_ROLE_VENTURE_CAPITAL_ANALYST'),
  amlInvestigator('ANALYST_ROLE_AML_INVESTIGATOR'),
  dueDiligenceAnalyst('ANALYST_ROLE_DUE_DILIGENCE_ANALYST'),
  insuranceClaimsAnalyst('ANALYST_ROLE_INSURANCE_CLAIMS_ANALYST'),
  specialtyLiabilityUnderwriter('ANALYST_ROLE_SPECIALTY_LIABILITY_UNDERWRITER'),
  catastropheExposureModeler('ANALYST_ROLE_CATASTROPHE_EXPOSURE_MODELER');

  const AgenticApplicationsAnalystAgentPersonaRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `artifact_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamples {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResource resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifact_examples.resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResource({
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

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceF1Resource?
  f1Resource;

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceRawFileResource?
  rawFileResource;

  Map<String, Object?> encode() => {
    if (displayLabel != null) 'display_label': displayLabel!.toTfJson(),
    if (modelDescription != null)
      'model_description': modelDescription!.toTfJson(),
    if (useRag != null) 'use_rag': useRag!.toTfJson(),
    if (bigqueryResource != null)
      'bigquery_resource': bigqueryResource!.encode(),
    if (f1Resource != null) 'f1_resource': f1Resource!.encode(),
    if (googleCloudStorageResource != null)
      'google_cloud_storage_resource': googleCloudStorageResource!.encode(),
    if (googleDriveResource != null)
      'google_drive_resource': googleDriveResource!.encode(),
    if (rawFileResource != null) 'raw_file_resource': rawFileResource!.encode(),
  };
}

/// Typed helper for the `artifact_examples.resource.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    if (bigqueryDataset != null)
      'bigquery_dataset': bigqueryDataset!.toTfJson(),
    if (bigqueryTable != null) 'bigquery_table': bigqueryTable!.toTfJson(),
    if (columnDescriptions != null)
      'column_descriptions': columnDescriptions!.toTfJson(),
  };
}

/// Typed helper for the `artifact_examples.resource.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceF1Resource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceF1Resource({
    this.f1Table,
  });

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {
    if (f1Table != null) 'f1_table': f1Table!.toTfJson(),
  };
}

/// Typed helper for the `artifact_examples.resource.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `artifact_examples.resource.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    if (fileReference != null) 'file_reference': fileReference!.toTfJson(),
  };
}

/// Typed helper for the `artifact_examples.resource.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactExamplesResourceRawFileResource({
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
    this.slideGenerationOptions,
    this.visualizationOptions,
  });

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptions?
  documentGenerationOptions;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptions?
  slideGenerationOptions;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptions?
  visualizationOptions;

  Map<String, Object?> encode() => {
    if (documentGenerationOptions != null)
      'document_generation_options': documentGenerationOptions!.encode(),
    if (slideGenerationOptions != null)
      'slide_generation_options': slideGenerationOptions!.encode(),
    if (visualizationOptions != null)
      'visualization_options': visualizationOptions!.encode(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptions {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptions({
    this.exportFormat,
    this.documentExamples,
  });

  final TfArg<String>? exportFormat;

  final List<
    AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamples
  >?
  documentExamples;

  Map<String, Object?> encode() => {
    if (exportFormat != null) 'export_format': exportFormat!.toTfJson(),
    if (documentExamples != null)
      'document_examples': [for (final e in documentExamples!) e.encode()],
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamples {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResource
  resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResource({
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

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceF1Resource?
  f1Resource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceRawFileResource?
  rawFileResource;

  Map<String, Object?> encode() => {
    if (displayLabel != null) 'display_label': displayLabel!.toTfJson(),
    if (modelDescription != null)
      'model_description': modelDescription!.toTfJson(),
    if (useRag != null) 'use_rag': useRag!.toTfJson(),
    if (bigqueryResource != null)
      'bigquery_resource': bigqueryResource!.encode(),
    if (f1Resource != null) 'f1_resource': f1Resource!.encode(),
    if (googleCloudStorageResource != null)
      'google_cloud_storage_resource': googleCloudStorageResource!.encode(),
    if (googleDriveResource != null)
      'google_drive_resource': googleDriveResource!.encode(),
    if (rawFileResource != null) 'raw_file_resource': rawFileResource!.encode(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    if (bigqueryDataset != null)
      'bigquery_dataset': bigqueryDataset!.toTfJson(),
    if (bigqueryTable != null) 'bigquery_table': bigqueryTable!.toTfJson(),
    if (columnDescriptions != null)
      'column_descriptions': columnDescriptions!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceF1Resource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceF1Resource({
    this.f1Table,
  });

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {
    if (f1Table != null) 'f1_table': f1Table!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    if (fileReference != null) 'file_reference': fileReference!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.document_generation_options.document_examples.resource.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceRawFileResource({
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

/// Typed helper for the `artifacts_config.slide_generation_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptions {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptions({
    this.exportFormat,
    this.slideExamples,
  });

  final TfArg<String>? exportFormat;

  final List<
    AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamples
  >?
  slideExamples;

  Map<String, Object?> encode() => {
    if (exportFormat != null) 'export_format': exportFormat!.toTfJson(),
    if (slideExamples != null)
      'slide_examples': [for (final e in slideExamples!) e.encode()],
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamples {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamples({
    required this.resource,
  });

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResource
  resource;

  Map<String, Object?> encode() => {'resource': resource.encode()};
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResource({
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

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceF1Resource?
  f1Resource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceRawFileResource?
  rawFileResource;

  Map<String, Object?> encode() => {
    if (displayLabel != null) 'display_label': displayLabel!.toTfJson(),
    if (modelDescription != null)
      'model_description': modelDescription!.toTfJson(),
    if (useRag != null) 'use_rag': useRag!.toTfJson(),
    if (bigqueryResource != null)
      'bigquery_resource': bigqueryResource!.encode(),
    if (f1Resource != null) 'f1_resource': f1Resource!.encode(),
    if (googleCloudStorageResource != null)
      'google_cloud_storage_resource': googleCloudStorageResource!.encode(),
    if (googleDriveResource != null)
      'google_drive_resource': googleDriveResource!.encode(),
    if (rawFileResource != null) 'raw_file_resource': rawFileResource!.encode(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    if (bigqueryDataset != null)
      'bigquery_dataset': bigqueryDataset!.toTfJson(),
    if (bigqueryTable != null) 'bigquery_table': bigqueryTable!.toTfJson(),
    if (columnDescriptions != null)
      'column_descriptions': columnDescriptions!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceF1Resource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceF1Resource({
    this.f1Table,
  });

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {
    if (f1Table != null) 'f1_table': f1Table!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    if (fileReference != null) 'file_reference': fileReference!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.slide_generation_options.slide_examples.resource.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExamplesResourceRawFileResource({
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

/// Typed helper for the `artifacts_config.visualization_options` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptions {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptions({
    this.visualizationExamples,
  });

  final List<
    AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamples
  >?
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
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamples {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamples({
    required this.visualizationType,
    required this.resource,
  });

  final TfArg<String> visualizationType;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResource
  resource;

  Map<String, Object?> encode() => {
    'visualization_type': visualizationType.toTfJson(),
    'resource': resource.encode(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResource({
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

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceF1Resource?
  f1Resource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceRawFileResource?
  rawFileResource;

  Map<String, Object?> encode() => {
    if (displayLabel != null) 'display_label': displayLabel!.toTfJson(),
    if (modelDescription != null)
      'model_description': modelDescription!.toTfJson(),
    if (useRag != null) 'use_rag': useRag!.toTfJson(),
    if (bigqueryResource != null)
      'bigquery_resource': bigqueryResource!.encode(),
    if (f1Resource != null) 'f1_resource': f1Resource!.encode(),
    if (googleCloudStorageResource != null)
      'google_cloud_storage_resource': googleCloudStorageResource!.encode(),
    if (googleDriveResource != null)
      'google_drive_resource': googleDriveResource!.encode(),
    if (rawFileResource != null) 'raw_file_resource': rawFileResource!.encode(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    if (bigqueryDataset != null)
      'bigquery_dataset': bigqueryDataset!.toTfJson(),
    if (bigqueryTable != null) 'bigquery_table': bigqueryTable!.toTfJson(),
    if (columnDescriptions != null)
      'column_descriptions': columnDescriptions!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceF1Resource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceF1Resource({
    this.f1Table,
  });

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {
    if (f1Table != null) 'f1_table': f1Table!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    if (fileReference != null) 'file_reference': fileReference!.toTfJson(),
  };
}

/// Typed helper for the `artifacts_config.visualization_options.visualization_examples.resource.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExamplesResourceRawFileResource({
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

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesAirQuality?
  airQuality;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesBureauLaborStatistics?
  bureauLaborStatistics;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesCoindesk?
  coindesk;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFinnhub?
  finnhub;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFred? fred;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesSecEdgar?
  secEdgar;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesTreasurySecuritiesAuctions?
  treasurySecuritiesAuctions;

  final AgenticApplicationsAnalystAgentPersonaExternalDataSourcesUsda? usda;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (airQuality != null) 'air_quality': airQuality!.encode(),
    if (bureauLaborStatistics != null)
      'bureau_labor_statistics': bureauLaborStatistics!.encode(),
    if (coindesk != null) 'coindesk': coindesk!.encode(),
    if (finnhub != null) 'finnhub': finnhub!.encode(),
    if (fred != null) 'fred': fred!.encode(),
    if (secEdgar != null) 'sec_edgar': secEdgar!.encode(),
    if (treasurySecuritiesAuctions != null)
      'treasury_securities_auctions': treasurySecuritiesAuctions!.encode(),
    if (usda != null) 'usda': usda!.encode(),
  };
}

/// Typed helper for the `external_data_sources.air_quality` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesAirQuality {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesAirQuality();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.bureau_labor_statistics` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesBureauLaborStatistics {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesBureauLaborStatistics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.coindesk` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesCoindesk {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesCoindesk();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.finnhub` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFinnhub {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFinnhub();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.fred` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFred {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesFred();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.sec_edgar` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesSecEdgar {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesSecEdgar();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.treasury_securities_auctions` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesTreasurySecuritiesAuctions {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesTreasurySecuritiesAuctions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `external_data_sources.usda` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaExternalDataSourcesUsda {
  const AgenticApplicationsAnalystAgentPersonaExternalDataSourcesUsda();

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

  final TfArg<String>? apiKey;

  final TfArg<String>? apiKeyName;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String> description;

  final TfArg<String> displayName;

  final TfArg<bool> enabled;

  final TfArg<String>? oauthTokenUrl;

  final TfArg<String>? prompt;

  final TfArg<String> serverUrl;

  Map<String, Object?> encode() => {
    if (apiKey != null) 'api_key': apiKey!.toTfJson(),
    if (apiKeyName != null) 'api_key_name': apiKeyName!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    'description': description.toTfJson(),
    'display_name': displayName.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (oauthTokenUrl != null) 'oauth_token_url': oauthTokenUrl!.toTfJson(),
    if (prompt != null) 'prompt': prompt!.toTfJson(),
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

  final AgenticApplicationsAnalystAgentPersonaResourcesBigqueryResource?
  bigqueryResource;

  final AgenticApplicationsAnalystAgentPersonaResourcesF1Resource? f1Resource;

  final AgenticApplicationsAnalystAgentPersonaResourcesGoogleCloudStorageResource?
  googleCloudStorageResource;

  final AgenticApplicationsAnalystAgentPersonaResourcesGoogleDriveResource?
  googleDriveResource;

  final AgenticApplicationsAnalystAgentPersonaResourcesRawFileResource?
  rawFileResource;

  Map<String, Object?> encode() => {
    if (displayLabel != null) 'display_label': displayLabel!.toTfJson(),
    if (modelDescription != null)
      'model_description': modelDescription!.toTfJson(),
    if (useRag != null) 'use_rag': useRag!.toTfJson(),
    if (bigqueryResource != null)
      'bigquery_resource': bigqueryResource!.encode(),
    if (f1Resource != null) 'f1_resource': f1Resource!.encode(),
    if (googleCloudStorageResource != null)
      'google_cloud_storage_resource': googleCloudStorageResource!.encode(),
    if (googleDriveResource != null)
      'google_drive_resource': googleDriveResource!.encode(),
    if (rawFileResource != null) 'raw_file_resource': rawFileResource!.encode(),
  };
}

/// Typed helper for the `resources.bigquery_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResourcesBigqueryResource {
  const AgenticApplicationsAnalystAgentPersonaResourcesBigqueryResource({
    this.bigqueryDataset,
    this.bigqueryTable,
    this.columnDescriptions,
  });

  final TfArg<String>? bigqueryDataset;

  final TfArg<String>? bigqueryTable;

  final TfArg<Map<String, String>>? columnDescriptions;

  Map<String, Object?> encode() => {
    if (bigqueryDataset != null)
      'bigquery_dataset': bigqueryDataset!.toTfJson(),
    if (bigqueryTable != null) 'bigquery_table': bigqueryTable!.toTfJson(),
    if (columnDescriptions != null)
      'column_descriptions': columnDescriptions!.toTfJson(),
  };
}

/// Typed helper for the `resources.f1_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResourcesF1Resource {
  const AgenticApplicationsAnalystAgentPersonaResourcesF1Resource({
    this.f1Table,
  });

  final TfArg<String>? f1Table;

  Map<String, Object?> encode() => {
    if (f1Table != null) 'f1_table': f1Table!.toTfJson(),
  };
}

/// Typed helper for the `resources.google_cloud_storage_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResourcesGoogleCloudStorageResource {
  const AgenticApplicationsAnalystAgentPersonaResourcesGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String> googleCloudStorageObject;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    'google_cloud_storage_object': googleCloudStorageObject.toTfJson(),
  };
}

/// Typed helper for the `resources.google_drive_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResourcesGoogleDriveResource {
  const AgenticApplicationsAnalystAgentPersonaResourcesGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  final TfArg<List<Object?>>? fileExtensionRestrictions;

  final TfArg<String>? fileReference;

  Map<String, Object?> encode() => {
    if (fileExtensionRestrictions != null)
      'file_extension_restrictions': fileExtensionRestrictions!.toTfJson(),
    if (fileReference != null) 'file_reference': fileReference!.toTfJson(),
  };
}

/// Typed helper for the `resources.raw_file_resource` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaResourcesRawFileResource {
  const AgenticApplicationsAnalystAgentPersonaResourcesRawFileResource({
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

  final List<AgenticApplicationsAnalystAgentPersonaSkillsReferences>?
  references;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'skill_id': skillId.toTfJson(),
    if (references != null)
      'references': [for (final e in references!) e.encode()],
  };
}

/// Typed helper for the `skills.references` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaSkillsReferences {
  const AgenticApplicationsAnalystAgentPersonaSkillsReferences({
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

  final List<AgenticApplicationsAnalystAgentPersonaTablesColumns>? columns;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `tables.columns` block of
/// `google_agentic_applications_analyst_agent_persona` (derived from provider schema).
@immutable
final class AgenticApplicationsAnalystAgentPersonaTablesColumns {
  const AgenticApplicationsAnalystAgentPersonaTablesColumns({
    required this.dataType,
    this.description,
    required this.name,
  });

  final TfArg<String> dataType;

  final TfArg<String>? description;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'data_type': dataType.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
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
///   localName: 'analyst',
///   location: TfArg.literal('us-central1'),
///   analystAgentPersonaId: TfArg.literal('terradart-analyst'),
///   displayName: TfArg.literal('TerraDart treasury analyst'),
///   role: TfArg.literal(
///     AgenticApplicationsAnalystAgentPersonaRole.treasuryAnalyst,
///   ),
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

  GoogleAgenticApplicationsAnalystAgentPersona({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> analystAgentPersonaId,
    required TfArg<String> displayName,
    TfArg<AgenticApplicationsAnalystAgentPersonaRole>? role,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'analyst_agent_persona_id': analystAgentPersonaId,
           'display_name': displayName,
           if (role != null) 'role': role,
           if (displayDescription != null)
             'display_description': displayDescription,
           if (modelDescription != null) 'model_description': modelDescription,
           if (customerContext != null) 'customer_context': customerContext,
           if (geminiEnterpriseEngine != null)
             'gemini_enterprise_engine': geminiEnterpriseEngine,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgenticApplicationsAnalystAgentPersonaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
