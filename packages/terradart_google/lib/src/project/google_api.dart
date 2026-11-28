// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// A Google API: the `service` of a `GoogleProjectService`, and what
/// [requiredApiForTerraformType] returns.
///
/// ```dart
/// add(GoogleProjectService('compute', service: .compute));
/// add(
///   GoogleProjectService(
///     'generative_language',
///     service: .custom('generativelanguage.googleapis.com'),
///   ),
/// );
/// add(
///   GoogleProjectService(
///     'endpoints',
///     service: .arg(.literal('orders.endpoints.my-project.cloud.goog')),
///   ),
/// );
/// ```
///
/// There is one constant per API a wrapped resource type needs, named after
/// the label before `.googleapis.com` as an enum member is
/// (`compute.googleapis.com` is `compute`). `.custom` takes any other Google
/// API. `.arg` takes any string argument unchecked: a Terraform variable,
/// another block's attribute, or a service that is not a Google API, such as
/// a Cloud Endpoints service.
extension type const GoogleApi._(TfArg<String> _) implements TfArg<String> {
  /// The Google API [service] (`<name>.googleapis.com`) no constant names.
  ///
  /// Throws an [ArgumentError] when [service] is not such a name. The check
  /// is why this constructor is not `const`.
  factory GoogleApi.custom(String service) {
    if (!service.endsWith('.googleapis.com') ||
        service.length == '.googleapis.com'.length) {
      throw ArgumentError.value(
        service,
        'service',
        'is not a Google API (<name>.googleapis.com); pass another service '
            'through GoogleApi.arg',
      );
    }
    return GoogleApi._(TfArg.literal(service));
  }

  GoogleApi.variable(String name) : this._(TfArg.variable(name));
  GoogleApi.expression(String template) : this._(TfArg.expression(template));
  const GoogleApi.arg(TfArg<String> arg) : this._(arg);

  /// `accessapproval.googleapis.com`
  static const accessapproval = GoogleApi._(
    TfArgLiteral('accessapproval.googleapis.com'),
  );

  /// `accesscontextmanager.googleapis.com`
  static const accesscontextmanager = GoogleApi._(
    TfArgLiteral('accesscontextmanager.googleapis.com'),
  );

  /// `agenticapplications.googleapis.com`
  static const agenticapplications = GoogleApi._(
    TfArgLiteral('agenticapplications.googleapis.com'),
  );

  /// `agentidentity.googleapis.com`
  static const agentidentity = GoogleApi._(
    TfArgLiteral('agentidentity.googleapis.com'),
  );

  /// `agentregistry.googleapis.com`
  static const agentregistry = GoogleApi._(
    TfArgLiteral('agentregistry.googleapis.com'),
  );

  /// `aiplatform.googleapis.com`
  static const aiplatform = GoogleApi._(
    TfArgLiteral('aiplatform.googleapis.com'),
  );

  /// `alloydb.googleapis.com`
  static const alloydb = GoogleApi._(TfArgLiteral('alloydb.googleapis.com'));

  /// `analyticshub.googleapis.com`
  static const analyticshub = GoogleApi._(
    TfArgLiteral('analyticshub.googleapis.com'),
  );

  /// `apigateway.googleapis.com`
  static const apigateway = GoogleApi._(
    TfArgLiteral('apigateway.googleapis.com'),
  );

  /// `apigee.googleapis.com`
  static const apigee = GoogleApi._(TfArgLiteral('apigee.googleapis.com'));

  /// `apihub.googleapis.com`
  static const apihub = GoogleApi._(TfArgLiteral('apihub.googleapis.com'));

  /// `apikeys.googleapis.com`
  static const apikeys = GoogleApi._(TfArgLiteral('apikeys.googleapis.com'));

  /// `appengine.googleapis.com`
  static const appengine = GoogleApi._(
    TfArgLiteral('appengine.googleapis.com'),
  );

  /// `apphub.googleapis.com`
  static const apphub = GoogleApi._(TfArgLiteral('apphub.googleapis.com'));

  /// `artifactregistry.googleapis.com`
  static const artifactregistry = GoogleApi._(
    TfArgLiteral('artifactregistry.googleapis.com'),
  );

  /// `assuredworkloads.googleapis.com`
  static const assuredworkloads = GoogleApi._(
    TfArgLiteral('assuredworkloads.googleapis.com'),
  );

  /// `backupdr.googleapis.com`
  static const backupdr = GoogleApi._(TfArgLiteral('backupdr.googleapis.com'));

  /// `beyondcorp.googleapis.com`
  static const beyondcorp = GoogleApi._(
    TfArgLiteral('beyondcorp.googleapis.com'),
  );

  /// `biglake.googleapis.com`
  static const biglake = GoogleApi._(TfArgLiteral('biglake.googleapis.com'));

  /// `bigquery.googleapis.com`
  static const bigquery = GoogleApi._(TfArgLiteral('bigquery.googleapis.com'));

  /// `bigqueryconnection.googleapis.com`
  static const bigqueryconnection = GoogleApi._(
    TfArgLiteral('bigqueryconnection.googleapis.com'),
  );

