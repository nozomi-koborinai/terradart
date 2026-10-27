// Renders examples/aws_leftover_quickstart/lib/main.dart, for
// tool/coverage_stack.dart, which writes and validates it: one constructor
// call per AWS factory (resource or data source) that no other example
// covers. Dummy values satisfy the Dart types and the provider's
// validate-time checks, so synth + terraform validate cover the filled
// catalog. Live apply is out of scope. Literal values live in
// tool/coverage_dummies/aws.yaml.

import 'dart:io';

import 'catalog_class_names.dart';
import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'dot_shorthands.dart';

const _skipResourceTypes = {
  // Covered by aws_lambda_quickstart.
  'aws_cloudwatch_log_group',
  'aws_iam_role',
  'aws_iam_role_policy_attachment',
  'aws_lambda_function',
  'aws_lambda_function_url',
  // Covered by aws_serverless_api_quickstart.
  'aws_apigatewayv2_api',
  'aws_apigatewayv2_integration',
  'aws_apigatewayv2_route',
  'aws_apigatewayv2_stage',
  'aws_dynamodb_table',
  'aws_iam_role_policy',
  'aws_lambda_permission',
  // Covered by aws_static_site_quickstart.
  'aws_acm_certificate',
  'aws_acm_certificate_validation',
  'aws_cloudfront_distribution',
  'aws_cloudfront_origin_access_control',
  'aws_route53_record',
  'aws_s3_bucket',
  'aws_s3_bucket_policy',
  'aws_s3_bucket_public_access_block',
  // Covered by aws_ecs_express_quickstart.
  'aws_ecr_lifecycle_policy',
  'aws_ecr_repository',
  'aws_ecs_cluster',
  'aws_ecs_express_gateway_service',
};

const _skipDataTypes = {
  // Covered by aws_lambda_quickstart.
  'aws_caller_identity',
  'aws_iam_policy_document',
  // Covered by aws_static_site_quickstart.
  'aws_cloudfront_cache_policy',
  'aws_route53_zone',
};

const _srcRoot = 'packages/terradart_aws/lib/src';

/// Terraform variable backing every sensitive leaf in the generated
/// stack. Declared by the generator so the reference resolves at synth.
const _secretVar = 'leftover_secret';
const _secretVarRef = 'leftoverSecret';

/// What a sensitive leaf of [type] reads: the `String` handle, or the
/// variable by name where the payload is not a string.
String _secretFor(String type) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  return t == 'Sensitive<String>' || t == 'TfArg<String>'
      ? _secretVarRef
      : "Sensitive.variable('$_secretVar')";
}

/// The aws lane's coverage stack.
const awsLeftoverStack = _AwsLeftoverStack();

final class _AwsLeftoverStack implements CoverageStackGenerator {
  const _AwsLeftoverStack();

  @override
  String get slug => 'aws_leftover';

  @override
  Set<String> get bindings => const {'arn', 'policy', 'leftover'};

  @override
  RenderedStack render(
    CoverageDummies dummies, {
    required Set<String> exclude,
  }) {
    _dummies = dummies;
    _sealedVariants.clear();
    _enums.clear();
    _usedKeys.clear();
    _insideHelper = false;
    final catalogued = catalogClassNames(_srcRoot);
    final files =
        Directory(_srcRoot)
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
      _collectEnums(file.readAsStringSync());
    }

