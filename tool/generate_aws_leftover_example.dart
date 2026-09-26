#!/usr/bin/env dart
// Generates examples/aws_leftover_quickstart/lib/main.dart: one constructor
// call per AWS factory (resource or data source) that no other example
// covers. Dummy values satisfy the Dart types and the provider's
// validate-time checks, so synth + terraform validate cover the filled
// catalog. Live apply is out of scope.
//
// Regenerates from generated wrappers; do not hand-edit main.dart.

import 'dart:io';

const _skipResourceTypes = {
  // Covered by aws_lambda_quickstart.
  'aws_cloudwatch_log_group',
  'aws_iam_role',
  'aws_iam_role_policy_attachment',
  'aws_lambda_function',
  'aws_lambda_function_url',
};

const _skipDataTypes = {
  // Covered by aws_lambda_quickstart.
  'aws_caller_identity',
  'aws_iam_policy_document',
};

const _srcRoot = 'packages/terradart_aws/lib/src';
const _outPath = 'examples/aws_leftover_quickstart/lib/main.dart';

/// Terraform variable backing every sensitive leaf in the generated
/// stack. Declared by the generator so the reference resolves at synth.
const _secretVar = 'leftover_secret';
const _secretVarRef = "TfArg.variable('$_secretVar')";

void main() {
  final files = Directory(_srcRoot)
      .listSync(recursive: true)
      .whereType<File>()
      .where(
        (f) =>
            f.path.endsWith('.dart') &&
            !f.path.endsWith('_catalog.g.dart') &&
            !f.path.endsWith('catalog_entry.dart'),
      )
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  final parsedFiles = <String, _ParsedFile>{};
  for (final file in files) {
    parsedFiles[file.path] = _parseFile(file);
  }

  final helpers = <String, _ClassInfo>{};
  final factories = <_Factory>[];
  for (final parsed in parsedFiles.values) {
    for (final cls in parsed.classes.values) {
      if (cls.kind == _Kind.helper) {
        helpers[cls.name] = cls;
      } else if (cls.kind == _Kind.resource || cls.kind == _Kind.data) {
        if (cls.tfType == null) continue;
        if (cls.kind == _Kind.resource &&
            _skipResourceTypes.contains(cls.tfType)) {
          continue;
        }
        if (cls.kind == _Kind.data && _skipDataTypes.contains(cls.tfType)) {
          continue;
        }
        factories.add(
          _Factory(
            type: cls.tfType!,
            className: cls.name,
            kind: cls.kind,
            requiredParams: cls.requiredParams,
            optionalParams: cls.optionalParams,
            filePath: parsed.path,
            sensitiveLeaves: parsed.sensitiveLeaves,
          ),
        );
      }
    }
  }
  factories.sort((a, b) {
    final k = a.kind.index.compareTo(b.kind.index);
    if (k != 0) return k;
    return a.type.compareTo(b.type);
  });

  final usedLocals = <String>{};
  final buf = StringBuffer()
    ..writeln(
      '// GENERATED — dart run tool/generate_aws_leftover_example.dart',
    )
    ..writeln('// ignore_for_file: unused_element')
    ..writeln()
    ..writeln(
      '/// Coverage stack for leftover AWS factories at pin 6.66.0.',
    )
    ..writeln('/// Dummy constructor values; synth + terraform validate only.')
    ..writeln('/// Never apply.')
    ..writeln('library;')
    ..writeln()
    ..writeln(
      "import 'package:terradart_aws/terradart_aws.dart';",
    )
    ..writeln("import 'package:terradart_core/terradart_core.dart';")
    ..writeln()
    ..writeln('final class AwsLeftoverStack extends Stack {')
    ..writeln('  AwsLeftoverStack()')
    ..writeln(
      "      : super(providers: [const AwsProvider(region: 'us-east-1')]) {",
    )
    ..writeln("    const leftover = 'leftover';")
    ..writeln("    const arn = 'arn:aws:iam::$_accountId:role/leftover';")
    ..writeln('    const policy =')
    ..writeln('        $_policyJson;')
    ..writeln();

  // Body first: the preamble can only decide whether to declare the
  // secret variable once it knows a factory actually referenced it.
  final body = StringBuffer();
  for (final f in factories) {
    final local = _uniqueLocal(f.type, f.kind, usedLocals);
    final method = f.kind == _Kind.data ? 'addData' : 'add';
    body.writeln('    $method(');
    body.writeln('      ${f.className}(');
    body.writeln("        localName: '$local',");
    for (final p in f.requiredParams) {
      body.writeln(
        '        ${p.name}: ${_dummy(p, helpers, sensitive: f.sensitiveLeaves, depth: 0, owner: f.className)},',
      );
    }
    for (final extra in _extras(f, helpers)) {
      body.writeln('        ${extra.name}: ${extra.value},');
    }
    body.writeln('      ),');
    body.writeln('    );');
    body.writeln();
  }

  // Sensitive leaves render as a TfArg.variable reference, and synth
  // rejects a reference with no matching declaration — so the declaration
  // is generated too, not hand-added to this generated file.
  if (body.toString().contains(_secretVarRef)) {
    buf.writeln('    addVariable(');
    buf.writeln("      '$_secretVar',");
    buf.writeln("      const TfVariable(type: 'string', sensitive: true),");
    buf.writeln('    );');
    buf.writeln();
  }
  buf.write(body);

  buf.writeln('  }');
  buf.writeln('}');

  final stale = {
    ..._literalByKey.keys,
    ..._extraParams.keys,
    ..._listCounts.keys,
  }.difference(_usedKeys).toList()
    ..sort();
  if (stale.isNotEmpty) {
    stderr.writeln('Unused _literalByKey / _extraParams / _listCounts keys:\n  '
        '${stale.join('\n  ')}');
    exit(1);
  }

  File(_outPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(buf.toString());
  // dart format splits long literals without the trailing commas
  // `require_trailing_commas` wants, so fix between two format passes.
  _run(['format', _outPath]);
  _run(['fix', '--apply', '--code=require_trailing_commas', _outPath]);
  _run(['format', _outPath]);
  stdout.writeln(
    'Wrote leftover example: ${factories.length} factories '
    '(${factories.where((f) => f.kind == _Kind.resource).length} resources + '
    '${factories.where((f) => f.kind == _Kind.data).length} data)',
  );
}

void _run(List<String> args) {
  final r = Process.runSync('dart', args);
  if (r.exitCode != 0) {
    stderr.writeln('dart ${args.join(' ')} failed:\n${r.stdout}${r.stderr}');
    exit(r.exitCode);
  }
}

enum _Kind { resource, data, helper }

class _Factory {
  _Factory({
    required this.type,
    required this.className,
    required this.kind,
    required this.requiredParams,
    required this.optionalParams,
    required this.filePath,
    required this.sensitiveLeaves,
  });
  final String type;
  final String className;
  final _Kind kind;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final String filePath;
  final Set<String> sensitiveLeaves;
}

class _Param {
  _Param(this.name, this.type);
  final String name;
  final String type;
}

class _ClassInfo {
  _ClassInfo({
    required this.name,
    required this.kind,
    required this.tfType,
    required this.requiredParams,
    required this.optionalParams,
    required this.fields,
  });
  final String name;
  final _Kind kind;
  final String? tfType;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final Map<String, String> fields;
}

class _ParsedFile {
  _ParsedFile(this.path, this.classes, this.sensitiveLeaves);
  final String path;
  final Map<String, _ClassInfo> classes;
  final Set<String> sensitiveLeaves;
}

Set<String> _parseSensitiveLeaves(String src) {
  final out = <String>{};
  for (final m in RegExp(
    r'Sensitive\s*=\s*<String>\{([^}]*)\}',
  ).allMatches(src)) {
    for (final q in RegExp(r"'([^']+)'").allMatches(m.group(1)!)) {
      final path = q.group(1)!;
      out.add(path);
      out.add(path.split('.').last);
    }
  }
  return out;
}

_ParsedFile _parseFile(File file) {
  final src = file.readAsStringSync();
  final classes = <String, _ClassInfo>{};
  final classRe = RegExp(r'final class (\w+)(?:\s+extends (\w+))?');
  for (final m in classRe.allMatches(src)) {
    final name = m.group(1)!;
    final ext = m.group(2);
    final brace = src.indexOf('{', m.end);
    if (brace < 0) continue;
    final end = _matchBrace(src, brace);
    if (end < 0) continue;
    final body = src.substring(brace, end + 1);
    final kind = switch (ext) {
      'Resource' => _Kind.resource,
      'Data' => _Kind.data,
      _ => _Kind.helper,
    };
    final fields = _parseFields(body);
    final parsedCtor = _parseCtor(name, body, fields);
    classes[name] = _ClassInfo(
      name: name,
      kind: kind,
      tfType: _parseTfType(body),
      requiredParams: parsedCtor.required,
      optionalParams: parsedCtor.optional,
      fields: fields,
    );
  }
  return _ParsedFile(file.path, classes, _parseSensitiveLeaves(src));
}

String? _parseTfType(String body) {
  final oneLine = RegExp(
    r"static const String tfType = '([^']+)'",
  ).firstMatch(body);
  if (oneLine != null) return oneLine.group(1);
  final split = RegExp(
    r"static const String tfType =\s*'([^']+)'",
  ).firstMatch(body);
  return split?.group(1);
}

Map<String, String> _parseFields(String body) {
  final out = <String, String>{};
  // `[^;=]` spans newlines: dart format splits long field declarations.
  for (final m in RegExp(r'final\s+([^;=(){}]+?)\s+(\w+);').allMatches(body)) {
    out[m.group(2)!] = m.group(1)!.trim().replaceAll(RegExp(r'\s+'), ' ');
  }
  return out;
}

({List<_Param> required, List<_Param> optional}) _parseCtor(
  String className,
  String body,
  Map<String, String> fields,
) {
  final needle = '$className({';
  final start = body.indexOf(needle);
  if (start < 0) return (required: const [], optional: const []);
  final open = start + needle.length - 1;
  final close = _matchBrace(body, open);
  if (close < 0) return (required: const [], optional: const []);
  final paramsSrc = body.substring(open + 1, close);
  final required = <_Param>[];
  final optional = <_Param>[];
  for (final raw in _splitTopLevel(paramsSrc, ',')) {
    final t = raw.trim().replaceAll(RegExp(r'\s+'), ' ');
    if (t.isEmpty) continue;
    if (t.contains('super.')) continue;
    if (t.startsWith('required ')) {
      final thisM = RegExp(r'required this\.(\w+)').firstMatch(t);
      if (thisM != null) {
        final name = thisM.group(1)!;
        required.add(_Param(name, fields[name] ?? 'TfArg<String>'));
        continue;
      }
      final typed = RegExp(r'required (.+) (\w+)$').firstMatch(t);
      if (typed != null) {
        required.add(_Param(typed.group(2)!, typed.group(1)!.trim()));
      }
      continue;
    }
    final thisM = RegExp(r'this\.(\w+)').firstMatch(t);
    if (thisM != null) {
      final name = thisM.group(1)!;
      optional.add(_Param(name, fields[name] ?? 'TfArg<String>'));
      continue;
    }
    final typed = RegExp(r'^(.+?)\?? (\w+)$').firstMatch(t);
    if (typed != null) {
      optional.add(
        _Param(typed.group(2)!, typed.group(1)!.replaceAll('?', '').trim()),
      );
    }
  }
  return (required: required, optional: optional);
}

class _Extra {
  _Extra(this.name, this.value);
  final String name;
  final String value;
}

/// Optional parameters a factory needs anyway, because the provider
/// enforces an `exactly_one_of` / `at_least_one_of` group (or a lookup key
/// on a data source) at validate time.
const _extraParams = <String, List<String>>{
  'AccountaccessEntitlementEntitlementPrincipalRole': ['principal'],
  'AgentregistryRegistryDiscoveryConfiguration': ['authorizerConfiguration'],
  'AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer':
      ['allowedAudience'],
  'AppmeshGatewayRouteSpec': ['grpcRoute'],
  'ApprunnerServiceSourceConfiguration': ['codeRepository'],
  'AppsyncApiEventConfig': [
    'defaultSubscribeAuthMode',
    'connectionAuthMode',
    'defaultPublishAuthMode',
    'authProvider',
  ],
  'AwsAccountaccessApplication': ['identitySource'],
  'AwsAccountaccessEntitlement': ['entitlement'],
  'AwsAcmCertificate': ['domainName'],
  'AwsAgentregistryRegistry': ['discoveryConfiguration'],
  'AwsAlb': ['subnetMapping'],
  'AwsAmiLaunchPermission': ['accountId'],
  'AwsApigatewayv2RoutingRule': ['action', 'condition'],
  'AwsAppfabricAppAuthorization': ['credential', 'tenant'],
  'AwsAppfabricIngestionDestination': [
    'destinationConfiguration',
    'processingConfiguration',
  ],
  'AwsAppstreamImageBuilder': ['imageArn'],
  'AwsAppsyncApi': ['eventConfig'],
  'AwsAppsyncSourceApiAssociation': ['sourceApiArn', 'mergedApiArn'],
  'AwsAuditmanagerAssessment': ['roles'],
  'AwsAutoscalingAttachment': ['elb'],
  'AwsAutoscalingGroup': ['launchConfiguration'],
  'AwsBackupRestoreTestingPlan': ['recoveryPointSelection'],
  'AwsBackupRestoreTestingSelection': ['protectedResourceArns'],
  'AwsBedrockCustomModel': ['outputDataConfig', 'trainingDataConfig'],
  'AwsBedrockEvaluationJob': [
    'evaluationConfig',
    'inferenceConfig',
    'outputDataConfig',
  ],
  'AwsBedrockModelInvocationJob': ['inputDataConfig', 'outputDataConfig'],
  'AwsBedrockModelInvocationLoggingConfiguration': ['loggingConfig'],
  'AwsBedrockagentAgentCollaborator': ['agentDescriptor'],
  'AwsBedrockagentDataSource': ['dataSourceConfiguration'],
  'AwsBedrockagentKnowledgeBase': ['knowledgeBaseConfiguration'],
  'AwsBedrockagentcoreAgentRuntime': [
    'agentRuntimeArtifact',
    'networkConfiguration',
  ],
  'AwsBedrockagentcoreApiKeyCredentialProvider': ['apiKey'],
  'AwsBedrockagentcoreBrowser': ['networkConfiguration'],
  'AwsBedrockagentcoreCodeInterpreter': ['networkConfiguration'],
  'AwsBedrockagentcoreEvaluator': ['evaluatorConfig'],
  'AwsBedrockagentcoreGatewayTarget': ['targetConfiguration'],
  'AwsBedrockagentcoreHarness': ['model', 'systemPrompt'],
  'AwsBedrockagentcoreMemoryStrategy': ['namespaces'],
  'AwsBedrockagentcoreOauth2CredentialProvider': ['oauth2ProviderConfig'],
  'AwsBedrockagentcoreOnlineEvaluationConfig': [
    'dataSourceConfig',
    'evaluator',
    'rule',
  ],
  'AwsBedrockagentcorePolicy': ['definition'],
  'AwsBedrockagentcoreTokenVaultCmk': ['kmsConfiguration'],
  'AwsCloudfrontConnectionFunction': ['connectionFunctionConfig'],
  'AwsCloudfrontContinuousDeploymentPolicy': ['stagingDistributionDnsNames'],
  'AwsCloudfrontMultitenantDistribution': [
    'viewerCertificate',
    'defaultCacheBehavior',
    'tenantConfig',
  ],
  'AwsCloudfrontResponseHeadersPolicy': [
    'corsConfig',
    'customHeadersConfig',
    'removeHeadersConfig',
    'securityHeadersConfig',
    'serverTimingHeadersConfig',
  ],
  'AwsCloudfrontTrustStore': ['caCertificatesBundleSource'],
  'AwsCloudfrontVpcOrigin': ['vpcOriginEndpointConfig'],
  'AwsCloudhsmV2Hsm': ['availabilityZone'],
  'AwsCloudwatchEventRule': ['eventPattern', 'scheduleExpression'],
  'AwsCloudwatchLogDeliveryDestination': ['deliveryDestinationConfiguration'],
  'AwsCloudwatchLogResourcePolicy': ['policyName'],
  'AwsCloudwatchLogS3TableIntegrationSource': ['dataSource'],
  'AwsCloudwatchLogTransformer': ['transformerConfig'],
  'AwsCloudwatchMetricAlarm': ['metricName'],
  'AwsCodeguruprofilerProfilingGroup': ['agentOrchestrationConfig'],
  'AwsCognitoLogDeliveryConfiguration': ['logConfigurations'],
  'AwsCognitoManagedLoginBranding': ['settings'],
  'AwsCognitoManagedUserPoolClient': ['namePrefix'],
  'AwsCognitoRiskConfiguration': [
    'accountTakeoverRiskConfiguration',
    'compromisedCredentialsRiskConfiguration',
  ],
  'AwsCognitoUserPoolUiCustomization': ['css', 'imageFile'],
  'AwsComputeoptimizerRecommendationPreferences': [
    'enhancedInfrastructureMetrics',
    'scope',
    'externalMetricsPreference',
  ],
  'AwsConfigAggregateAuthorization': ['authorizedAwsRegion'],
  'AwsConfigConformancePack': ['templateS3Uri'],
  'AwsConnectInstance': ['instanceAlias'],
  'AwsDataexchangeEventAction': ['action', 'event'],
  'AwsDatazoneFormType': ['model'],
  'AwsDatazonePolicyGrant': ['detail', 'principal'],
  'AwsDbProxyTarget': ['dbClusterIdentifier'],
  'AwsDevopsguruEventSourcesConfig': ['eventSources'],
  'AwsDevopsguruNotificationChannel': ['sns'],
  'AwsDevopsguruServiceIntegration': [
    'kmsServerSideEncryption',
    'logsAnomalyDetection',
    'opsCenter',
  ],
  'AwsDlmLifecyclePolicy': ['defaultPolicy'],
  'AwsDmsCertificate': ['certificatePem'],
  'AwsDmsDataProvider': ['settings'],
  'AwsDmsMigrationProject': [
    'sourceDataProviderDescriptor',
    'targetDataProviderDescriptor',
  ],
  'AwsDocdbGlobalCluster': ['engine'],
  'AwsDxBgpPeer': ['bgpAsn'],
  'AwsDxGatewayAssociation': ['associatedGatewayId'],
  'AwsDxHostedPrivateVirtualInterface': ['bgpAsn'],
  'AwsDxHostedPrivateVirtualInterfaceAccepter': ['dxGatewayId'],
  'AwsDxHostedPublicVirtualInterface': ['bgpAsn'],
  'AwsDxHostedTransitVirtualInterface': ['bgpAsn'],
  'AwsDxMacsecKeyAssociation': ['secretArn'],
  'AwsDxPrivateVirtualInterface': ['bgpAsn', 'dxGatewayId'],
  'AwsDxTransitVirtualInterface': ['bgpAsn'],
  'AwsDynamodbGlobalSecondaryIndex': ['keySchema'],
  'AwsEbsVolume': ['size', 'snapshotId'],
  'AwsEc2ClientVpnAuthorizationRule': ['accessGroupId'],
  'AwsEc2Host': ['instanceFamily'],
  'AwsEc2InstanceMetadataDefaults': ['httpEndpoint', 'httpPutResponseHopLimit'],
  'AwsEc2TrafficMirrorTarget': ['gatewayLoadBalancerEndpointId'],
  'AwsEcsDaemonTaskDefinition': ['containerDefinition'],
  'AwsEcsExpressGatewayService': ['primaryContainer'],
  'AwsEipAssociation': ['instanceId'],
  'AwsElasticacheCluster': ['engine'],
  'AwsEmrStudioSessionMapping': ['identityId'],
  'AwsFlowLog': ['eniId'],
  'AwsFsxOntapFileSystem': ['throughputCapacity'],
  'AwsFsxOntapVolume': ['sizeInBytes'],
  'AwsFsxS3AccessPointAttachment': ['openzfsConfiguration'],
  'AwsGameliftFleet': ['buildId'],
  'AwsGameliftScript': ['storageLocation'],
  'AwsGlueCatalog': ['catalogProperties'],
  'AwsGlueCatalogTableOptimizer': ['configuration'],
  'AwsGlueCrawler': [
    'catalogTarget',
    'deltaTarget',
    'dynamodbTarget',
    'hudiTarget',
    'icebergTarget',
    'jdbcTarget',
    'mongodbTarget',
    's3Target',
  ],
  'AwsGuarddutyMalwareProtectionPlan': ['protectedResource'],
  'AwsIamPolicyAttachment': ['groups', 'roles', 'users'],
  'AwsImagebuilderComponent': ['data'],
  'AwsImagebuilderContainerRecipe': ['dockerfileTemplateData'],
  'AwsImagebuilderImage': ['containerRecipeArn'],
  'AwsImagebuilderImagePipeline': ['containerRecipeArn'],
  'AwsImagebuilderLifecyclePolicy': ['policyDetail', 'resourceSelection'],
  'AwsImagebuilderWorkflow': ['data'],
  'AwsInspector2Filter': ['filterCriteria'],
  'AwsInstance': ['instanceType', 'ami', 'launchTemplate'],
  'AwsInternetmonitorMonitor': [
    'maxCityNetworksToMonitor',
    'trafficPercentageToMonitor',
  ],
  'AwsIotIndexingConfiguration': [
    'thingGroupIndexingConfiguration',
    'thingIndexingConfiguration',
  ],
  'AwsKmsCiphertext': ['plaintext'],
  'AwsLakeformationDataCellsFilter': ['tableData'],
  'AwsLakeformationLfTagExpression': ['expression'],
  'AwsLakeformationOptIn': ['principal', 'resourceData'],
  'AwsLakeformationPermissions': ['catalogResource'],
  'AwsLakeformationResourceLfTag': ['lfTag', 'database'],
  'AwsLakeformationResourceLfTags': ['database'],
  'AwsLambdaCapacityProvider': ['vpcConfig', 'permissionsConfig'],
  'AwsLambdaEventSourceMapping': ['eventSourceArn'],
  'AwsLambdaFunctionScalingConfig': ['functionScalingConfig'],
  'AwsLambdacoreNetworkConnector': ['configuration'],
  'AwsLambdamicrovmsImage': ['codeArtifact'],
  'AwsLb': ['subnetMapping'],
  'AwsLexv2modelsBot': ['dataPrivacy'],
  'AwsLexv2modelsSlot': ['valueElicitationSetting'],
  'AwsM2Application': ['definition'],
  'AwsMskChannel': ['topicConfiguration', 'icebergDestination'],
  'AwsNeptuneGlobalCluster': ['engine'],
  'AwsNetworkAclRule': ['cidrBlock'],
  'AwsNetworkfirewallContainerAssociation': [
    'containerMonitoringConfiguration',
  ],
  'AwsNetworkfirewallFirewall': ['transitGatewayId'],
  'AwsNetworkfirewallTlsInspectionConfiguration': [
    'tlsInspectionConfiguration',
  ],
  'AwsNetworkfirewallVpcEndpointAssociation': ['subnetMapping'],
  'AwsNetworkflowmonitorMonitor': ['localResource'],
  'AwsNetworkflowmonitorScope': ['target'],
  'AwsObservabilityadminCentralizationRuleForOrganization': ['rule'],
  'AwsObservabilityadminS3TableIntegration': ['encryption'],
  'AwsObservabilityadminTelemetryPipeline': ['configuration'],
  'AwsObservabilityadminTelemetryRule': ['rule'],
  'AwsObservabilityadminTelemetryRuleForOrganization': ['rule'],
  'AwsOdbCloudAutonomousVmCluster': [
    'maintenanceWindow',
    'odbNetworkId',
    'cloudExadataInfrastructureId',
  ],
  'AwsOdbCloudExadataInfrastructure': ['maintenanceWindow'],
  'AwsOdbCloudVmCluster': [
    'dataCollectionOptions',
    'odbNetworkId',
    'cloudExadataInfrastructureId',
  ],
  'AwsOdbNetworkPeeringConnection': ['odbNetworkId'],
  'AwsOpensearchserverlessSecurityConfig': ['iamFederationOptions'],
  'AwsPinpointGcmChannel': ['serviceJson'],
  'AwsPinpointsmsvoicev2EventDestination': ['cloudwatchLogsDestination'],
  'AwsPrometheusAnomalyDetector': ['configuration', 'missingDataAction'],
  'AwsPrometheusQueryLoggingConfiguration': ['destination'],
  'AwsPrometheusScraper': ['destination'],
  'AwsPrometheusScraperLoggingConfiguration': ['loggingDestination'],
  'AwsQbusinessApplication': ['attachmentsConfiguration'],
  'AwsQuicksightAnalysis': ['sourceEntity'],
  'AwsQuicksightCustomPermissions': ['capabilities'],
  'AwsQuicksightDashboard': ['sourceEntity'],
  'AwsQuicksightKeyRegistration': ['keyRegistration'],
  'AwsQuicksightRefreshSchedule': ['schedule'],
  'AwsQuicksightTemplate': ['sourceEntity'],
  'AwsRedshiftDataShareConsumerAssociation': ['associateEntireAccount'],
  'AwsRekognitionStreamProcessor': ['input', 'output', 'settings'],
  'AwsResiliencehubv2InputSource': ['resourceConfiguration'],
  'AwsResiliencehubv2Policy': ['multiAz'],
  'AwsResiliencehubv2Service': ['permissionModel'],
  'AwsRoute': ['destinationCidrBlock', 'carrierGatewayId'],
  'AwsRoute53Record': ['alias'],
  'AwsRoute53domainsDomain': [
    'adminContact',
    'registrantContact',
    'techContact',
  ],
  'AwsRoute53recoverycontrolconfigSafetyRule': ['assertedControls'],
  'AwsRouteTableAssociation': ['gatewayId'],
  'AwsRumAppMonitor': ['domain'],
  'AwsS3BucketAbac': ['abacStatus'],
  'AwsS3BucketAcl': ['accessControlPolicy'],
  'AwsS3BucketMetadataConfiguration': ['metadataConfiguration'],
  'AwsS3DirectoryBucket': ['location'],
  'AwsS3controlAccessGrant': ['grantee'],
  'AwsS3controlDirectoryBucketAccessPointScope': ['scope'],
  'AwsS3controlMultiRegionAccessPointRoutes': ['route'],
  'AwsSagemakerAlgorithm': ['trainingSpecification'],
  'AwsSagemakerApp': ['spaceName'],
  'AwsSagemakerFeatureGroup': ['offlineStoreConfig', 'onlineStoreConfig'],
  'AwsSagemakerHyperParameterTuningJob': ['config'],
  'AwsSagemakerLabelingJob': ['inputConfig', 'outputConfig', 'humanTaskConfig'],
  'AwsSagemakerModelCardExportJob': ['outputConfig'],
  'AwsSagemakerPipeline': ['pipelineDefinition'],
  'AwsSagemakerWorkforce': ['cognitoConfig'],
  'AwsSecurityGroupRule': ['cidrBlocks'],
  'AwsSecurityhubAutomationRule': ['criteria', 'actions'],
  'AwsSecurityhubAutomationRuleV2': ['action', 'criteria'],
  'AwsSecurityhubConnectorV2': ['connectorProvider'],
  'AwsSecuritylakeAwsLogSource': ['source'],
  'AwsSecuritylakeCustomLogSource': ['configuration'],
  'AwsSecuritylakeDataLake': ['configuration'],
  'AwsSecuritylakeSubscriber': ['source', 'subscriberIdentity'],
  'AwsSecuritylakeSubscriberNotification': ['configuration'],
  'AwsServicecatalogProvisionedProduct': [
    'productId',
    'provisioningArtifactId',
  ],
  'AwsServicecatalogProvisioningArtifact': ['templatePhysicalId'],
  'AwsServicequotasTemplate': ['awsRegion'],
  'AwsShieldProactiveEngagement': ['emergencyContact'],
  'AwsSnsSmsPreferences': [
    'defaultSenderId',
    'defaultSmsType',
    'deliveryStatusIamRoleArn',
    'deliveryStatusSuccessSamplingRate',
    'monthlySpendLimit',
    'usageReportS3Bucket',
  ],
  'AwsSpotFleetRequest': ['launchSpecification'],
  'AwsSpotInstanceRequest': ['ami', 'instanceType', 'launchTemplate'],
  'AwsSsmParameter': ['value'],
  'AwsSsmcontactsRotation': ['recurrence'],
  'AwsSsmquicksetupConfigurationManager': ['configurationDefinition'],
  'AwsSsoadminTrustedTokenIssuer': ['trustedTokenIssuerConfiguration'],
  'AwsStoragegatewayGateway': ['activationKey'],
  'AwsStoragegatewayUploadBuffer': ['diskId'],
  'AwsTimestreamqueryScheduledQuery': [
    'notificationConfiguration',
    'scheduleConfiguration',
    'targetConfiguration',
    'errorReportConfiguration',
  ],
  'AwsTranscribeVocabulary': ['phrases'],
  'AwsTranscribeVocabularyFilter': ['vocabularyFilterFileUri'],
  'AwsTransferHostKey': ['hostKeyBodyWo'],
  'AwsTransferWebApp': ['identityProviderDetails'],
  'AwsVerifiedpermissionsIdentitySource': ['configuration'],
  'AwsVerifiedpermissionsPolicy': ['definition'],
  'AwsVerifiedpermissionsPolicyStore': ['validationSettings'],
  'AwsVerifiedpermissionsSchema': ['definition'],
  'AwsVpcBlockPublicAccessExclusion': ['subnetId'],
  'AwsVpcDhcpOptions': [
    'domainName',
    'domainNameServers',
    'ipv6AddressPreferredLeaseTime',
    'netbiosNameServers',
    'netbiosNodeType',
    'ntpServers',
  ],
  'AwsVpcEndpointConnectionNotification': ['vpcEndpointId'],
  'AwsVpcRouteServerPeer': ['bgpOptions'],
  'AwsVpcSecurityGroupEgressRule': ['cidrIpv4'],
  'AwsVpcSecurityGroupIngressRule': ['cidrIpv4'],
  'AwsVpclatticeListener': ['serviceArn', 'serviceIdentifier'],
  'AwsVpclatticeResourceConfiguration': [
    'resourceGatewayIdentifier',
    'protocol',
  ],
  'AwsWafv2WebAclRule': ['action', 'statement', 'visibilityConfig'],
  'AwsWafv2WebAclRuleGroupAssociation': ['managedRuleGroup'],
  'AwsWorkspaceswebIpAccessSettings': ['ipRule'],
  'AwsWorkspaceswebSessionLogger': ['logConfiguration', 'eventFilter'],
  'AwsXrayIndexingRule': ['rule'],
  'BedrockEvaluationJobEvaluationConfigAutomated': ['datasetMetricConfig'],
  'BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig': [
    'dataset',
  ],
  'BedrockagentDataSourceDataSourceConfiguration': ['s3Configuration'],
  'BedrockagentKnowledgeBaseKnowledgeBaseConfiguration': [
    'vectorKnowledgeBaseConfiguration',
  ],
  'BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig': [
    'googleOauth2ProviderConfig',
  ],
  'BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig':
      ['clientId', 'clientSecret'],
  'BedrockagentcoreOnlineEvaluationConfigRule': ['samplingConfig'],
  'CloudfrontMultitenantDistributionDefaultCacheBehavior': ['allowedMethods'],
  'CloudfrontVpcOriginVpcOriginEndpointConfig': ['originSslProtocols'],
  'ComprehendDocumentClassifierInputDataConfig': ['augmentedManifests'],
  'ComprehendEntityRecognizerInputDataConfig': [
    'annotations',
    'augmentedManifests',
  ],
  'DataAwsAccountaccessApplication': ['arn'],
  'DataAwsAccountaccessEntitlements': ['filter'],
  'DataAwsAcmCertificate': ['domain', 'tags'],
  'DataAwsAppconfigApplication': ['name'],
  'DataAwsCloudfrontCachePolicy': ['name'],
  'DataAwsCloudfrontConnectionGroup': ['routingEndpoint'],
  'DataAwsCloudfrontDistributionTenant': ['arn'],
  'DataAwsCloudfrontOriginRequestPolicy': ['name'],
  'DataAwsCloudfrontResponseHeadersPolicy': ['name'],
  'DataAwsCodestarconnectionsConnection': ['arn'],
  'DataAwsConnectContactFlow': ['contactFlowId'],
  'DataAwsConnectContactFlowModule': ['contactFlowModuleId'],
  'DataAwsConnectHoursOfOperation': ['hoursOfOperationId'],
  'DataAwsConnectInstance': ['instanceAlias'],
  'DataAwsConnectQueue': ['name'],
  'DataAwsConnectQuickConnect': ['name'],
  'DataAwsConnectRoutingProfile': ['name'],
  'DataAwsConnectSecurityProfile': ['name'],
  'DataAwsConnectUser': ['name'],
  'DataAwsConnectUserHierarchyGroup': ['hierarchyGroupId'],
  'DataAwsConnectVocabulary': ['name'],
  'DataAwsDatazoneDomain': ['name'],
  'DataAwsEc2CapacityBlockReservation': ['filter'],
  'DataAwsEc2ServiceLinkVirtualInterface': ['filter'],
  'DataAwsEcrImage': ['imageTag'],
  'DataAwsEcrLifecyclePolicyDocument': ['rule'],
  'DataAwsIamOpenidConnectProvider': ['arn'],
  'DataAwsIdentitystoreGroup': ['groupId'],
  'DataAwsIdentitystoreUser': ['userId'],
  'DataAwsLbListenerRule': ['arn'],
  'DataAwsMskKafkaVersion': ['preferredVersions'],
  'DataAwsNetworkfirewallFirewall': ['arn', 'name'],
  'DataAwsNetworkfirewallFirewallPolicy': ['arn', 'name'],
  'DataAwsOpensearchserverlessCollection': ['name'],
  'DataAwsOutpostsSite': ['name'],
  'DataAwsRoute53profilesProfile': ['name'],
  'DataAwsSecretsmanagerSecret': ['arn'],
  'DataAwsServicecatalogappregistryAttributeGroup': ['arn'],
  'DataAwsServicecatalogappregistryAttributeGroupAssociations': ['name'],
  'DataAwsServicequotasServiceQuota': ['quotaCode'],
  'DataAwsServicequotasTemplates': ['awsRegion'],
  'DataAwsSfnActivity': ['arn'],
  'DataAwsShieldProtection': ['protectionId'],
  'DataAwsSsoadminPermissionSet': ['arn'],
  'DataAwsSyntheticsRuntimeVersion': ['latest'],
  'DataAwsVpclatticeService': ['name'],
  'DataAwsVpclatticeServiceNetworkServiceAssociations': [
    'serviceNetworkIdentifier',
  ],
  'DataAwsVpnConnection': ['vpnConnectionId', 'filter'],
  'DataAwsWafSubscribedRuleGroup': ['metricName', 'name'],
  'DataAwsWafregionalSubscribedRuleGroup': ['metricName', 'name'],
  'DataAwsWafv2WebAcl': ['name'],
  'DataEcrLifecyclePolicyDocumentRule': ['selection'],
  'DataexchangeEventActionActionExportRevisionToS3': ['revisionDestination'],
  'EbsSnapshotImportDiskContainer': ['url'],
  'FsxS3AccessPointAttachmentOpenzfsConfiguration': ['fileSystemIdentity'],
  'GlueCatalogCatalogProperties': ['dataLakeAccessProperties'],
  'ImagebuilderLifecyclePolicyPolicyDetail': ['action', 'filter'],
  'ImagebuilderLifecyclePolicyPolicyDetailFilter': ['unit'],
  'LakeformationDataCellsFilterTableData': ['columnNames', 'rowFilter'],
  'LakeformationDataCellsFilterTableDataRowFilter': ['filterExpression'],
  'LakeformationOptInResourceData': ['database'],
  'MskChannelIcebergDestination': [
    'deadLetterQueueS3',
    'destinationTable',
    'schemaEvolution',
    'tableCreation',
  ],
  'MskChannelTopicConfiguration': ['recordConverter'],
  'MskReplicatorReplicationInfoList': [
    'sourceKafkaClusterArn',
    'targetKafkaClusterArn',
  ],
  'NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration':
      ['scope', 'certificateAuthorityArn'],
  'NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope':
      ['destination'],
  'NetworkflowmonitorScopeTarget': ['targetIdentifier'],
  'NetworkflowmonitorScopeTargetTargetIdentifier': ['targetId'],
  'ObservabilityadminCentralizationRuleForOrganizationRule': [
    'source',
    'destination',
  ],
  'PrometheusQueryLoggingConfigurationDestination': [
    'filters',
    'cloudwatchLogs',
  ],
  'QuicksightRefreshScheduleSchedule': ['scheduleFrequency'],
  'S3BucketMetadataConfigurationMetadataConfiguration': [
    'journalTableConfiguration',
    'inventoryTableConfiguration',
  ],
  'S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration':
      ['recordExpiration'],
  'SagemakerAlgorithmTrainingSpecification': ['trainingChannels'],
  'SagemakerHyperParameterTuningJobConfig': ['resourceLimits'],
  'SagemakerLabelingJobHumanTaskConfig': ['uiConfig'],
  'SagemakerLabelingJobInputConfig': ['dataSource'],
  'SecuritylakeCustomLogSourceConfiguration': [
    'providerIdentity',
    'crawlerConfiguration',
  ],
  'SecuritylakeSubscriberSource': ['awsLogSourceResource'],
  'ServicecatalogProductProvisioningArtifactParameters': ['templatePhysicalId'],
  'Sesv2ConfigurationSetEventDestinationEventDestination': [
    'cloudWatchDestination',
  ],
  'TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfiguration': [
    'dimensionMapping',
  ],
};

List<_Extra> _extras(_Factory f, Map<String, _ClassInfo> helpers) {
  final requiredNames = {for (final p in f.requiredParams) p.name};
  final optional = {for (final p in f.optionalParams) p.name: p};
  final out = <_Extra>[];
  final extras = _extraParams[f.className];
  if (extras != null) _usedKeys.add(f.className);
  for (final name in extras ?? const <String>[]) {
    if (requiredNames.contains(name) || !optional.containsKey(name)) {
      throw StateError('${f.className}.$name is not an optional parameter');
    }
    out.add(
      _Extra(
        name,
        _dummy(
          optional[name]!,
          helpers,
          sensitive: f.sensitiveLeaves,
          depth: 0,
          owner: f.className,
        ),
      ),
    );
  }
  return out;
}

List<String> _splitTopLevel(String src, String sep) {
  final out = <String>[];
  final buf = StringBuffer();
  var depth = 0;
  for (var i = 0; i < src.length; i++) {
    final ch = src[i];
    if (ch == '<' || ch == '(' || ch == '[' || ch == '{') depth++;
    if (ch == '>' || ch == ')' || ch == ']' || ch == '}') {
      depth = depth > 0 ? depth - 1 : 0;
    }
    if (ch == sep && depth == 0) {
      out.add(buf.toString());
      buf.clear();
      continue;
    }
    buf.write(ch);
  }
  if (buf.isNotEmpty) out.add(buf.toString());
  return out;
}

int _matchBrace(String src, int open) {
  var depth = 0;
  for (var i = open; i < src.length; i++) {
    final ch = src[i];
    if (ch == '{') depth++;
    if (ch == '}') {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

String _uniqueLocal(String tfType, _Kind kind, Set<String> used) {
  var name =
      tfType.startsWith('aws_') ? tfType.substring('aws_'.length) : tfType;
  if (kind == _Kind.data) name = 'd_$name';
  if (name.length > 48) name = name.substring(0, 48);
  name = name.replaceAll(RegExp(r'[^A-Za-z0-9_]'), '_');
  if (name.isEmpty || RegExp(r'^[0-9]').hasMatch(name)) {
    name = 'n_$name';
  }
  var candidate = name;
  var n = 2;
  while (used.contains(candidate)) {
    final suffix = '_$n';
    candidate = name.length + suffix.length > 48
        ? '${name.substring(0, 48 - suffix.length)}$suffix'
        : '$name$suffix';
    n++;
  }
  used.add(candidate);
  return candidate;
}

String _toSnake(String camel) {
  return camel.replaceAllMapped(
    RegExp(r'[A-Z]'),
    (m) => '_${m.group(0)!.toLowerCase()}',
  );
}

bool _isSensitive(String name, Set<String> sensitive) {
  if (sensitive.isEmpty) return false;
  final snake = _toSnake(name);
  return sensitive.contains(snake) || sensitive.contains(name);
}

String _dummy(
  _Param p,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  String owner = '',
}) {
  if (depth > _maxDepth) return "TfArg.literal('leftover')";
  final n = p.name;
  final value = _lookup('$owner.$n');
  if (value != null) {
    return p.type.startsWith('TfArg') ? 'TfArg.literal($value)' : value;
  }
  if (_isSensitive(n, sensitive) && p.type.startsWith('TfArg')) {
    return _secretVarRef;
  }
  final count = _listCounts['$owner.$n'];
  if (count != null) {
    _usedKeys.add('$owner.$n');
    return _repeat(
      _dummyForType(
        p.type,
        helpers,
        depth: depth,
        name: n,
        sensitive: sensitive,
        owner: owner,
      ),
      count,
    );
  }
  return _dummyForType(
    p.type,
    helpers,
    depth: depth,
    name: n,
    sensitive: sensitive,
    owner: owner,
  );
}

const _primitives = {
  'String',
  'num',
  'int',
  'double',
  'bool',
  'Object',
  'dynamic',
  'Null',
  'Map',
  'List',
  'Set',
};

/// `{'k': value}` with a value of the map's declared value type.
String _mapLiteral(
  String type,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
}) {
  if (!type.startsWith('Map<')) return "{'k': leftover}";
  final args = _splitTopLevel(type.substring(4, type.length - 1), ',');
  if (args.length != 2) return "{'k': leftover}";
  final value = args[1].trim();
  if (value == 'dynamic' || value.startsWith('Object')) {
    return "{'k': leftover}";
  }
  final inner = _literalInner(
    value,
    helpers,
    depth: depth + 1,
    name: 'k',
    sensitive: sensitive,
  );
  // A nested collection makes dart format split the literal, and
  // `require_trailing_commas` then wants the comma.
  final comma = inner.contains('{') || inner.contains('[') ? ',' : '';
  return "{'k': $inner$comma}";
}

String _headType(String type) {
  final i = type.indexOf('<');
  return i < 0 ? type : type.substring(0, i);
}

String _dummyForType(
  String type,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  String name = '',
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();

  if (t.startsWith('TfArg<') && t.endsWith('>')) {
    if (_isSensitive(name, sensitive)) {
      return _secretVarRef;
    }
    final inner = t.substring(6, t.length - 1);
    return 'TfArg.literal(${_literalInner(inner, helpers, depth: depth, name: name, sensitive: sensitive, owner: owner)})';
  }
  if (t.startsWith('List<') && t.endsWith('>')) {
    final inner = t.substring(5, t.length - 1);
    return '[${_dummyForType(inner, helpers, depth: depth + 1, name: name, sensitive: sensitive, owner: owner)},]';
  }
  if (t.startsWith('Map<') || t == 'Map') {
    return _mapLiteral(t, helpers, depth: depth, sensitive: sensitive);
  }
  if (helpers.containsKey(t)) {
    return _constructHelper(t, helpers, depth: depth + 1, sensitive: sensitive);
  }
  if (_primitives.contains(_headType(t))) {
    return _literalInner(
      t,
      helpers,
      depth: depth,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
  }
  return 'TfArg.literal(leftover)';
}

String _literalInner(
  String inner,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required String name,
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = inner.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  if (t == 'String') return _stringLiteral(name, owner: owner);
  if (t == 'num' || t == 'int' || t == 'double') return '200';
  if (t == 'bool') return 'true';
  if (t.startsWith('List<') && t.endsWith('>')) {
    final listInner = t.substring(5, t.length - 1).trim().replaceAll('?', '');
    if (helpers.containsKey(listInner)) {
      return '[${_constructHelper(listInner, helpers, depth: depth + 1, sensitive: sensitive)},]';
    }
    if (listInner.startsWith('Map')) return "[{'k': leftover}]";
    if (listInner.contains('num') ||
        listInner.contains('int') ||
        listInner.contains('double')) {
      return '[200]';
    }
    if (listInner.contains('bool')) return '[true]';
    if (listInner == 'String') return '[${_stringLiteral(name, owner: owner)}]';
    return '[leftover]';
  }
  if (t.startsWith('Map<') || t == 'Map') {
    return _mapLiteral(t, helpers, depth: depth, sensitive: sensitive);
  }
  if (t == 'Object' || t.contains('Object')) return 'leftover';
  if (helpers.containsKey(t)) {
    return _constructHelper(t, helpers, depth: depth + 1, sensitive: sensitive);
  }
  return 'leftover';
}

const _accountId = '123456789012';

/// Deeper than any typed helper chain in the catalog; the heavy
/// resources take their nested blocks as maps.
const _maxDepth = 20;

/// Values the provider's validate-time checks accept, keyed by
/// `Owner.param` (resource, data source, or helper class) or by bare
/// parameter name.
const _literalByKey = <String, String>{
  'AcmpcaCertificateAuthorityCertificateAuthorityConfiguration.keyAlgorithm':
      '\'RSA_2048\'',
  'AcmpcaCertificateAuthorityCertificateAuthorityConfiguration.signingAlgorithm':
      '\'SHA256WITHRSA\'',
  'AcmpcaCertificateValidity.type': '\'END_DATE\'',
  'AcmpcaCertificateValidity.value': '\'2026-01-01T00:00:00Z\'',
  'AgentregistryRegistryDiscoveryConfiguration.authorizerType':
      '\'CUSTOM_JWT\'',
  'AlbListenerDefaultAction.type': '\'forward\'',
  'AlbListenerRuleAction.type': '\'forward\'',
  'Apigatewayv2DomainNameDomainNameConfiguration.endpointType': '\'REGIONAL\'',
  'Apigatewayv2DomainNameDomainNameConfiguration.securityPolicy': '\'TLS_1_2\'',
  'AppautoscalingScheduledActionScalableTargetAction.maxCapacity': '\'64512\'',
  'AppconfigExtensionActionPoint.point':
      '\'PRE_CREATE_HOSTED_CONFIGURATION_VERSION\'',
  'AppfabricIngestionDestinationProcessingConfigurationAuditLog.format':
      '\'json\'',
  'AppfabricIngestionDestinationProcessingConfigurationAuditLog.schema':
      '\'ocsf\'',
  'AppflowFlowDestinationFlowConfig.connectorType': '\'Salesforce\'',
  'AppflowFlowSourceFlowConfig.connectorType': '\'Salesforce\'',
  'AppflowFlowTask.taskType': '\'Arithmetic\'',
  'AppflowFlowTriggerConfig.triggerType': '\'Scheduled\'',
  'AppintegrationsEventIntegrationEventFilter.source':
      '\'aws.partner/example.com/leftover\'',
  'AppmeshVirtualGatewaySpecListenerPortMapping.protocol': '\'http\'',
  'AppmeshVirtualRouterSpecListenerPortMapping.protocol': '\'http\'',
  'ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion.type':
      '\'BRANCH\'',
  'ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion.value':
      '\'BRANCH\'',
  'AppsyncApiEventConfigAuthProvider.authType': '\'API_KEY\'',
  'AppsyncApiEventConfigConnectionAuthMode.authType': '\'API_KEY\'',
  'AppsyncApiEventConfigDefaultPublishAuthMode.authType': '\'API_KEY\'',
  'AppsyncApiEventConfigDefaultSubscribeAuthMode.authType': '\'API_KEY\'',
  'AuditmanagerAssessmentRoles.roleType': '\'PROCESS_OWNER\'',
  'AutoscalingplansScalingPlanScalingInstruction.scalableDimension':
      '\'autoscaling:autoScalingGroup:DesiredCapacity\'',
  'AutoscalingplansScalingPlanScalingInstruction.serviceNamespace':
      '\'autoscaling\'',
  'AwsAccountAlternateContact.alternateContactType': '\'BILLING\'',
  'AwsAccountAlternateContact.phoneNumber': '\'+12065550100\'',
  'AwsAccountPrimaryContact.phoneNumber': '\'+12065550100\'',
  'AwsAcmpcaCertificate.signingAlgorithm': '\'SHA256WITHRSA\'',
  'AwsAcmpcaPermission.actions': '[\'IssueCertificate\']',
  'AwsAcmpcaPermission.principal': '\'acm.amazonaws.com\'',
  'AwsApiGatewayDomainNameAccessAssociation.accessAssociationSourceType':
      '\'VPCE\'',
  'AwsApiGatewayIntegration.httpMethod': '\'ANY\'',
  'AwsApiGatewayIntegration.type': '\'HTTP\'',
  'AwsApiGatewayIntegrationResponse.httpMethod': '\'ANY\'',
  'AwsApiGatewayMethod.httpMethod': '\'ANY\'',
  'AwsApiGatewayMethodResponse.httpMethod': '\'ANY\'',
  'AwsApigatewayv2Api.protocolType': '\'WEBSOCKET\'',
  'AwsApigatewayv2Authorizer.authorizerType': '\'REQUEST\'',
  'AwsApigatewayv2Integration.integrationType': '\'AWS\'',
  'AwsApigatewayv2Model.schema': 'policy',
  'AwsAppconfigDeployment.deploymentStrategyId': '\'yh1uqgz\'',
  'AwsAppconfigDeploymentStrategy.growthFactor': '1',
  'AwsAppconfigDeploymentStrategy.replicateTo': '\'NONE\'',
  'AwsAppconfigEnvironment.applicationId': '\'abc1234\'',
  'AwsAppfabricAppAuthorization.authType': '\'oauth2\'',
  'AwsAppfabricIngestion.ingestionType': '\'auditLog\'',
  'AwsAppflowConnectorProfile.connectionMode': '\'Public\'',
  'AwsAppflowConnectorProfile.connectorType': '\'Salesforce\'',
  'AwsApprunnerConnection.providerType': '\'GITHUB\'',
  'AwsAppstreamUser.authenticationType': '\'API\'',
  'AwsAppstreamUserStackAssociation.authenticationType': '\'API\'',
  'AwsAppsyncApiCache.apiCachingBehavior': '\'FULL_REQUEST_CACHING\'',
  'AwsAppsyncApiCache.type': '\'T2_SMALL\'',
  'AwsAppsyncDatasource.type': '\'AWS_LAMBDA\'',
  'AwsAppsyncGraphqlApi.authenticationType': '\'API_KEY\'',
  'AwsAppsyncType.format': '\'SDL\'',
  'AwsArcregionswitchPlan.executionRole': 'arn',
  'AwsArcregionswitchPlan.recoveryApproach': '\'activeActive\'',
  'AwsArczonalshiftAutoshiftObserverNotificationStatus.status': '\'ENABLED\'',
  'AwsArczonalshiftZonalAutoshiftConfiguration.zonalAutoshiftStatus':
      '\'ENABLED\'',
  'AwsAthenaDataCatalog.type': '\'LAMBDA\'',
  'AwsAuditmanagerAssessmentDelegation.roleType': '\'PROCESS_OWNER\'',
  'AwsAuditmanagerFrameworkShare.destinationAccount': '\'123456789012\'',
  'AwsAutoscalingLifecycleHook.lifecycleTransition':
      '\'autoscaling:EC2_INSTANCE_LAUNCHING\'',
  'AwsBackupVaultNotifications.backupVaultEvents': '[\'BACKUP_JOB_STARTED\']',
  'AwsBatchComputeEnvironment.type': '\'MANAGED\'',
  'AwsBatchJobDefinition.type': '\'container\'',
  'AwsBatchJobQueue.state': '\'ENABLED\'',
  'AwsBedrockCustomModel.baseModelIdentifier': 'arn',
  'AwsBedrockUseCaseForModelAccess.formData': 'policy',
  'AwsBedrockagentAgentKnowledgeBaseAssociation.knowledgeBaseState':
      '\'ENABLED\'',
  'AwsBedrockagentcoreEvaluator.level': '\'TOOL_CALL\'',
  'AwsBedrockagentcoreGateway.authorizerType': '\'AWS_IAM\'',
  'AwsBedrockagentcoreMemoryStrategy.type': '\'SEMANTIC\'',
  'AwsBedrockagentcoreOauth2CredentialProvider.credentialProviderVendor':
      '\'GoogleOauth2\'',
  'AwsBedrockagentcorePolicy.policyEngineId': '\'T0OLrnw-qkcm9dd3b0\'',
  'AwsBudgetsBudget.budgetType': '\'USAGE\'',
  'AwsBudgetsBudget.timeUnit': '\'DAILY\'',
  'AwsBudgetsBudgetAction.actionType': '\'APPLY_IAM_POLICY\'',
  'AwsBudgetsBudgetAction.approvalModel': '\'AUTOMATIC\'',
  'AwsBudgetsBudgetAction.notificationType': '\'ACTUAL\'',
  'AwsCeAnomalyMonitor.monitorType': '\'DIMENSIONAL\'',
  'AwsCeAnomalySubscription.frequency': '\'DAILY\'',
  'AwsCeAnomalySubscription.monitorArnList': '[arn]',
  'AwsCeCostAllocationTag.status': '\'Active\'',
  'AwsChimeVoiceConnectorTermination.callingRegions': '[\'US\']',
  'AwsChimeVoiceConnectorTermination.cidrAllowList': '[\'10.0.0.0/28\']',
  'AwsChimesdkvoiceSipRule.triggerType': '\'ToPhoneNumber\'',
  'AwsCleanroomsMembership.queryLogStatus': '\'ENABLED\'',
  'AwsCloud9EnvironmentEc2.imageId': '\'amazonlinux-1-x86_64\'',
  'AwsCloud9EnvironmentMembership.permissions': '\'owner\'',
  'AwsCloudcontrolapiResource.typeName': '\'AWS::S3::Bucket\'',
  'AwsCloudformationType.schemaHandlerPackage':
      '\'s3://leftover-bucket/leftover\'',
  'AwsCloudformationType.typeName': '\'Leftover::Example::Thing\'',
  'AwsCloudfrontAnycastIpList.ipCount': '3',
  'AwsCloudfrontFunction.runtime': '\'cloudfront-js-1.0\'',
  'AwsCloudfrontOriginAccessControl.originAccessControlOriginType': '\'s3\'',
  'AwsCloudfrontOriginAccessControl.signingBehavior': '\'never\'',
  'AwsCloudfrontOriginAccessControl.signingProtocol': '\'sigv4\'',
  'AwsCloudfrontRealtimeLogConfig.samplingRate': '1',
  'AwsCloudhsmV2Cluster.hsmType': '\'hsm1.medium\'',
  'AwsCloudwatchContributorInsightRule.ruleDefinition': 'policy',
  'AwsCloudwatchDashboard.dashboardBody': 'policy',
  'AwsCloudwatchEventApiDestination.httpMethod': '\'POST\'',
  'AwsCloudwatchEventConnection.authorizationType': '\'BASIC\'',
  'AwsCloudwatchEventPermission.principal': '\'123456789012\'',
  'AwsCloudwatchEventRule.eventPattern': 'policy',
  'AwsCloudwatchLogAccountPolicy.policyType': '\'DATA_PROTECTION_POLICY\'',
  'AwsCloudwatchLogStorageTierPolicy.storageTier': '\'STANDARD\'',
  'AwsCloudwatchMetricStream.outputFormat': '\'json\'',
  'AwsCodebuildFleet.computeType': '\'BUILD_GENERAL1_SMALL\'',
  'AwsCodebuildFleet.environmentType': '\'WINDOWS_CONTAINER\'',
  'AwsCodebuildProject.serviceRole': 'arn',
  'AwsCodebuildReportGroup.type': '\'TEST\'',
  'AwsCodebuildSourceCredential.authType': '\'OAUTH\'',
  'AwsCodebuildSourceCredential.serverType': '\'GITHUB\'',
  'AwsCodecatalystDevEnvironment.instanceType': '\'dev.standard1.small\'',
  'AwsCodecommitApprovalRuleTemplate.content': 'policy',
  'AwsCodeconnectionsHost.providerType': '\'Bitbucket\'',
  'AwsCodepipelineCustomActionType.category': '\'Source\'',
  'AwsCodepipelineWebhook.authentication': '\'GITHUB_HMAC\'',
  'AwsCodestarconnectionsHost.providerType': '\'Bitbucket\'',
  'AwsCodestarnotificationsNotificationRule.detailType': '\'BASIC\'',
  'AwsCodestarnotificationsNotificationRule.resource': 'arn',
  'AwsCognitoIdentityPoolProviderPrincipalTag.identityPoolId':
      '\'us-east-1:12345678-1234-1234-1234-123456789012\'',
  'AwsCognitoIdentityProvider.providerType': '\'SAML\'',
  'AwsCognitoManagedLoginBranding.settings': 'policy',
  'AwsCognitoRiskConfiguration.userPoolId': '\'us-east-1_leftover\'',
  'AwsCognitoUserGroup.userPoolId': '\'us-east-1_leftover\'',
  'AwsCognitoUserInGroup.userPoolId': '\'us-east-1_leftover\'',
  'AwsComprehendDocumentClassifier.languageCode': '\'en\'',
  'AwsComprehendEntityRecognizer.languageCode': '\'en\'',
  'AwsComputeoptimizerEnrollmentStatus.status': '\'Active\'',
  'AwsComputeoptimizerRecommendationPreferences.enhancedInfrastructureMetrics':
      '\'Active\'',
  'AwsComputeoptimizerRecommendationPreferences.resourceType':
      '\'AutoScalingGroup\'',
  'AwsConfigConformancePack.templateS3Uri': '\'s3://leftover-bucket/leftover\'',
  'AwsConfigOrganizationCustomPolicyRule.triggerTypes':
      '[\'ConfigurationItemChangeNotification\']',
  'AwsConfigOrganizationCustomRule.triggerTypes':
      '[\'ConfigurationItemChangeNotification\']',
  'AwsConfigRemediationConfiguration.targetType': '\'SSM_DOCUMENT\'',
  'AwsConnectInstance.identityManagementType': '\'SAML\'',
  'AwsConnectInstanceStorageConfig.resourceType': '\'CHAT_TRANSCRIPTS\'',
  'AwsConnectPhoneNumber.countryCode': '\'AF\'',
  'AwsConnectPhoneNumber.type': '\'TOLL_FREE\'',
  'AwsConnectVocabulary.languageCode': '\'ar-AE\'',
  'AwsControltowerControl.controlIdentifier': 'arn',
  'AwsControltowerControl.targetIdentifier': 'arn',
  'AwsControltowerLandingZone.manifestJson': 'policy',
  'AwsCurReportDefinition.additionalSchemaElements': '[\'RESOURCES\']',
  'AwsCurReportDefinition.compression': '\'ZIP\'',
  'AwsCurReportDefinition.format': '\'textORcsv\'',
  'AwsCurReportDefinition.timeUnit': '\'HOURLY\'',
  'AwsCustomerGateway.type': '\'ipsec.1\'',
  'AwsDataexchangeDataSet.assetType': '\'S3_SNAPSHOT\'',
  'AwsDatasyncLocationAzureBlob.authenticationType': '\'SAS\'',
  'AwsDatazoneDomain.domainExecutionRole': 'arn',
  'AwsDatazoneFormType.domainIdentifier': '\'dzd-xRc\'',
  'AwsDatazonePolicyGrant.entityType': '\'DOMAIN_UNIT\'',
  'AwsDatazonePolicyGrant.policyType': '\'CREATE_DOMAIN_UNIT\'',
  'AwsDatazoneProject.domainIdentifier': '\'dzd-xRc\'',
  'AwsDbEventSubscription.snsTopic': 'arn',
  'AwsDbProxy.engineFamily': '\'MYSQL\'',
  'AwsDevicefarmUpload.type': '\'ANDROID_APP\'',
  'AwsDevopsguruResourceCollection.type': '\'AWS_CLOUD_FORMATION\'',
  'AwsDirectoryServiceConditionalForwarder.remoteDomainName': '\'example.com\'',
  'AwsDirectoryServiceDirectory.name': '\'example.com\'',
  'AwsDirectoryServiceRadiusSettings.authenticationProtocol': '\'PAP\'',
  'AwsDirectoryServiceRadiusSettings.radiusRetries': '0',
  'AwsDirectoryServiceRadiusSettings.radiusTimeout': '1',
  'AwsDirectoryServiceRegion.regionName': '\'us-east-1\'',
  'AwsDirectoryServiceTrust.directoryId': '\'d-1234567890\'',
  'AwsDirectoryServiceTrust.remoteDomainName': '\'example.com\'',
  'AwsDirectoryServiceTrust.trustDirection': '\'Two-Way\'',
  'AwsDlmLifecyclePolicy.defaultPolicy': '\'VOLUME\'',
  'AwsDmsDataProvider.engine': '\'aurora\'',
  'AwsDmsEndpoint.endpointType': '\'source\'',
  'AwsDmsEndpoint.engineName': '\'aurora\'',
  'AwsDmsEventSubscription.sourceType': '\'replication-instance\'',
  'AwsDmsReplicationConfig.replicationType': '\'full-load\'',
  'AwsDmsReplicationConfig.tableMappings': 'policy',
  'AwsDmsReplicationTask.migrationType': '\'full-load\'',
  'AwsDmsReplicationTask.tableMappings': 'policy',
  'AwsDmsS3Endpoint.endpointType': '\'source\'',
  'AwsDocdbGlobalCluster.engine': '\'docdb\'',
  'AwsDocdbelasticCluster.authType': '\'PLAIN_TEXT\'',
  'AwsDocdbelasticCluster.shardCount': '1',
  'AwsDrsReplicationConfigurationTemplate.dataPlaneRouting': '\'PRIVATE_IP\'',
  'AwsDrsReplicationConfigurationTemplate.defaultLargeStagingDiskType':
      '\'GP2\'',
  'AwsDrsReplicationConfigurationTemplate.ebsEncryption': '\'DEFAULT\'',
  'AwsDsqlClusterPolicy.identifier': '\'abcdefghijklmnopqrstuvwxyz\'',
  'AwsDxBgpPeer.addressFamily': '\'ipv4\'',
  'AwsDxConnection.bandwidth': '\'1Gbps\'',
  'AwsDxGateway.amazonSideAsn': '\'64512\'',
  'AwsDxHostedConnection.bandwidth': '\'1Gbps\'',
  'AwsDxHostedPrivateVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDxHostedPublicVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDxHostedTransitVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDxLag.connectionsBandwidth': '\'1Gbps\'',
  'AwsDxMacsecKeyAssociation.secretArn':
      '\'arn:aws:secretsmanager:us-east-1:123456789012:secret:leftover\'',
  'AwsDxPrivateVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDxPublicVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDxTransitVirtualInterface.addressFamily': '\'ipv4\'',
  'AwsDynamodbTableItem.item': '\'{"pk": {"S": "leftover"}}\'',
  'AwsEbsSnapshotBlockPublicAccess.state': '\'block-all-sharing\'',
  'AwsEc2AllowedImagesSettings.state': '\'enabled\'',
  'AwsEc2AvailabilityZoneGroup.optInStatus': '\'opted-in\'',
  'AwsEc2CapacityBlockReservation.instancePlatform': '\'Linux/UNIX\'',
  'AwsEc2CapacityReservation.instancePlatform': '\'Linux/UNIX\'',
  'AwsEc2DefaultCreditSpecification.cpuCredits': '\'standard\'',
  'AwsEc2DefaultCreditSpecification.instanceFamily': '\'t2\'',
  'AwsEc2ImageBlockPublicAccess.state': '\'block-new-sharing\'',
  'AwsEc2InstanceMetadataDefaults.httpEndpoint': '\'disabled\'',
  'AwsEc2InstanceMetadataDefaults.httpPutResponseHopLimit': '1',
  'AwsEc2InstanceState.state': '\'running\'',
  'AwsEc2LocalGatewayRouteTable.mode': '\'direct-vpc-routing\'',
  'AwsEc2ManagedPrefixList.addressFamily': '\'IPv4\'',
  'AwsEc2NetworkInsightsPath.protocol': '\'tcp\'',
  'AwsEc2SecondaryNetwork.networkType': '\'rdma\'',
  'AwsEc2SubnetCidrReservation.reservationType': '\'prefix\'',
  'AwsEc2TrafficMirrorFilterRule.ruleAction': '\'accept\'',
  'AwsEc2TrafficMirrorFilterRule.trafficDirection': '\'ingress\'',
  'AwsEc2TransitGatewayConnectPeer.insideCidrBlocks': '[\'169.254.100.0/29\']',
  'AwsEc2TransitGatewayConnectPeer.peerAddress': '\'10.0.0.1\'',
  'AwsEc2TransitGatewayMeteringPolicyEntry.meteredAccount':
      '\'source-attachment-owner\'',
  'AwsEc2TransitGatewayMulticastGroupMember.groupIpAddress': '\'224.0.0.1\'',
  'AwsEc2TransitGatewayMulticastGroupSource.groupIpAddress': '\'224.0.0.1\'',
  'AwsEcrAccountSetting.name': '\'BASIC_SCAN_TYPE_VERSION\'',
  'AwsEcrAccountSetting.value': '\'AWS_NATIVE\'',
  'AwsEcrRegistryScanningConfiguration.scanType': '\'BASIC\'',
  'AwsEcrRepositoryCreationTemplate.appliedFor': '[\'REPLICATION\']',
  'AwsEcsAccountSettingDefault.name': '\'serviceLongArnFormat\'',
  'AwsEcsTaskDefinition.containerDefinitions':
      '\'[{"name": "leftover", "image": "public.ecr.aws/nginx/nginx:latest", "essential": true}]\'',
  'AwsEksCapability.deletePropagationPolicy': '\'RETAIN\'',
  'AwsEksCapability.type': '\'ACK\'',
  'AwsElasticacheCluster.engine': '\'memcached\'',
  'AwsElasticacheUser.engine': '\'redis\'',
  'AwsElasticacheUserGroup.engine': '\'redis\'',
  'AwsElasticsearchDomainPolicy.accessPolicies': 'policy',
  'AwsElastictranscoderPipeline.role': 'arn',
  'AwsElastictranscoderPreset.container': '\'flac\'',
  'AwsEmrSecurityConfiguration.configuration': 'policy',
  'AwsEmrStudio.authMode': '\'SSO\'',
  'AwsEmrStudio.serviceRole': 'arn',
  'AwsEmrStudioSessionMapping.identityType': '\'USER\'',
  'AwsEvidentlySegment.pattern': 'policy',
  'AwsFinspaceKxCluster.azMode': '\'SINGLE\'',
  'AwsFinspaceKxCluster.type': '\'HDB\'',
  'AwsFinspaceKxDataview.azMode': '\'SINGLE\'',
  'AwsFinspaceKxEnvironment.kmsKeyId': 'arn',
  'AwsFinspaceKxUser.iamRole': 'arn',
  'AwsFinspaceKxVolume.azMode': '\'SINGLE\'',
  'AwsFinspaceKxVolume.type': '\'NAS_1\'',
  'AwsFsxDataRepositoryAssociation.dataRepositoryPath':
      '\'s3://leftover-bucket/leftover\'',
  'AwsFsxDataRepositoryAssociation.fileSystemId': '\'fs-0123456789abcdef0\'',
  'AwsFsxDataRepositoryAssociation.fileSystemPath': '\'/leftover\'',
  'AwsFsxFileCache.fileCacheType': '\'LUSTRE\'',
  'AwsFsxFileCache.fileCacheTypeVersion': '\'2.12\'',
  'AwsFsxOntapFileSystem.deploymentType': '\'MULTI_AZ_1\'',
  'AwsFsxOntapFileSystem.storageCapacity': '1024',
  'AwsFsxOntapFileSystem.throughputCapacity': '128',
  'AwsFsxOntapStorageVirtualMachine.fileSystemId': '\'fs-0123456789abcdef0\'',
  'AwsFsxOntapVolume.sizeInBytes': '\'64512\'',
  'AwsFsxOntapVolume.storageVirtualMachineId': '\'svm-0123456789abcdef0\'',
  'AwsFsxOpenzfsFileSystem.deploymentType': '\'SINGLE_AZ_1\'',
  'AwsFsxOpenzfsSnapshot.volumeId': '\'fsvol-0123456789abcdef0\'',
  'AwsFsxOpenzfsVolume.parentVolumeId': '\'fsvol-0123456789abcdef0\'',
  'AwsFsxS3AccessPointAttachment.type': '\'OPENZFS\'',
  'AwsFsxWindowsFileSystem.throughputCapacity': '8',
  'AwsGameliftBuild.operatingSystem': '\'WINDOWS_2012\'',
  'AwsGameliftFleet.ec2InstanceType': '\'t2.micro\'',
  'AwsGameliftGameServerGroup.instanceDefinition':
      '[GameliftGameServerGroupInstanceDefinition(instanceType: TfArg.literal(\'c5.large\')), GameliftGameServerGroupInstanceDefinition(instanceType: TfArg.literal(\'c5.xlarge\')),]',
  'AwsGlobalacceleratorListener.protocol': '\'TCP\'',
  'AwsGlueCatalogTableOptimizer.type': '\'compaction\'',
  'AwsGlueSchema.compatibility': '\'NONE\'',
  'AwsGlueSchema.dataFormat': '\'AVRO\'',
  'AwsGlueTrigger.type': '\'SCHEDULED\'',
  'AwsGlueUserDefinedFunction.ownerType': '\'USER\'',
  'AwsGrafanaLicenseAssociation.licenseType': '\'ENTERPRISE\'',
  'AwsGrafanaWorkspace.accountAccessType': '\'CURRENT_ACCOUNT\'',
  'AwsGrafanaWorkspace.authenticationProviders': '[\'AWS_SSO\']',
  'AwsGrafanaWorkspace.permissionType': '\'CUSTOMER_MANAGED\'',
  'AwsGrafanaWorkspaceApiKey.keyRole': '\'ADMIN\'',
  'AwsGrafanaWorkspaceServiceAccount.grafanaRole': '\'ADMIN\'',
  'AwsGuarddutyDetectorFeature.name': '\'S3_DATA_EVENTS\'',
  'AwsGuarddutyDetectorFeature.status': '\'ENABLED\'',
  'AwsGuarddutyFilter.action': '\'NOOP\'',
  'AwsGuarddutyIpset.format': '\'TXT\'',
  'AwsGuarddutyMalwareProtectionPlan.role': 'arn',
  'AwsGuarddutyMemberDetectorFeature.name': '\'S3_DATA_EVENTS\'',
  'AwsGuarddutyMemberDetectorFeature.status': '\'ENABLED\'',
  'AwsGuarddutyOrganizationConfiguration.autoEnableOrganizationMembers':
      '\'NEW\'',
  'AwsGuarddutyOrganizationConfigurationFeature.autoEnable': '\'NEW\'',
  'AwsGuarddutyOrganizationConfigurationFeature.name': '\'S3_DATA_EVENTS\'',
  'AwsGuarddutyThreatintelset.format': '\'TXT\'',
  'AwsIamSamlProvider.samlMetadataDocument': 'leftover * 130',
  'AwsIamSecurityTokenServicePreferences.globalEndpointTokenVersion':
      '\'v1Token\'',
  'AwsIamServiceLinkedRole.awsServiceName':
      '\'elasticbeanstalk.amazonaws.com\'',
  'AwsIamUserSshKey.encoding': '\'SSH\'',
  'AwsImagebuilderComponent.platform': '\'Windows\'',
  'AwsImagebuilderContainerRecipe.containerType': '\'DOCKER\'',
  'AwsImagebuilderImagePipeline.containerRecipeArn':
      '\'arn:aws:imagebuilder:us-east-1:123456789012:container-recipe/leftover/1.0.0\'',
  'AwsImagebuilderImagePipeline.infrastructureConfigurationArn':
      '\'arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/leftover\'',
  'AwsImagebuilderLifecyclePolicy.executionRole': 'arn',
  'AwsImagebuilderLifecyclePolicy.resourceType': '\'AMI_IMAGE\'',
  'AwsImagebuilderWorkflow.type': '\'BUILD\'',
  'AwsImagebuilderWorkflow.version': '\'1.0.0\'',
  'AwsInspector2Enabler.accountIds': '[\'123456789012\']',
  'AwsInspector2Enabler.resourceTypes': '[\'EC2\']',
  'AwsInspector2Filter.action': '\'NONE\'',
  'AwsInternetmonitorMonitor.trafficPercentageToMonitor': '1',
  'AwsIotEventConfigurations.eventConfigurations': '{\'THING\': true}',
  'AwsIotLoggingOptions.defaultLogLevel': '\'DEBUG\'',
  'AwsIotProvisioningTemplate.templateBody': 'policy',
  'AwsKendraDataSource.indexId': '\'12345678-1234-1234-1234-123456789012\'',
  'AwsKendraDataSource.type': '\'S3\'',
  'AwsKendraFaq.indexId': '\'12345678-1234-1234-1234-123456789012\'',
  'AwsKinesisFirehoseDeliveryStream.destination': '\'elasticsearch\'',
  'AwsKinesisanalyticsv2Application.runtimeEnvironment': '\'SQL-1_0\'',
  'AwsKinesisanalyticsv2Application.serviceExecutionRole': 'arn',
  'AwsKmsGrant.granteePrincipal': 'arn',
  'AwsKmsGrant.operations': '[\'Decrypt\']',
  'AwsLakeformationPermissions.permissions': '[\'ALL\']',
  'AwsLakeformationPermissions.principal': 'arn',
  'AwsLambdaFunctionRecursionConfig.recursiveLoop': '\'Allow\'',
  'AwsLambdaFunctionScalingConfig.qualifier': '\'1\'',
  'AwsLambdaInvocation.input': 'policy',
  'AwsLambdaPermission.action': '\'lambda:InvokeFunction\'',
  'AwsLambdacoreNetworkConnector.operatorRole': 'arn',
  'AwsLexBotAlias.botVersion': '\'\\\$LATEST\'',
  'AwsLexv2modelsBotVersion.localeSpecification':
      '{\'en_US\': {\'source_bot_version\': \'DRAFT\'}}',
  'AwsLicensemanagerGrant.allowedOperations': '[\'CreateGrant\']',
  'AwsLicensemanagerGrant.principal': 'arn',
  'AwsLicensemanagerLicenseConfiguration.licenseCountingType': '\'vCPU\'',
  'AwsLightsailContainerService.power': '\'nano\'',
  'AwsLightsailContainerService.scale': '1',
  'AwsLightsailDomainEntry.type': '\'A\'',
  'AwsM2Application.engineType': '\'microfocus\'',
  'AwsM2Environment.engineType': '\'microfocus\'',
  'AwsMacie2ClassificationJob.jobType': '\'ONE_TIME\'',
  'AwsMacie2FindingsFilter.action': '\'ARCHIVE\'',
  'AwsMailmanagerIngressPoint.type': '\'OPEN\'',
  'AwsMailmanagerTrafficPolicy.defaultAction': '\'ALLOW\'',
  'AwsMedialiveChannel.channelClass': '\'STANDARD\'',
  'AwsMedialiveInput.type': '\'UDP_PUSH\'',
  'AwsMqBroker.engineType': '\'ACTIVEMQ\'',
  'AwsMqConfiguration.engineType': '\'ACTIVEMQ\'',
  'AwsMskScramSecretAssociation.secretArnList': '[arn]',
  'AwsMskconnectCustomPlugin.contentType': '\'JAR\'',
  'AwsNeptuneClusterEndpoint.endpointType': '\'ANY\'',
  'AwsNeptuneGlobalCluster.engine': '\'neptune\'',
  'AwsNeptunegraphGraph.provisionedMemory': '8',
  'AwsNetworkAclRule.protocol': '\'tcp\'',
  'AwsNetworkAclRule.ruleAction': '\'allow\'',
  'AwsNetworkInterfacePermission.permission': '\'INSTANCE-ATTACH\'',
  'AwsNetworkfirewallContainerAssociation.type': '\'ECS\'',
  'AwsNetworkfirewallRuleGroup.type': '\'STATELESS\'',
  'AwsNetworkmanagerAttachmentAccepter.attachmentType': '\'CONNECT\'',
  'AwsNetworkmanagerConnectAttachment.coreNetworkId':
      '\'core-network-0123456789abcdef0\'',
  'AwsNetworkmanagerConnectAttachment.transportAttachmentId':
      '\'attachment-0123456789abcdef0\'',
  'AwsNetworkmanagerConnectPeer.connectAttachmentId':
      '\'attachment-0123456789abcdef0\'',
  'AwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId':
      '\'core-network-0123456789abcdef0\'',
  'AwsNetworkmanagerSiteToSiteVpnAttachment.vpnConnectionArn':
      '\'arn:aws:ec2:us-east-1:123456789012:vpn-connection/vpn-0123456789abcdef0\'',
  'AwsNetworkmonitorProbe.protocol': '\'TCP\'',
  'AwsNotificationsEventRule.source': '\'awsO1avdq40u4icn\'',
  'AwsNotificationsManagedNotificationAccountContactAssociation.contactIdentifier':
      '\'ACCOUNT_PRIMARY\'',
  'AwsOamLink.resourceTypes': '[\'AWS::CloudWatch::Metric\']',
  'AwsOdbCloudVmCluster.giVersion': '\'19.0.0.0\'',
  'AwsOdbNetwork.s3Access': '\'ENABLED\'',
  'AwsOdbNetwork.zeroEtlAccess': '\'ENABLED\'',
  'AwsOpensearchDomainPolicy.accessPolicies': 'policy',
  'AwsOpensearchPackage.packageType': '\'TXT-DICTIONARY\'',
  'AwsOpensearchserverlessAccessPolicy.type': '\'data\'',
  'AwsOpensearchserverlessCollectionGroup.standbyReplicas': '\'ENABLED\'',
  'AwsOpensearchserverlessLifecyclePolicy.type': '\'retention\'',
  'AwsOpensearchserverlessSecurityConfig.type': '\'saml\'',
  'AwsOpensearchserverlessSecurityPolicy.type': '\'encryption\'',
  'AwsOrganizationsAwsServiceAccess.servicePrincipal': '\'ec2.amazonaws.com\'',
  'AwsOrganizationsOrganizationalUnit.parentId': '\'r-ab12\'',
  'AwsOrganizationsPolicy.content': 'policy',
  'AwsOrganizationsResourcePolicy.content': 'policy',
  'AwsPaymentcryptographyKeyAlias.aliasName': '\'alias/leftover\'',
  'AwsPinpointEmailChannel.identity': 'arn',
  'AwsPinpointsmsvoicev2Keyword.keyword': '\'LEFTOVER\'',
  'AwsPinpointsmsvoicev2PhoneNumber.isoCountryCode': '\'US\'',
  'AwsPinpointsmsvoicev2PhoneNumber.messageType': '\'TRANSACTIONAL\'',
  'AwsPinpointsmsvoicev2PhoneNumber.numberType': '\'LONG_CODE\'',
  'AwsPinpointsmsvoicev2Pool.messageType': '\'TRANSACTIONAL\'',
  'AwsPinpointsmsvoicev2SenderId.isoCountryCode': '\'US\'',
  'AwsPinpointsmsvoicev2SenderId.senderId': '\'LEFTOVER\'',
  'AwsPipesPipe.source': 'arn',
  'AwsPipesPipe.target': 'arn',
  'AwsPlacementGroup.strategy': '\'cluster\'',
  'AwsProxyProtocolPolicy.instancePorts': '[\'64512\']',
  'AwsQldbLedger.permissionsMode': '\'ALLOW_ALL\'',
  'AwsQldbStream.inclusiveStartTime': '\'2026-01-01T00:00:00Z\'',
  'AwsQuicksightAccountSubscription.authenticationMethod':
      '\'IAM_AND_QUICKSIGHT\'',
  'AwsQuicksightAccountSubscription.edition': '\'STANDARD\'',
  'AwsQuicksightDataSet.importMode': '\'SPICE\'',
  'AwsQuicksightDataSource.type': '\'ADOBE_ANALYTICS\'',
  'AwsQuicksightFolderMembership.memberType': '\'DASHBOARD\'',
  'AwsQuicksightIamPolicyAssignment.assignmentStatus': '\'ENABLED\'',
  'AwsQuicksightIngestion.ingestionType': '\'INCREMENTAL_REFRESH\'',
  'AwsQuicksightRoleCustomPermission.role': '\'ADMIN\'',
  'AwsQuicksightRoleMembership.role': '\'ADMIN\'',
  'AwsQuicksightUser.identityType': '\'IAM\'',
  'AwsQuicksightUser.userRole': '\'ADMIN\'',
  'AwsQuicksightVpcConnection.securityGroupIds': '[\'sg-tq\']',
  'AwsQuicksightVpcConnection.subnetIds':
      '[\'subnet-0123456789abcdef0\', \'subnet-0123456789abcdef1\',]',
  'AwsRamPrincipalAssociation.principal': 'arn',
  'AwsRbinRule.resourceType': '\'EBS_SNAPSHOT\'',
  'AwsRdsCluster.engine': '\'aurora-mysql\'',
  'AwsRdsClusterActivityStream.mode': '\'sync\'',
  'AwsRdsClusterEndpoint.customEndpointType': '\'READER\'',
  'AwsRdsClusterInstance.engine': '\'aurora-mysql\'',
  'AwsRdsCustomDbEngineVersion.engine': '\'custom-oracle-ee\'',
  'AwsRdsInstanceState.state': '\'available\'',
  'AwsRedshiftAuthenticationProfile.authenticationProfileContent': 'policy',
  'AwsRedshiftEndpointAuthorization.account': '\'123456789012\'',
  'AwsRedshiftUsageLimit.featureType': '\'spectrum\'',
  'AwsRedshiftUsageLimit.limitType': '\'time\'',
  'AwsRedshiftserverlessUsageLimit.usageType': '\'serverless-compute\'',
  'AwsResiliencehubResiliencyPolicy.tier': '\'MissionCritical\'',
  'AwsResiliencehubv2Service.regions': '[\'us-east-1\']',
  'AwsResiliencehubv2ServiceFunction.criticality': '\'PRIMARY\'',
  'AwsResourceexplorer2Index.type': '\'LOCAL\'',
  'AwsRoute53HealthCheck.type': '\'HTTP\'',
  'AwsRoute53Record.type': '\'A\'',
  'AwsRoute53ResolverConfig.autodefinedReverseFlag': '\'ENABLE\'',
  'AwsRoute53ResolverEndpoint.direction': '\'INBOUND\'',
  'AwsRoute53ResolverFirewallRule.action': '\'ALLOW\'',
  'AwsRoute53ResolverRule.ruleType': '\'FORWARD\'',
  'AwsRumMetricsDestination.destination': '\'CloudWatch\'',
  'AwsS3BucketAccelerateConfiguration.status': '\'Enabled\'',
  'AwsS3BucketInventory.includedObjectVersions': '\'All\'',
  'AwsS3BucketReplicationConfiguration.role': 'arn',
  'AwsS3BucketRequestPaymentConfiguration.payer': '\'Requester\'',
  'AwsS3DirectoryBucket.bucket': '\'leftover--use1-az4--x-s3\'',
  'AwsS3controlAccessGrant.permission': '\'READ\'',
  'AwsS3controlBucketLifecycleConfiguration.bucket': 'arn',
  'AwsS3controlBucketPolicy.bucket': 'arn',
  'AwsS3controlDirectoryBucketAccessPointScope.name':
      '\'leftover--use1-az4--xa-s3\'',
  'AwsS3tablesTable.format': '\'ICEBERG\'',
  'AwsS3tablesTableBucketReplication.role': 'arn',
  'AwsS3tablesTableReplication.role': 'arn',
  'AwsS3vectorsIndex.dataType': '\'float32\'',
  'AwsS3vectorsIndex.distanceMetric': '\'euclidean\'',
  'AwsSagemakerApp.appType': '\'JupyterServer\'',
  'AwsSagemakerDomain.authMode': '\'SSO\'',
  'AwsSagemakerModelCard.content': 'policy',
  'AwsSagemakerModelCard.modelCardStatus': '\'Draft\'',
  'AwsSagemakerNotebookInstance.instanceType': '\'ml.t2.medium\'',
  'AwsSagemakerPipeline.pipelineDefinition': 'policy',
  'AwsSagemakerServicecatalogPortfolioStatus.status': '\'Enabled\'',
  'AwsSagemakerStudioLifecycleConfig.studioLifecycleConfigAppType':
      '\'JupyterServer\'',
  'AwsSchemasSchema.type': '\'OpenApi3\'',
  'AwsSecurityGroupRule.type': '\'egress\'',
  'AwsSecurityhubConfigurationPolicyAssociation.policyId':
      '\'SELF_MANAGED_SECURITY_HUB\'',
  'AwsSecurityhubConfigurationPolicyAssociation.targetId': '\'123456789012\'',
  'AwsSecurityhubFeatureV2.featureName': '\'NETWORK_SCANNING\'',
  'AwsSecurityhubFeatureV2.featureStatus': '\'ENABLED\'',
  'AwsSecurityhubFindingAggregator.linkingMode': '\'ALL_REGIONS\'',
  'AwsSecurityhubStandardsControl.controlStatus': '\'ENABLED\'',
  'AwsSecurityhubStandardsControlAssociation.associationStatus': '\'ENABLED\'',
  'AwsServerlessapplicationrepositoryCloudformationStack.applicationId': 'arn',
  'AwsServicecatalogConstraint.parameters': 'policy',
  'AwsServicecatalogConstraint.type': '\'LAUNCH\'',
  'AwsServicecatalogPortfolioShare.principalId': '\'123456789012\'',
  'AwsServicecatalogPortfolioShare.type': '\'ACCOUNT\'',
  'AwsServicecatalogProduct.type': '\'CLOUD_FORMATION_TEMPLATE\'',
  'AwsServicecatalogappregistryAttributeGroup.attributes': 'policy',
  'AwsServicequotasAutoManagement.optInLevel': '\'ACCOUNT\'',
  'AwsServicequotasAutoManagement.optInType': '\'NotifyOnly\'',
  'AwsSesEventDestination.matchingTypes': '[\'send\']',
  'AwsSesIdentityNotificationTopic.notificationType': '\'Bounce\'',
  'AwsSesReceiptFilter.policy': '\'Block\'',
  'AwsSesv2AccountSuppressionAttributes.suppressedReasons': '[\'BOUNCE\']',
  'AwsSesv2AccountVdmAttributes.vdmEnabled': '\'ENABLED\'',
  'AwsShieldApplicationLayerAutomaticResponse.action': '\'BLOCK\'',
  'AwsShieldProtectionGroup.aggregation': '\'SUM\'',
  'AwsShieldProtectionGroup.pattern': '\'ALL\'',
  'AwsSignerSigningProfile.platformId': '\'AWSLambda-SHA384-ECDSA\'',
  'AwsSignerSigningProfilePermission.action': '\'signer:StartSigningJob\'',
  'AwsSnsSmsPreferences.defaultSmsType': '\'Promotional\'',
  'AwsSnsTopicSubscription.protocol': '\'application\'',
  'AwsSpotFleetRequest.iamFleetRole': 'arn',
  'AwsSsmDefaultPatchBaseline.baselineId': '\'pb-0123456789abcdef0\'',
  'AwsSsmDefaultPatchBaseline.operatingSystem': '\'WINDOWS\'',
  'AwsSsmDocument.documentType': '\'Command\'',
  'AwsSsmMaintenanceWindowTarget.resourceType': '\'INSTANCE\'',
  'AwsSsmMaintenanceWindowTask.taskType': '\'RUN_COMMAND\'',
  'AwsSsmParameter.type': '\'String\'',
  'AwsSsmServiceSetting.settingId': 'arn',
  'AwsSsoadminAccountAssignment.principalId':
      '\'12345678-1234-1234-1234-123456789012\'',
  'AwsSsoadminAccountAssignment.principalType': '\'USER\'',
  'AwsSsoadminAccountAssignment.targetId': '\'123456789012\'',
  'AwsSsoadminAccountAssignment.targetType': '\'AWS_ACCOUNT\'',
  'AwsSsoadminApplicationAssignment.principalType': '\'USER\'',
  'AwsSsoadminRegion.regionName': '\'us-east-1\'',
  'AwsSsoadminTrustedTokenIssuer.trustedTokenIssuerType': '\'OIDC_JWT\'',
  'AwsStoragegatewayGateway.gatewayTimezone': '\'GMT+9:47\'',
  'AwsStoragegatewayNfsFileShare.clientList': '[\'10.0.0.0/16\']',
  'AwsStoragegatewayTapePool.storageClass': '\'DEEP_ARCHIVE\'',
  'AwsSwfDomain.workflowExecutionRetentionPeriodInDays': '\'30\'',
  'AwsTimestreaminfluxdbDbCluster.dbInstanceType': '\'db.influx.medium\'',
  'AwsTimestreaminfluxdbDbCluster.vpcSecurityGroupIds': '[\'sg-huetvnpt7rr\']',
  'AwsTimestreaminfluxdbDbCluster.vpcSubnetIds': '[\'subnet-d7c56hy72wj\']',
  'AwsTimestreaminfluxdbDbInstance.dbInstanceType': '\'db.influx.medium\'',
  'AwsTimestreaminfluxdbDbInstance.vpcSecurityGroupIds': '[\'sg-huetvnpt7rr\']',
  'AwsTimestreaminfluxdbDbInstance.vpcSubnetIds': '[\'subnet-d7c56hy72wj\']',
  'AwsTranscribeLanguageModel.baseModelName': '\'NarrowBand\'',
  'AwsTranscribeLanguageModel.languageCode': '\'af-ZA\'',
  'AwsTranscribeMedicalVocabulary.languageCode': '\'en-US\'',
  'AwsTranscribeVocabulary.languageCode': '\'af-ZA\'',
  'AwsTranscribeVocabularyFilter.languageCode': '\'af-ZA\'',
  'AwsTransferAccess.serverId': '\'s-0123456789abcdef0\'',
  'AwsTransferAgreement.accessRole': 'arn',
  'AwsTransferCertificate.usage': '\'SIGNING\'',
  'AwsTransferProfile.profileType': '\'LOCAL\'',
  'AwsTransferSshKey.serverId': '\'s-0123456789abcdef0\'',
  'AwsTransferUser.role': 'arn',
  'AwsTransferUser.serverId': '\'s-0123456789abcdef0\'',
  'AwsVerifiedaccessEndpoint.attachmentType': '\'vpc\'',
  'AwsVerifiedaccessEndpoint.endpointType': '\'load-balancer\'',
  'AwsVerifiedaccessTrustProvider.trustProviderType': '\'user\'',
  'AwsVpcBlockPublicAccessExclusion.internetGatewayExclusionMode':
      '\'allow-bidirectional\'',
  'AwsVpcBlockPublicAccessOptions.internetGatewayBlockMode': '\'off\'',
  'AwsVpcEncryptionControl.mode': '\'monitor\'',
  'AwsVpcIpamPool.addressFamily': '\'ipv4\'',
  'AwsVpclatticeAuthPolicy.resourceIdentifier': 'arn',
  'AwsVpclatticeListener.protocol': '\'HTTP\'',
  'AwsVpclatticeListenerRule.priority': '1',
  'AwsVpclatticeResourceConfiguration.protocol': '\'TCP\'',
  'AwsVpclatticeTargetGroup.type': '\'IP\'',
  'AwsVpnConcentrator.type': '\'ipsec.1\'',
  'AwsVpnConnection.type': '\'ipsec.1\'',
  'AwsWafv2ApiKey.scope': '\'CLOUDFRONT\'',
  'AwsWafv2ApiKey.tokenDomains': '[\'example.com\']',
  'AwsWafv2IpSet.ipAddressVersion': '\'IPV4\'',
  'AwsWafv2IpSet.scope': '\'CLOUDFRONT\'',
  'AwsWafv2RegexPatternSet.scope': '\'CLOUDFRONT\'',
  'AwsWafv2RuleGroup.scope': '\'REGIONAL\'',
  'AwsWafv2WebAcl.scope': '\'REGIONAL\'',
  'AwsWafv2WebAclLoggingConfiguration.logDestinationConfigs': '[arn]',
  'AwsWorkspacesPool.bundleId': '\'wsb-leftover1\'',
  'AwsWorkspacesPool.directoryId': '\'wsd-leftover1\'',
  'AwsWorkspacesPool.runningMode': '\'AUTO_STOP\'',
  'AwsWorkspaceswebIdentityProvider.identityProviderType': '\'SAML\'',
  'AwsWorkspaceswebUserSettings.copyAllowed': '\'Disabled\'',
  'AwsWorkspaceswebUserSettings.downloadAllowed': '\'Disabled\'',
  'AwsWorkspaceswebUserSettings.pasteAllowed': '\'Disabled\'',
  'AwsWorkspaceswebUserSettings.printAllowed': '\'Disabled\'',
  'AwsWorkspaceswebUserSettings.uploadAllowed': '\'Disabled\'',
  'AwsXrayEncryptionConfig.type': '\'NONE\'',
  'AwsXrayTraceSegmentDestination.destination': '\'XRay\'',
  'BackupReportPlanReportSetting.reportTemplate': '\'BACKUP_JOB_REPORT\'',
  'BackupRestoreTestingPlanRecoveryPointSelection.algorithm':
      '\'LATEST_WITHIN_WINDOW\'',
  'BackupRestoreTestingPlanRecoveryPointSelection.includeVaults': '[\'*\']',
  'BedrockCustomModelOutputDataConfig.s3Uri':
      '\'s3://leftover-bucket/leftover\'',
  'BedrockCustomModelTrainingDataConfig.s3Uri':
      '\'s3://leftover-bucket/leftover\'',
  'BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig.taskType':
      '\'Summarization\'',
  'BedrockEvaluationJobOutputDataConfig.s3Uri':
      '\'s3://leftover-bucket/leftover\'',
  'BedrockModelInvocationJobInputDataConfigS3InputDataConfig.s3Uri':
      '\'s3://leftover-bucket/leftover\'',
  'BedrockModelInvocationJobOutputDataConfigS3OutputDataConfig.s3Uri':
      '\'s3://leftover-bucket/leftover\'',
  'BedrockagentDataSourceDataSourceConfiguration.type': '\'S3\'',
  'BedrockagentKnowledgeBaseKnowledgeBaseConfiguration.type': '\'VECTOR\'',
  'BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.runtime':
      '\'PYTHON_3_10\'',
  'BedrockagentcoreAgentRuntimeNetworkConfiguration.networkMode': '\'PUBLIC\'',
  'BedrockagentcoreBrowserNetworkConfiguration.networkMode': '\'PUBLIC\'',
  'BedrockagentcoreCodeInterpreterNetworkConfiguration.networkMode':
      '\'PUBLIC\'',
  'BedrockagentcoreOnlineEvaluationConfigEvaluator.evaluatorId':
      '\'Builtin.Helpfulness\'',
  'BedrockagentcoreOnlineEvaluationConfigRuleSamplingConfig.samplingPercentage':
      '50',
  'BedrockagentcoreTokenVaultCmkKmsConfiguration.keyType':
      '\'CustomerManagedKey\'',
  'BudgetsBudgetActionActionThreshold.actionThresholdType': '\'PERCENTAGE\'',
  'BudgetsBudgetActionSubscriber.subscriptionType': '\'SNS\'',
  'CeAnomalySubscriptionSubscriber.type': '\'EMAIL\'',
  'CeCostCategoryRule.type': '\'REGULAR\'',
  'ChimeVoiceConnectorOriginationRoute.host': '\'10.0.0.1\'',
  'ChimeVoiceConnectorOriginationRoute.priority': '1',
  'ChimeVoiceConnectorOriginationRoute.protocol': '\'TCP\'',
  'ChimeVoiceConnectorOriginationRoute.weight': '1',
  'ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements.type':
      '\'AmazonTranscribeCallAnalyticsProcessor\'',
  'CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.cookieBehavior':
      '\'none\'',
  'CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.headerBehavior':
      '\'none\'',
  'CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.queryStringBehavior':
      '\'none\'',
  'CloudfrontConnectionFunctionConnectionFunctionConfig.runtime':
      '\'cloudfront-js-1.0\'',
  'CloudfrontDistributionDefaultCacheBehavior.viewerProtocolPolicy':
      '\'allow-all\'',
  'CloudfrontDistributionRestrictionsGeoRestriction.restrictionType':
      '\'blacklist\'',
  'CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItems.format':
      '\'URLEncoded\'',
  'CloudfrontMonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig.realtimeMetricsSubscriptionStatus':
      '\'Enabled\'',
  'CloudfrontMultitenantDistributionDefaultCacheBehavior.viewerProtocolPolicy':
      '\'allow-all\'',
  'CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods.cachedMethods':
      '[\'GET\']',
  'CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods.items':
      '[\'GET\']',
  'CloudfrontOriginRequestPolicyCookiesConfig.cookieBehavior': '\'none\'',
  'CloudfrontOriginRequestPolicyHeadersConfig.headerBehavior': '\'none\'',
  'CloudfrontOriginRequestPolicyQueryStringsConfig.queryStringBehavior':
      '\'none\'',
  'CloudfrontRealtimeLogConfigEndpoint.streamType': '\'Kinesis\'',
  'CloudfrontResponseHeadersPolicyServerTimingHeadersConfig.samplingRate': '0',
  'CloudfrontVpcOriginVpcOriginEndpointConfig.originProtocolPolicy':
      '\'http-only\'',
  'CloudfrontVpcOriginVpcOriginEndpointConfigOriginSslProtocols.items':
      '[\'SSLv3\']',
  'CloudwatchEventEndpointRoutingConfigFailoverConfigPrimary.healthCheck':
      'arn',
  'CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary.route':
      '\'us-east-1\'',
  'CodebuildProjectArtifacts.type': '\'CODEPIPELINE\'',
  'CodebuildProjectEnvironment.computeType': '\'BUILD_GENERAL1_SMALL\'',
  'CodebuildProjectEnvironment.type': '\'WINDOWS_CONTAINER\'',
  'CodebuildProjectSource.type': '\'CODECOMMIT\'',
  'CodebuildReportGroupExportConfig.type': '\'S3\'',
  'CodecommitTriggerTrigger.events': '[\'all\']',
  'CodepipelineArtifactStore.type': '\'S3\'',
  'CodepipelineCustomActionTypeInputArtifactDetails.maximumCount': '0',
  'CodepipelineCustomActionTypeInputArtifactDetails.minimumCount': '0',
  'CodepipelineCustomActionTypeOutputArtifactDetails.maximumCount': '0',
  'CodepipelineCustomActionTypeOutputArtifactDetails.minimumCount': '0',
  'CodepipelineStageAction.category': '\'Source\'',
  'CodepipelineStageAction.owner': '\'AWS\'',
  'CognitoLogDeliveryConfigurationLogConfigurations.eventSource':
      '\'userNotification\'',
  'CognitoLogDeliveryConfigurationLogConfigurations.logLevel': '\'ERROR\'',
  'CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction.eventAction':
      '\'BLOCK\'',
  'CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions.eventAction':
      '\'BLOCK\'',
  'ComputeoptimizerRecommendationPreferencesExternalMetricsPreference.source':
      '\'Datadog\'',
  'ComputeoptimizerRecommendationPreferencesScope.name': '\'Organization\'',
  'ConfigConfigRuleSource.owner': '\'CUSTOM_LAMBDA\'',
  'ConnectHoursOfOperationConfig.day': '\'SUNDAY\'',
  'ConnectInstanceStorageConfigStorageConfig.storageType': '\'S3\'',
  'ConnectQuickConnectQuickConnectConfig.quickConnectType': '\'USER\'',
  'ConnectRoutingProfileMediaConcurrencies.channel': '\'VOICE\'',
  'ConnectRoutingProfileMediaConcurrencies.concurrency': '1',
  'ConnectUserPhoneConfig.phoneType': '\'SOFT_PHONE\'',
  'DataAwsApiGatewayExport.exportType': '\'oas30\'',
  'DataAwsApiGatewaySdk.sdkType': '\'java\'',
  'DataAwsApigatewayv2Export.outputType': '\'JSON\'',
  'DataAwsApigatewayv2Export.specification': '\'OAS30\'',
  'DataAwsAuditmanagerControl.type': '\'Standard\'',
  'DataAwsAuditmanagerFramework.frameworkType': '\'Standard\'',
  'DataAwsBedrockFoundationModelAgreementOffers.modelId':
      '\'2e.lzvycjp-i167ebv/zatu8l86d38a\'',
  'DataAwsCloudcontrolapiResource.typeName': '\'AWS::S3::Bucket\'',
  'DataAwsCloudfrontFunction.stage': '\'DEVELOPMENT\'',
  'DataAwsCodeartifactRepositoryEndpoint.format': '\'npm\'',
  'DataAwsConnectInstanceStorageConfig.resourceType': '\'CHAT_TRANSCRIPTS\'',
  'DataAwsControltowerControls.targetIdentifier': 'arn',
  'DataAwsDevopsguruResourceCollection.type': '\'AWS_CLOUD_FORMATION\'',
  'DataAwsDynamodbTableItem.key': '\'{"pk": {"S": "leftover"}}\'',
  'DataAwsElasticacheReservedCacheNodeOffering.offeringType':
      '\'Light Utilization\'',
  'DataAwsElasticacheReservedCacheNodeOffering.productDescription':
      '\'memcached\'',
  'DataAwsIamUserSshKey.encoding': '\'SSH\'',
  'DataAwsIdentitystoreGroup.groupId':
      '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsIdentitystoreUser.userId': '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraExperience.indexId': '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraFaq.indexId': '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraIndex.id': '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraQuerySuggestionsBlockList.indexId':
      '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraQuerySuggestionsBlockList.querySuggestionsBlockListId':
      '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKendraThesaurus.indexId': '\'12345678-1234-1234-1234-123456789012\'',
  'DataAwsKmsAlias.name': '\'alias/leftover\'',
  'DataAwsKmsKey.keyId': '\'alias/leftover\'',
  'DataAwsKmsPublicKey.keyId': '\'alias/leftover\'',
  'DataAwsLakeformationPermissions.principal': 'arn',
  'DataAwsLambdaInvocation.input': 'policy',
  'DataAwsOpensearchserverlessAccessPolicy.type': '\'data\'',
  'DataAwsOpensearchserverlessLifecyclePolicy.type': '\'retention\'',
  'DataAwsOpensearchserverlessSecurityPolicy.type': '\'encryption\'',
  'DataAwsOpensearchserverlessVpcEndpoint.vpcEndpointId':
      '\'vpce-0123456789abcdef0\'',
  'DataAwsOrganizationsEntityPath.entityId': '\'ou-ab12-cd34ef56\'',
  'DataAwsOrganizationsOrganizationalUnit.parentId': '\'r-ab12\'',
  'DataAwsRamResourceShare.resourceOwner': '\'SELF\'',
  'DataAwsRdsReservedInstanceOffering.offeringType': '\'Partial Upfront\'',
  'DataAwsSagemakerPrebuiltEcrImage.repositoryName': '\'autogluon-training\'',
  'DataAwsServerlessapplicationrepositoryApplication.applicationId': 'arn',
  'DataAwsServiceDiscoveryDnsNamespace.type': '\'DNS_PUBLIC\'',
  'DataAwsSsoadminPrincipalApplicationAssignments.principalType': '\'USER\'',
  'DataAwsVpclatticeAuthPolicy.resourceIdentifier': 'arn',
  'DataAwsWafv2IpSet.scope': '\'CLOUDFRONT\'',
  'DataAwsWafv2ManagedRuleGroup.scope': '\'CLOUDFRONT\'',
  'DataAwsWafv2RegexPatternSet.scope': '\'CLOUDFRONT\'',
  'DataAwsWafv2RuleGroup.scope': '\'CLOUDFRONT\'',
  'DataAwsWafv2WebAcl.scope': '\'CLOUDFRONT\'',
  'DataEcrLifecyclePolicyDocumentRuleSelection.countType':
      '\'imageCountMoreThan\'',
  'DataEcrLifecyclePolicyDocumentRuleSelection.tagStatus': '\'any\'',
  'DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocations.location':
      '\'us-east-1\'',
  'DatasyncLocationEfsEc2Config.securityGroupArns': '[arn]',
  'DatasyncLocationFsxOntapFileSystemProtocolNfsMountOptions.version':
      '\'NFS3\'',
  'DatasyncLocationFsxOpenzfsFileSystemProtocolNfsMountOptions.version':
      '\'AUTOMATIC\'',
  'DatasyncLocationNfsOnPremConfig.agentArns': '[arn]',
  'DatazonePolicyGrantPrincipalDomainUnit.domainUnitDesignation': '\'OWNER\'',
  'DevicefarmDevicePoolRule.attribute': '\'ARN\'',
  'DevopsguruEventSourcesConfigEventSourcesAmazonCodeGuruProfiler.status':
      '\'ENABLED\'',
  'DevopsguruServiceIntegrationLogsAnomalyDetection.optInStatus': '\'ENABLED\'',
  'DevopsguruServiceIntegrationOpsCenter.optInStatus': '\'ENABLED\'',
  'DynamodbGlobalSecondaryIndexKeySchema.attributeType': '\'S\'',
  'DynamodbGlobalSecondaryIndexKeySchema.keyType': '\'HASH\'',
  'EbsSnapshotImportDiskContainer.format': '\'VMDK\'',
  'Ec2ClientVpnEndpointAuthenticationOptions.type':
      '\'certificate-authentication\'',
  'Ec2FleetTargetCapacitySpecification.defaultTargetCapacityType': '\'spot\'',
  'EfsBackupPolicyBackupPolicy.status': '\'DISABLED\'',
  'ElbListener.instanceProtocol': '\'HTTP\'',
  'ElbListener.lbProtocol': '\'HTTP\'',
  'EmrManagedScalingPolicyComputeLimits.unitType': '\'InstanceFleetUnits\'',
  'EmrcontainersVirtualClusterContainerProvider.type': '\'EKS\'',
  'EvidentlyFeatureVariationsValue.boolValue': '\'true\'',
  'FinspaceKxClusterVpcConfiguration.ipAddressType': '\'IP_V4\'',
  'FisExperimentTemplateAction.actionId': '\'aws:ec2:stop-instances\'',
  'FisExperimentTemplateStopCondition.source': '\'aws:cloudwatch:alarm\'',
  'FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity.type':
      '\'POSIX\'',
  'GameliftAliasRoutingStrategy.type': '\'SIMPLE\'',
  'GameliftGameServerGroupLaunchTemplate.id': '\'lt-0123456789abcdef0\'',
  'GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration.protocols':
      '[\'TCP\']',
  'GlueCrawlerHudiTarget.maximumTraversalDepth': '1',
  'GlueCrawlerIcebergTarget.maximumTraversalDepth': '1',
  'GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest.catalogEncryptionMode':
      '\'DISABLED\'',
  'GlueMlTransformParameters.transformType': '\'FIND_MATCHES\'',
  'GlueMlTransformParametersFindMatchesParameters.accuracyCostTradeOff': '1',
  'GlueSecurityConfigurationEncryptionConfigurationCloudwatchEncryption.cloudwatchEncryptionMode':
      '\'DISABLED\'',
  'GlueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption.jobBookmarksEncryptionMode':
      '\'DISABLED\'',
  'ImagebuilderContainerRecipeTargetRepository.service': '\'ECR\'',
  'ImagebuilderLifecyclePolicyPolicyDetailAction.type': '\'DELETE\'',
  'ImagebuilderLifecyclePolicyPolicyDetailFilter.type': '\'AGE\'',
  'ImagebuilderLifecyclePolicyPolicyDetailFilter.unit': '\'DAYS\'',
  'ImagebuilderLifecyclePolicyPolicyDetailFilter.value': '1',
  'Inspector2FilterFilterCriteriaAwsAccountId.comparison': '\'EQUALS\'',
  'InstanceLaunchTemplate.id': '\'lt-0123456789abcdef0\'',
  'IotIndexingConfigurationThingGroupIndexingConfiguration.thingGroupIndexingMode':
      '\'OFF\'',
  'IotIndexingConfigurationThingIndexingConfiguration.thingIndexingMode':
      '\'OFF\'',
  'LambdaCodeSigningConfigAllowedPublishers.signingProfileVersionArns': '[arn]',
  'LambdacoreNetworkConnectorConfigurationVpcEgressConfiguration.associatedComputeResourceTypes':
      '[\'MicroVm\']',
  'LbListenerDefaultAction.type': '\'forward\'',
  'LbListenerRuleAction.type': '\'forward\'',
  'LexBotAbortStatementMessage.contentType': '\'PlainText\'',
  'LexBotIntent.intentVersion': '\'\\\$LATEST\'',
  'LexIntentFulfillmentActivity.type': '\'ReturnIntent\'',
  'Lexv2modelsSlotValueElicitationSetting.slotConstraint': '\'Required\'',
  'LightsailDistributionDefaultCacheBehavior.behavior': '\'dont-cache\'',
  'LightsailDistributionOrigin.regionName': '\'us-east-1\'',
  'LightsailInstancePublicPortsPortInfo.protocol': '\'tcp\'',
  'Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion.comparator':
      '\'EQ\'',
  'MedialiveChannelEncoderSettingsTimecodeConfig.source': '\'EMBEDDED\'',
  'MedialiveChannelInputSpecification.codec': '\'MPEG2\'',
  'MedialiveChannelInputSpecification.inputResolution': '\'SD\'',
  'MedialiveChannelInputSpecification.maximumBitrate': '\'MAX_10_MBPS\'',
  'MemorydbUserAuthenticationMode.type': '\'password\'',
  'MskChannelTopicConfigurationRecordConverter.valueConverter':
      '\'BYTE_ARRAY\'',
  'MskconnectConnectorCapacityAutoscaling.maxWorkerCount': '1',
  'MskconnectConnectorCapacityAutoscaling.minWorkerCount': '1',
  'MskconnectConnectorKafkaClusterClientAuthentication.authenticationType':
      '\'NONE\'',
  'MskconnectConnectorKafkaClusterEncryptionInTransit.encryptionType':
      '\'PLAINTEXT\'',
  'NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig.logDestination':
      '{\'bucketName\': leftover}',
  'NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig.logDestinationType':
      '\'S3\'',
  'NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig.logType':
      '\'FLOW\'',
  'NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration.certificateAuthorityArn':
      'arn',
  'NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope.protocols':
      '[6]',
  'NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination.addressDefinition':
      '\'10.0.0.0/16\'',
  'NetworkflowmonitorMonitorLocalResource.type': '\'AWS::EC2::VPC\'',
  'NetworkflowmonitorScopeTargetTargetIdentifier.targetType': '\'ACCOUNT\'',
  'NetworkflowmonitorScopeTargetTargetIdentifierTargetId.accountId':
      '\'123456789012\'',
  'NetworkmanagerConnectAttachmentOptions.protocol': '\'GRE\'',
  'ObservabilityadminCentralizationRuleForOrganizationRuleDestination.account':
      '\'123456789012\'',
  'ObservabilityadminCentralizationRuleForOrganizationRuleSource.regions':
      '[\'us-east-1\']',
  'ObservabilityadminS3TableIntegrationEncryption.sseAlgorithm': '\'aws:kms\'',
  'ObservabilityadminTelemetryRuleForOrganizationRule.telemetryType':
      '\'Logs\'',
  'ObservabilityadminTelemetryRuleRule.telemetryType': '\'Logs\'',
  'OdbCloudAutonomousVmClusterMaintenanceWindow.preference':
      '\'NO_PREFERENCE\'',
  'OdbCloudExadataInfrastructureMaintenanceWindow.patchingMode': '\'ROLLING\'',
  'OdbCloudExadataInfrastructureMaintenanceWindow.preference':
      '\'NO_PREFERENCE\'',
  'PrometheusQueryLoggingConfigurationDestinationCloudwatchLogs.logGroupArn':
      '\'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*\'',
  'PrometheusScraperLoggingConfigurationLoggingDestinationCloudwatchLogs.logGroupArn':
      '\'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*\'',
  'QbusinessApplicationAttachmentsConfiguration.attachmentsControlMode':
      '\'ENABLED\'',
  'QuicksightCustomPermissionsCapabilities.addOrRunAnomalyDetectionForAnalyses':
      '\'DENY\'',
  'QuicksightRefreshScheduleSchedule.refreshType': '\'INCREMENTAL_REFRESH\'',
  'QuicksightRefreshScheduleScheduleScheduleFrequency.interval': '\'MINUTE15\'',
  'RbinRuleRetentionPeriod.retentionPeriodUnit': '\'DAYS\'',
  'RekognitionStreamProcessorSettingsConnectedHome.labels': '[\'PERSON\']',
  'Resiliencehubv2PolicyMultiAz.disasterRecoveryApproach': '\'ACTIVE_ACTIVE\'',
  'RolesanywhereTrustAnchorSource.sourceType': '\'AWS_ACM_PCA\'',
  'Route53recoverycontrolconfigSafetyRuleRuleConfig.type': '\'ATLEAST\'',
  'S3BucketIntelligentTieringConfigurationTiering.accessTier':
      '\'ARCHIVE_ACCESS\'',
  'S3BucketInventoryDestinationBucket.format': '\'CSV\'',
  'S3BucketInventorySchedule.frequency': '\'Daily\'',
  'S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration.configurationState':
      '\'ENABLED\'',
  'S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration.expiration':
      '\'ENABLED\'',
  'S3BucketOwnershipControlsRule.objectOwnership': '\'BucketOwnerPreferred\'',
  'S3BucketReplicationConfigurationRule.status': '\'Enabled\'',
  'S3BucketReplicationConfigurationRuleDestination.bucket': 'arn',
  'S3BucketServerSideEncryptionConfigurationRule.blockedEncryptionTypes':
      '[\'NONE\']',
  'S3BucketVersioningVersioningConfiguration.status': '\'Enabled\'',
  'S3controlAccessGrantGrantee.granteeType': '\'DIRECTORY_USER\'',
  'S3controlDirectoryBucketAccessPointScopeScope.permissions':
      '[\'GetObject\']',
  'S3controlMultiRegionAccessPointRoutesRoute.trafficDialPercentage': '100',
  'S3controlObjectLambdaAccessPointConfiguration.supportingAccessPoint': 'arn',
  'S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration.actions':
      '[\'GetObject\']',
  'SagemakerAlgorithmTrainingSpecification.supportedTrainingInstanceTypes':
      '[\'ml.m4.xlarge\']',
  'SagemakerAlgorithmTrainingSpecificationTrainingChannels.supportedInputModes':
      '[\'Pipe\']',
  'SagemakerDataQualityJobDefinitionJobResourcesClusterConfig.instanceType':
      '\'ml.t3.medium\'',
  'SagemakerDomainDefaultUserSettings.executionRole': 'arn',
  'SagemakerEndpointConfigurationProductionVariants.acceleratorType':
      '\'ml.eia1.medium\'',
  'SagemakerFeatureGroupFeatureDefinition.collectionType': '\'List\'',
  'SagemakerFlowDefinitionHumanLoopConfig.taskCount': '1',
  'SagemakerFlowDefinitionOutputConfig.s3OutputPath':
      '\'s3://leftover-bucket/leftover\'',
  'SagemakerHyperParameterTuningJobConfig.strategy': '\'Bayesian\'',
  'SagemakerLabelingJobHumanTaskConfig.numberOfHumanWorkersPerDataObject': '1',
  'SagemakerLabelingJobOutputConfig.s3OutputPath':
      '\'s3://leftover-bucket/leftover\'',
  'SagemakerModelCardExportJobOutputConfig.s3OutputPath':
      '\'s3://leftover-bucket/leftover\'',
  'SagemakerMonitoringScheduleMonitoringScheduleConfig.monitoringType':
      '\'DataQuality\'',
  'SchedulerScheduleFlexibleTimeWindow.mode': '\'OFF\'',
  'SecurityhubAutomationRuleActions.type': '\'FINDING_FIELDS_UPDATE\'',
  'SecurityhubAutomationRuleCriteriaAwsAccountId.comparison': '\'EQUALS\'',
  'SecurityhubAutomationRuleV2Action.type': '\'FINDING_FIELDS_UPDATE\'',
  'SecurityhubAutomationRuleV2Criteria.ocsfFindingCriteriaJson': 'policy',
  'SecurityhubInsightFiltersAwsAccountId.comparison': '\'EQUALS\'',
  'SecuritylakeSubscriberSourceAwsLogSourceResource.sourceName': '\'ROUTE53\'',
  'Sesv2ConfigurationSetEventDestinationEventDestination.matchingEventTypes':
      '[\'SEND\']',
  'Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration.dimensionValueSource':
      '\'MESSAGE_TAG\'',
  'SpotInstanceRequestLaunchTemplate.id': '\'lt-0123456789abcdef0\'',
  'SsoadminTrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration.jwksRetrievalOption':
      '\'OPEN_ID_DISCOVERY\'',
  'TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping.dimensionValueType':
      '\'VARCHAR\'',
  'TransferWorkflowSteps.type': '\'COPY\'',
  'VerifiedpermissionsPolicyStoreValidationSettings.mode': '\'OFF\'',
  'VerifiedpermissionsSchemaDefinition.value': 'policy',
  'VpcIpamOperatingRegions.regionName': '\'us-east-1\'',
  'VpcIpamResourceDiscoveryOperatingRegions.regionName': '\'us-east-1\'',
  'WafregionalWebAclDefaultAction.type': '\'BLOCK\'',
  'Wafv2WebAclRuleStatementAsnMatchStatement.asnList': '[64512]',
  'WorkspaceswebSessionLoggerEventFilter.include': '[\'WebsiteInteract\']',
  'WorkspaceswebSessionLoggerLogConfigurationS3.folderStructure': '\'Flat\'',
  'WorkspaceswebSessionLoggerLogConfigurationS3.logFileFormat': '\'JSONLines\'',
};

/// Lists the provider wants longer than one element, keyed like
/// [_literalByKey].
const _listCounts = <String, int>{
  'AwsArcregionswitchPlan.regions': 2,
  'AwsCloudwatchEventEndpoint.eventBus': 2,
  'AwsCodepipeline.stage': 2,
  'AwsDmsReplicationSubnetGroup.subnetIds': 2,
  'AwsMedialiveMultiplex.availabilityZones': 2,
  'AwsMskReplicator.kafkaCluster': 2,
  'AwsRoute53ResolverEndpoint.ipAddress': 2,
  'AwsWorkspaceswebNetworkSettings.subnetIds': 2,
  'DataAwsCloudwatchLogDataProtectionPolicyDocument.statement': 2,
  'MwaaEnvironmentNetworkConfiguration.subnetIds': 2,
};

final _usedKeys = <String>{};

/// Repeats the single element of a generated list literal [count] times.
/// String elements vary so a set-typed attribute keeps every element.
String _repeat(String listExpr, int count) {
  var inner = listExpr;
  var wrap = (String s) => s;
  if (inner.startsWith('TfArg.literal(') && inner.endsWith(')')) {
    inner = inner.substring('TfArg.literal('.length, inner.length - 1);
    wrap = (s) => 'TfArg.literal($s)';
  }
  if (!inner.startsWith('[') || !inner.endsWith(']')) {
    throw StateError('not a list literal: $listExpr');
  }
  var element = inner.substring(1, inner.length - 1).trim();
  if (element.endsWith(',')) {
    element = element.substring(0, element.length - 1);
  }
  String vary(int i) {
    if (i == 0) return element;
    if (element == 'leftover') return "'leftover$i'";
    if (element == 'arn') return "'arn:aws:iam::$_accountId:role/leftover$i'";
    if (RegExp(r"^'[^']*'$").hasMatch(element)) {
      return "${element.substring(0, element.length - 1)}$i'";
    }
    // Set-typed blocks collapse identical elements, so vary the first string.
    if (element.contains('TfArg.literal(leftover)')) {
      return element.replaceFirst(
        'TfArg.literal(leftover)',
        "TfArg.literal('leftover$i')",
      );
    }
    final quoted = RegExp(r"TfArg\.literal\('([^']*)'\)").firstMatch(element);
    if (quoted != null) {
      return element.replaceRange(
        quoted.start,
        quoted.end,
        "TfArg.literal('${quoted.group(1)}$i')",
      );
    }
    return element;
  }

  return wrap('[${[for (var i = 0; i < count; i++) vary(i)].join(', ')},]');
}

String? _lookup(String key) {
  final value = _literalByKey[key];
  if (value != null) _usedKeys.add(key);
  return value;
}

const _policyJson =
    r"""'{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":"s3:GetObject","Resource":"*"}]}'""";

String _stringLiteral(String name, {String owner = ''}) {
  final value = _lookup(name);
  if (value != null) return value;
  final n = name.toLowerCase();
  if (n.endsWith('arn') || n.endsWith('arns')) return 'arn';
  if (n == 'accountid' || n.endsWith('accountid')) return "'$_accountId'";
  if (n.endsWith('policy') || n.endsWith('policydocument')) return 'policy';
  if (n == 'region' || n.endsWith('region')) return "'us-east-1'";
  if (n.contains('availabilityzone')) return "'us-east-1a'";
  if (n == 'vpcid') return "'vpc-0123456789abcdef0'";
  if (n == 'subnetid') return "'subnet-0123456789abcdef0'";
  if (n == 'securitygroupid') return "'sg-0123456789abcdef0'";
  if (n == 'instanceid') return "'i-0123456789abcdef0'";
  if (n.contains('email')) return "'leftover@example.com'";
  if (n.endsWith('url') || n.endsWith('uri')) return "'https://example.com'";
  if (n.contains('cidr')) return "'10.0.0.0/16'";
  if (n.endsWith('ipaddress') || n == 'ip') return "'10.0.0.1'";
  return 'leftover';
}

String _constructHelper(
  String className,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
}) {
  if (depth > _maxDepth) return '$className()';
  final info = helpers[className];
  if (info == null) return '$className()';
  final extras = _extraParams[className];
  if (extras != null) _usedKeys.add(className);
  final optional = {for (final p in info.optionalParams) p.name: p};
  final params = [
    ...info.requiredParams,
    if (extras != null)
      for (final name in extras)
        optional[name] ??
            (throw StateError('$className.$name is not an optional field'))
    else if (info.requiredParams.isEmpty && info.optionalParams.isNotEmpty)
      info.optionalParams.first,
  ];
  if (params.isEmpty) {
    return '$className()';
  }
  final args = params
      .map(
        (p) =>
            '${p.name}: ${_dummy(p, helpers, depth: depth, sensitive: sensitive, owner: className)}',
      )
      .join(', ');
  // Trailing comma: `dart format` then expands the call across lines and
  // keeps it there, which is the shape `require_trailing_commas` wants.
  // Without it the formatter wraps long calls and adds no comma, so a
  // formatted `examples/` fails `dart analyze`.
  return '$className($args,)';
}