  /// `bigquerydatapolicy.googleapis.com`
  static const bigquerydatapolicy = GoogleApi._(
    TfArgLiteral('bigquerydatapolicy.googleapis.com'),
  );

  /// `bigquerydatatransfer.googleapis.com`
  static const bigquerydatatransfer = GoogleApi._(
    TfArgLiteral('bigquerydatatransfer.googleapis.com'),
  );

  /// `bigqueryreservation.googleapis.com`
  static const bigqueryreservation = GoogleApi._(
    TfArgLiteral('bigqueryreservation.googleapis.com'),
  );

  /// `bigtableadmin.googleapis.com`
  static const bigtableadmin = GoogleApi._(
    TfArgLiteral('bigtableadmin.googleapis.com'),
  );

  /// `billingbudgets.googleapis.com`
  static const billingbudgets = GoogleApi._(
    TfArgLiteral('billingbudgets.googleapis.com'),
  );

  /// `binaryauthorization.googleapis.com`
  static const binaryauthorization = GoogleApi._(
    TfArgLiteral('binaryauthorization.googleapis.com'),
  );

  /// `blockchainnodeengine.googleapis.com`
  static const blockchainnodeengine = GoogleApi._(
    TfArgLiteral('blockchainnodeengine.googleapis.com'),
  );

  /// `certificatemanager.googleapis.com`
  static const certificatemanager = GoogleApi._(
    TfArgLiteral('certificatemanager.googleapis.com'),
  );

  /// `ces.googleapis.com`
  static const ces = GoogleApi._(TfArgLiteral('ces.googleapis.com'));

  /// `chronicle.googleapis.com`
  static const chronicle = GoogleApi._(
    TfArgLiteral('chronicle.googleapis.com'),
  );

  /// `cloudasset.googleapis.com`
  static const cloudasset = GoogleApi._(
    TfArgLiteral('cloudasset.googleapis.com'),
  );

  /// `cloudbilling.googleapis.com`
  static const cloudbilling = GoogleApi._(
    TfArgLiteral('cloudbilling.googleapis.com'),
  );

  /// `cloudbuild.googleapis.com`
  static const cloudbuild = GoogleApi._(
    TfArgLiteral('cloudbuild.googleapis.com'),
  );

  /// `clouddeploy.googleapis.com`
  static const clouddeploy = GoogleApi._(
    TfArgLiteral('clouddeploy.googleapis.com'),
  );

  /// `cloudfunctions.googleapis.com`
  static const cloudfunctions = GoogleApi._(
    TfArgLiteral('cloudfunctions.googleapis.com'),
  );

  /// `cloudidentity.googleapis.com`
  static const cloudidentity = GoogleApi._(
    TfArgLiteral('cloudidentity.googleapis.com'),
  );

  /// `cloudkms.googleapis.com`
  static const cloudkms = GoogleApi._(TfArgLiteral('cloudkms.googleapis.com'));

  /// `cloudquotas.googleapis.com`
  static const cloudquotas = GoogleApi._(
    TfArgLiteral('cloudquotas.googleapis.com'),
  );

  /// `cloudresourcemanager.googleapis.com`
  static const cloudresourcemanager = GoogleApi._(
    TfArgLiteral('cloudresourcemanager.googleapis.com'),
  );

  /// `cloudscheduler.googleapis.com`
  static const cloudscheduler = GoogleApi._(
    TfArgLiteral('cloudscheduler.googleapis.com'),
  );

  /// `cloudsupport.googleapis.com`
  static const cloudsupport = GoogleApi._(
    TfArgLiteral('cloudsupport.googleapis.com'),
  );

  /// `cloudtasks.googleapis.com`
  static const cloudtasks = GoogleApi._(
    TfArgLiteral('cloudtasks.googleapis.com'),
  );

  /// `composer.googleapis.com`
  static const composer = GoogleApi._(TfArgLiteral('composer.googleapis.com'));

  /// `compute.googleapis.com`
  static const compute = GoogleApi._(TfArgLiteral('compute.googleapis.com'));

  /// `config.googleapis.com`
  static const config = GoogleApi._(TfArgLiteral('config.googleapis.com'));

  /// `connectors.googleapis.com`
  static const connectors = GoogleApi._(
    TfArgLiteral('connectors.googleapis.com'),
  );

  /// `contactcenterinsights.googleapis.com`
  static const contactcenterinsights = GoogleApi._(
    TfArgLiteral('contactcenterinsights.googleapis.com'),
  );

  /// `container.googleapis.com`
  static const container = GoogleApi._(
    TfArgLiteral('container.googleapis.com'),
  );

  /// `containeranalysis.googleapis.com`
  static const containeranalysis = GoogleApi._(
    TfArgLiteral('containeranalysis.googleapis.com'),
  );

  /// `datacatalog.googleapis.com`
  static const datacatalog = GoogleApi._(
    TfArgLiteral('datacatalog.googleapis.com'),
  );

  /// `dataflow.googleapis.com`
  static const dataflow = GoogleApi._(TfArgLiteral('dataflow.googleapis.com'));

  /// `dataform.googleapis.com`
  static const dataform = GoogleApi._(TfArgLiteral('dataform.googleapis.com'));

  /// `datafusion.googleapis.com`
  static const datafusion = GoogleApi._(
    TfArgLiteral('datafusion.googleapis.com'),
  );

