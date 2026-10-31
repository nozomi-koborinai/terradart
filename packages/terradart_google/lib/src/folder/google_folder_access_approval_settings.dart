// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_access_approval_settings`.
const Set<String> _googleFolderAccessApprovalSettingsSensitive = <String>{};

/// Typed helper for the `enrolled_services` block of
/// `google_folder_access_approval_settings` (derived from provider schema).
@immutable
final class FolderAccessApprovalSettingsEnrolledServices {
  const FolderAccessApprovalSettingsEnrolledServices({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  final FolderAccessApprovalSettingsCloudProduct cloudProduct;

  final FolderAccessApprovalSettingsEnrollmentLevel? enrollmentLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloud_product': cloudProduct.toTfJson(),
    'enrollment_level': ?enrollmentLevel?.toTfJson(),
  };
}

/// `cloud_product` — derived from the provider schema description.
extension type const FolderAccessApprovalSettingsCloudProduct._(TfArg<String> _)
    implements TfArg<String> {
  FolderAccessApprovalSettingsCloudProduct.variable(String name)
    : this._(TfArg.variable(name));
  FolderAccessApprovalSettingsCloudProduct.expression(String template)
    : this._(TfArg.expression(template));
  const FolderAccessApprovalSettingsCloudProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const all = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('all'),
  );
  static const ga = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GA'),
  );
  static const accessContextManager =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Access Context Manager'),
      );
  static const anthosIdentityService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Anthos Identity Service'),
      );
  static const alloydbForPostgresql =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('AlloyDB for PostgreSQL'),
      );
  static const apigee = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Apigee'),
  );
  static const applicationIntegration =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Application Integration'),
      );
  static const appHub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Hub'),
  );
  static const artifactRegistry = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Artifact Registry'),
  );
  static const anthosServiceMesh = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Anthos Service Mesh'),
  );
  static const accessTransparency = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Access Transparency'),
  );
  static const bigquery = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('BigQuery'),
  );
  static const certificateAuthorityService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Certificate Authority Service'),
      );
  static const cloudBigtable = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Bigtable'),
  );
  static const ccaiAssistAndKnowledge =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('CCAI Assist and Knowledge'),
      );
  static const cloudDataflow = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataflow'),
  );
  static const cloudDataproc = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataproc'),
  );
  static const cepSecurityGateway = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('CEP Security Gateway'),
  );
  static const complianceEvaluationService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Compliance Evaluation Service'),
      );
  static const cloudFirestore = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Firestore'),
  );
  static const cloudHealthcareApi = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Healthcare API'),
  );
  static const chronicle = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Chronicle'),
  );
  static const cloudAiCompanionGatewayTitan =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud AI Companion Gateway - Titan'),
      );
  static const googleCloudArmor = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Google Cloud Armor'),
  );
  static const cloudAssetInventory = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Asset Inventory'),
  );
  static const cloudAssetSearch = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Asset Search'),
  );
  static const cloudDeploy = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Deploy'),
  );
  static const cloudDns = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DNS'),
  );
  static const cloudLatency = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Latency'),
  );
  static const cloudMemorystoreForRedis =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Memorystore for Redis'),
      );
  static const cloudnetControl = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('CloudNet Control'),
  );
  static const cloudRiptide = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Riptide'),
  );
  static const cloudTasks = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Tasks'),
  );
  static const cloudTrace = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Trace'),
  );
  static const cloudDataTransfer = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Data Transfer'),
  );
  static const cloudComposer = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Composer'),
  );
  static const integrationConnectors =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Integration Connectors'),
      );
  static const contactCenterAiInsights =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Contact Center AI Insights'),
      );
  static const cloudPubSub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Pub/Sub'),
  );
  static const cloudRun = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Run'),
  );
  static const resourceManager = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Resource Manager'),
  );
  static const cloudSpanner = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Spanner'),
  );
  static const databaseCenter = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Database Center'),
  );
  static const cloudDataform = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Dataform'),
  );
  static const cloudDataFusion = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Data Fusion'),
  );
  static const dataplex = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Dataplex'),
  );
  static const dialogflowCustomerExperienceEdition =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Dialogflow Customer Experience Edition'),
      );
  static const cloudDlp = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud DLP'),
  );
  static const documentAi = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Document AI'),
  );
  static const edgeContainer = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Container'),
  );
  static const edgeNetwork = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Edge Network'),
  );
  static const cloudEkm = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud EKM'),
  );
  static const eventarc = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Eventarc'),
  );
  static const firebaseDataConnect = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Firebase Data Connect'),
  );
  static const firebaseRules = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Firebase Rules'),
  );
  static const appEngine = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('App Engine'),
  );
  static const cloudBuild = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Build'),
  );
  static const computeEngine = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Compute Engine'),
  );
  static const cloudFunctions2ndGen =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Functions (2nd Gen)'),
      );
  static const cloudFilestore = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Filestore'),
  );
  static const cloudInterconnect = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Interconnect'),
  );
  static const cloudNetappVolumes = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud NetApp Volumes'),
  );
  static const cloudStorage = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Storage'),
  );
  static const generativeAiAppBuilder =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Generative AI App Builder'),
      );
  static const googleKubernetesEngine =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Google Kubernetes Engine'),
      );
  static const backupForGkeApi = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Backup for GKE API'),
  );
  static const gkeConnect = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Connect'),
  );
  static const gkeHub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('GKE Hub'),
  );
  static const hoverboard = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Hoverboard'),
  );
  static const cloudHsm = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud HSM'),
  );
  static const cloudIdentityAndAccessManagement =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity and Access Management'),
      );
  static const cloudIdentityAwareProxy =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Identity-Aware Proxy'),
      );
  static const infrastructureManager =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Infrastructure Manager'),
      );
  static const identityStorageService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Identity Storage Service'),
      );
  static const keyAccessJustifications =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Key Access Justifications'),
      );
  static const cloudKeyManagementService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Key Management Service'),
      );
  static const cloudLogging = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Logging'),
  );
  static const lookerGoogleCloudCore =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Looker (Google Cloud core)'),
      );
  static const lookerStudio = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Looker Studio'),
  );
  static const managementHub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Management Hub'),
  );
  static const modelArmor = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Model Armor'),
  );
  static const cloudMonitoring = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Monitoring'),
  );
  static const cloudNat = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud NAT'),
  );
  static const connectivityHub = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Connectivity Hub'),
  );
  static const externalPassthroughNetworkLoadBalancer =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('External passthrough Network Load Balancer'),
      );
  static const oidcOne = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('OIDC One'),
  );
  static const organizationPolicyService =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Organization Policy Service'),
      );
  static const orgLifecycle = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Org Lifecycle'),
  );
  static const persistentDisk = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Persistent Disk'),
  );
  static const parameterManager = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Parameter Manager'),
  );
  static const privateServicesAccess =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Private Services Access'),
      );
  static const regionalInternalApplicationLoadBalancer =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Regional Internal Application Load Balancer'),
      );
  static const storageBatchOperations =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Storage Batch Operations'),
      );
  static const cloudSecurityCommandCenter =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Cloud Security Command Center'),
      );
  static const secureSourceManager = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Secure Source Manager'),
  );
  static const seeker = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Seeker'),
  );
  static const serviceProvisioning = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Service Provisioning'),
  );
  static const speakerId = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Speaker ID'),
  );
  static const secretManager = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Secret Manager'),
  );
  static const cloudSql = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud SQL'),
  );
  static const cloudSpeechToText = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Speech-to-Text'),
  );
  static const trafficDirector = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Traffic Director'),
  );
  static const cloudTextToSpeech = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Text-to-Speech'),
  );
  static const uspsAndromeda = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('USPS Andromeda'),
  );
  static const vertexAi = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Vertex AI'),
  );
  static const virtualPrivateCloudVpc =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('Virtual Private Cloud (VPC)'),
      );
  static const vpcAccess = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC Access'),
  );
  static const vpcServiceControlsTroubleshooter =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('VPC Service Controls Troubleshooter'),
      );
  static const vpcVirtnet = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('VPC virtnet'),
  );
  static const cloudWorkstations = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Cloud Workstations'),
  );
  static const webRisk = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('Web Risk'),
  );
  static const gaOnly = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('ga-only'),
  );
  static const appengineGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('appengine.googleapis.com'),
      );
  static const artifactregistryGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('artifactregistry.googleapis.com'),
      );
  static const bigqueryGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigquery.googleapis.com'),
      );
  static const bigtableGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('bigtable.googleapis.com'),
      );
  static const containerGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('container.googleapis.com'),
      );
  static const cloudkmsGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudkms.googleapis.com'),
      );
  static const cloudresourcemanagerGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudresourcemanager.googleapis.com'),
      );
  static const cloudsqlGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('cloudsql.googleapis.com'),
      );
  static const computeGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('compute.googleapis.com'),
      );
  static const dataflowGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataflow.googleapis.com'),
      );
  static const dataprocGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('dataproc.googleapis.com'),
      );
  static const dlpGoogleapisCom = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('dlp.googleapis.com'),
  );
  static const iamGoogleapisCom = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('iam.googleapis.com'),
  );
  static const loggingGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('logging.googleapis.com'),
      );
  static const orgpolicyGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('orgpolicy.googleapis.com'),
      );
  static const pubsubGoogleapisCom = FolderAccessApprovalSettingsCloudProduct._(
    TfArgLiteral('pubsub.googleapis.com'),
  );
  static const spannerGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('spanner.googleapis.com'),
      );
  static const secretmanagerGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('secretmanager.googleapis.com'),
      );
  static const speakeridGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('speakerid.googleapis.com'),
      );
  static const storageGoogleapisCom =
      FolderAccessApprovalSettingsCloudProduct._(
        TfArgLiteral('storage.googleapis.com'),
      );

  static const List<FolderAccessApprovalSettingsCloudProduct> values = [
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
extension type const FolderAccessApprovalSettingsEnrollmentLevel._(
  TfArg<String> _
) implements TfArg<String> {
  FolderAccessApprovalSettingsEnrollmentLevel.variable(String name)
    : this._(TfArg.variable(name));
  FolderAccessApprovalSettingsEnrollmentLevel.expression(String template)
    : this._(TfArg.expression(template));
  const FolderAccessApprovalSettingsEnrollmentLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const blockAll = FolderAccessApprovalSettingsEnrollmentLevel._(
    TfArgLiteral('BLOCK_ALL'),
  );

  static const List<FolderAccessApprovalSettingsEnrollmentLevel> values = [
    blockAll,
  ];
}

/// Factory wrapper for `google_folder_access_approval_settings`.
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
final class GoogleFolderAccessApprovalSettings extends Resource {
  static const String tfType = 'google_folder_access_approval_settings';

  GoogleFolderAccessApprovalSettings(
    super.localName, {
    TfArg<String>? activeKeyVersion,
    TfArg<String>? deletionPolicy,
    required TfArg<String> folderId,
    TfArg<List<String>>? notificationEmails,
    required List<FolderAccessApprovalSettingsEnrolledServices>
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
           'folder_id': folderId,
           'notification_emails': ?notificationEmails,
           'enrolled_services': TfArg.literal([
             for (final e in enrolledServices) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFolderAccessApprovalSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFolderAccessApprovalSettings>`.
  RefTo<GoogleFolderAccessApprovalSettings> get ref => RefTo.of(this);

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

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `notification_emails` attribute.
  TfRef<List<String>> get notificationEmails =>
      TfRef.attribute<List<String>>(this, 'notification_emails');
}
