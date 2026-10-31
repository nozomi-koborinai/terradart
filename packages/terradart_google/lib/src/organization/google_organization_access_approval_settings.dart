// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_access_approval_settings`.
const Set<String> _googleOrganizationAccessApprovalSettingsSensitive =
    <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_organization_access_approval_settings` (derived from provider schema).
@immutable
final class OrganizationAccessApprovalSettingsEnrolledServices {
  const OrganizationAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final OrganizationAccessApprovalSettingsCloudProduct cloudProduct;

  final OrganizationAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const OrganizationAccessApprovalSettingsCloudProduct._(
  TfArg<String> _
) implements TfArg<String> {
  OrganizationAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const ga = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GA'),
  );
  static const accessContextManager =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Access Context Manager'),
      );
  static const anthosIdentityService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Anthos Identity Service'),
      );
  static const alloydbForPostgresql =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('AlloyDB for PostgreSQL'),
      );
  static const apigee = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Apigee'),
  );
  static const applicationIntegration =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Application Integration'),
      );
  static const appHub = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Hub'),
  );
  static const artifactRegistry =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Artifact Registry'),
      );
  static const anthosServiceMesh =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Anthos Service Mesh'),
      );
  static const accessTransparency =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Access Transparency'),
      );
  static const bigquery = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('BigQuery'),
  );
  static const certificateAuthorityService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Certificate Authority Service'),
      );
  static const cloudBigtable = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Bigtable'),
  );
  static const ccaiAssistAndKnowledge =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('CCAI Assist and Knowledge'),
      );
  static const cloudDataflow = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataflow'),
  );
  static const cloudDataproc = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataproc'),
  );
  static const cepSecurityGateway =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('CEP Security Gateway'),
      );
  static const complianceEvaluationService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Compliance Evaluation Service'),
      );
  static const cloudFirestore =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Firestore'),
      );
  static const cloudHealthcareApi =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Healthcare API'),
      );
  static const chronicle = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Chronicle'),
  );
  static const cloudAiCompanionGatewayTitan =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud AI Companion Gateway - Titan'),
      );
  static const googleCloudArmor =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Google Cloud Armor'),
      );
  static const cloudAssetInventory =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Asset Inventory'),
      );
  static const cloudAssetSearch =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Asset Search'),
      );
  static const cloudDeploy = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Deploy'),
  );
  static const cloudDns = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DNS'),
  );
  static const cloudLatency = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Latency'),
  );
  static const cloudMemorystoreForRedis =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Memorystore for Redis'),
      );
  static const cloudnetControl =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('CloudNet Control'),
      );
  static const cloudRiptide = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Riptide'),
  );
  static const cloudTasks = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Tasks'),
  );
  static const cloudTrace = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Trace'),
  );
  static const cloudDataTransfer =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Data Transfer'),
      );
  static const cloudComposer = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Composer'),
  );
  static const integrationConnectors =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Integration Connectors'),
      );
  static const contactCenterAiInsights =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Contact Center AI Insights'),
      );
  static const cloudPubSub = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Pub/Sub'),
  );
  static const cloudRun = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Run'),
  );
  static const resourceManager =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Resource Manager'),
      );
  static const cloudSpanner = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Spanner'),
  );
  static const databaseCenter =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Database Center'),
      );
  static const cloudDataform = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataform'),
  );
  static const cloudDataFusion =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Data Fusion'),
      );
  static const dataplex = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Dataplex'),
  );
  static const dialogflowCustomerExperienceEdition =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Dialogflow Customer Experience Edition'),
      );
  static const cloudDlp = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DLP'),
  );
  static const documentAi = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Document AI'),
  );
  static const edgeContainer = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Container'),
  );
  static const edgeNetwork = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Network'),
  );
  static const cloudEkm = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud EKM'),
  );
  static const eventarc = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Eventarc'),
  );
  static const firebaseDataConnect =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Firebase Data Connect'),
      );
  static const firebaseRules = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Firebase Rules'),
  );
  static const appEngine = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Engine'),
  );
  static const cloudBuild = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Build'),
  );
  static const computeEngine = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Compute Engine'),
  );
  static const cloudFunctions2ndGen =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Functions (2nd Gen)'),
      );
  static const cloudFilestore =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Filestore'),
      );
  static const cloudInterconnect =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Interconnect'),
      );
  static const cloudNetappVolumes =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud NetApp Volumes'),
      );
  static const cloudStorage = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Storage'),
  );
  static const generativeAiAppBuilder =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Generative AI App Builder'),
      );
  static const googleKubernetesEngine =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Google Kubernetes Engine'),
      );
  static const backupForGkeApi =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Backup for GKE API'),
      );
  static const gkeConnect = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Connect'),
  );
  static const gkeHub = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Hub'),
  );
  static const hoverboard = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Hoverboard'),
  );
  static const cloudHsm = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud HSM'),
  );
  static const cloudIdentityAndAccessManagement =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity and Access Management'),
      );
  static const cloudIdentityAwareProxy =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity-Aware Proxy'),
      );
  static const infrastructureManager =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Infrastructure Manager'),
      );
  static const identityStorageService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Identity Storage Service'),
      );
  static const keyAccessJustifications =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Key Access Justifications'),
      );
  static const cloudKeyManagementService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Key Management Service'),
      );
  static const cloudLogging = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Logging'),
  );
  static const lookerGoogleCloudCore =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Looker (Google Cloud core)'),
      );
  static const lookerStudio = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Looker Studio'),
  );
  static const managementHub = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Management Hub'),
  );
  static const modelArmor = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Model Armor'),
  );
  static const cloudMonitoring =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Monitoring'),
      );
  static const cloudNat = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud NAT'),
  );
  static const connectivityHub =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Connectivity Hub'),
      );
  static const externalPassthroughNetworkLoadBalancer =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('External passthrough Network Load Balancer'),
      );
  static const oidcOne = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('OIDC One'),
  );
  static const organizationPolicyService =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Organization Policy Service'),
      );
  static const orgLifecycle = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Org Lifecycle'),
  );
  static const persistentDisk =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Persistent Disk'),
      );
  static const parameterManager =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Parameter Manager'),
      );
  static const privateServicesAccess =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Private Services Access'),
      );
  static const regionalInternalApplicationLoadBalancer =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Regional Internal Application Load Balancer'),
      );
  static const storageBatchOperations =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Storage Batch Operations'),
      );
  static const cloudSecurityCommandCenter =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Security Command Center'),
      );
  static const secureSourceManager =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Secure Source Manager'),
      );
  static const seeker = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Seeker'),
  );
  static const serviceProvisioning =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Service Provisioning'),
      );
  static const speakerId = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Speaker ID'),
  );
  static const secretManager = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Secret Manager'),
  );
  static const cloudSql = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud SQL'),
  );
  static const cloudSpeechToText =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Speech-to-Text'),
      );
  static const trafficDirector =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Traffic Director'),
      );
  static const cloudTextToSpeech =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Text-to-Speech'),
      );
  static const uspsAndromeda = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('USPS Andromeda'),
  );
  static const vertexAi = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Vertex AI'),
  );
  static const virtualPrivateCloudVpc =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Virtual Private Cloud (VPC)'),
      );
  static const vpcAccess = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC Access'),
  );
  static const vpcServiceControlsTroubleshooter =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('VPC Service Controls Troubleshooter'),
      );
  static const vpcVirtnet = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC virtnet'),
  );
  static const cloudWorkstations =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Workstations'),
      );
  static const webRisk = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Web Risk'),
  );
  static const gaOnly = OrganizationAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('ga-only'),
  );
  static const appengineGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const artifactregistryGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('artifactregistry.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const containerGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('container.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const cloudresourcemanagerGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudresourcemanager.googleapis.com'),
      );
  static const cloudsqlGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudsql.googleapis.com'),
      );
  static const computeGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const dataprocGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataproc.googleapis.com'),
      );
  static const dlpGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dlp.googleapis.com'),
      );
  static const iamGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('iam.googleapis.com'),
      );
  static const loggingGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('logging.googleapis.com'),
      );
  static const orgpolicyGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('orgpolicy.googleapis.com'),
      );
  static const pubsubGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('pubsub.googleapis.com'),
      );
  static const spannerGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('spanner.googleapis.com'),
      );
  static const secretmanagerGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('secretmanager.googleapis.com'),
      );
  static const speakeridGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('speakerid.googleapis.com'),
      );
  static const storageGoogleapisCom =
      OrganizationAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<OrganizationAccessApprovalSettingsCloudProduct> values = [
    all,
    ga,
    accessContextManager,
    anthosIdentityService,
    alloydbForPostgresql,
    apigee,
    applicationIntegration,
    appHub,
    artifactRegistry,
    anthosServiceMesh,
    accessTransparency,
    bigquery,
    certificateAuthorityService,
    cloudBigtable,
    ccaiAssistAndKnowledge,
    cloudDataflow,
    cloudDataproc,
    cepSecurityGateway,
    complianceEvaluationService,
    cloudFirestore,
    cloudHealthcareApi,
    chronicle,
    cloudAiCompanionGatewayTitan,
    googleCloudArmor,
    cloudAssetInventory,
    cloudAssetSearch,
    cloudDeploy,
    cloudDns,
    cloudLatency,
    cloudMemorystoreForRedis,
    cloudnetControl,
    cloudRiptide,
    cloudTasks,
    cloudTrace,
    cloudDataTransfer,
    cloudComposer,
    integrationConnectors,
    contactCenterAiInsights,
    cloudPubSub,
    cloudRun,
    resourceManager,
    cloudSpanner,
    databaseCenter,
    cloudDataform,
    cloudDataFusion,
    dataplex,
    dialogflowCustomerExperienceEdition,
    cloudDlp,
    documentAi,
    edgeContainer,
    edgeNetwork,
    cloudEkm,
    eventarc,
    firebaseDataConnect,
    firebaseRules,
    appEngine,
    cloudBuild,
    computeEngine,
    cloudFunctions2ndGen,
    cloudFilestore,
    cloudInterconnect,
    cloudNetappVolumes,
    cloudStorage,
    generativeAiAppBuilder,
    googleKubernetesEngine,
    backupForGkeApi,
    gkeConnect,
    gkeHub,
    hoverboard,
    cloudHsm,
    cloudIdentityAndAccessManagement,
    cloudIdentityAwareProxy,
    infrastructureManager,
    identityStorageService,
    keyAccessJustifications,
    cloudKeyManagementService,
    cloudLogging,
    lookerGoogleCloudCore,
    lookerStudio,
    managementHub,
    modelArmor,
    cloudMonitoring,
    cloudNat,
    connectivityHub,
    externalPassthroughNetworkLoadBalancer,
    oidcOne,
    organizationPolicyService,
    orgLifecycle,
    persistentDisk,
    parameterManager,
    privateServicesAccess,
    regionalInternalApplicationLoadBalancer,
    storageBatchOperations,
    cloudSecurityCommandCenter,
    secureSourceManager,
    seeker,
    serviceProvisioning,
    speakerId,
    secretManager,
    cloudSql,
    cloudSpeechToText,
    trafficDirector,
    cloudTextToSpeech,
    uspsAndromeda,
    vertexAi,
    virtualPrivateCloudVpc,
    vpcAccess,
    vpcServiceControlsTroubleshooter,
    vpcVirtnet,
    cloudWorkstations,
    webRisk,
    gaOnly,
    appengineGoogleapisCom,
    artifactregistryGoogleapisCom,
    bigqueryGoogleapisCom,
    bigtableGoogleapisCom,
    containerGoogleapisCom,
    cloudkmsGoogleapisCom,
    cloudresourcemanagerGoogleapisCom,
    cloudsqlGoogleapisCom,
    computeGoogleapisCom,
    dataflowGoogleapisCom,
    dataprocGoogleapisCom,
    dlpGoogleapisCom,
    iamGoogleapisCom,
    loggingGoogleapisCom,
    orgpolicyGoogleapisCom,
    pubsubGoogleapisCom,
    spannerGoogleapisCom,
    secretmanagerGoogleapisCom,
    speakeridGoogleapisCom,
    storageGoogleapisCom,
  ];
}

/// `enrollment_level` — derived from the provider schema description.
extension type const OrganizationAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  OrganizationAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = OrganizationAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<OrganizationAccessApprovalSettingsEnrollmentLevel> values =
      [blockAll];
}

/// Factory wrapper for `google_organization_access_approval_settings`.
///
/// Access Approval enables you to require your explicit approval whenever
/// Google support and engineering need to access your customer content.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrganizationAccessApprovalSettings extends Resource {
  static const String tfType = 'google_organization_access_approval_settings';

  GoogleOrganizationAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? notificationEmails,
    required TfArg<String> organizationId,
    required List<OrganizationAccessApprovalSettingsEnrolledServices>
    enrolledServices,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active_key_version': ?activeKeyVersion,
           'deletion_policy': ?deletionPolicy,
           'notification_emails': ?notificationEmails,
           'organization_id': organizationId,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOrganizationAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationAccessApprovalSettings>`.
  RefTo<GoogleOrganizationAccessApprovalSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_has_active_key_version` attribute.
  TfRef<bool> get ancestorHasActiveKeyVersion =>
      TfRef.attribute<bool>(this, 'ancestor_has_active_key_version');

  /// Reference to `enrolled_ancestor` attribute.
  TfRef<bool> get enrolledAncestor =>
      TfRef.attribute<bool>(this, 'enrolled_ancestor');

  /// Reference to `invalid_key_version` attribute.
  TfRef<bool> get invalidKeyVersion =>
      TfRef.attribute<bool>(this, 'invalid_key_version');

  /// Reference to `active_key_version` attribute.
  TfRef<String> get activeKeyVersion =>
      TfRef.attribute<String>(this, 'active_key_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `notification_emails` attribute.
  TfRef<List<String>> get notificationEmails =>
      TfRef.attribute<List<String>>(this, 'notification_emails');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