  /// `datalineage.googleapis.com`
  static const datalineage = GoogleApi._(
    TfArgLiteral('datalineage.googleapis.com'),
  );

  /// `datamigration.googleapis.com`
  static const datamigration = GoogleApi._(
    TfArgLiteral('datamigration.googleapis.com'),
  );

  /// `datapipelines.googleapis.com`
  static const datapipelines = GoogleApi._(
    TfArgLiteral('datapipelines.googleapis.com'),
  );

  /// `dataplex.googleapis.com`
  static const dataplex = GoogleApi._(TfArgLiteral('dataplex.googleapis.com'));

  /// `dataproc.googleapis.com`
  static const dataproc = GoogleApi._(TfArgLiteral('dataproc.googleapis.com'));

  /// `datastream.googleapis.com`
  static const datastream = GoogleApi._(
    TfArgLiteral('datastream.googleapis.com'),
  );

  /// `deploymentmanager.googleapis.com`
  static const deploymentmanager = GoogleApi._(
    TfArgLiteral('deploymentmanager.googleapis.com'),
  );

  /// `designcenter.googleapis.com`
  static const designcenter = GoogleApi._(
    TfArgLiteral('designcenter.googleapis.com'),
  );

  /// `developerconnect.googleapis.com`
  static const developerconnect = GoogleApi._(
    TfArgLiteral('developerconnect.googleapis.com'),
  );

  /// `dialogflow.googleapis.com`
  static const dialogflow = GoogleApi._(
    TfArgLiteral('dialogflow.googleapis.com'),
  );

  /// `discoveryengine.googleapis.com`
  static const discoveryengine = GoogleApi._(
    TfArgLiteral('discoveryengine.googleapis.com'),
  );

  /// `dlp.googleapis.com`
  static const dlp = GoogleApi._(TfArgLiteral('dlp.googleapis.com'));

  /// `dns.googleapis.com`
  static const dns = GoogleApi._(TfArgLiteral('dns.googleapis.com'));

  /// `documentai.googleapis.com`
  static const documentai = GoogleApi._(
    TfArgLiteral('documentai.googleapis.com'),
  );

  /// `domains.googleapis.com`
  static const domains = GoogleApi._(TfArgLiteral('domains.googleapis.com'));

  /// `essentialcontacts.googleapis.com`
  static const essentialcontacts = GoogleApi._(
    TfArgLiteral('essentialcontacts.googleapis.com'),
  );

  /// `eventarc.googleapis.com`
  static const eventarc = GoogleApi._(TfArgLiteral('eventarc.googleapis.com'));

  /// `file.googleapis.com`
  static const file = GoogleApi._(TfArgLiteral('file.googleapis.com'));

  /// `firebase.googleapis.com`
  static const firebase = GoogleApi._(TfArgLiteral('firebase.googleapis.com'));

  /// `firebaseappcheck.googleapis.com`
  static const firebaseappcheck = GoogleApi._(
    TfArgLiteral('firebaseappcheck.googleapis.com'),
  );

  /// `firebaseapphosting.googleapis.com`
  static const firebaseapphosting = GoogleApi._(
    TfArgLiteral('firebaseapphosting.googleapis.com'),
  );

  /// `firebasedatabase.googleapis.com`
  static const firebasedatabase = GoogleApi._(
    TfArgLiteral('firebasedatabase.googleapis.com'),
  );

  /// `firebasedataconnect.googleapis.com`
  static const firebasedataconnect = GoogleApi._(
    TfArgLiteral('firebasedataconnect.googleapis.com'),
  );

  /// `firebasehosting.googleapis.com`
  static const firebasehosting = GoogleApi._(
    TfArgLiteral('firebasehosting.googleapis.com'),
  );

  /// `firebaseremoteconfig.googleapis.com`
  static const firebaseremoteconfig = GoogleApi._(
    TfArgLiteral('firebaseremoteconfig.googleapis.com'),
  );

  /// `firebaserules.googleapis.com`
  static const firebaserules = GoogleApi._(
    TfArgLiteral('firebaserules.googleapis.com'),
  );

  /// `firebasestorage.googleapis.com`
  static const firebasestorage = GoogleApi._(
    TfArgLiteral('firebasestorage.googleapis.com'),
  );

  /// `firebasevertexai.googleapis.com`
  static const firebasevertexai = GoogleApi._(
    TfArgLiteral('firebasevertexai.googleapis.com'),
  );

  /// `firestore.googleapis.com`
  static const firestore = GoogleApi._(
    TfArgLiteral('firestore.googleapis.com'),
  );

  /// `ftp.googleapis.com`
  static const ftp = GoogleApi._(TfArgLiteral('ftp.googleapis.com'));

  /// `geminidataanalytics.googleapis.com`
  static const geminidataanalytics = GoogleApi._(
    TfArgLiteral('geminidataanalytics.googleapis.com'),
  );

  /// `gkebackup.googleapis.com`
  static const gkebackup = GoogleApi._(
    TfArgLiteral('gkebackup.googleapis.com'),
  );

  /// `gkehub.googleapis.com`
  static const gkehub = GoogleApi._(TfArgLiteral('gkehub.googleapis.com'));