    final helpers = <String, _ClassInfo>{};
    final factories = <_Factory>[];
    final leftOut = <String>{};
    for (final parsed in parsedFiles.values) {
      for (final cls in parsed.classes.values) {
        if (cls.kind == _Kind.helper) {
          helpers[cls.name] = cls;
        } else if (cls.kind == _Kind.resource || cls.kind == _Kind.data) {
          if (cls.tfType == null || !catalogued.contains(cls.name)) continue;
          if (cls.kind == _Kind.resource &&
              _skipResourceTypes.contains(cls.tfType)) {
            continue;
          }
          if (cls.kind == _Kind.data && _skipDataTypes.contains(cls.tfType)) {
            continue;
          }
          if (exclude.contains(cls.name)) {
            leftOut.add(cls.name);
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
      ..writeln('// GENERATED — dart tool/coverage_stack.dart --lane aws')
      ..writeln('// ignore_for_file: unused_element')
      ..writeln()
      ..writeln(
        '/// Coverage stack for leftover AWS factories at the current pin.',
      )
      ..writeln(
        '/// Dummy constructor values; synth + terraform validate only.',
      )
      ..writeln('/// Never apply.')
      ..writeln('library;')
      ..writeln()
      ..writeln("import 'package:terradart_aws/terradart_aws.dart';")
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
      body.writeln('    add(');
      body.writeln('      ${f.className}(');
      body.writeln("        '$local',");
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

    // Sensitive leaves read the variable's handle, and synth
    // rejects a reference with no matching declaration — so the declaration
    // is generated too, not hand-added to this generated file.
    if (body.toString().contains(_secretVarRef)) {
      buf.writeln(
        "    final $_secretVarRef = variable<String>('$_secretVar', "
        'sensitive: true);',
      );
      buf.writeln();
    }
    buf.write(body);

    buf.writeln('  }');
    buf.writeln('}');

    // A left-out factory leaves its knobs unread, so only a render that left
    // none out can tell a stale knob.
    if (leftOut.isEmpty) {
      final stale = {
        ..._requiredAtValidate.keys,
        ..._listCounts.keys,
      }.difference(_usedKeys).toList()..sort();
      if (stale.isNotEmpty) {
        throw StateError(
          'Unused _requiredAtValidate / _listCounts keys:\n  ${stale.join('\n  ')}',
        );
      }
    }

    return RenderedStack(
      dotShorthands(
        buf.toString(),
        packageEnums('packages/terradart_aws/lib/src'),
      ),
    );
  }
}

late CoverageDummies _dummies;

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

/// Every sealed exactly-one type the package declares: name → its variant
/// classes in declaration order.
final _sealedVariants = <String, List<String>>{};

_ParsedFile _parseFile(File file) {
  final src = file.readAsStringSync();
  final classes = <String, _ClassInfo>{};
  for (final m in RegExp(r'sealed class (\w+)').allMatches(src)) {
    _sealedVariants[m.group(1)!] = [];
  }
  final classRe = RegExp(r'final class (\w+)(?:\s+extends\s+(\w+))?');
  for (final m in classRe.allMatches(src)) {
    final name = m.group(1)!;
    final ext = m.group(2);
    _sealedVariants[ext]?.add(name);
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
  // A sealed variant takes its one member positionally.
  final positional = RegExp(
    'const ${RegExp.escape(className)}\\(\\s*this\\.(\\w+),?\\s*\\);',
  ).firstMatch(body);
  if (positional != null) {
    final name = positional.group(1)!;
    return (
      required: [_Param(name, fields[name] ?? 'TfArg<String>')],
      optional: const [],
    );
  }
  final ctor = RegExp(
    '${RegExp.escape(className)}\\(\\s*(?:super\\.localName,\\s*)?\\{',
  ).firstMatch(body);
  if (ctor == null) return (required: const [], optional: const []);
  final open = ctor.end - 1;
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

const _requiredAtValidate = <String, List<String>>{
  'AccountaccessEntitlementPrincipalRole': ['principal'],
  'AgentregistryRegistryDiscoveryConfiguration': ['authorizerConfiguration'],
  'AgentregistryRegistryCustomJwtAuthorizer': ['allowedAudience'],
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
  'AwsCloudwatchomniAccessGrant': ['principal'],
  'CloudwatchomniAccessGrantPrincipal': ['principalId'],
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
  'AwsRoute53domainsDelegationSignerRecord': ['signingAttributes'],
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
  'BedrockEvaluationJobAutomated': ['datasetMetricConfig'],
  'BedrockEvaluationJobDatasetMetricConfig': ['dataset'],
  'BedrockagentDataSourceConfiguration': ['s3Configuration'],
  'BedrockagentKnowledgeBaseConfiguration': [
    'vectorKnowledgeBaseConfiguration',
  ],
  'BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig': [
    'googleOauth2ProviderConfig',
  ],
  'BedrockagentcoreOauth2CredentialProviderGoogleOauth2ProviderConfig': [
    'clientId',
    'clientSecret',
  ],
  'BedrockagentcoreOnlineEvaluationConfigRule': ['samplingConfig'],
  'CloudfrontMultitenantDistributionDefaultCacheBehavior': ['allowedMethods'],
  'CloudfrontVpcOriginEndpointConfig': ['originSslProtocols'],
  'ComprehendDocumentClassifierInputDataConfig': ['augmentedManifests'],
  'ComprehendEntityRecognizerInputDataConfig': [
    'annotations',
    'augmentedManifests',
  ],
  'DataAwsAccountaccessApplication': ['arn'],
  'DataAwsAccountaccessEntitlements': ['filter'],
  'DataAwsAcmCertificate': ['domain', 'tags'],
  'DataAwsAppconfigApplication': ['name'],
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
  'DataexchangeEventActionExportRevisionToS3': ['revisionDestination'],
  'EbsSnapshotImportDiskContainer': ['url'],
  'FsxS3AccessPointAttachmentOpenzfsConfiguration': ['fileSystemIdentity'],
  'GlueCatalogProperties': ['dataLakeAccessProperties'],
  'ImagebuilderLifecyclePolicyDetail': ['action', 'filter'],
  'ImagebuilderLifecyclePolicyFilter': ['unit'],
  'LakeformationDataCellsFilterTableData': ['columnNames', 'rowFilter'],
  'LakeformationDataCellsFilterRowFilter': ['filterExpression'],
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
  'NetworkfirewallTlsInspectionConfigurationServerCertificateConfiguration': [
    'scope',
    'certificateAuthorityArn',
  ],
  'NetworkfirewallTlsInspectionConfigurationScope': ['destination'],
  'NetworkflowmonitorScopeTarget': ['targetIdentifier'],
  'NetworkflowmonitorScopeTargetIdentifier': ['targetId'],
  'ObservabilityadminCentralizationRuleForOrganizationRule': [
    'source',
    'destination',
  ],
  'PrometheusQueryLoggingConfigurationDestination': [
    'filters',
    'cloudwatchLogs',
  ],
  'QuicksightRefreshSchedule': ['scheduleFrequency'],
  'S3BucketMetadataConfiguration': [
    'journalTableConfiguration',
    'inventoryTableConfiguration',
  ],
  'S3BucketMetadataConfigurationJournalTableConfiguration': [
    'recordExpiration',
  ],
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
  'Sesv2ConfigurationSetEventDestination': ['cloudWatchDestination'],
  'TimestreamqueryScheduledQueryTimestreamConfiguration': ['dimensionMapping'],
  'WorkspaceswebSessionLoggerEventFilter': ['include'],
};

/// The variant of sealed type [sealed] to construct: the member a
/// `_requiredAtValidate` entry of [sealed] (a block that collapsed into its
/// sealed type) or of [owner] names, else the first. A collapsed block
/// keeps its ledger entries under its own class name.
String _sealedChoice(
  String sealed,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  required String owner,
}) {
  final ownExtras = _requiredAtValidate[sealed];
  if (ownExtras != null) _usedKeys.add(sealed);
  final extras = ownExtras ?? _requiredAtValidate[owner] ?? const <String>[];
  final variants = [
    for (final v in _sealedVariants[sealed]!)
      (v, helpers[v]!.requiredParams.single),
  ];
  final (variant, member) = variants.firstWhere(
    (v) => extras.contains(v.$2.name),
    orElse: () => variants.isEmpty
        ? throw StateError('$sealed declares no variants')
        : variants.first,
  );
  if (_dummies.ownsValue(variant, member.name)) {
    owner = variant;
  } else if (_dummies.ownsValue(sealed, member.name)) {
    owner = sealed;
  }
  final outer = _insideHelper;
  _insideHelper = true;
  final value = _dummy(
    member,
    helpers,
    depth: depth,
    sensitive: sensitive,
    owner: owner,
  );
  _insideHelper = outer;
  return '.${member.name}($value)';
}

/// Whether [name] is a variant member of one of the sealed [params], which
/// an `_requiredAtValidate` entry names to pick that variant.
bool _isSealedMember(
  List<_Param> params,
  String name,
  Map<String, _ClassInfo> helpers,
) => params.any(
  (p) =>
      _sealedVariants[p.type.replaceFirst(RegExp(r'\?$'), '')]?.any(
        (v) => helpers[v]!.requiredParams.single.name == name,
      ) ??
      false,
);

/// The optional parameters [extras] names on [owner]: the parameter
/// itself, or the optional sealed parameter one of whose variants sets it.
/// A member of a required sealed parameter needs no slot: `_sealedChoice`
/// picks its variant.
List<_Param> _extraSlots(
  String owner,
  Iterable<String> extras,
  List<_Param> required,
  List<_Param> optional,
  Map<String, _ClassInfo> helpers,
) {
  final out = <_Param>[];
  for (final name in extras) {
    if (_isSealedMember(required, name, helpers)) continue;
    if (required.any((p) => p.name == name)) {
      throw StateError('$owner.$name is not an optional parameter');
    }
    final slot =
        optional.where((p) => p.name == name).firstOrNull ??
        optional
            .where((p) => _isSealedMember([p], name, helpers))
            .firstOrNull ??
        (throw StateError('$owner.$name is not an optional parameter'));
    if (!out.contains(slot)) out.add(slot);
  }
  return out;
}

List<_Extra> _extras(_Factory f, Map<String, _ClassInfo> helpers) {
  final extras = _requiredAtValidate[f.className];
  if (extras == null) return const [];
  _usedKeys.add(f.className);
  return [
    for (final p in _extraSlots(
      f.className,
      extras,
      f.requiredParams,
      f.optionalParams,
      helpers,
    ))
      _Extra(
        p.name,
        _dummy(
          p,
          helpers,
          sensitive: f.sensitiveLeaves,
          depth: 0,
          owner: f.className,
        ),
      ),
  ];
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
  var name = tfType.startsWith('aws_')
      ? tfType.substring('aws_'.length)
      : tfType;
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
  if (_isSensitive(n, sensitive) && p.type.startsWith('TfArg') ||
      p.type.startsWith('Sensitive<')) {
    return _secretFor(p.type);
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
  // A sealed slot named like one of its members takes the value inside the
  // variant `_sealedChoice` builds, not as itself.
  final sealed = _sealedVariants.containsKey(
    p.type.replaceFirst(RegExp(r'\?$'), ''),
  );
  final value = sealed ? null : _dummies.valueFor(owner, n);
  final fitted = value == null ? null : _fit(value, p.type);
  if (fitted != null) return fitted;
  return _dummyForType(
    p.type,
    helpers,
    depth: depth,
    name: n,
    sensitive: sensitive,
    owner: owner,
  );
}

/// [value] written for a slot of [type], or null when it does not fit the
/// type and the slot takes its type default.
String? _fit(DummyValue value, String type) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  final dart = value.dart;
  if (value is DartDummy) {
    if (t.startsWith('RefTo')) return 'RefTo.literal($dart)';
    return t.startsWith('TfArg') ? 'TfArg.literal($dart)' : dart;
  }
  final enumType = _enumSlotType(type);
  if (enumType != null) {
    if (!value.isString) return null;
    final member = _enumFor(enumType, dart);
    return t.startsWith('List<') ? '[$member,]' : member;
  }
  if (t.startsWith('RefTo<')) {
    return value.isString ? 'RefTo.literal($dart)' : null;
  }
  if (t.startsWith('TfArg<') && t.endsWith('>')) {
    final inner = _fitInner(value, t.substring(6, t.length - 1));
    return inner == null ? null : 'TfArg.literal($inner)';
  }
  return _fitInner(value, t);
}

String? _fitInner(DummyValue value, String type) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  final dart = value.dart;
  final json = switch (value) {
    LiteralDummy(:final json) => json,
    BoundDummy(:final template) => template,
    DartDummy() => null,
  };
  if (t == 'String' || t == 'Object' || t == 'dynamic') {
    return json is String || t != 'String' ? dart : null;
  }
  if (t == 'num' || t == 'int' || t == 'double') {
    return json is num ? dart : null;
  }
  if (t == 'bool') return json is bool ? dart : null;
  if (t.startsWith('List<') && t.endsWith('>')) {
    final element = t.substring(5, t.length - 1).trim().replaceAll('?', '');
    if (json is List) {
      if (!element.startsWith('RefTo<')) return dart;
      return dart.replaceAllMapped(
        RegExp(r"'[^']*'"),
        (m) => 'RefTo.literal(${m[0]})',
      );
    }
    if (json is! String) return null;
    if (element == 'String') return '[$dart]';
    if (element.startsWith('RefTo<')) return '[RefTo.literal($dart)]';
  }
  return null;
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

  if (t.startsWith('RefTo<')) {
    return 'RefTo.literal(${_stringValue(name, owner: owner)})';
  }
  if (t.startsWith('Sensitive<')) return _secretFor(t);
  if (t.startsWith('TfArg<') && t.endsWith('>')) {
    if (_isSensitive(name, sensitive)) {
      return _secretFor(t);
    }
    final inner = t.substring(6, t.length - 1);
    final value = _literalInner(
      inner,
      helpers,
      depth: depth,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
    // An enum member's long name makes the formatter wrap the call; the
    // trailing comma keeps the wrapped shape `require_trailing_commas` wants.
    return _enums.containsKey(inner.trim())
        ? 'TfArg.literal($value,)'
        : 'TfArg.literal($value)';
  }
  if (t.startsWith('List<') && t.endsWith('>')) {
    final inner = t.substring(5, t.length - 1);
    return '[${_dummyForType(inner, helpers, depth: depth + 1, name: name, sensitive: sensitive, owner: owner)},]';
  }
  if (t.startsWith('Map<') || t == 'Map') {
    return _mapLiteral(t, helpers, depth: depth, sensitive: sensitive);
  }
  if (_sealedVariants.containsKey(t)) {
    return _sealedChoice(
      t,
      helpers,
      depth: depth,
      sensitive: sensitive,
      owner: owner,
    );
  }
  if (helpers.containsKey(t)) {
    return _constructHelper(
      t,
      helpers,
      depth: depth + 1,
      sensitive: sensitive,
      shorthand: _insideHelper,
    );
  }
  if (_enums.containsKey(t)) return _enumMember(t, name, owner: owner);
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
  if (t == 'String') return _stringValue(name, owner: owner);
  if (_enums.containsKey(t)) return _enumMember(t, name, owner: owner);
  if (t == 'num' || t == 'int' || t == 'double') return '200';
  if (t == 'bool') return 'true';
  if (t.startsWith('List<') && t.endsWith('>')) {
    final listInner = t.substring(5, t.length - 1).trim().replaceAll('?', '');
    if (listInner.startsWith('RefTo<')) {
      return '[RefTo.literal(${_stringValue(name, owner: owner)})]';
    }
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
    if (listInner == 'String') return '[${_stringValue(name, owner: owner)}]';
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

/// Every enum the package declares: name → (member, raw value) in
/// declaration order.
final _enums = <String, List<(String, String)>>{};

final _enumDecl = RegExp(
  r'extension\s+type\s+const\s+(\w+)\._\([^)]*\)\s+implements\s+TfArg<String>\s*\{(.*?)static\s+const\s+List<',
  dotAll: true,
);
final _enumEntry = RegExp(
  r"static\s+const\s+(\w+)\s*=\s*\w+\._\(\s*TfArgLiteral\(\s*'((?:[^'\\]|\\.)*)'",
);

void _collectEnums(String source) {
  for (final m in _enumDecl.allMatches(source)) {
    _enums[m.group(1)!] = [
      for (final e in _enumEntry.allMatches(m.group(2)!))
        (e.group(1)!, e.group(2)!.replaceAll(r'\', '')),
    ];
  }
}

/// The enum an `E?` / `List<E>?` slot takes, if any.
String? _enumSlotType(String type) {
  final m = RegExp(
    r'^(?:List<)?(\w+)>?\??$',
  ).firstMatch(type.replaceAll(RegExp(r'\s+'), ''));
  final name = m?.group(1);
  return name != null && _enums.containsKey(name) ? name : null;
}

/// The member of [enumName] whose value is the Dart string literal
/// [literal], else the first member.
String _enumFor(String enumName, String literal) {
  final members = _enums[enumName]!;
  final preferred = literal.startsWith("'") && literal.endsWith("'")
      ? literal.substring(1, literal.length - 1)
      : null;
  final pick = members.firstWhere(
    (m) => m.$2 == preferred,
    orElse: () => members.first,
  );
  return '$enumName.${pick.$1}';
}

/// The member whose value [_stringValue] would have written for the slot
/// (the value its provider validator accepts), else the first member.
String _enumMember(String enumName, String name, {required String owner}) =>
    _enumFor(enumName, _stringValue(name, owner: owner));

/// Deeper than any typed helper chain in the catalog; the heavy
/// resources take their nested blocks as maps.
const _maxDepth = 20;

/// Lists the provider wants longer than one element, keyed by
/// `Owner.param`.
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
  var outer = inner.substring(1, inner.length - 1).trim();
  if (outer.endsWith(',')) {
    outer = outer.substring(0, outer.length - 1);
  }
  String vary(int i, [String? of]) {
    final element = of ?? outer;
    if (i == 0) return element;
    if (element.startsWith('RefTo.literal(') && element.endsWith(')')) {
      final ref = element.substring(
        'RefTo.literal('.length,
        element.length - 1,
      );
      return 'RefTo.literal(${vary(i, ref)})';
    }
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
    final quoted = RegExp(
      r"(TfArg|RefTo)\.literal\('([^']*)'\)",
    ).firstMatch(element);
    if (quoted != null) {
      return element.replaceRange(
        quoted.start,
        quoted.end,
        "${quoted.group(1)}.literal('${quoted.group(2)}$i')",
      );
    }
    return element;
  }

  return wrap('[${[for (var i = 0; i < count; i++) vary(i)].join(', ')},]');
}

const _policyJson =
    r"""'{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":"s3:GetObject","Resource":"*"}]}'""";

String _stringValue(String name, {String owner = ''}) {
  final value = _dummies.valueFor(owner, name);
  return value != null && value.isString ? value.dart : 'leftover';
}

/// Whether the value being built sits inside a helper or a sealed variant,
/// where a helper whose type is the context type is written `.new(...)`.
var _insideHelper = false;

String _constructHelper(
  String className,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  bool shorthand = false,
}) {
  final ctor = shorthand ? '.new' : className;
  if (depth > _maxDepth) return '$ctor()';
  final info = helpers[className];
  if (info == null) return '$ctor()';
  final extras = _requiredAtValidate[className];
  if (extras != null) _usedKeys.add(className);
  final params = [
    ...info.requiredParams,
    if (extras != null)
      ..._extraSlots(
        className,
        extras,
        info.requiredParams,
        info.optionalParams,
        helpers,
      )
    else if (info.requiredParams.isEmpty && info.optionalParams.isNotEmpty)
      info.optionalParams.first,
  ];
  if (params.isEmpty) {
    return '$ctor()';
  }
  final outer = _insideHelper;
  _insideHelper = true;
  final args = params
      .map(
        (p) =>
            '${p.name}: ${_dummy(p, helpers, depth: depth, sensitive: sensitive, owner: className)}',
      )
      .join(', ');
  _insideHelper = outer;
  // Trailing comma: `dart format` then expands the call across lines and
  // keeps it there, which is the shape `require_trailing_commas` wants.
  // Without it the formatter wraps long calls and adds no comma, so a
  // formatted `examples/` fails `dart analyze`.
  return '$ctor($args,)';
}
