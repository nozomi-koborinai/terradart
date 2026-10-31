// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_access_approval_settings`.
const Set<String> _googleProjectAccessApprovalSettingsSensitive = <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_project_access_approval_settings` (derived from provider schema).
@immutable
final class ProjectAccessApprovalSettingsEnrolledServices {
  const ProjectAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final ProjectAccessApprovalSettingsCloudProduct cloudProduct;

  final ProjectAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const ProjectAccessApprovalSettingsCloudProduct._(
  TfArg<String> _
) implements TfArg<String> {
  ProjectAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  ProjectAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const ProjectAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const ga = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GA'),
  );
  static const accessContextManager =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Access Context Manager'),
      );
  static const anthosIdentityService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Anthos Identity Service'),
      );
  static const alloydbForPostgresql =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('AlloyDB for PostgreSQL'),
      );
  static const apigee = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Apigee'),
  );
  static const applicationIntegration =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Application Integration'),
      );
  static const appHub = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Hub'),
  );
  static const artifactRegistry = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Artifact Registry'),
  );
  static const anthosServiceMesh = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Anthos Service Mesh'),
  );
  static const accessTransparency = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Access Transparency'),
  );
  static const bigquery = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('BigQuery'),
  );
  static const certificateAuthorityService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Certificate Authority Service'),
      );
  static const cloudBigtable = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Bigtable'),
  );
  static const ccaiAssistAndKnowledge =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('CCAI Assist and Knowledge'),
      );
  static const cloudDataflow = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataflow'),
  );
  static const cloudDataproc = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataproc'),
  );
  static const cepSecurityGateway = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('CEP Security Gateway'),
  );
  static const complianceEvaluationService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Compliance Evaluation Service'),
      );
  static const cloudFirestore = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Firestore'),
  );
  static const cloudHealthcareApi = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Healthcare API'),
  );
  static const chronicle = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Chronicle'),
  );
  static const cloudAiCompanionGatewayTitan =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud AI Companion Gateway - Titan'),
      );
  static const googleCloudArmor = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Google Cloud Armor'),
  );
  static const cloudAssetInventory =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Asset Inventory'),
      );
  static const cloudAssetSearch = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Asset Search'),
  );
  static const cloudDeploy = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Deploy'),
  );
  static const cloudDns = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DNS'),
  );
  static const cloudLatency = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Latency'),
  );
  static const cloudMemorystoreForRedis =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Memorystore for Redis'),
      );
  static const cloudnetControl = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('CloudNet Control'),
  );
  static const cloudRiptide = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Riptide'),
  );
  static const cloudTasks = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Tasks'),
  );
  static const cloudTrace = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Trace'),
  );
  static const cloudDataTransfer = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Data Transfer'),
  );
  static const cloudComposer = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Composer'),
  );
  static const integrationConnectors =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Integration Connectors'),
      );
  static const contactCenterAiInsights =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Contact Center AI Insights'),
      );
  static const cloudPubSub = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Pub/Sub'),
  );
  static const cloudRun = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Run'),
  );
  static const resourceManager = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Resource Manager'),
  );
  static const cloudSpanner = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Spanner'),
  );
  static const databaseCenter = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Database Center'),
  );
  static const cloudDataform = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataform'),
  );
  static const cloudDataFusion = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Data Fusion'),
  );
  static const dataplex = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Dataplex'),
  );
  static const dialogflowCustomerExperienceEdition =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Dialogflow Customer Experience Edition'),
      );
  static const cloudDlp = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DLP'),
  );
  static const documentAi = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Document AI'),
  );
  static const edgeContainer = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Container'),
  );
  static const edgeNetwork = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Network'),
  );
  static const cloudEkm = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud EKM'),
  );
  static const eventarc = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Eventarc'),
  );
  static const firebaseDataConnect =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Firebase Data Connect'),
      );
  static const firebaseRules = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Firebase Rules'),
  );
  static const appEngine = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Engine'),
  );
  static const cloudBuild = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Build'),
  );
  static const computeEngine = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Compute Engine'),
  );
  static const cloudFunctions2ndGen =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Functions (2nd Gen)'),
      );
  static const cloudFilestore = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Filestore'),
  );
  static const cloudInterconnect = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Interconnect'),
  );
  static const cloudNetappVolumes = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud NetApp Volumes'),
  );
  static const cloudStorage = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Storage'),
  );
  static const generativeAiAppBuilder =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Generative AI App Builder'),
      );
  static const googleKubernetesEngine =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Google Kubernetes Engine'),
      );
  static const backupForGkeApi = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Backup for GKE API'),
  );
  static const gkeConnect = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Connect'),
  );
  static const gkeHub = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Hub'),
  );
  static const hoverboard = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Hoverboard'),
  );
  static const cloudHsm = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud HSM'),
  );
  static const cloudIdentityAndAccessManagement =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity and Access Management'),
      );
  static const cloudIdentityAwareProxy =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity-Aware Proxy'),
      );
  static const infrastructureManager =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Infrastructure Manager'),
      );
  static const identityStorageService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Identity Storage Service'),
      );
  static const keyAccessJustifications =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Key Access Justifications'),
      );
  static const cloudKeyManagementService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Key Management Service'),
      );
  static const cloudLogging = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Logging'),
  );
  static const lookerGoogleCloudCore =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Looker (Google Cloud core)'),
      );
  static const lookerStudio = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Looker Studio'),
  );
  static const managementHub = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Management Hub'),
  );
  static const modelArmor = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Model Armor'),
  );
  static const cloudMonitoring = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Monitoring'),
  );
  static const cloudNat = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud NAT'),
  );
  static const connectivityHub = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Connectivity Hub'),
  );
  static const externalPassthroughNetworkLoadBalancer =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('External passthrough Network Load Balancer'),
      );
  static const oidcOne = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('OIDC One'),
  );
  static const organizationPolicyService =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Organization Policy Service'),
      );
  static const orgLifecycle = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Org Lifecycle'),
  );
  static const persistentDisk = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Persistent Disk'),
  );
  static const parameterManager = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Parameter Manager'),
  );
  static const privateServicesAccess =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Private Services Access'),
      );
  static const regionalInternalApplicationLoadBalancer =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Regional Internal Application Load Balancer'),
      );
  static const storageBatchOperations =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Storage Batch Operations'),
      );
  static const cloudSecurityCommandCenter =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Security Command Center'),
      );
  static const secureSourceManager =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Secure Source Manager'),
      );
  static const seeker = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Seeker'),
  );
  static const serviceProvisioning =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Service Provisioning'),
      );
  static const speakerId = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Speaker ID'),
  );
  static const secretManager = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Secret Manager'),
  );
  static const cloudSql = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud SQL'),
  );
  static const cloudSpeechToText = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Speech-to-Text'),
  );
  static const trafficDirector = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Traffic Director'),
  );
  static const cloudTextToSpeech = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Text-to-Speech'),
  );
  static const uspsAndromeda = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('USPS Andromeda'),
  );
  static const vertexAi = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Vertex AI'),
  );
  static const virtualPrivateCloudVpc =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Virtual Private Cloud (VPC)'),
      );
  static const vpcAccess = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC Access'),
  );
  static const vpcServiceControlsTroubleshooter =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('VPC Service Controls Troubleshooter'),
      );
  static const vpcVirtnet = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC virtnet'),
  );
  static const cloudWorkstations = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Workstations'),
  );
  static const webRisk = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Web Risk'),
  );
  static const gaOnly = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('ga-only'),
  );
  static const appengineGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const artifactregistryGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('artifactregistry.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const containerGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('container.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const cloudresourcemanagerGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudresourcemanager.googleapis.com'),
      );
  static const cloudsqlGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudsql.googleapis.com'),
      );
  static const computeGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const dataprocGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataproc.googleapis.com'),
      );
  static const dlpGoogleapisCom = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('dlp.googleapis.com'),
  );
  static const iamGoogleapisCom = ProjectAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('iam.googleapis.com'),
  );
  static const loggingGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('logging.googleapis.com'),
      );
  static const orgpolicyGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('orgpolicy.googleapis.com'),
      );
  static const pubsubGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('pubsub.googleapis.com'),
      );
  static const spannerGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('spanner.googleapis.com'),
      );
  static const secretmanagerGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('secretmanager.googleapis.com'),
      );
  static const speakeridGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('speakerid.googleapis.com'),
      );
  static const storageGoogleapisCom =
      ProjectAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<ProjectAccessApprovalSettingsCloudProduct> values = [
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
extension type const ProjectAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  ProjectAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  ProjectAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ProjectAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = ProjectAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<ProjectAccessApprovalSettingsEnrollmentLevel> values = [
    blockAll,
  ];
}

/// Factory wrapper for `google_project_access_approval_settings`.
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
final class GoogleProjectAccessApprovalSettings extends Resource {
  static const String tfType = 'google_project_access_approval_settings';

  GoogleProjectAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? notificationEmails,
    TfArg<String>? project,
    required TfArg<String> projectId,
    required List<ProjectAccessApprovalSettingsEnrolledServices>
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
           'project': ?project,
           'project_id': projectId,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleProjectAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectAccessApprovalSettings>`.
  RefTo<GoogleProjectAccessApprovalSettings> get ref => RefTo.of(this);

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