  /// `gkeonprem.googleapis.com`
  static const gkeonprem = GoogleApi._(
    TfArgLiteral('gkeonprem.googleapis.com'),
  );

  /// `healthcare.googleapis.com`
  static const healthcare = GoogleApi._(
    TfArgLiteral('healthcare.googleapis.com'),
  );

  /// `hypercomputecluster.googleapis.com`
  static const hypercomputecluster = GoogleApi._(
    TfArgLiteral('hypercomputecluster.googleapis.com'),
  );

  /// `iam.googleapis.com`
  static const iam = GoogleApi._(TfArgLiteral('iam.googleapis.com'));

  /// `iap.googleapis.com`
  static const iap = GoogleApi._(TfArgLiteral('iap.googleapis.com'));

  /// `identitytoolkit.googleapis.com`
  static const identitytoolkit = GoogleApi._(
    TfArgLiteral('identitytoolkit.googleapis.com'),
  );

  /// `ids.googleapis.com`
  static const ids = GoogleApi._(TfArgLiteral('ids.googleapis.com'));

  /// `integrations.googleapis.com`
  static const integrations = GoogleApi._(
    TfArgLiteral('integrations.googleapis.com'),
  );

  /// `licensemanager.googleapis.com`
  static const licensemanager = GoogleApi._(
    TfArgLiteral('licensemanager.googleapis.com'),
  );

  /// `logging.googleapis.com`
  static const logging = GoogleApi._(TfArgLiteral('logging.googleapis.com'));

  /// `looker.googleapis.com`
  static const looker = GoogleApi._(TfArgLiteral('looker.googleapis.com'));

  /// `lustre.googleapis.com`
  static const lustre = GoogleApi._(TfArgLiteral('lustre.googleapis.com'));

  /// `managedidentities.googleapis.com`
  static const managedidentities = GoogleApi._(
    TfArgLiteral('managedidentities.googleapis.com'),
  );

  /// `managedkafka.googleapis.com`
  static const managedkafka = GoogleApi._(
    TfArgLiteral('managedkafka.googleapis.com'),
  );

  /// `memcache.googleapis.com`
  static const memcache = GoogleApi._(TfArgLiteral('memcache.googleapis.com'));

  /// `memorystore.googleapis.com`
  static const memorystore = GoogleApi._(
    TfArgLiteral('memorystore.googleapis.com'),
  );

  /// `metastore.googleapis.com`
  static const metastore = GoogleApi._(
    TfArgLiteral('metastore.googleapis.com'),
  );

  /// `migrationcenter.googleapis.com`
  static const migrationcenter = GoogleApi._(
    TfArgLiteral('migrationcenter.googleapis.com'),
  );

  /// `modelarmor.googleapis.com`
  static const modelarmor = GoogleApi._(
    TfArgLiteral('modelarmor.googleapis.com'),
  );

  /// `monitoring.googleapis.com`
  static const monitoring = GoogleApi._(
    TfArgLiteral('monitoring.googleapis.com'),
  );

  /// `netapp.googleapis.com`
  static const netapp = GoogleApi._(TfArgLiteral('netapp.googleapis.com'));

  /// `networkconnectivity.googleapis.com`
  static const networkconnectivity = GoogleApi._(
    TfArgLiteral('networkconnectivity.googleapis.com'),
  );

  /// `networkmanagement.googleapis.com`
  static const networkmanagement = GoogleApi._(
    TfArgLiteral('networkmanagement.googleapis.com'),
  );

  /// `networksecurity.googleapis.com`
  static const networksecurity = GoogleApi._(
    TfArgLiteral('networksecurity.googleapis.com'),
  );

  /// `networkservices.googleapis.com`
  static const networkservices = GoogleApi._(
    TfArgLiteral('networkservices.googleapis.com'),
  );

  /// `notebooks.googleapis.com`
  static const notebooks = GoogleApi._(
    TfArgLiteral('notebooks.googleapis.com'),
  );

  /// `observability.googleapis.com`
  static const observability = GoogleApi._(
    TfArgLiteral('observability.googleapis.com'),
  );

  /// `oracledatabase.googleapis.com`
  static const oracledatabase = GoogleApi._(
    TfArgLiteral('oracledatabase.googleapis.com'),
  );

  /// `orgpolicy.googleapis.com`
  static const orgpolicy = GoogleApi._(
    TfArgLiteral('orgpolicy.googleapis.com'),
  );

  /// `osconfig.googleapis.com`
  static const osconfig = GoogleApi._(TfArgLiteral('osconfig.googleapis.com'));

  /// `oslogin.googleapis.com`
  static const oslogin = GoogleApi._(TfArgLiteral('oslogin.googleapis.com'));

  /// `parallelstore.googleapis.com`
  static const parallelstore = GoogleApi._(
    TfArgLiteral('parallelstore.googleapis.com'),
  );

  /// `parametermanager.googleapis.com`
  static const parametermanager = GoogleApi._(
    TfArgLiteral('parametermanager.googleapis.com'),
  );

  /// `privateca.googleapis.com`
  static const privateca = GoogleApi._(
    TfArgLiteral('privateca.googleapis.com'),
  );

  /// `privilegedaccessmanager.googleapis.com`
  static const privilegedaccessmanager = GoogleApi._(
    TfArgLiteral('privilegedaccessmanager.googleapis.com'),
  );

  /// `publicca.googleapis.com`
  static const publicca = GoogleApi._(TfArgLiteral('publicca.googleapis.com'));

  /// `pubsub.googleapis.com`
  static const pubsub = GoogleApi._(TfArgLiteral('pubsub.googleapis.com'));

  /// `pubsublite.googleapis.com`
  static const pubsublite = GoogleApi._(
    TfArgLiteral('pubsublite.googleapis.com'),
  );

  /// `recaptchaenterprise.googleapis.com`
  static const recaptchaenterprise = GoogleApi._(
    TfArgLiteral('recaptchaenterprise.googleapis.com'),
  );

  /// `redis.googleapis.com`
  static const redis = GoogleApi._(TfArgLiteral('redis.googleapis.com'));

  /// `run.googleapis.com`
  static const run = GoogleApi._(TfArgLiteral('run.googleapis.com'));

  /// `saasservicemgmt.googleapis.com`
  static const saasservicemgmt = GoogleApi._(
    TfArgLiteral('saasservicemgmt.googleapis.com'),
  );

  /// `secretmanager.googleapis.com`
  static const secretmanager = GoogleApi._(
    TfArgLiteral('secretmanager.googleapis.com'),
  );

  /// `securesourcemanager.googleapis.com`
  static const securesourcemanager = GoogleApi._(
    TfArgLiteral('securesourcemanager.googleapis.com'),
  );

  /// `securitycenter.googleapis.com`
  static const securitycenter = GoogleApi._(
    TfArgLiteral('securitycenter.googleapis.com'),
  );

  /// `securityposture.googleapis.com`
  static const securityposture = GoogleApi._(
    TfArgLiteral('securityposture.googleapis.com'),
  );

  /// `servicedirectory.googleapis.com`
  static const servicedirectory = GoogleApi._(
    TfArgLiteral('servicedirectory.googleapis.com'),
  );

  /// `servicenetworking.googleapis.com`
  static const servicenetworking = GoogleApi._(
    TfArgLiteral('servicenetworking.googleapis.com'),
  );

  /// `serviceusage.googleapis.com`
  static const serviceusage = GoogleApi._(
    TfArgLiteral('serviceusage.googleapis.com'),
  );

  /// `sourcerepo.googleapis.com`
  static const sourcerepo = GoogleApi._(
    TfArgLiteral('sourcerepo.googleapis.com'),
  );

  /// `spanner.googleapis.com`
  static const spanner = GoogleApi._(TfArgLiteral('spanner.googleapis.com'));

  /// `sqladmin.googleapis.com`
  static const sqladmin = GoogleApi._(TfArgLiteral('sqladmin.googleapis.com'));

  /// `storage.googleapis.com`
  static const storage = GoogleApi._(TfArgLiteral('storage.googleapis.com'));

  /// `storagebatchoperations.googleapis.com`
  static const storagebatchoperations = GoogleApi._(
    TfArgLiteral('storagebatchoperations.googleapis.com'),
  );

  /// `storageinsights.googleapis.com`
  static const storageinsights = GoogleApi._(
    TfArgLiteral('storageinsights.googleapis.com'),
  );

  /// `storagetransfer.googleapis.com`
  static const storagetransfer = GoogleApi._(
    TfArgLiteral('storagetransfer.googleapis.com'),
  );

  /// `tpu.googleapis.com`
  static const tpu = GoogleApi._(TfArgLiteral('tpu.googleapis.com'));

  /// `transcoder.googleapis.com`
  static const transcoder = GoogleApi._(
    TfArgLiteral('transcoder.googleapis.com'),
  );

  /// `vectorsearch.googleapis.com`
  static const vectorsearch = GoogleApi._(
    TfArgLiteral('vectorsearch.googleapis.com'),
  );

  /// `vmwareengine.googleapis.com`
  static const vmwareengine = GoogleApi._(
    TfArgLiteral('vmwareengine.googleapis.com'),
  );

  /// `vpcaccess.googleapis.com`
  static const vpcaccess = GoogleApi._(
    TfArgLiteral('vpcaccess.googleapis.com'),
  );

  /// `websecurityscanner.googleapis.com`
  static const websecurityscanner = GoogleApi._(
    TfArgLiteral('websecurityscanner.googleapis.com'),
  );

  /// `workflows.googleapis.com`
  static const workflows = GoogleApi._(
    TfArgLiteral('workflows.googleapis.com'),
  );

  /// `workstations.googleapis.com`
  static const workstations = GoogleApi._(
    TfArgLiteral('workstations.googleapis.com'),
  );

  static const List<GoogleApi> values = [
    accessapproval,
    accesscontextmanager,
    agenticapplications,
    agentidentity,
    agentregistry,
    aiplatform,
    alloydb,
    analyticshub,
    apigateway,
    apigee,
    apihub,
    apikeys,
    appengine,
    apphub,
    artifactregistry,
    assuredworkloads,
    backupdr,
    beyondcorp,
    biglake,
    bigquery,
    bigqueryconnection,
    bigquerydatapolicy,
    bigquerydatatransfer,
    bigqueryreservation,
    bigtableadmin,
    billingbudgets,
    binaryauthorization,
    blockchainnodeengine,
    certificatemanager,
    ces,
    chronicle,
    cloudasset,
    cloudbilling,
    cloudbuild,
    clouddeploy,
    cloudfunctions,
    cloudidentity,
    cloudkms,
    cloudquotas,
    cloudresourcemanager,
    cloudscheduler,
    cloudsupport,
    cloudtasks,
    composer,
    compute,
    config,
    connectors,
    contactcenterinsights,
    container,
    containeranalysis,
    datacatalog,
    dataflow,
    dataform,
    datafusion,
    datalineage,
    datamigration,
    datapipelines,
    dataplex,
    dataproc,
    datastream,
    deploymentmanager,
    designcenter,
    developerconnect,
    dialogflow,
    discoveryengine,
    dlp,
    dns,
    documentai,
    domains,
    essentialcontacts,
    eventarc,
    file,
    firebase,
    firebaseappcheck,
    firebaseapphosting,
    firebasedatabase,
    firebasedataconnect,
    firebasehosting,
    firebaseremoteconfig,
    firebaserules,
    firebasestorage,
    firebasevertexai,
    firestore,
    ftp,
    geminidataanalytics,
    gkebackup,
    gkehub,
    gkeonprem,
    healthcare,
    hypercomputecluster,
    iam,
    iap,
    identitytoolkit,
    ids,
    integrations,
    licensemanager,
    logging,
    looker,
    lustre,
    managedidentities,
    managedkafka,
    memcache,
    memorystore,
    metastore,
    migrationcenter,
    modelarmor,
    monitoring,
    netapp,
    networkconnectivity,
    networkmanagement,
    networksecurity,
    networkservices,
    notebooks,
    observability,
    oracledatabase,
    orgpolicy,
    osconfig,
    oslogin,
    parallelstore,
    parametermanager,
    privateca,
    privilegedaccessmanager,
    publicca,
    pubsub,
    pubsublite,
    recaptchaenterprise,
    redis,
    run,
    saasservicemgmt,
    secretmanager,
    securesourcemanager,
    securitycenter,
    securityposture,
    servicedirectory,
    servicenetworking,
    serviceusage,
    sourcerepo,
    spanner,
    sqladmin,
    storage,
    storagebatchoperations,
    storageinsights,
    storagetransfer,
    tpu,
    transcoder,
    vectorsearch,
    vmwareengine,
    vpcaccess,
    websecurityscanner,
    workflows,
    workstations,
  ];
}

// tool/required_apis.yaml: the longest matching prefix wins, and a null
// value carves a type out of a broader prefix.
const Map<String, GoogleApi?> _apiByTypePrefix = {
  'google_access_context_manager_': GoogleApi.accesscontextmanager,
  'google_active_directory_': GoogleApi.managedidentities,
  'google_agent_identity_': GoogleApi.agentidentity,
  'google_agent_registry_': GoogleApi.agentregistry,
  'google_agentic_applications_': GoogleApi.agenticapplications,
  'google_alloydb_': GoogleApi.alloydb,
  'google_api_gateway_': GoogleApi.apigateway,
  'google_apigee_': GoogleApi.apigee,
  'google_apihub_': GoogleApi.apihub,
  'google_apikeys_': GoogleApi.apikeys,
  'google_app_engine_': GoogleApi.appengine,
  'google_apphub_': GoogleApi.apphub,
  'google_artifact_registry_': GoogleApi.artifactregistry,
  'google_assured_workloads_': GoogleApi.assuredworkloads,
  'google_backup_dr_': GoogleApi.backupdr,
  'google_beyondcorp_': GoogleApi.beyondcorp,
  'google_beyondcorp_security_gateway_application': null,
  'google_biglake_': GoogleApi.biglake,
  'google_biglake_hive_': null,
  'google_biglake_iceberg_': null,
  'google_bigquery_': GoogleApi.bigquery,
  'google_bigquery_analytics_hub_': GoogleApi.analyticshub,
  'google_bigquery_bi_reservation': GoogleApi.bigqueryreservation,
  'google_bigquery_capacity_commitment': GoogleApi.bigqueryreservation,
  'google_bigquery_connection': GoogleApi.bigqueryconnection,
  'google_bigquery_data_transfer_': GoogleApi.bigquerydatatransfer,
  'google_bigquery_datapolicy_': GoogleApi.bigquerydatapolicy,
  'google_bigquery_datapolicyv2_': GoogleApi.bigquerydatapolicy,
  'google_bigquery_reservation': GoogleApi.bigqueryreservation,
  'google_bigtable_': GoogleApi.bigtableadmin,
  'google_billing_budget': GoogleApi.billingbudgets,
  'google_billing_project_info': GoogleApi.cloudbilling,
  'google_binary_authorization_': GoogleApi.binaryauthorization,
  'google_blockchain_node_engine_': GoogleApi.blockchainnodeengine,
  'google_certificate_manager_': GoogleApi.certificatemanager,
  'google_ces_': GoogleApi.ces,
  'google_chronicle_': GoogleApi.chronicle,
  'google_cloud_asset_': GoogleApi.cloudasset,
  'google_cloud_identity_': GoogleApi.cloudidentity,
  'google_cloud_ids_': GoogleApi.ids,
  'google_cloud_quotas_': GoogleApi.cloudquotas,
  'google_cloud_run_': GoogleApi.run,
  'google_cloud_run_v2_': GoogleApi.run,
  'google_cloud_scheduler_': GoogleApi.cloudscheduler,
  'google_cloud_support_': GoogleApi.cloudsupport,
  'google_cloud_tasks_': GoogleApi.cloudtasks,
  'google_cloudbuild_': GoogleApi.cloudbuild,
  'google_cloudbuildv2_': GoogleApi.cloudbuild,
  'google_clouddeploy_': GoogleApi.clouddeploy,
  'google_clouddomains_': GoogleApi.domains,
  'google_cloudfunctions2_': GoogleApi.cloudfunctions,
  'google_cloudfunctions_': GoogleApi.cloudfunctions,
  'google_colab_': GoogleApi.aiplatform,
  'google_composer_': GoogleApi.composer,
  'google_compute_': GoogleApi.compute,
  'google_config_': GoogleApi.config,
  'google_contact_center_insights_': GoogleApi.contactcenterinsights,
  'google_container_': GoogleApi.container,
  'google_container_analysis_': GoogleApi.containeranalysis,
  'google_data_catalog_': GoogleApi.datacatalog,
  'google_data_fusion_': GoogleApi.datafusion,
  'google_data_lineage_': GoogleApi.datalineage,
  'google_data_lineage_open_lineage_job': null,
  'google_data_loss_prevention_': GoogleApi.dlp,
  'google_data_pipeline_': GoogleApi.datapipelines,
  'google_database_migration_service_': GoogleApi.datamigration,
  'google_dataflow_': GoogleApi.dataflow,
  'google_dataform_': GoogleApi.dataform,
  'google_dataplex_': GoogleApi.dataplex,
  'google_dataproc_': GoogleApi.dataproc,
  'google_dataproc_metastore_': GoogleApi.metastore,
  'google_datastream_': GoogleApi.datastream,
  'google_deployment_manager_': GoogleApi.deploymentmanager,
  'google_design_center_': GoogleApi.designcenter,
  'google_developer_connect_': GoogleApi.developerconnect,
  'google_dialogflow_': GoogleApi.dialogflow,
  'google_discovery_engine_': GoogleApi.discoveryengine,
  'google_dns_': GoogleApi.dns,
  'google_document_ai_': GoogleApi.documentai,
  'google_essential_contacts_': GoogleApi.essentialcontacts,
  'google_eventarc_': GoogleApi.eventarc,
  'google_filestore_': GoogleApi.file,
  'google_firebase_ai_logic_': GoogleApi.firebasevertexai,
  'google_firebase_ai_logic_prompt_template_lock': null,
  'google_firebase_android_app': GoogleApi.firebase,
  'google_firebase_app_check_': GoogleApi.firebaseappcheck,
  'google_firebase_app_hosting_': GoogleApi.firebaseapphosting,
  'google_firebase_apple_app': GoogleApi.firebase,
  'google_firebase_data_connect_': GoogleApi.firebasedataconnect,
  'google_firebase_database_': GoogleApi.firebasedatabase,
  'google_firebase_hosting_': GoogleApi.firebasehosting,
  'google_firebase_project': GoogleApi.firebase,
  'google_firebase_remote_config_': GoogleApi.firebaseremoteconfig,
  'google_firebase_storage_': GoogleApi.firebasestorage,
  'google_firebase_web_app': GoogleApi.firebase,
  'google_firebaserules_': GoogleApi.firebaserules,
  'google_firestore_': GoogleApi.firestore,
  'google_folder_access_approval_': GoogleApi.accessapproval,
  'google_folder_iam_audit_config': GoogleApi.cloudresourcemanager,
  'google_gemini_data_analytics_': GoogleApi.geminidataanalytics,
  'google_gke_backup_': GoogleApi.gkebackup,
  'google_gke_hub_': GoogleApi.gkehub,
  'google_gkeonprem_': GoogleApi.gkeonprem,
  'google_healthcare_': GoogleApi.healthcare,
  'google_healthcare_pipeline_job': null,
  'google_healthcare_workspace': null,
  'google_hypercomputecluster_': GoogleApi.hypercomputecluster,
  'google_iam_': GoogleApi.iam,
  'google_iam_access_boundary_policy': null,
  'google_iap_': GoogleApi.iap,
  'google_identity_platform_': GoogleApi.identitytoolkit,
  'google_integration_connectors_': GoogleApi.connectors,
  'google_integrations_': GoogleApi.integrations,
  'google_kms_': GoogleApi.cloudkms,
  'google_license_manager_': GoogleApi.licensemanager,
  'google_logging_': GoogleApi.logging,
  'google_looker_': GoogleApi.looker,
  'google_lustre_': GoogleApi.lustre,
  'google_managed_kafka_': GoogleApi.managedkafka,
  'google_memcache_': GoogleApi.memcache,
  'google_memorystore_': GoogleApi.memorystore,
  'google_migration_center_': GoogleApi.migrationcenter,
  'google_model_armor_': GoogleApi.modelarmor,
  'google_monitoring_': GoogleApi.monitoring,
  'google_netapp_': GoogleApi.netapp,
  'google_network_connectivity_': GoogleApi.networkconnectivity,
  'google_network_management_': GoogleApi.networkmanagement,
  'google_network_security_': GoogleApi.networksecurity,
  'google_network_services_': GoogleApi.networkservices,
  'google_observability_': GoogleApi.observability,
  'google_observability_folder_settings': null,
  'google_observability_organization_settings': null,
  'google_observability_project_settings': null,
  'google_oracle_database_': GoogleApi.oracledatabase,
  'google_org_policy_': GoogleApi.orgpolicy,
  'google_organization_access_approval_': GoogleApi.accessapproval,
  'google_organization_iam_audit_config': GoogleApi.cloudresourcemanager,
  'google_os_config_': GoogleApi.osconfig,
  'google_os_login_': GoogleApi.oslogin,
  'google_parallelstore_': GoogleApi.parallelstore,
  'google_parameter_manager_': GoogleApi.parametermanager,
  'google_privateca_': GoogleApi.privateca,
  'google_privileged_access_manager_': GoogleApi.privilegedaccessmanager,
  'google_project_access_approval_': GoogleApi.accessapproval,
  'google_project_iam_audit_config': GoogleApi.cloudresourcemanager,
  'google_project_iam_custom_role': GoogleApi.iam,
  'google_public_ca_': GoogleApi.publicca,
  'google_pubsub_': GoogleApi.pubsub,
  'google_pubsub_lite_': GoogleApi.pubsublite,
  'google_recaptcha_enterprise_': GoogleApi.recaptchaenterprise,
  'google_redis_': GoogleApi.redis,
  'google_resource_manager_': GoogleApi.cloudresourcemanager,
  'google_resource_manager_capability': null,
  'google_resource_manager_capability_config': GoogleApi.cloudresourcemanager,
  'google_saas_runtime_': GoogleApi.saasservicemgmt,
  'google_scc_': GoogleApi.securitycenter,
  'google_secret_manager_': GoogleApi.secretmanager,
  'google_secure_source_manager_': GoogleApi.securesourcemanager,
  'google_security_scanner_': GoogleApi.websecurityscanner,
  'google_securityposture_': GoogleApi.securityposture,
  'google_service_account_key': GoogleApi.iam,
  'google_service_directory_': GoogleApi.servicedirectory,
  'google_service_networking_': GoogleApi.servicenetworking,
  'google_service_usage_': GoogleApi.serviceusage,
  'google_sourcerepo_': GoogleApi.sourcerepo,
  'google_spanner_': GoogleApi.spanner,
  'google_sql_': GoogleApi.sqladmin,
  'google_storage_': GoogleApi.storage,
  'google_storage_batch_operations_': GoogleApi.storagebatchoperations,
  'google_storage_ftp_': GoogleApi.ftp,
  'google_storage_insights_': GoogleApi.storageinsights,
  'google_storage_transfer_': GoogleApi.storagetransfer,
  'google_tags_': GoogleApi.cloudresourcemanager,
  'google_tags_location_tag_binding': null,
  'google_tags_tag_binding_collection': null,
  'google_tpu_': GoogleApi.tpu,
  'google_transcoder_': GoogleApi.transcoder,
  'google_vector_search_': GoogleApi.vectorsearch,
  'google_vertex_ai_': GoogleApi.aiplatform,
  'google_vertex_ai_cache_config': null,
  'google_vmwareengine_': GoogleApi.vmwareengine,
  'google_vpc_access_': GoogleApi.vpcaccess,
  'google_workbench_': GoogleApi.notebooks,
  'google_workflows_': GoogleApi.workflows,
  'google_workstations_': GoogleApi.workstations,
};

final _iamAdjunct = RegExp(r'_iam_(member|binding|policy)$');

/// The Google API a resource of [terraformType] needs enabled, such as
/// `GoogleApi.redis` for `google_redis_instance`.
///
/// An IAM adjunct (`*_iam_member`, `*_iam_binding`, `*_iam_policy`) needs the
/// API of the resource it grants on: `google_iap_tunnel_instance_iam_member`
/// needs `GoogleApi.iap`. Returns null for `google_project`,
/// `google_project_service` and their adjuncts, and for a type no rule covers.
///
/// The lookup only reads: enabling the API stays a `GoogleProjectService`
/// the stack adds.
///
/// ```dart
/// import 'package:terradart_google/project.dart';
/// import 'package:terradart_google/redis.dart';
///
/// final api = requiredApiForTerraformType(GoogleRedisInstance.tfType);
/// // api == GoogleApi.redis
/// ```
GoogleApi? requiredApiForTerraformType(String terraformType) {
  final type = terraformType.replaceFirst(_iamAdjunct, '');
  if (type == 'google_project_service' || type == 'google_project') {
    return null;
  }
  String? match;
  for (final prefix in _apiByTypePrefix.keys) {
    if (type.startsWith(prefix) && prefix.length > (match?.length ?? 0)) {
      match = prefix;
    }
  }
  return match == null ? null : _apiByTypePrefix[match];
}
