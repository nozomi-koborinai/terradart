# Migrating terradart

## 0.30.x → next release

### `addOutput` and `addConstant` replace `addExport`

**Breaking (`terradart_core`)** — a Terraform output and a Dart constant are
separate methods, and the constants file is a constructor parameter.
`AppExport`, `ResourceIdExport`, `ResourceAttributeExport`, `StringExport`,
`EnvBackedExport` and `setAppExportsOutputPath` are gone.

```dart
// Before
final class OrdersStack extends Stack {
  OrdersStack() : super(providers: [...]) {
    final topic = add(GooglePubsubTopic(localName: 'orders', name: .literal('orders-prod')));
    addExport('ORDERS_TOPIC_NAME', ResourceIdExport(topic.nameRef));
    addExport('ORDERS_TOPIC_ID', ResourceIdExport(topic.id, emitTerraformOutput: true));
    addExport('API_VERSION', StringExport('v1'));
    setAppExportsOutputPath('lib/generated/orders_stack.app.dart');
  }
}
// OrdersStackExports.ORDERS_TOPIC_NAME

// After
final class OrdersStack extends Stack {
  OrdersStack()
    : super(
        providers: [...],
        appExports: AppExports('lib/generated/orders_stack.app.dart'),
      ) {
    final topic = add(GooglePubsubTopic(localName: 'orders', name: .literal('orders-prod')));
    addConstant('ordersTopicName', .ref(topic.nameRef));
    addOutput('orders_topic_id', .ref(topic.id));
    addConstant('apiVersion', const .value('v1'));
  }
}
// OrdersStackConstants.ordersTopicName
```

| Before | After |
|--------|-------|
| `ResourceIdExport(x.attr)` on a literal attribute | `addConstant('name', .ref(x.attr))` |
| `ResourceIdExport(x.attr)` on an apply-time attribute (it became an output) | `addOutput('name', .ref(x.attr))` |
| `emitTerraformOutput: true` | a separate `addOutput` |
| `terraformOutputName: 'x'` | `addOutput('x', ...)` — the output name is the first argument |
| `StringExport('v')` | `addConstant('name', const .value('v'))` — any `String` / `int` / `double` / `num` / `bool` / `Object`, or a `List` / `String`-keyed `Map` of them |
| `EnvBackedExport(envVarName: 'X')` | `addConstant('name', .fromEnvironment('X'))` |
| `setAppExportsOutputPath(path)` | `appExports: AppExports(path)` on the `super(...)` call |
| `synth(stackName: 'Custom')` | `AppExports(path, name: 'Custom')` |
| `SynthResult.dartConstants` | `SynthResult.dartSource` (and `dartSourcePath`) |
| `OrdersStackExports.ORDERS_TOPIC_NAME` | `OrdersStackConstants.ordersTopicName` |

What changes in behavior:

- **A `.ref` constant that cannot resolve fails synth.** `ResourceIdExport`
  silently dropped the constant when its attribute was not a literal (and
  emitted an output instead). `addConstant(.ref(...))` throws a `StateError`
  that says what the attribute is set by — a reference, a variable, an
  expression, or nothing (the provider computes it) — or that it is a
  sensitive field. Use `addOutput` for those values.
- **Names are checked at registration.** A constant name must be a public
  Dart identifier (`ordersTopicName`, not `ORDERS_TOPIC_NAME`, although that
  still compiles); an output name a Terraform identifier. A duplicate of
  either throws `ArgumentError`, as does an output that reads a sensitive
  field without `sensitive: true` (Terraform rejects it at plan).
- **Output names are yours.** An export used to emit its Dart name as the
  output name; rename outputs to snake_case when you migrate if you like, and
  update anything that reads them (`terraform output -raw orders_topic_id`,
  `terraform_remote_state`).
- **The file is always written** when `appExports` is set, rewritten in full
  on every synth, and the class is `<Stack>Constants` (was `<Stack>Exports`).
  The Stack's class name drops a leading `_`.
- **The file also holds a typed outputs reader**, `<Stack>Outputs`, with a
  getter per non-sensitive output (`ordersTopicId` for `orders_topic_id`).
  Replace code that shells out to `terraform output -raw` or reads a
  hand-named environment variable with
  `<Stack>Outputs.fromTerraformJson(...)` /
  `<Stack>Outputs.fromEnvironment(Platform.environment)`. With `appExports`
  set, an output name whose getter would not be a Dart identifier
  (`class`), or that shares its getter or variable with another output
  (`topic_id` / `topic-id`), throws; rename it. A Cloud Run `env` list that
  hand-copies output values (`name: .literal('DB_INSTANCE'), source:
  .value(.ref(sql.connectionName))`) can become `addOutput('db_instance',
  ...)` plus a loop over `outputEnvironment()`.
- `DartConstantsEmitter`, `LiteralResolver` and the `OutputEmitter` types are
  no longer exported from `package:terradart_core/terradart_core.dart`; they
  were synth internals.

A Stack `terradart-migrate` wrote before this release has an `addExport` per
`output` block; re-run the migration, or replace each
`addExport(r'key', ResourceIdExport(x.attr, emitTerraformOutput: true, ...))`
with `addOutput(r'<output name>', .ref(x.attr), ...)` and delete the
`setAppExportsOutputPath` line.

### Dart 3.10 is the minimum SDK

**Breaking (every package)** — all `terradart_*` packages declare
`sdk: ^3.10.0` (was `^3.6.0`). Upgrade the Dart SDK to 3.10 or later
(`dart --version`), then raise the lower bound in your own stack's
`pubspec.yaml`:

```yaml
environment:
  sdk: ^3.10.0
```

and run `dart pub upgrade`. Nothing else changes: the Dart API and synth
output are the same. Raising your package's language version also switches
`dart format` to the tall style, so expect a one-time reformat of your own
code.

### Arguments that name another resource take `RefTo<R>`

**Breaking (`terradart_google`, `terradart_aws`, `terradart_cloudflare`)** —
an argument that names another resource (`network`, `subnetwork`,
`service_account`, `topic`, `bucket`, `role`, `vpc_id`, `security_group_ids`,
`zone_id`, ...) takes a `RefTo<Target>` (a list of them for list arguments)
instead of a `TfArg<String>`. Pass the target's `ref` getter: the argument
picks the attribute it emits, so passing a subnetwork where a network is
expected, or an `arn` where a `name` is expected, no longer compiles. The
types covered, and the attribute each argument emits, are listed in
[`tool/reference_targets.yaml`](tool/reference_targets.yaml): network,
subnetwork, service account, KMS crypto key, bucket, Pub/Sub topic and
BigQuery dataset on google; IAM role, KMS key, S3 bucket, subnet, security
group, VPC, CloudWatch log group, SNS topic and Lambda function on aws;
account and zone on cloudflare.

| Before | After |
|--------|-------|
| `network: TfArg.ref(vpc.selfLink)` | `network: vpc.ref` |
| `topic: TfArg.ref(topic.nameRef)` | `topic: topic.ref` |
| `role: TfArg.ref(role.arn)` | `role: role.ref` |
| `zoneId: TfArg.ref(zone.id)` | `zoneId: zone.ref` |
| `network: TfArg.literal('default')` | `network: .literal('default')` |
| `subnetIds: TfArg.literal([TfArg.ref(a.id), TfArg.ref(b.id)])` | `subnetIds: .literal([a.ref, b.ref])` |
| `datasetId: TfArg.ref(ds.datasetIdRef)` (data source) | `datasetId: ds.ref` — a data source that reads the type has the same getter |
| `bucket: TfArg.variable('bucket')` | `bucket: .variable('bucket')` |
| `bucket: TfArg.ref(TfRef.attribute(module, 'bucket'))` (module output, another Stack) | `bucket: .arg(.ref(TfRef.attribute(module, 'bucket')))` |

`RefTo.literal`, `RefTo.variable` and `RefTo.expression` (written `.literal`,
`.variable`, `.expression` where the argument type is known) cover values
that are not a block of the Stack, and `RefTo.arg(TfArg<String>)` takes any
string argument unchecked. To keep emitting the attribute you passed before,
pin it: `vpc.ref.pinned('self_link')`.

**Synth output changes** where the old code passed a different attribute
than the argument now emits. Every new value is one the provider accepts for
that argument, but run `terraform plan` before applying: where the provider
does not treat the old and new forms as equal, the argument shows a change,
and on an argument that forces replacement that means a replacement. Pin the
old attribute (`vpc.ref.pinned('self_link')`) to keep the exact old value.
The examples changed in these places:

- google `network` / `subnetwork` arguments emit `id`
  (`projects/p/global/networks/n`) instead of `self_link` or `name`
  (Compute addresses, firewalls, forwarding rules, NEGs, instance groups and
  subnetworks, service networking, GKE clusters, Oracle Database ODB
  networks, Network Connectivity transports, subnetwork IAM);
- `topic` on `google_pubsub_topic_iam_member` / `_binding` / `_policy` emits
  `id` instead of `name`;
- `service_account` on `google_cloudbuild_trigger` emits `name` instead of
  `id` (the same `projects/p/serviceAccounts/email` value);
- `function_name` on `aws_lambda_function_url` emits `function_name`
  instead of `arn`.

`terradart-migrate` writes `x.ref` for a reference to a migrated block,
`x.ref.pinned('attr')` when the source reads another attribute, and
`.literal` / `.variable` / `.expression` otherwise, so migrated stacks keep
their synth output.

A sealed choice between such arguments takes the same `RefTo<Target>`,
whether it is a top-level argument or a field of a nested helper. Synth
output does not change: each variant emits the attribute the plain argument
emits.

| Resource | Before | After |
|----------|--------|-------|
| `cloudflare_ruleset` | `scope: .zoneId(TfArg.ref(zone.id))` | `scope: .zoneId(zone.ref)` |
| `aws_lambda_function` | `code: .s3Bucket(TfArg.ref(bucket.id))` | `code: .s3Bucket(bucket.ref)` |
| `aws_lb` / `aws_alb` | `subnet: .subnets(TfArg.literal([a.id.interpolation]))` | `subnet: .subnets(.literal([a.ref]))` |
| `aws_flow_log` | `source: .vpcId(TfArg.ref(vpc.id))` | `source: .vpcId(vpc.ref)` |

The other sealed members typed this way: `aws_cloudhsm_v2_hsm`
`subnet_id`, `aws_s3_object` / `aws_s3_bucket_object` `kms_key_id`,
`aws_launch_template`, `aws_route_table_association`,
`aws_vpc_block_public_access_exclusion`, `aws_emr_cluster`,
`aws_networkfirewall_firewall`, `google_dataproc_batch`,
`google_spanner_backup_schedule` and `google_vertex_ai_index_endpoint`.

Data-source arguments that name a resource take `RefTo<Target>` the same
way: `DataAwsNatGateway(vpcId: vpc.ref)`,
`DataCloudflareZoneLockdowns(zoneId: zone.ref)`,
`DataGoogleKmsCryptoKeyVersion(cryptoKey: key.ref)`. A string that is not a
block of the Stack takes `.literal(...)`; synth output does not change.

**Breaking (`terradart_appwrite`)** — Appwrite arguments that name another
Appwrite resource take `RefTo<Target>` the same way, emitting its `id`:
`project_id`, `database_id` (the database of the same family: TablesDB,
MongoDB, MySQL or PostgreSQL), `table_id` / `related_table_id`, `bucket_id`,
`topic_id`, `function_id` and `site_id`.

| Before | After |
|--------|-------|
| `databaseId: .ref(db.id)` | `databaseId: db.ref` |
| `bucketId: .ref(bucket.id)` | `bucketId: bucket.ref` |
| `projectId: .literal('my-project')` | unchanged (`RefTo.literal`) |

**Breaking (`terradart_google_beta`)** — a beta-only resource argument that
names a GA resource takes the `terradart_google` `RefTo` type
(`RefTo<GoogleComputeNetwork>`, `RefTo<GoogleComputeSubnetwork>`,
`RefTo<GoogleKmsCryptoKey>`, `RefTo<GoogleServiceAccount>`,
`RefTo<GoogleStorageBucket>`, `RefTo<GoogleBigqueryDataset>`), so
`terradart_google_beta` now depends on `terradart_google`. Pass the GA
block's `ref` (`network: vpc.ref`) or `.literal('...')`; the arguments emit
the attribute the matching GA argument emits (`name` for
`google_dataflow_flex_template_job.network`, `self_link` for its
`subnetwork`, as on `google_dataflow_job`).

### Sealed arguments are built with dot shorthands

**Breaking (`terradart_aws`, every package with a derived sealed type)** —
a derived sealed type (an exactly-one or at-most-one input group) declares
one `const factory` constructor per member, named after the member and
taking its value positionally. With Dart 3.10 dot shorthands you write
the constructor without the type name, and IDE completion lists the
choices. The `<Prefix><Member>Option` variant classes are gone: each
variant is a class named `<SealedType><Member>` that you only need for
pattern matching. The hand-written `terradart_google` sealed types
(`source`, `payload`, health-check `protocol`, ...) gain the same
factories. Their variant classes keep their names, so existing call sites
still compile, except the variants of five types whose names said a block
segment twice:

| Before (0.30) | After |
|--------|-------|
| `StorageBucketObjectBucketObjectContent` / `BucketObjectFromSource` / `BucketObjectFromContent` | `StorageBucketObjectBody` / `StorageBucketObjectBodySource` / `StorageBucketObjectBodyContent` |
| `ColabNotebookExecutionExecutionUser` / `ColabNotebookExecutionServiceAccount` | `ColabNotebookExecutionIdentityExecutionUser` / `ColabNotebookExecutionIdentityServiceAccount` |
| `ComputeImageDiskSource` / `ComputeImageImageSource` / `ComputeImageSnapshotSource` | `ComputeImageSourceDisk` / `ComputeImageSourceImage` / `ComputeImageSourceSnapshot` |
| `ComputeRegionHealthCheckRegionHealthCheck<Protocol>Config` | `ComputeRegionHealthCheck<Protocol>HealthCheckConfig` |
| `FirebaseAppHostingBuildAppHostingBuildSource` (+ `Codebase` / `Container`) | `FirebaseAppHostingBuildSource` (+ `Codebase` / `Container`) |

| Before (0.30) | After |
|--------|-------|
| `AwsLambdaFunction(filenameOrImageUriOrS3Bucket: LambdaFunctionFilenameOption(filename: TfArg.literal('bootstrap.zip')), ...)` | `AwsLambdaFunction(code: .filename(.literal('bootstrap.zip')), ...)` |
| `case LambdaFunctionFilenameOption(:final filename)` | `case LambdaFunctionCodeFilename(:final filename)` |
| `source: CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info'))` | `source: .value(.literal('info'))` (the old form still compiles) |

Replace every `<Prefix><Member>Option(member: value)` with
`.member(value)`. Where no type is known from context (a local `final`
without a type), write the sealed type: `LambdaFunctionCode.filename(...)`.
`terradart-migrate` emits the dot-shorthand form.

The same shorthand works for every `TfArg` argument and every enum inside
one, with no API change: `name: .literal('orders')`,
`member: .ref(sa.iamMember)`, `type: .literal(.cname)`. Spell out
`TfArg.` / the enum type only where there is no context type — a local
`final` without a type, an untyped `Map<String, dynamic>` passthrough, or a
`List<Object>` element.

### Sealed arguments take concept names

**Breaking (every package with a derived sealed type)** — a derived sealed
argument is named after the concept its members share, like a protobuf
`oneof`, instead of its members joined by `Or`. The sealed type is
`<ResourceStem><Concept>` (`<HelperClass><Concept>` inside a block), and
each variant is `<SealedType><Member>`. The name comes from the lane's
wrapper override (`sealedNames:`), else from the members' shared prefix or
suffix. Every group on every lane has a name in this release. The variant
constructors keep their member names, so only the argument name and the
type name change:

| Before (0.30) | After |
|--------|-------|
| `AwsLambdaFunction(filenameOrImageUriOrS3Bucket: ..., ...)` | `AwsLambdaFunction(code: .filename(...), ...)` |
| `AwsRoute53Record(aliasOrRecords: ..., ...)` | `AwsRoute53Record(target: .records(...), ...)` |
| `AwsAcmCertificate(domainNameOrPrivateKeyOrPrivateKeyWo: ..., ...)` | `AwsAcmCertificate(source: .domainName(...), ...)` |
| `InstanceLaunchTemplate(idOrName: ...)` | `InstanceLaunchTemplate(identifier: .id(...))` |

No type name says a block segment twice. A joined name drops the words the
two halves share (`RdsCluster` + `cluster_identifier` →
`RdsClusterIdentifier`); a variant whose name would still repeat a
segment, or take a class the resource already declares (usually the
member block's own helper), ends in `Choice`, `Option` or `Variant`
instead (`DataplexDatascanExecutionSpecTriggerOnDemandChoice`).

A block that holds nothing but one group — every input is a member of an
exactly-one group, or of an at-most-one group on an optional block — gets
no argument of its own: the block's class *is* the sealed type, and its
parent passes the choice straight to the block's argument. Those rows read
*the `<name>` block* in the tables below:

| Before (0.30) | After |
|--------|-------|
| `amount: BillingBudgetAmount(lastPeriodAmount: TfArg.literal(true))` | `amount: .lastPeriodAmount(.literal(true))` |
| `data: DataplexDatascanData(resource: TfArg.literal(uri))` | `data: .resource(.literal(uri))` |

The 160 `terradart_aws` exactly-one groups released in 0.30 are the only
derived sealed arguments that change name. Every one is listed here:

<details><summary><code>terradart_aws</code> renames (160 groups)</summary>

| Class | 0.30 argument | New argument | Sealed type |
|---|---|---|---|
| `AppmeshGatewayRouteSpec` | `grpcRouteOrHttp2RouteOrHttpRoute` | `route` | `AppmeshGatewayRouteSpecRoute` |
| `AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate` | `fileOrSds` | *the `certificate` block* | `AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate` |
| `AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust` | `acmOrFileOrSds` | *the `trust` block* | `AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust` |
| `ApprunnerServiceSourceConfiguration` | `codeRepositoryOrImageRepository` | `repository` | `ApprunnerServiceSourceConfigurationRepository` |
| `AwsAcmCertificate` | `domainNameOrPrivateKeyOrPrivateKeyWo` | `source` | `AcmCertificateSource` |
| `AwsAlb` | `subnetMappingOrSubnets` | `subnet` | `AlbSubnet` |
| `AwsAmiLaunchPermission` | `accountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn` | `grantee` | `AmiLaunchPermissionGrantee` |
| `AwsAppstreamImageBuilder` | `imageArnOrImageName` | `image` | `AppstreamImageBuilderImage` |
| `AwsAppsyncSourceApiAssociation` | `mergedApiArnOrMergedApiId` | `mergedApi` | `AppsyncSourceApiAssociationMergedApi` |
| `AwsAppsyncSourceApiAssociation` | `sourceApiArnOrSourceApiId` | `sourceApi` | `AppsyncSourceApiAssociationSourceApi` |
| `AwsAutoscalingAttachment` | `elbOrLbTargetGroupArn` | `target` | `AutoscalingAttachmentTarget` |
| `AwsAutoscalingGroup` | `launchConfigurationOrLaunchTemplateOrMixedInstancesPolicy` | `instanceSource` | `AutoscalingGroupInstanceSource` |
| `AwsBackupRestoreTestingSelection` | `protectedResourceArnsOrProtectedResourceConditions` | `protectedResource` | `BackupRestoreTestingSelectionProtectedResource` |
| `AwsBedrockagentcoreApiKeyCredentialProvider` | `apiKeyOrApiKeySecretConfigOrApiKeyWo` | `apiKey` | `BedrockagentcoreApiKeyCredentialProviderApiKey` |
| `AwsCloudhsmV2Hsm` | `availabilityZoneOrSubnetId` | `placement` | `CloudhsmV2HsmPlacement` |
| `AwsCloudwatchLogResourcePolicy` | `policyNameOrResourceArn` | `scope` | `CloudwatchLogResourcePolicyScope` |
| `AwsCloudwatchMetricAlarm` | `evaluationCriteriaOrMetricNameOrMetricQuery` | `signal` | `CloudwatchMetricAlarmSignal` |
| `AwsCognitoManagedLoginBranding` | `settingsOrUseCognitoProvidedValues` | `style` | `CognitoManagedLoginBrandingStyle` |
| `AwsCognitoManagedUserPoolClient` | `namePatternOrNamePrefix` | `name` | `CognitoManagedUserPoolClientName` |
| `AwsConfigAggregateAuthorization` | `authorizedAwsRegionOrRegion` | `region` | `ConfigAggregateAuthorizationRegion` |
| `AwsDbProxyTarget` | `dbClusterIdentifierOrDbInstanceIdentifier` | `database` | `DbProxyTargetDatabase` |
| `AwsDmsCertificate` | `certificatePemOrCertificateWallet` | `content` | `DmsCertificateContent` |
| `AwsDxHostedPrivateVirtualInterfaceAccepter` | `dxGatewayIdOrVpnGatewayId` | `gatewayId` | `DxHostedPrivateVirtualInterfaceAccepterGatewayId` |
| `AwsDxPrivateVirtualInterface` | `dxGatewayIdOrVpnGatewayId` | `gatewayId` | `DxPrivateVirtualInterfaceGatewayId` |
| `AwsEc2ClientVpnAuthorizationRule` | `accessGroupIdOrAuthorizeAllGroups` | `audience` | `Ec2ClientVpnAuthorizationRuleAudience` |
| `AwsEc2Host` | `instanceFamilyOrInstanceType` | `instance` | `Ec2HostInstance` |
| `AwsEc2TrafficMirrorTarget` | `gatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn` | `destination` | `Ec2TrafficMirrorTargetDestination` |
| `AwsEipAssociation` | `instanceIdOrNetworkInterfaceId` | `target` | `EipAssociationTarget` |
| `AwsElasticacheCluster` | `engineOrReplicationGroupId` | `source` | `ElasticacheClusterSource` |
| `AwsEmrStudioSessionMapping` | `identityIdOrIdentityName` | `identity` | `EmrStudioSessionMappingIdentity` |
| `AwsFlowLog` | `eniIdOrRegionalNatGatewayIdOrSubnetIdOrTransitGatewayAttachmentIdOrTransitGatewayIdOrVpcId` | `source` | `FlowLogSource` |
| `AwsFsxOntapFileSystem` | `throughputCapacityOrThroughputCapacityPerHaPair` | `throughputCapacity` | `FsxOntapFileSystemThroughputCapacity` |
| `AwsFsxOntapVolume` | `sizeInBytesOrSizeInMegabytes` | `size` | `FsxOntapVolumeSize` |
| `AwsGameliftFleet` | `buildIdOrScriptId` | `artifact` | `GameliftFleetArtifact` |
| `AwsGameliftScript` | `storageLocationOrZipFile` | `code` | `GameliftScriptCode` |
| `AwsImagebuilderComponent` | `dataOrUri` | `document` | `ImagebuilderComponentDocument` |
| `AwsImagebuilderContainerRecipe` | `dockerfileTemplateDataOrDockerfileTemplateUri` | `dockerfileTemplate` | `ImagebuilderContainerRecipeDockerfileTemplate` |
| `AwsImagebuilderImage` | `containerRecipeArnOrImageRecipeArn` | `recipeArn` | `ImagebuilderImageRecipeArn` |
| `AwsImagebuilderImagePipeline` | `containerRecipeArnOrImageRecipeArn` | `recipeArn` | `ImagebuilderImagePipelineRecipeArn` |
| `AwsImagebuilderWorkflow` | `dataOrUri` | `document` | `ImagebuilderWorkflowDocument` |
| `AwsKmsCiphertext` | `plaintextOrPlaintextWo` | `plaintext` | `KmsCiphertextPlaintext` |
| `AwsLakeformationPermissions` | `catalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns` | `resource` | `LakeformationPermissionsResource` |
| `AwsLakeformationResourceLfTag` | `databaseOrTableOrTableWithColumns` | `resource` | `LakeformationResourceLfTagResource` |
| `AwsLakeformationResourceLfTags` | `databaseOrTableOrTableWithColumns` | `resource` | `LakeformationResourceLfTagsResource` |
| `AwsLambdaEventSourceMapping` | `eventSourceArnOrSelfManagedEventSource` | `eventSource` | `LambdaEventSourceMappingEventSource` |
| `AwsLambdaFunction` | `filenameOrImageUriOrS3Bucket` | `code` | `LambdaFunctionCode` |
| `AwsLb` | `subnetMappingOrSubnets` | `subnet` | `LbSubnet` |
| `AwsMskChannel` | `icebergDestinationOrS3Destination` | `destination` | `MskChannelDestination` |
| `AwsNeptuneGlobalCluster` | `engineOrSourceDbClusterIdentifier` | `source` | `NeptuneGlobalClusterSource` |
| `AwsNetworkAclRule` | `cidrBlockOrIpv6CidrBlock` | `cidr` | `NetworkAclRuleCidr` |
| `AwsNetworkfirewallFirewall` | `transitGatewayIdOrVpcId` | `attachment` | `NetworkfirewallFirewallAttachment` |
| `AwsOpensearchserverlessSecurityConfig` | `iamFederationOptionsOrIamIdentityCenterOptionsOrSamlOptions` | `options` | `OpensearchserverlessSecurityConfigOptions` |
| `AwsPinpointGcmChannel` | `apiKeyOrServiceJson` | `credentials` | `PinpointGcmChannelCredentials` |
| `AwsPinpointsmsvoicev2EventDestination` | `cloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination` | `target` | `Pinpointsmsvoicev2EventDestinationTarget` |
| `AwsRedshiftDataShareConsumerAssociation` | `associateEntireAccountOrConsumerArnOrConsumerRegion` | `consumer` | `RedshiftDataShareConsumerAssociationConsumer` |
| `AwsRoute53Record` | `aliasOrRecords` | `target` | `Route53RecordTarget` |
| `AwsRoute53recoverycontrolconfigSafetyRule` | `assertedControlsOrGatingControls` | `controls` | `Route53recoverycontrolconfigSafetyRuleControls` |
| `AwsRouteTableAssociation` | `gatewayIdOrSubnetId` | `target` | `RouteTableAssociationTarget` |
| `AwsRumAppMonitor` | `domainOrDomainList` | `domain` | `RumAppMonitorDomain` |
| `AwsS3BucketAcl` | `accessControlPolicyOrAcl` | `policy` | `S3BucketAclPolicy` |
| `AwsSagemakerApp` | `spaceNameOrUserProfileName` | `owner` | `SagemakerAppOwner` |
| `AwsSagemakerPipeline` | `pipelineDefinitionOrPipelineDefinitionS3Location` | `pipelineDefinition` | `SagemakerPipelineDefinition` |
| `AwsSagemakerWorkforce` | `cognitoConfigOrOidcConfig` | `identityProvider` | `SagemakerWorkforceIdentityProvider` |
| `AwsServicecatalogProvisionedProduct` | `productIdOrProductName` | `identifier` | `ServicecatalogProvisionedProductIdentifier` |
| `AwsServicecatalogProvisionedProduct` | `provisioningArtifactIdOrProvisioningArtifactName` | `provisioningArtifact` | `ServicecatalogProvisionedProductProvisioningArtifact` |
| `AwsServicecatalogProvisioningArtifact` | `templatePhysicalIdOrTemplateUrl` | `template` | `ServicecatalogProvisioningArtifactTemplate` |
| `AwsServicequotasTemplate` | `awsRegionOrRegion` | `region` | `ServicequotasTemplateRegion` |
| `AwsSpotFleetRequest` | `launchSpecificationOrLaunchTemplateConfig` | `launch` | `SpotFleetRequestLaunch` |
| `AwsSsmParameter` | `insecureValueOrValueOrValueWo` | `value` | `SsmParameterValue` |
| `AwsStoragegatewayGateway` | `activationKeyOrGatewayIpAddress` | `activation` | `StoragegatewayGatewayActivation` |
| `AwsStoragegatewayUploadBuffer` | `diskIdOrDiskPath` | `disk` | `StoragegatewayUploadBufferDisk` |
| `AwsTranscribeVocabulary` | `phrasesOrVocabularyFileUri` | `terms` | `TranscribeVocabularyTerms` |
| `AwsTranscribeVocabularyFilter` | `vocabularyFilterFileUriOrWords` | `terms` | `TranscribeVocabularyFilterTerms` |
| `AwsTransferHostKey` | `hostKeyBodyOrHostKeyBodyWo` | `hostKeyBody` | `TransferHostKeyBody` |
| `AwsVpcBlockPublicAccessExclusion` | `subnetIdOrVpcId` | `target` | `VpcBlockPublicAccessExclusionTarget` |
| `AwsVpcEndpointConnectionNotification` | `vpcEndpointIdOrVpcEndpointServiceId` | `vpcEndpoint` | `VpcEndpointConnectionNotificationVpcEndpoint` |
| `AwsVpclatticeResourceConfiguration` | `resourceConfigurationGroupIdOrResourceGatewayIdentifier` | `parent` | `VpclatticeResourceConfigurationParent` |
| `AwsWafv2WebAclRuleGroupAssociation` | `managedRuleGroupOrRuleGroupReference` | `source` | `Wafv2WebAclRuleGroupAssociationSource` |
| `BedrockEvaluationJobEvaluationConfig` | `automatedOrHuman` | *the `evaluationConfig` block* | `BedrockEvaluationJobEvaluationConfig` |
| `BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue` | `floatValueOrStringValue` | *the `value` block* | `BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue` |
| `BedrockEvaluationJobInferenceConfig` | `modelOrRagConfig` | *the `inferenceConfig` block* | `BedrockEvaluationJobInferenceConfig` |
| `BedrockEvaluationJobInferenceConfigModel` | `bedrockModelOrPrecomputedInferenceSource` | *the `model` block* | `BedrockEvaluationJobInferenceConfigModel` |
| `BedrockEvaluationJobInferenceConfigRagConfig` | `knowledgeBaseConfigOrPrecomputedRagSourceConfig` | *the `ragConfig` block* | `BedrockEvaluationJobInferenceConfigRagConfig` |
| `BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig` | `retrieveAndGenerateConfigOrRetrieveConfig` | *the `knowledgeBaseConfig` block* | `BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig` |
| `BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig` | `retrieveAndGenerateSourceConfigOrRetrieveSourceConfig` | *the `precomputedRagSourceConfig` block* | `BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig` |
| `BedrockagentFlowDefinitionConnectionConfiguration` | `conditionalOrData` | *the `configuration` block* | `BedrockagentFlowDefinitionConnectionConfiguration` |
| `BedrockagentFlowDefinitionNodeConfiguration` | `agentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage` | *the `configuration` block* | `BedrockagentFlowDefinitionNodeConfiguration` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfiguration` | `inlineOrResource` | *the `sourceConfiguration` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfiguration` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration` | `chatOrText` | *the `templateConfiguration` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent` | `cachePointOrText` | *the `content` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem` | `cachePointOrText` | *the `system` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool` | `cachePointOrToolSpec` | *the `tool` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool` |
| `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice` | `anyOrAutoOrTool` | *the `toolChoice` block* | `BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice` |
| `BedrockagentPromptVariant` | `genAiResourceOrModelId` | `model` | `BedrockagentPromptVariantModel` |
| `BedrockagentPromptVariantTemplateConfiguration` | `chatOrText` | *the `templateConfiguration` block* | `BedrockagentPromptVariantTemplateConfiguration` |
| `BedrockagentPromptVariantTemplateConfigurationChatMessageContent` | `cachePointOrText` | *the `content` block* | `BedrockagentPromptVariantTemplateConfigurationChatMessageContent` |
| `BedrockagentPromptVariantTemplateConfigurationChatSystem` | `cachePointOrText` | *the `system` block* | `BedrockagentPromptVariantTemplateConfigurationChatSystem` |
| `BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool` | `cachePointOrToolSpec` | *the `tool` block* | `BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool` |
| `BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice` | `anyOrAutoOrTool` | *the `toolChoice` block* | `BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice` |
| `BedrockagentcoreEvaluatorEvaluatorConfig` | `codeBasedOrLlmAsAJudge` | *the `evaluatorConfig` block* | `BedrockagentcoreEvaluatorEvaluatorConfig` |
| `BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale` | `categoricalOrNumerical` | *the `ratingScale` block* | `BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale` |
| `BedrockagentcoreGatewayRuleAction` | `configurationBundleOrRouteToTarget` | *the `action` block* | `BedrockagentcoreGatewayRuleAction` |
| `BedrockagentcoreGatewayRuleActionConfigurationBundle` | `staticOverrideOrWeightedOverride` | *the `configurationBundle` block* | `BedrockagentcoreGatewayRuleActionConfigurationBundle` |
| `BedrockagentcoreGatewayRuleActionRouteToTarget` | `staticRouteOrWeightedRoute` | *the `routeToTarget` block* | `BedrockagentcoreGatewayRuleActionRouteToTarget` |
| `BedrockagentcoreGatewayRuleCondition` | `matchPathsOrMatchPrincipals` | *the `condition` block* | `BedrockagentcoreGatewayRuleCondition` |
| `CloudwatchEventConnectionAuthParameters` | `apiKeyOrBasicOrOauth` | `auth` | `CloudwatchEventConnectionAuthParametersAuth` |
| `CognitoManagedUserPoolClientAnalyticsConfiguration` | `applicationArnOrApplicationId` | `application` | `CognitoManagedUserPoolClientAnalyticsConfigurationApplication` |
| `CognitoUserPoolClientAnalyticsConfiguration` | `applicationArnOrApplicationId` | `application` | `CognitoUserPoolClientAnalyticsConfigurationApplication` |
| `ComprehendDocumentClassifierInputDataConfig` | `augmentedManifestsOrS3Uri` | `source` | `ComprehendDocumentClassifierInputDataConfigSource` |
| `ComprehendEntityRecognizerInputDataConfig` | `annotationsOrEntityList` | `labels` | `ComprehendEntityRecognizerInputDataConfigLabels` |
| `ComprehendEntityRecognizerInputDataConfig` | `augmentedManifestsOrDocuments` | `source` | `ComprehendEntityRecognizerInputDataConfigSource` |
| `DatasyncLocationFsxOntapFileSystemProtocol` | `nfsOrSmb` | *the `protocol` block* | `DatasyncLocationFsxOntapFileSystemProtocol` |
| `EbsSnapshotImportDiskContainer` | `urlOrUserBucket` | `source` | `EbsSnapshotImportDiskContainerSource` |
| `EksNodeGroupUpdateConfig` | `maxUnavailableOrMaxUnavailablePercentage` | `maxUnavailable` | `EksNodeGroupUpdateConfigMaxUnavailable` |
| `EmrcontainersJobTemplateJobTemplateDataJobDriver` | `sparkSqlJobDriverOrSparkSubmitJobDriver` | *the `jobDriver` block* | `EmrcontainersJobTemplateJobTemplateDataJobDriver` |
| `GlueCatalogTableStorageDescriptorSchemaReference` | `schemaIdOrSchemaVersionId` | `schema` | `GlueCatalogTableStorageDescriptorSchemaReferenceSchema` |
| `GlueCatalogTableStorageDescriptorSchemaReferenceSchemaId` | `schemaArnOrSchemaName` | `schema` | `GlueCatalogTableStorageDescriptorSchemaReferenceSchemaIdSchema` |
| `InstanceCapacityReservationSpecification` | `capacityReservationPreferenceOrCapacityReservationTarget` | *the `capacityReservationSpecification` block* | `InstanceCapacityReservationSpecification` |
| `InstanceLaunchTemplate` | `idOrName` | `identifier` | `InstanceLaunchTemplateIdentifier` |
| `IvschatLoggingConfigurationDestinationConfiguration` | `cloudwatchLogsOrFirehoseOrS3` | *the `destinationConfiguration` block* | `IvschatLoggingConfigurationDestinationConfiguration` |
| `KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParameters` | `csvOrJson` | *the `mappingParameters` block* | `KinesisAnalyticsApplicationInputsSchemaRecordFormatMappingParameters` |
| `KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters` | `csvOrJson` | *the `mappingParameters` block* | `KinesisAnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters` |
| `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInput` | `kinesisFirehoseInputOrKinesisStreamsInput` | `kinesis` | `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesis` |
| `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters` | `csvMappingParametersOrJsonMappingParameters` | *the `mappingParameters` block* | `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters` |
| `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters` | `csvMappingParametersOrJsonMappingParameters` | *the `mappingParameters` block* | `Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters` |
| `LakeformationDataCellsFilterTableData` | `columnNamesOrColumnWildcard` | `column` | `LakeformationDataCellsFilterTableDataColumn` |
| `LakeformationDataCellsFilterTableDataRowFilter` | `allRowsWildcardOrFilterExpression` | *the `rowFilter` block* | `LakeformationDataCellsFilterTableDataRowFilter` |
| `LakeformationOptInResourceData` | `catalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns` | *the `resourceData` block* | `LakeformationOptInResourceData` |
| `M2ApplicationDefinition` | `contentOrS3Location` | *the `definition` block* | `M2ApplicationDefinition` |
| `M2EnvironmentStorageConfiguration` | `efsOrFsx` | *the `storageConfiguration` block* | `M2EnvironmentStorageConfiguration` |
| `MailmanagerRelayAuthentication` | `noAuthenticationOrSecretArn` | *the `authentication` block* | `MailmanagerRelayAuthentication` |
| `MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate` | `analysisOrAttributeOrIsInAddressList` | *the `evaluate` block* | `MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate` |
| `MailmanagerRuleSetRuleConditionStringExpressionEvaluate` | `analysisOrAttributeOrClientCertificateAttributeOrMimeHeaderAttribute` | *the `evaluate` block* | `MailmanagerRuleSetRuleConditionStringExpressionEvaluate` |
| `MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate` | `analysisOrAttribute` | *the `evaluate` block* | `MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate` |
| `MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate` | `analysisOrAttributeOrIsInAddressList` | *the `evaluate` block* | `MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate` |
| `MailmanagerRuleSetRuleUnlessStringExpressionEvaluate` | `analysisOrAttributeOrClientCertificateAttributeOrMimeHeaderAttribute` | *the `evaluate` block* | `MailmanagerRuleSetRuleUnlessStringExpressionEvaluate` |
| `MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate` | `analysisOrAttribute` | *the `evaluate` block* | `MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate` |
| `MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluate` | `analysisOrAttribute` | *the `evaluate` block* | `MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluate` |
| `MskReplicatorReplicationInfoList` | `sourceKafkaClusterArnOrSourceKafkaClusterId` | `sourceKafkaCluster` | `MskReplicatorReplicationInfoListSourceKafkaCluster` |
| `MskReplicatorReplicationInfoList` | `targetKafkaClusterArnOrTargetKafkaClusterId` | `targetKafkaCluster` | `MskReplicatorReplicationInfoListTargetKafkaCluster` |
| `MskconnectConnectorCapacity` | `autoscalingOrProvisionedCapacity` | *the `capacity` block* | `MskconnectConnectorCapacity` |
| `PrometheusAnomalyDetectorMissingDataAction` | `markAsAnomalyOrSkip` | *the `missingDataAction` block* | `PrometheusAnomalyDetectorMissingDataAction` |
| `RdsClusterRestoreToPointInTime` | `sourceClusterIdentifierOrSourceClusterResourceId` | `sourceCluster` | `RdsClusterRestoreToPointInTimeSourceCluster` |
| `RdsClusterRestoreToPointInTime` | `restoreToTimeOrUseLatestRestorableTime` | `target` | `RdsClusterRestoreToPointInTimeTarget` |
| `RedshiftScheduledActionTargetAction` | `pauseClusterOrResizeClusterOrResumeCluster` | *the `targetAction` block* | `RedshiftScheduledActionTargetAction` |
| `S3BucketLoggingTargetObjectKeyFormat` | `partitionedPrefixOrSimplePrefix` | *the `targetObjectKeyFormat` block* | `S3BucketLoggingTargetObjectKeyFormat` |
| `S3BucketWebsite` | `indexDocumentOrRedirectAllRequestsTo` | `mode` | `S3BucketWebsiteMode` |
| `SagemakerEndpointDeploymentConfig` | `blueGreenUpdatePolicyOrRollingUpdatePolicy` | `updatePolicy` | `SagemakerEndpointDeploymentConfigUpdatePolicy` |
| `SagemakerWorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints` | `sourceIpOrVpcSourceIp` | *the `iamPolicyConstraints` block* | `SagemakerWorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints` |
| `SecretsmanagerSecretRotationRotationRules` | `automaticallyAfterDaysOrScheduleExpression` | `schedule` | `SecretsmanagerSecretRotationRotationRulesSchedule` |
| `SecurityhubConnectorV2ConnectorProvider` | `jiraCloudOrServiceNow` | *the `connectorProvider` block* | `SecurityhubConnectorV2ConnectorProvider` |
| `ServicecatalogProductProvisioningArtifactParameters` | `templatePhysicalIdOrTemplateUrl` | `template` | `ServicecatalogProductProvisioningArtifactParametersTemplate` |
| `ServicecatalogProvisionedProductStackSetProvisioningPreferences` | `failureToleranceCountOrFailureTolerancePercentage` | `failureTolerance` | `ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance` |
| `ServicecatalogProvisionedProductStackSetProvisioningPreferences` | `maxConcurrencyCountOrMaxConcurrencyPercentage` | `maxConcurrency` | `ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency` |
| `Sesv2ConfigurationSetEventDestinationEventDestination` | `cloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination` | `target` | `Sesv2ConfigurationSetEventDestinationEventDestinationTarget` |
| `SpotInstanceRequestCapacityReservationSpecification` | `capacityReservationPreferenceOrCapacityReservationTarget` | *the `capacityReservationSpecification` block* | `SpotInstanceRequestCapacityReservationSpecification` |
| `SpotInstanceRequestLaunchTemplate` | `idOrName` | `identifier` | `SpotInstanceRequestLaunchTemplateIdentifier` |
| `VpclatticeListenerRuleAction` | `fixedResponseOrForward` | *the `action` block* | `VpclatticeListenerRuleAction` |
| `VpclatticeResourceConfigurationResourceConfigurationDefinition` | `arnResourceOrDnsResourceOrIpResource` | *the `resourceConfigurationDefinition` block* | `VpclatticeResourceConfigurationResourceConfigurationDefinition` |
| `WorkspaceswebSessionLoggerEventFilter` | `allOrInclude` | *the `eventFilter` block* | `WorkspaceswebSessionLoggerEventFilter` |

</details>

Every other derived sealed argument is new in this release; it replaces the
separate optional member arguments you set in 0.30 (see the per-lane
sections below). Each group, by class:

<details><summary><code>google</code> (106 groups)</summary>

| Class | Member arguments | Sealed argument | Sealed type |
|---|---|---|---|
| `AgentIdentityAuthProviderAuthProviderTypeParams` | `apiKey`, `threeLeggedOauth`, `twoLeggedOauth` | *the `authProviderTypeParams` block* | `AgentIdentityAuthProviderAuthProviderTypeParams` |
| `BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig` | `dcrExchangeConfig`, `defaultExchangeConfig` | *the `sharingEnvironmentConfig` block* | `BigqueryAnalyticsHubDataExchangeSharingEnvironmentConfig` |
| `BigqueryAnalyticsHubListingBigqueryDatasetSelectedResources` | `routine`, `table` | *the `selectedResources` block* | `BigqueryAnalyticsHubListingBigqueryDatasetSelectedResources` |
| `BillingBudgetAmount` | `lastPeriodAmount`, `specifiedAmount` | *the `amount` block* | `BillingBudgetAmount` |
| `CesToolDataStoreTool` | `dataStoreSource`, `engineSource` | `source` | `CesToolDataStoreToolSource` |
| `ChronicleFeedDetails` | `amazonKinesisFirehoseSettings`, `amazonS3Settings`, `amazonS3V2Settings`, `amazonSqsSettings`, `amazonSqsV2Settings`, `anomaliSettings`, `awsEc2HostsSettings`, `awsEc2InstancesSettings`, `awsEc2VpcsSettings`, `awsIamSettings`, `azureAdAuditSettings`, `azureAdContextSettings`, `azureAdSettings`, `azureBlobStoreSettings`, `azureBlobStoreV2Settings`, `azureEventHubSettings`, `azureMdmIntuneSettings`, `cloudPassageSettings`, `cortexXdrSettings`, `crowdstrikeAlertsSettings`, `crowdstrikeDetectsSettings`, `dummyLogTypeSettings`, `duoAuthSettings`, `duoUserContextSettings`, `foxItStixSettings`, `gcsSettings`, `gcsV2Settings`, `googleCloudIdentityDeviceUsersSettings`, `googleCloudIdentityDevicesSettings`, `googleCloudStorageEventDrivenSettings`, `httpSettings`, `httpsPushAmazonKinesisFirehoseSettings`, `httpsPushGoogleCloudPubsubSettings`, `httpsPushWebhookSettings`, `impervaWafSettings`, `mandiantIocSettings`, `microsoftGraphAlertSettings`, `microsoftSecurityCenterAlertSettings`, `mimecastMailSettings`, `mimecastMailV2Settings`, `netskopeAlertSettings`, `netskopeAlertV2Settings`, `office365Settings`, `oktaSettings`, `oktaUserContextSettings`, `panIocSettings`, `panPrismaCloudSettings`, `proofpointMailSettings`, `proofpointOnDemandSettings`, `pubsubSettings`, `qualysScanSettings`, `qualysVmSettings`, `rapid7InsightSettings`, `recordedFutureIocSettings`, `rhIsacIocSettings`, `salesforceSettings`, `sentineloneAlertSettings`, `serviceNowCmdbSettings`, `sftpSettings`, `symantecEventExportSettings`, `thinkstCanarySettings`, `threatConnectIocSettings`, `threatConnectIocV3Settings`, `trellixHxAlertsSettings`, `trellixHxBulkAcqsSettings`, `trellixHxHostsSettings`, `webhookSettings`, `workdaySettings`, `workspaceActivitySettings`, `workspaceAlertsSettings`, `workspaceChromeOsSettings`, `workspaceGroupsSettings`, `workspaceMobileSettings`, `workspacePrivilegesSettings`, `workspaceUsersSettings` | `source` | `ChronicleFeedDetailsSource` |
| `CloudRunServiceTemplateSpecContainersLivenessProbe` | `grpc`, `httpGet` | `check` | `CloudRunServiceTemplateSpecContainersLivenessProbeCheck` |
| `CloudRunServiceTemplateSpecContainersReadinessProbe` | `grpc`, `httpGet` | `check` | `CloudRunServiceTemplateSpecContainersReadinessProbeCheck` |
| `CloudRunServiceTemplateSpecContainersStartupProbe` | `grpc`, `httpGet`, `tcpSocket` | `check` | `CloudRunServiceTemplateSpecContainersStartupProbeCheck` |
| `CloudRunV2WorkerPoolBinaryAuthorization` | `policy`, `useDefault` | `policy` | `CloudRunV2WorkerPoolBinaryAuthorizationPolicy` |
| `CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig` | `existingTargetResource`, `targetResourceCreationConfig` | *the `targetResourceConfig` block* | `CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig` |
| `CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig` | `folderCreationConfig`, `projectCreationConfig` | *the `targetResourceCreationConfig` block* | `CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig` |
| `ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModules` | `git`, `googleCloudBuildRepo`, `googleCloudStorage` | `source` | `ClouddeployCustomTargetTypeCustomActionsIncludeSkaffoldModulesSource` |
| `ColabNotebookExecutionWorkbenchRuntimeVmImage` | `family`, `name` | `selector` | `ColabNotebookExecutionWorkbenchRuntimeVmImageSelector` |
| `ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput` | `name`, `predefinedRolloutPlan` | `plan` | `ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInputPlan` |
| `ComputeReservationSpecificReservation` | `instanceProperties`, `sourceInstanceTemplate` | `instanceSpec` | `ComputeReservationSpecificReservationInstanceSpec` |
| `ContactCenterInsightsAssessmentRuleSampleRule` | `samplePercentage`, `sampleRow` | `amount` | `ContactCenterInsightsAssessmentRuleSampleRuleAmount` |
| `DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTagsTagFilters` | `namespacedTagKey`, `namespacedTagValue` | *the `tagFilters` block* | `DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTagsTagFilters` |
| `DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetworks` | `expireTime`, `ttl` | `expiration` | `DatabaseMigrationServiceConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetworksExpiration` |
| `DatabaseMigrationServiceConnectionProfileOracle` | `forwardSshConnectivity`, `privateConnectivity`, `staticServiceIpConnectivity` | `connectivity` | `DatabaseMigrationServiceConnectionProfileOracleConnectivity` |
| `DatabaseMigrationServiceConnectionProfileOracleForwardSshConnectivity` | `password`, `privateKey` | `credential` | `DatabaseMigrationServiceConnectionProfileOracleForwardSshConnectivityCredential` |
| `DataplexDatascanData` | `entity`, `resource` | *the `data` block* | `DataplexDatascanData` |
| `DataplexDatascanExecutionIdentity` | `dataplexServiceAgent`, `serviceAccount`, `userCredential` | *the `executionIdentity` block* | `DataplexDatascanExecutionIdentity` |
| `DataplexDatascanExecutionSpecTrigger` | `onDemand`, `oneTime`, `schedule` | *the `trigger` block* | `DataplexDatascanExecutionSpecTrigger` |
| `DataprocBatchEnvironmentConfigExecutionConfig` | `networkUri`, `subnetworkUri` | `network` | `DataprocBatchEnvironmentConfigExecutionConfigNetwork` |
| `DatastreamConnectionProfileForwardSshConnectivity` | `password`, `privateKey` | `credential` | `DatastreamConnectionProfileForwardSshConnectivityCredential` |
| `DatastreamStreamDestinationConfig` | `bigqueryDestinationConfig`, `gcsDestinationConfig` | `system` | `DatastreamStreamDestinationConfigSystem` |
| `DatastreamStreamDestinationConfigBigqueryDestinationConfig` | `singleTargetDataset`, `sourceHierarchyDatasets` | `dataset` | `DatastreamStreamDestinationConfigBigqueryDestinationConfigDataset` |
| `DatastreamStreamDestinationConfigBigqueryDestinationConfig` | `appendOnly`, `merge` | `writeMode` | `DatastreamStreamDestinationConfigBigqueryDestinationConfigWriteMode` |
| `DatastreamStreamDestinationConfigGcsDestinationConfig` | `avroFileFormat`, `jsonFileFormat` | `fileFormat` | `DatastreamStreamDestinationConfigGcsDestinationConfigFileFormat` |
| `DatastreamStreamSourceConfig` | `mongodbSourceConfig`, `mysqlSourceConfig`, `oracleSourceConfig`, `postgresqlSourceConfig`, `salesforceSourceConfig`, `spannerSourceConfig`, `sqlServerSourceConfig` | `system` | `DatastreamStreamSourceConfigSystem` |
| `DatastreamStreamSourceConfigMysqlSourceConfig` | `binaryLogPosition`, `gtid` | `cdcMethod` | `DatastreamStreamSourceConfigMysqlSourceConfigCdcMethod` |
| `DialogflowCxTestCaseTestConfig` | `flow`, `page` | `start` | `DialogflowCxTestCaseTestConfigStart` |
| `DiscoveryEngineChatEngineChatEngineConfig` | `agentCreationConfig`, `dialogflowAgentToLink` | `agent` | `DiscoveryEngineChatEngineChatEngineConfigAgent` |
| `GkeBackupBackupPlanBackupConfig` | `allNamespaces`, `selectedApplications`, `selectedNamespaceLabels`, `selectedNamespaces` | `scope` | `GkeBackupBackupPlanBackupConfigScope` |
| `GkeHubScopeRbacRoleBindingRole` | `customRole`, `predefinedRole` | *the `role` block* | `GkeHubScopeRbacRoleBindingRole` |
| `GkeonpremBareMetalClusterLoadBalancer` | `bgpLbConfig`, `manualLbConfig`, `metalLbConfig` | `lbConfig` | `GkeonpremBareMetalClusterLoadBalancerLbConfig` |
| `GkeonpremVmwareAdminClusterLoadBalancer` | `f5Config`, `manualLbConfig`, `metalLbConfig` | `lbConfig` | `GkeonpremVmwareAdminClusterLoadBalancerLbConfig` |
| `GkeonpremVmwareAdminClusterNetworkConfig` | `dhcpIpConfig`, `staticIpConfig` | `ipConfig` | `GkeonpremVmwareAdminClusterNetworkConfigIpConfig` |
| `GkeonpremVmwareClusterLoadBalancer` | `f5Config`, `manualLbConfig`, `metalLbConfig` | `lbConfig` | `GkeonpremVmwareClusterLoadBalancerLbConfig` |
| `GkeonpremVmwareClusterNetworkConfig` | `dhcpIpConfig`, `staticIpConfig` | `ipConfig` | `GkeonpremVmwareClusterNetworkConfigIpConfig` |
| `GoogleAccessContextManagerAccessLevel` | `basic`, `custom` | `definition` | `AccessContextManagerAccessLevelDefinition` |
| `GoogleApigeeSecurityAction` | `expireTime`, `ttl` | `expiration` | `ApigeeSecurityActionExpiration` |
| `GoogleArtifactRegistryRepository` | `remoteRepositoryConfig`, `virtualRepositoryConfig` | `repositoryConfig` | `ArtifactRegistryRepositoryConfig` |
| `GoogleBigqueryAnalyticsHubListing` | `bigqueryDataset`, `pubsubTopic` | `source` | `BigqueryAnalyticsHubListingSource` |
| `GoogleBigqueryDatasetAccess` | `dataset`, `domain`, `groupByEmail`, `iamMember`, `routine`, `specialGroup`, `userByEmail`, `view` | `grantee` | `BigqueryDatasetAccessGrantee` |
| `GoogleChronicleParserExtension` | `cbnSnippet`, `dynamicParsing`, `fieldExtractors` | `definition` | `ChronicleParserExtensionDefinition` |
| `GoogleCloudbuildv2Connection` | `bitbucketCloudConfig`, `bitbucketDataCenterConfig`, `githubConfig`, `githubEnterpriseConfig`, `gitlabConfig` | `host` | `Cloudbuildv2ConnectionHost` |
| `GoogleClouddeployCustomTargetType` | `customActions`, `tasks` | `actions` | `ClouddeployCustomTargetTypeActions` |
| `GoogleComputeNodeTemplate` | `nodeType`, `nodeTypeFlexibility` | `nodeType` | `ComputeNodeTemplateNodeType` |
| `GoogleComputeRegionTargetHttpsProxy` | `certificateManagerCertificates`, `sslCertificates` | `certificates` | `ComputeRegionTargetHttpsProxyCertificates` |
| `GoogleComputeRegionUrlMap` | `defaultRouteAction`, `defaultUrlRedirect` | `defaultAction` | `ComputeRegionUrlMapDefaultAction` |
| `GoogleComputeTargetHttpsProxy` | `certificateManagerCertificates`, `sslCertificates` | `certificates` | `ComputeTargetHttpsProxyCertificates` |
| `GoogleComputeUrlMap` | `defaultRouteAction`, `defaultUrlRedirect` | `defaultAction` | `ComputeUrlMapDefaultAction` |
| `GoogleComputeVpnTunnel` | `peerExternalGateway`, `peerGcpGateway` | `peer` | `ComputeVpnTunnelPeer` |
| `GoogleDatabaseMigrationServiceMigrationJob` | `reverseSshConnectivity`, `staticIpConnectivity`, `vpcPeeringConnectivity` | `connectivity` | `DatabaseMigrationServiceMigrationJobConnectivity` |
| `GoogleDatastreamConnectionProfile` | `forwardSshConnectivity`, `privateConnectivity` | `connectivity` | `DatastreamConnectionProfileConnectivity` |
| `GoogleDialogflowCxSecuritySettings` | `retentionStrategy`, `retentionWindowDays` | `retention` | `DialogflowCxSecuritySettingsRetention` |
| `GoogleFirebaseAppHostingTraffic` | `rolloutPolicy`, `target` | `routing` | `FirebaseAppHostingTrafficRouting` |
| `GoogleHealthcarePipelineJob` | `backfillPipelineJob`, `mappingPipelineJob`, `reconciliationPipelineJob` | `task` | `HealthcarePipelineJobTask` |
| `GoogleLoggingSavedQuery` | `loggingQuery`, `opsAnalyticsQuery` | `definition` | `LoggingSavedQueryDefinition` |
| `GoogleMemorystoreInstance` | `gcsSource`, `managedBackupSource` | `source` | `MemorystoreInstanceSource` |
| `GoogleMonitoringSlo` | `calendarPeriod`, `rollingPeriodDays` | `period` | `MonitoringSloPeriod` |
| `GoogleNetworkConnectivityPolicyBasedRoute` | `interconnectAttachment`, `virtualMachine` | `scope` | `NetworkConnectivityPolicyBasedRouteScope` |
| `GoogleNetworkSecuritySecurityProfile` | `customInterceptProfile`, `customMirroringProfile`, `threatPreventionProfile`, `urlFilteringProfile` | `settings` | `NetworkSecuritySecurityProfileSettings` |
| `GoogleNetworkServicesGateway` | `allPorts`, `ports` | `ports` | `NetworkServicesGatewayPorts` |
| `GooglePrivatecaCertificate` | `config`, `pemCsr` | `request` | `PrivatecaCertificateRequest` |
| `GooglePubsubSubscription` | `bigqueryConfig`, `cloudStorageConfig`, `pushConfig` | `delivery` | `PubsubSubscriptionDelivery` |
| `GoogleSpannerInstancePartition` | `autoscalingConfig`, `nodeCount`, `processingUnits` | `capacity` | `SpannerInstancePartitionCapacity` |
| `GoogleVertexAiIndexEndpoint` | `network`, `privateServiceConnectConfig` | `connectivity` | `VertexAiIndexEndpointConnectivity` |
| `GoogleVertexAiRagCorpus` | `vectorDbConfig`, `vertexAiSearchConfig` | `backend` | `VertexAiRagCorpusBackend` |
| `GoogleVpcAccessConnector` | `maxInstances`, `maxThroughput` | `maxCapacity` | `VpcAccessConnectorMaxCapacity` |
| `GoogleVpcAccessConnector` | `minInstances`, `minThroughput` | `minCapacity` | `VpcAccessConnectorMinCapacity` |
| `HealthcarePipelineJobMappingPipelineJob` | `fhirStoreDestination`, `reconciliationDestination` | `destination` | `HealthcarePipelineJobMappingPipelineJobDestination` |
| `IntegrationsAuthConfigDecryptedCredential` | `authToken`, `jwt`, `oauth2AuthorizationCode`, `oauth2ClientCredentials`, `oidcToken`, `serviceAccountCredentials`, `usernameAndPassword` | `secret` | `IntegrationsAuthConfigDecryptedCredentialSecret` |
| `ModelArmorTemplateFilterConfigSdpSettings` | `advancedConfig`, `basicConfig` | *the `sdpSettings` block* | `ModelArmorTemplateFilterConfigSdpSettings` |
| `ModelArmorTemplateTemplateMetadataFilterVersionSelector` | `alias`, `version` | *the `filterVersionSelector` block* | `ModelArmorTemplateTemplateMetadataFilterVersionSelector` |
| `NetappVolumeRestoreParameters` | `sourceBackup`, `sourceSnapshot` | *the `restoreParameters` block* | `NetappVolumeRestoreParameters` |
| `NetworkServicesHttpRouteRulesMatches` | `fullPathMatch`, `prefixMatch`, `regexMatch` | `match` | `NetworkServicesHttpRouteRulesMatchesMatch` |
| `NetworkServicesHttpRouteRulesMatchesHeaders` | `exactMatch`, `prefixMatch`, `presentMatch`, `rangeMatch`, `regexMatch`, `suffixMatch` | `match` | `NetworkServicesHttpRouteRulesMatchesHeadersMatch` |
| `NetworkServicesHttpRouteRulesMatchesQueryParameters` | `exactMatch`, `presentMatch`, `regexMatch` | `match` | `NetworkServicesHttpRouteRulesMatchesQueryParametersMatch` |
| `OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfig` | `gcsObject`, `localPath` | `script` | `OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigScript` |
| `OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfig` | `gcsObject`, `localPath` | `script` | `OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigScript` |
| `OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfig` | `gcsObject`, `localPath` | `script` | `OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigScript` |
| `OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfig` | `gcsObject`, `localPath` | `script` | `OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigScript` |
| `OsConfigPatchDeploymentRolloutDisruptionBudget` | `fixed`, `percentage` | *the `disruptionBudget` block* | `OsConfigPatchDeploymentRolloutDisruptionBudget` |
| `PrivilegedAccessManagerEntitlementRequesterJustificationConfig` | `notMandatory`, `unstructured` | `requirement` | `PrivilegedAccessManagerEntitlementRequesterJustificationConfigRequirement` |
| `SpannerBackupScheduleEncryptionConfig` | `kmsKeyName`, `kmsKeyNames` | `kmsKeyName` | `SpannerBackupScheduleEncryptionConfigKmsKeyName` |
| `SpannerInstancePartitionAutoscalingConfigAutoscalingLimits` | `maxNodes`, `maxProcessingUnits` | `maxCapacity` | `SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxCapacity` |
| `SpannerInstancePartitionAutoscalingConfigAutoscalingLimits` | `minNodes`, `minProcessingUnits` | `minCapacity` | `SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinCapacity` |
| `StorageControlFolderIntelligenceConfigFilter` | `excludedCloudStorageBuckets`, `includedCloudStorageBuckets` | `cloudStorageBuckets` | `StorageControlFolderIntelligenceConfigFilterCloudStorageBuckets` |
| `StorageControlFolderIntelligenceConfigFilter` | `excludedCloudStorageLocations`, `includedCloudStorageLocations` | `cloudStorageLocations` | `StorageControlFolderIntelligenceConfigFilterCloudStorageLocations` |
| `StorageControlOrganizationIntelligenceConfigFilter` | `excludedCloudStorageBuckets`, `includedCloudStorageBuckets` | `cloudStorageBuckets` | `StorageControlOrganizationIntelligenceConfigFilterCloudStorageBuckets` |
| `StorageControlOrganizationIntelligenceConfigFilter` | `excludedCloudStorageLocations`, `includedCloudStorageLocations` | `cloudStorageLocations` | `StorageControlOrganizationIntelligenceConfigFilterCloudStorageLocations` |
| `StorageControlProjectIntelligenceConfigFilter` | `excludedCloudStorageBuckets`, `includedCloudStorageBuckets` | `cloudStorageBuckets` | `StorageControlProjectIntelligenceConfigFilterCloudStorageBuckets` |
| `StorageControlProjectIntelligenceConfigFilter` | `excludedCloudStorageLocations`, `includedCloudStorageLocations` | `cloudStorageLocations` | `StorageControlProjectIntelligenceConfigFilterCloudStorageLocations` |
| `VertexAiFeaturestoreOnlineServingConfig` | `fixedNodeCount`, `scaling` | *the `onlineServingConfig` block* | `VertexAiFeaturestoreOnlineServingConfig` |
| `VertexAiIndexMetadataConfigAlgorithmConfig` | `bruteForceConfig`, `treeAhConfig` | *the `algorithmConfig` block* | `VertexAiIndexMetadataConfigAlgorithmConfig` |
| `VertexAiRagCorpusVectorDbConfig` | `pinecone`, `ragManagedDb`, `vertexVectorSearch` | `backend` | `VertexAiRagCorpusVectorDbConfigBackend` |
| `VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfig` | `apiKeySecretVersion`, `apiKeyString` | *the `apiKeyConfig` block* | `VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfig` |
| `VertexAiRagCorpusVectorDbConfigRagManagedDb` | `ann`, `knn` | *the `ragManagedDb` block* | `VertexAiRagCorpusVectorDbConfigRagManagedDb` |
| `VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopics` | `customMemoryTopic`, `managedMemoryTopic` | *the `memoryTopics` block* | `VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopics` |
| `VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfig` | `defaultTtl`, `granularTtlConfig` | `policy` | `VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigPolicy` |
| `VertexAiReasoningEngineSpec` | `containerSpec`, `sourceCodeSpec` | `deployment` | `VertexAiReasoningEngineSpecDeployment` |
| `VertexAiReasoningEngineSpecSourceCodeSpec` | `imageSpec`, `pythonSpec` | `runtime` | `VertexAiReasoningEngineSpecSourceCodeSpecRuntime` |
| `WorkbenchInstanceGceSetup` | `containerImage`, `vmImage` | `image` | `WorkbenchInstanceGceSetupImage` |

</details>

<details><summary><code>google_beta</code> (6 groups)</summary>

| Class | Member arguments | Sealed argument | Sealed type |
|---|---|---|---|
| `GoogleApiGatewayApiConfig` | `grpcServices`, `openapiDocuments` | `spec` | `ApiGatewayApiConfigSpec` |
| `GoogleComputeRegionNetworkPolicyTrafficClassificationRule` | `targetSecureTags`, `targetServiceAccounts` | `target` | `ComputeRegionNetworkPolicyTrafficClassificationRuleTarget` |
| `GoogleFirebaseHostingChannel` | `expireTime`, `ttl` | `expiration` | `FirebaseHostingChannelExpiration` |
| `GoogleTpuV2Vm` | `acceleratorConfig`, `acceleratorType` | `accelerator` | `TpuV2VmAccelerator` |
| `GoogleTpuV2Vm` | `networkConfig`, `networkConfigs` | `network` | `TpuV2VmNetwork` |
| `PrivilegedAccessManagerSettingsEmailNotificationSettings` | `customNotificationBehavior`, `disableAllNotifications` | *the `emailNotificationSettings` block* | `PrivilegedAccessManagerSettingsEmailNotificationSettings` |

</details>

<details><summary><code>aws</code> (232 groups)</summary>

| Class | Member arguments | Sealed argument | Sealed type |
|---|---|---|---|
| `AccessanalyzerAnalyzerConfiguration` | `internalAccess`, `unusedAccess` | *the `configuration` block* | `AccessanalyzerAnalyzerConfiguration` |
| `AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration` | `customizedMetricSpecification`, `predefinedMetricSpecification` | `metricSpecification` | `AppautoscalingPolicyTargetTrackingScalingPolicyConfigurationMetricSpecification` |
| `AppmeshVirtualNodeSpecServiceDiscovery` | `awsCloudMap`, `dns` | *the `serviceDiscovery` block* | `AppmeshVirtualNodeSpecServiceDiscovery` |
| `AppmeshVirtualServiceSpecProvider` | `virtualNode`, `virtualRouter` | *the `provider` block* | `AppmeshVirtualServiceSpecProvider` |
| `AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget` | `capacityReservationIds`, `capacityReservationResourceGroupArns` | *the `capacityReservationTarget` block* | `AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget` |
| `AutoscalingGroupLaunchTemplate` | `id`, `name` | `identifier` | `AutoscalingGroupLaunchTemplateIdentifier` |
| `AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification` | `customizedScalingMetricSpecification`, `predefinedScalingMetricSpecification` | `scalingMetricSpecification` | `AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationScalingMetricSpecification` |
| `AutoscalingPolicyTargetTrackingConfiguration` | `customizedMetricSpecification`, `predefinedMetricSpecification` | `metricSpecification` | `AutoscalingPolicyTargetTrackingConfigurationMetricSpecification` |
| `AutoscalingplansScalingPlanApplicationSource` | `cloudformationStackArn`, `tagFilter` | `selector` | `AutoscalingplansScalingPlanApplicationSourceSelector` |
| `AwsAlb` | `name`, `namePrefix` | `name` | `AlbName` |
| `AwsAlbTargetGroup` | `name`, `namePrefix` | `name` | `AlbTargetGroupName` |
| `AwsAppsyncResolver` | `dataSource`, `pipelineConfig` | `backend` | `AppsyncResolverBackend` |
| `AwsArczonalshiftZonalAutoshiftConfiguration` | `allowedWindows`, `blockedWindows` | `windows` | `ArczonalshiftZonalAutoshiftConfigurationWindows` |
| `AwsAutoscalingGroup` | `name`, `namePrefix` | `name` | `AutoscalingGroupName` |
| `AwsAutoscalingGroup` | `availabilityZones`, `vpcZoneIdentifier` | `placement` | `AutoscalingGroupPlacement` |
| `AwsAutoscalingPolicy` | `scalingAdjustment`, `stepAdjustment` | `adjustment` | `AutoscalingPolicyAdjustment` |
| `AwsBatchComputeEnvironment` | `name`, `namePrefix` | `name` | `BatchComputeEnvironmentName` |
| `AwsBatchJobDefinition` | `containerProperties`, `ecsProperties`, `eksProperties`, `nodeProperties` | `properties` | `BatchJobDefinitionProperties` |
| `AwsBedrockagentAgentActionGroup` | `description`, `parentActionGroupSignature` | `definition` | `BedrockagentAgentActionGroupDefinition` |
| `AwsBudgetsBudget` | `costFilter`, `filterExpression` | `scope` | `BudgetsBudgetScope` |
| `AwsBudgetsBudget` | `costTypes`, `metrics` | `measure` | `BudgetsBudgetMeasure` |
| `AwsBudgetsBudget` | `name`, `namePrefix` | `name` | `BudgetsBudgetName` |
| `AwsCeAnomalyMonitor` | `monitorDimension`, `monitorSpecification` | `scope` | `CeAnomalyMonitorScope` |
| `AwsCloudformationStackInstances` | `accounts`, `deploymentTargets` | `targets` | `CloudformationStackInstancesTargets` |
| `AwsCloudformationStackSet` | `templateBody`, `templateUrl` | `template` | `CloudformationStackSetTemplate` |
| `AwsCloudformationStackSetInstance` | `region`, `stackSetInstanceRegion` | `targetRegion` | `CloudformationStackSetInstanceTargetRegion` |
| `AwsCloudformationStackSetInstance` | `accountId`, `deploymentTargets` | `target` | `CloudformationStackSetInstanceTarget` |
| `AwsCloudfrontPublicKey` | `name`, `namePrefix` | `name` | `CloudfrontPublicKeyName` |
| `AwsCloudtrail` | `advancedEventSelector`, `eventSelector` | `selectors` | `CloudtrailSelectors` |
| `AwsCloudwatchEventRule` | `name`, `namePrefix` | `name` | `CloudwatchEventRuleName` |
| `AwsCloudwatchEventRule` | `isEnabled`, `state` | `status` | `CloudwatchEventRuleStatus` |
| `AwsCloudwatchEventTarget` | `input`, `inputPath`, `inputTransformer` | `input` | `CloudwatchEventTargetInput` |
| `AwsCloudwatchLogGroup` | `name`, `namePrefix` | `name` | `CloudwatchLogGroupName` |
| `AwsCloudwatchMetricAlarm` | `extendedStatistic`, `statistic` | `aggregation` | `CloudwatchMetricAlarmAggregation` |
| `AwsCloudwatchMetricAlarm` | `threshold`, `thresholdMetricId` | `threshold` | `CloudwatchMetricAlarmThreshold` |
| `AwsCloudwatchMetricStream` | `excludeFilter`, `includeFilter` | `filter` | `CloudwatchMetricStreamFilter` |
| `AwsCloudwatchMetricStream` | `name`, `namePrefix` | `name` | `CloudwatchMetricStreamName` |
| `AwsCodebuildWebhook` | `branchFilter`, `filterGroup` | `trigger` | `CodebuildWebhookTrigger` |
| `AwsCodeconnectionsConnection` | `hostArn`, `providerType` | `host` | `CodeconnectionsConnectionHost` |
| `AwsCodestarconnectionsConnection` | `hostArn`, `providerType` | `host` | `CodestarconnectionsConnectionHost` |
| `AwsCognitoUser` | `password`, `temporaryPassword` | `password` | `CognitoUserPassword` |
| `AwsCognitoUserPool` | `aliasAttributes`, `usernameAttributes` | `signInAttributes` | `CognitoUserPoolSignInAttributes` |
| `AwsComprehendDocumentClassifier` | `versionName`, `versionNamePrefix` | `versionName` | `ComprehendDocumentClassifierVersionName` |
| `AwsComprehendEntityRecognizer` | `versionName`, `versionNamePrefix` | `versionName` | `ComprehendEntityRecognizerVersionName` |
| `AwsConfigConfigurationAggregator` | `accountAggregationSource`, `organizationAggregationSource` | `aggregationSource` | `ConfigConfigurationAggregatorAggregationSource` |
| `AwsConfigOrganizationConformancePack` | `templateBody`, `templateS3Uri` | `template` | `ConfigOrganizationConformancePackTemplate` |
| `AwsConnectContactFlow` | `content`, `filename` | `content` | `ConnectContactFlowContent` |
| `AwsConnectContactFlowModule` | `content`, `filename` | `content` | `ConnectContactFlowModuleContent` |
| `AwsCustomerGateway` | `bgpAsn`, `bgpAsnExtended` | `bgpAsn` | `CustomerGatewayBgpAsn` |
| `AwsDatasyncLocationHdfs` | `kerberosKeytab`, `kerberosKeytabBase64` | `kerberosKeytab` | `DatasyncLocationHdfsKerberosKeytab` |
| `AwsDatasyncLocationHdfs` | `kerberosKrb5Conf`, `kerberosKrb5ConfBase64` | `kerberosKrb5Conf` | `DatasyncLocationHdfsKerberosKrb5Conf` |
| `AwsDbEventSubscription` | `name`, `namePrefix` | `name` | `DbEventSubscriptionName` |
| `AwsDbInstance` | `identifier`, `identifierPrefix` | `identifier` | `DbInstanceIdentifier` |
| `AwsDbInstance` | `manageMasterUserPassword`, `password`, `passwordWo` | `password` | `DbInstancePassword` |
| `AwsDbOptionGroup` | `name`, `namePrefix` | `name` | `DbOptionGroupName` |
| `AwsDbParameterGroup` | `name`, `namePrefix` | `name` | `DbParameterGroupName` |
| `AwsDbSubnetGroup` | `name`, `namePrefix` | `name` | `DbSubnetGroupName` |
| `AwsDmsReplicationTask` | `cdcStartPosition`, `cdcStartTime` | `cdcStart` | `DmsReplicationTaskCdcStart` |
| `AwsDocdbCluster` | `clusterIdentifier`, `clusterIdentifierPrefix` | `clusterIdentifier` | `DocdbClusterIdentifier` |
| `AwsDocdbCluster` | `manageMasterUserPassword`, `masterPassword`, `masterPasswordWo` | `masterPassword` | `DocdbClusterMasterPassword` |
| `AwsDocdbCluster` | `restoreToPointInTime`, `snapshotIdentifier` | `restoreSource` | `DocdbClusterRestoreSource` |
| `AwsDocdbClusterInstance` | `identifier`, `identifierPrefix` | `identifier` | `DocdbClusterInstanceIdentifier` |
| `AwsDocdbClusterParameterGroup` | `name`, `namePrefix` | `name` | `DocdbClusterParameterGroupName` |
| `AwsDocdbEventSubscription` | `name`, `namePrefix` | `name` | `DocdbEventSubscriptionName` |
| `AwsDocdbGlobalCluster` | `engine`, `sourceDbClusterIdentifier` | `source` | `DocdbGlobalClusterSource` |
| `AwsDocdbSubnetGroup` | `name`, `namePrefix` | `name` | `DocdbSubnetGroupName` |
| `AwsDynamodbTable` | `importTable`, `restoreBackupArn`, `restoreSourceName`, `restoreSourceTableArn` | `source` | `DynamodbTableSource` |
| `AwsEc2SecondarySubnet` | `availabilityZone`, `availabilityZoneId` | `availabilityZone` | `Ec2SecondarySubnetAvailabilityZone` |
| `AwsEcsTaskSet` | `capacityProviderStrategy`, `launchType` | `compute` | `EcsTaskSetCompute` |
| `AwsEksNodeGroup` | `nodeGroupName`, `nodeGroupNamePrefix` | `nodeGroupName` | `EksNodeGroupName` |
| `AwsElasticBeanstalkEnvironment` | `platformArn`, `solutionStackName`, `templateName` | `platform` | `ElasticBeanstalkEnvironmentPlatform` |
| `AwsElasticacheReplicationGroup` | `authToken`, `authTokenWo`, `userGroupIds` | `auth` | `ElasticacheReplicationGroupAuth` |
| `AwsElasticacheReplicationGroup` | `nodeGroupConfiguration`, `preferredCacheClusterAzs` | `topology` | `ElasticacheReplicationGroupTopology` |
| `AwsElb` | `name`, `namePrefix` | `name` | `ElbName` |
| `AwsEmrCluster` | `configurations`, `configurationsJson` | `configurations` | `EmrClusterConfigurations` |
| `AwsEmrSecurityConfiguration` | `name`, `namePrefix` | `name` | `EmrSecurityConfigurationName` |
| `AwsFmsPolicy` | `resourceType`, `resourceTypeList` | `resourceType` | `FmsPolicyResourceType` |
| `AwsFsxWindowsFileSystem` | `activeDirectoryId`, `selfManagedActiveDirectory` | `activeDirectory` | `FsxWindowsFileSystemActiveDirectory` |
| `AwsGlueClassifier` | `csvClassifier`, `grokClassifier`, `jsonClassifier`, `xmlClassifier` | `format` | `GlueClassifierFormat` |
| `AwsGlueDevEndpoint` | `publicKey`, `publicKeys` | `publicKey` | `GlueDevEndpointPublicKey` |
| `AwsIamGroupPolicy` | `name`, `namePrefix` | `name` | `IamGroupPolicyName` |
| `AwsIamInstanceProfile` | `name`, `namePrefix` | `name` | `IamInstanceProfileName` |
| `AwsIamPolicy` | `name`, `namePrefix` | `name` | `IamPolicyName` |
| `AwsIamRole` | `name`, `namePrefix` | `name` | `IamRoleName` |
| `AwsIamRolePolicy` | `name`, `namePrefix` | `name` | `IamRolePolicyName` |
| `AwsIamServerCertificate` | `name`, `namePrefix` | `name` | `IamServerCertificateName` |
| `AwsIamUserPolicy` | `name`, `namePrefix` | `name` | `IamUserPolicyName` |
| `AwsInstance` | `hostResourceGroupArn`, `placementGroup` | `placement` | `InstancePlacement` |
| `AwsInstance` | `userData`, `userDataBase64` | `userData` | `InstanceUserData` |
| `AwsKeyPair` | `keyName`, `keyNamePrefix` | `keyName` | `KeyPairKeyName` |
| `AwsKinesisFirehoseDeliveryStream` | `kinesisSourceConfiguration`, `mskSourceConfiguration`, `serverSideEncryption` | `source` | `KinesisFirehoseDeliveryStreamSource` |
| `AwsKinesisStream` | `shardCount`, `warmThroughputMibPs` | `capacity` | `KinesisStreamCapacity` |
| `AwsKmsAlias` | `name`, `namePrefix` | `name` | `KmsAliasName` |
| `AwsLambdaEventSourceMapping` | `amazonManagedKafkaEventSourceConfig`, `selfManagedKafkaEventSourceConfig` | `managedKafkaEventSourceConfig` | `LambdaEventSourceMappingManagedKafkaEventSourceConfig` |
| `AwsLambdaPermission` | `statementId`, `statementIdPrefix` | `statementId` | `LambdaPermissionStatementId` |
| `AwsLaunchConfiguration` | `name`, `namePrefix` | `name` | `LaunchConfigurationName` |
| `AwsLaunchConfiguration` | `userData`, `userDataBase64` | `userData` | `LaunchConfigurationUserData` |
| `AwsLaunchTemplate` | `defaultVersion`, `updateDefaultVersion` | `defaultVersion` | `LaunchTemplateDefaultVersion` |
| `AwsLaunchTemplate` | `instanceRequirements`, `instanceType` | `instance` | `LaunchTemplateInstance` |
| `AwsLaunchTemplate` | `name`, `namePrefix` | `name` | `LaunchTemplateName` |
| `AwsLaunchTemplate` | `securityGroupNames`, `vpcSecurityGroupIds` | `securityGroups` | `LaunchTemplateSecurityGroups` |
| `AwsLb` | `name`, `namePrefix` | `name` | `LbName` |
| `AwsLbTargetGroup` | `name`, `namePrefix` | `name` | `LbTargetGroupName` |
| `AwsLbTrustStore` | `name`, `namePrefix` | `name` | `LbTrustStoreName` |
| `AwsLexIntent` | `conclusionStatement`, `followUpPrompt` | `closing` | `LexIntentClosing` |
| `AwsLightsailKeyPair` | `name`, `namePrefix` | `name` | `LightsailKeyPairName` |
| `AwsMacie2ClassificationJob` | `name`, `namePrefix` | `name` | `Macie2ClassificationJobName` |
| `AwsMacie2CustomDataIdentifier` | `name`, `namePrefix` | `name` | `Macie2CustomDataIdentifierName` |
| `AwsMacie2FindingsFilter` | `name`, `namePrefix` | `name` | `Macie2FindingsFilterName` |
| `AwsMemorydbAcl` | `name`, `namePrefix` | `name` | `MemorydbAclName` |
| `AwsMemorydbCluster` | `name`, `namePrefix` | `name` | `MemorydbClusterName` |
| `AwsMemorydbCluster` | `snapshotArns`, `snapshotName` | `snapshot` | `MemorydbClusterSnapshot` |
| `AwsMemorydbParameterGroup` | `name`, `namePrefix` | `name` | `MemorydbParameterGroupName` |
| `AwsMemorydbSnapshot` | `name`, `namePrefix` | `name` | `MemorydbSnapshotName` |
| `AwsMemorydbSubnetGroup` | `name`, `namePrefix` | `name` | `MemorydbSubnetGroupName` |
| `AwsNatGateway` | `secondaryPrivateIpAddressCount`, `secondaryPrivateIpAddresses` | `secondaryPrivateIpAddress` | `NatGatewaySecondaryPrivateIpAddress` |
| `AwsNeptuneCluster` | `clusterIdentifier`, `clusterIdentifierPrefix` | `clusterIdentifier` | `NeptuneClusterIdentifier` |
| `AwsNeptuneClusterInstance` | `identifier`, `identifierPrefix` | `identifier` | `NeptuneClusterInstanceIdentifier` |
| `AwsNeptuneClusterParameterGroup` | `name`, `namePrefix` | `name` | `NeptuneClusterParameterGroupName` |
| `AwsNeptuneEventSubscription` | `name`, `namePrefix` | `name` | `NeptuneEventSubscriptionName` |
| `AwsNeptuneParameterGroup` | `name`, `namePrefix` | `name` | `NeptuneParameterGroupName` |
| `AwsNeptuneSubnetGroup` | `name`, `namePrefix` | `name` | `NeptuneSubnetGroupName` |
| `AwsNeptunegraphGraph` | `graphName`, `graphNamePrefix` | `graphName` | `NeptunegraphGraphName` |
| `AwsNetworkInterface` | `ipv4PrefixCount`, `ipv4Prefixes` | `ipv4Prefix` | `NetworkInterfaceIpv4Prefix` |
| `AwsNetworkInterface` | `ipv6AddressCount`, `ipv6AddressList`, `ipv6Addresses` | `ipv6Address` | `NetworkInterfaceIpv6Address` |
| `AwsNetworkInterface` | `ipv6PrefixCount`, `ipv6Prefixes` | `ipv6Prefix` | `NetworkInterfaceIpv6Prefix` |
| `AwsNetworkmanagerCoreNetwork` | `basePolicyDocument`, `basePolicyRegions` | `basePolicy` | `NetworkmanagerCoreNetworkBasePolicy` |
| `AwsPinpointApp` | `name`, `namePrefix` | `name` | `PinpointAppName` |
| `AwsPipesPipe` | `name`, `namePrefix` | `name` | `PipesPipeName` |
| `AwsRbinRule` | `excludeResourceTags`, `resourceTags` | `tagFilter` | `RbinRuleTagFilter` |
| `AwsRdsCluster` | `clusterIdentifier`, `clusterIdentifierPrefix` | `clusterIdentifier` | `RdsClusterIdentifier` |
| `AwsRdsCluster` | `manageMasterUserPassword`, `masterPassword`, `masterPasswordWo` | `masterPassword` | `RdsClusterMasterPassword` |
| `AwsRdsClusterEndpoint` | `excludedMembers`, `staticMembers` | `members` | `RdsClusterEndpointMembers` |
| `AwsRdsClusterInstance` | `identifier`, `identifierPrefix` | `identifier` | `RdsClusterInstanceIdentifier` |
| `AwsRdsClusterParameterGroup` | `name`, `namePrefix` | `name` | `RdsClusterParameterGroupName` |
| `AwsRdsCustomDbEngineVersion` | `filename`, `manifest` | `manifest` | `RdsCustomDbEngineVersionManifest` |
| `AwsRedshiftCluster` | `manageMasterPassword`, `masterPassword`, `masterPasswordWo` | `masterPassword` | `RedshiftClusterMasterPassword` |
| `AwsRedshiftCluster` | `snapshotArn`, `snapshotIdentifier` | `snapshot` | `RedshiftClusterSnapshot` |
| `AwsRedshiftSnapshotSchedule` | `identifier`, `identifierPrefix` | `identifier` | `RedshiftSnapshotScheduleIdentifier` |
| `AwsRedshiftserverlessNamespace` | `adminUserPassword`, `adminUserPasswordWo`, `manageAdminPassword` | `adminPassword` | `RedshiftserverlessNamespaceAdminPassword` |
| `AwsRoute` | `carrierGatewayId`, `destinationIpv6CidrBlock` | `carrierIpv6` | `RouteCarrierIpv6` |
| `AwsRoute` | `destinationCidrBlock`, `egressOnlyGatewayId` | `ipv4Egress` | `RouteIpv4Egress` |
| `AwsRoute` | `destinationPrefixListId`, `vpcEndpointId` | `prefixListEndpoint` | `RoutePrefixListEndpoint` |
| `AwsRoute53Record` | `cidrRoutingPolicy`, `failoverRoutingPolicy`, `geolocationRoutingPolicy`, `geoproximityRoutingPolicy`, `latencyRoutingPolicy`, `multivalueAnswerRoutingPolicy`, `weightedRoutingPolicy` | `routingPolicy` | `Route53RecordRoutingPolicy` |
| `AwsRoute53Zone` | `delegationSetId`, `vpc` | `visibility` | `Route53ZoneVisibility` |
| `AwsS3Bucket` | `acl`, `grant` | `access` | `S3BucketAccess` |
| `AwsS3Bucket` | `bucket`, `bucketPrefix` | `name` | `S3BucketName` |
| `AwsS3BucketObject` | `content`, `contentBase64`, `source` | `body` | `S3BucketObjectBody` |
| `AwsS3BucketObject` | `etag`, `kmsKeyId` | `integrity` | `S3BucketObjectIntegrity` |
| `AwsS3Object` | `content`, `contentBase64`, `source` | `body` | `S3ObjectBody` |
| `AwsS3Object` | `etag`, `kmsKeyId` | `integrity` | `S3ObjectIntegrity` |
| `AwsS3ObjectCopy` | `acl`, `grant` | `access` | `S3ObjectCopyAccess` |
| `AwsSagemakerEndpointConfiguration` | `name`, `namePrefix` | `name` | `SagemakerEndpointConfigurationName` |
| `AwsSchedulerSchedule` | `name`, `namePrefix` | `name` | `SchedulerScheduleName` |
| `AwsSchedulerScheduleGroup` | `name`, `namePrefix` | `name` | `SchedulerScheduleGroupName` |
| `AwsSecretsmanagerSecret` | `name`, `namePrefix` | `name` | `SecretsmanagerSecretName` |
| `AwsSecretsmanagerSecretVersion` | `secretBinary`, `secretString`, `secretStringWo` | `secret` | `SecretsmanagerSecretVersionSecret` |
| `AwsSecurityGroup` | `name`, `namePrefix` | `name` | `SecurityGroupName` |
| `AwsServicecatalogProvisionedProduct` | `pathId`, `pathName` | `path` | `ServicecatalogProvisionedProductPath` |
| `AwsSesEventDestination` | `cloudwatchDestination`, `kinesisDestination`, `snsDestination` | `target` | `SesEventDestinationTarget` |
| `AwsSfnStateMachine` | `name`, `namePrefix` | `name` | `SfnStateMachineName` |
| `AwsShieldProtectionGroup` | `members`, `resourceType` | `scope` | `ShieldProtectionGroupScope` |
| `AwsSignerSigningProfile` | `name`, `namePrefix` | `name` | `SignerSigningProfileName` |
| `AwsSignerSigningProfilePermission` | `statementId`, `statementIdPrefix` | `statementId` | `SignerSigningProfilePermissionStatementId` |
| `AwsSpotInstanceRequest` | `hostResourceGroupArn`, `placementGroup`, `placementGroupId` | `placement` | `SpotInstanceRequestPlacement` |
| `AwsSpotInstanceRequest` | `userData`, `userDataBase64` | `userData` | `SpotInstanceRequestUserData` |
| `AwsSubnet` | `availabilityZone`, `availabilityZoneId` | `availabilityZone` | `SubnetAvailabilityZone` |
| `AwsSubnet` | `ipv6CidrBlock`, `ipv6NetmaskLength` | `ipv6` | `SubnetIpv6` |
| `AwsSwfDomain` | `name`, `namePrefix` | `name` | `SwfDomainName` |
| `AwsVpc` | `cidrBlock`, `ipv4NetmaskLength` | `ipv4Cidr` | `VpcIpv4Cidr` |
| `AwsVpcEndpoint` | `resourceConfigurationArn`, `serviceName`, `serviceNetworkArn` | `service` | `VpcEndpointService` |
| `AwsVpcIpamPoolCidr` | `cidr`, `netmaskLength` | `range` | `VpcIpamPoolCidrRange` |
| `AwsVpcIpamPoolCidrAllocation` | `cidr`, `netmaskLength` | `cidr` | `VpcIpamPoolCidrAllocationCidr` |
| `AwsWafv2IpSet` | `name`, `namePrefix` | `name` | `Wafv2IpSetName` |
| `AwsWafv2RegexPatternSet` | `name`, `namePrefix` | `name` | `Wafv2RegexPatternSetName` |
| `AwsWafv2RuleGroup` | `name`, `namePrefix` | `name` | `Wafv2RuleGroupName` |
| `AwsWafv2RuleGroup` | `rule`, `rulesJson` | `rules` | `Wafv2RuleGroupRules` |
| `AwsWafv2WebAcl` | `name`, `namePrefix` | `name` | `Wafv2WebAclName` |
| `AwsWafv2WebAclRule` | `action`, `overrideAction` | `behavior` | `Wafv2WebAclRuleBehavior` |
| `BatchComputeEnvironmentComputeResourcesLaunchTemplate` | `launchTemplateId`, `launchTemplateName` | `identifier` | `BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier` |
| `BedrockagentAgentActionGroupApiSchema` | `payload`, `s3` | *the `apiSchema` block* | `BedrockagentAgentActionGroupApiSchema` |
| `BedrockagentDataSourceVectorIngestionConfigurationChunkingConfiguration` | `fixedSizeChunkingConfiguration`, `hierarchicalChunkingConfiguration`, `semanticChunkingConfiguration` | `strategy` | `BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationStrategy` |
| `BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig` | `tenantId`, `tenantIdWo` | `tenantId` | `BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigTenantId` |
| `CloudformationStackInstancesOperationPreferences` | `failureToleranceCount`, `failureTolerancePercentage` | `failureTolerance` | `CloudformationStackInstancesOperationPreferencesFailureTolerance` |
| `CloudformationStackInstancesOperationPreferences` | `maxConcurrentCount`, `maxConcurrentPercentage` | `maxConcurrent` | `CloudformationStackInstancesOperationPreferencesMaxConcurrent` |
| `CloudformationStackSetInstanceOperationPreferences` | `failureToleranceCount`, `failureTolerancePercentage` | `failureTolerance` | `CloudformationStackSetInstanceOperationPreferencesFailureTolerance` |
| `CloudformationStackSetInstanceOperationPreferences` | `maxConcurrentCount`, `maxConcurrentPercentage` | `maxConcurrent` | `CloudformationStackSetInstanceOperationPreferencesMaxConcurrent` |
| `CloudformationStackSetOperationPreferences` | `failureToleranceCount`, `failureTolerancePercentage` | `failureTolerance` | `CloudformationStackSetOperationPreferencesFailureTolerance` |
| `CloudformationStackSetOperationPreferences` | `maxConcurrentCount`, `maxConcurrentPercentage` | `maxConcurrent` | `CloudformationStackSetOperationPreferencesMaxConcurrent` |
| `CodedeployDeploymentConfigTrafficRoutingConfig` | `timeBasedCanary`, `timeBasedLinear` | `timeBased` | `CodedeployDeploymentConfigTrafficRoutingConfigTimeBased` |
| `ComputeoptimizerRecommendationPreferencesPreferredResource` | `excludeList`, `includeList` | `filter` | `ComputeoptimizerRecommendationPreferencesPreferredResourceFilter` |
| `DbInstanceRestoreToPointInTime` | `restoreTime`, `useLatestRestorableTime` | `target` | `DbInstanceRestoreToPointInTimeTarget` |
| `DocdbClusterRestoreToPointInTime` | `restoreToTime`, `useLatestRestorableTime` | `target` | `DocdbClusterRestoreToPointInTimeTarget` |
| `Ec2ClientVpnEndpointTransitGatewayConfiguration` | `availabilityZoneIds`, `availabilityZones` | `availabilityZone` | `Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone` |
| `EksNodeGroupLaunchTemplate` | `id`, `name` | `identifier` | `EksNodeGroupLaunchTemplateIdentifier` |
| `EksNodeGroupNodeRepairConfig` | `maxParallelNodesRepairedCount`, `maxParallelNodesRepairedPercentage` | `maxParallelNodesRepaired` | `EksNodeGroupNodeRepairConfigMaxParallelNodesRepaired` |
| `EksNodeGroupNodeRepairConfig` | `maxUnhealthyNodeThresholdCount`, `maxUnhealthyNodeThresholdPercentage` | `maxUnhealthyNodeThreshold` | `EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThreshold` |
| `EmrClusterEc2Attributes` | `subnetId`, `subnetIds` | `subnet` | `EmrClusterEc2AttributesSubnet` |
| `EvidentlyProjectDataDelivery` | `cloudwatchLogs`, `s3Destination` | *the `dataDelivery` block* | `EvidentlyProjectDataDelivery` |
| `GameliftGameServerGroupLaunchTemplate` | `id`, `name` | `identifier` | `GameliftGameServerGroupLaunchTemplateIdentifier` |
| `ImagebuilderInfrastructureConfigurationPlacement` | `hostId`, `hostResourceGroupArn` | `host` | `ImagebuilderInfrastructureConfigurationPlacementHost` |
| `InstanceCapacityReservationSpecificationCapacityReservationTarget` | `capacityReservationId`, `capacityReservationResourceGroupArn` | *the `capacityReservationTarget` block* | `InstanceCapacityReservationSpecificationCapacityReservationTarget` |
| `KinesisFirehoseDeliveryStreamElasticsearchConfiguration` | `clusterEndpoint`, `domainArn` | `domain` | `KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain` |
| `KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer` | `hiveJsonSerDe`, `openXJsonSerDe` | `jsonSerDe` | `KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe` |
| `KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer` | `orcSerDe`, `parquetSerDe` | `serDe` | `KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe` |
| `KinesisFirehoseDeliveryStreamOpensearchConfiguration` | `clusterEndpoint`, `domainArn` | `domain` | `KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain` |
| `Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent` | `s3ContentLocation`, `textContent` | *the `codeContent` block* | `Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent` |
| `LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget` | `capacityReservationId`, `capacityReservationResourceGroupArn` | *the `capacityReservationTarget` block* | `LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget` |
| `LaunchTemplateIamInstanceProfile` | `arn`, `name` | *the `iamInstanceProfile` block* | `LaunchTemplateIamInstanceProfile` |
| `LaunchTemplateInstanceRequirements` | `allowedInstanceTypes`, `excludedInstanceTypes` | `instanceTypes` | `LaunchTemplateInstanceRequirementsInstanceTypes` |
| `LaunchTemplateInstanceRequirements` | `maxSpotPriceAsPercentageOfOptimalOnDemandPrice`, `spotMaxPricePercentageOverLowestPrice` | `price` | `LaunchTemplateInstanceRequirementsPrice` |
| `LaunchTemplatePlacement` | `groupId`, `groupName` | `group` | `LaunchTemplatePlacementGroup` |
| `LaunchTemplatePlacement` | `hostId`, `hostResourceGroupArn` | `host` | `LaunchTemplatePlacementHost` |
| `Macie2ClassificationJobS3JobDefinition` | `bucketCriteria`, `bucketDefinitions` | `bucket` | `Macie2ClassificationJobS3JobDefinitionBucket` |
| `Macie2ClassificationJobScheduleFrequency` | `dailySchedule`, `monthlySchedule`, `weeklySchedule` | *the `scheduleFrequency` block* | `Macie2ClassificationJobScheduleFrequency` |
| `NetworkmanagerDeviceAwsLocation` | `subnetArn`, `zone` | *the `awsLocation` block* | `NetworkmanagerDeviceAwsLocation` |
| `PipesPipeSourceParameters` | `activemqBrokerParameters`, `dynamodbStreamParameters`, `kinesisStreamParameters`, `managedStreamingKafkaParameters`, `rabbitmqBrokerParameters`, `selfManagedKafkaParameters`, `sqsQueueParameters` | `service` | `PipesPipeSourceParametersService` |
| `PipesPipeTargetParameters` | `batchJobParameters`, `cloudwatchLogsParameters`, `ecsTaskParameters`, `eventbridgeEventBusParameters`, `httpParameters`, `kinesisStreamParameters`, `lambdaFunctionParameters`, `redshiftDataParameters`, `sagemakerPipelineParameters`, `sqsQueueParameters`, `stepFunctionStateMachineParameters` | `service` | `PipesPipeTargetParametersService` |
| `PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove` | `amount`, `ratio` | *the `ignoreNearExpectedFromAbove` block* | `PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove` |
| `PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow` | `amount`, `ratio` | *the `ignoreNearExpectedFromBelow` block* | `PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow` |
| `QuicksightRefreshScheduleScheduleScheduleFrequencyRefreshOnDay` | `dayOfMonth`, `dayOfWeek` | *the `refreshOnDay` block* | `QuicksightRefreshScheduleScheduleScheduleFrequencyRefreshOnDay` |
| `RekognitionStreamProcessorOutput` | `kinesisDataStream`, `s3Destination` | *the `output` block* | `RekognitionStreamProcessorOutput` |
| `RekognitionStreamProcessorRegionsOfInterest` | `boundingBox`, `polygon` | *the `regionsOfInterest` block* | `RekognitionStreamProcessorRegionsOfInterest` |
| `RekognitionStreamProcessorSettings` | `connectedHome`, `faceSearch` | *the `settings` block* | `RekognitionStreamProcessorSettings` |
| `S3BucketInventoryDestinationBucketEncryption` | `sseKms`, `sseS3` | *the `encryption` block* | `S3BucketInventoryDestinationBucketEncryption` |
| `S3BucketObjectLockConfigurationRuleDefaultRetention` | `days`, `years` | `period` | `S3BucketObjectLockConfigurationRuleDefaultRetentionPeriod` |
| `SagemakerHyperParameterTuningJobTrainingJobDefinition` | `hyperParameterTuningResourceConfig`, `resourceConfig` | `resources` | `SagemakerHyperParameterTuningJobTrainingJobDefinitionResources` |
| `SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification` | `algorithmName`, `trainingImage` | `algorithm` | `SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm` |
| `SagemakerHyperParameterTuningJobTrainingJobDefinitions` | `hyperParameterTuningResourceConfig`, `resourceConfig` | `resources` | `SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources` |
| `SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification` | `algorithmName`, `trainingImage` | `algorithm` | `SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm` |
| `SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfiguration` | `disabledControlIdentifiers`, `enabledControlIdentifiers` | `controlIdentifiers` | `SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationControlIdentifiers` |
| `SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget` | `capacityReservationId`, `capacityReservationResourceGroupArn` | *the `capacityReservationTarget` block* | `SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget` |

</details>

<details><summary><code>cloudflare</code> (27 groups)</summary>

| Class | Member arguments | Sealed argument | Sealed type |
|---|---|---|---|
| `CloudflareAccountMember` | `policies`, `roles` | `access` | `AccountMemberAccess` |
| `CloudflareDnsRecord` | `content`, `data` | `content` | `DnsRecordContent` |
| `CloudflareRuleset` | `accountId`, `zoneId` | `scope` | `RulesetScope` |
| `CloudflareWorkersScript` | `content`, `contentFile` | `content` | `WorkersScriptContent` |
| `CloudflareZeroTrustAccessApplication` | `destinations`, `selfHostedDomains` | `targets` | `ZeroTrustAccessApplicationTargets` |
| `CloudflareZeroTrustDeviceCustomProfile` | `exclude`, `include` | `splitTunnel` | `ZeroTrustDeviceCustomProfileSplitTunnel` |
| `CloudflareZeroTrustDeviceDefaultProfile` | `exclude`, `include` | `splitTunnel` | `ZeroTrustDeviceDefaultProfileSplitTunnel` |
| `ListItems` | `asn`, `hostname`, `ip`, `redirect` | `value` | `ListItemsValue` |
| `RulesetRulesActionParameters` | `assetName`, `content` | `body` | `RulesetRulesActionParametersBody` |
| `RulesetRulesActionParameters` | `fromList`, `fromValue` | `source` | `RulesetRulesActionParametersSource` |
| `RulesetRulesActionParameters` | `expression`, `values` | `value` | `RulesetRulesActionParametersValue` |
| `RulesetRulesActionParametersCacheKeyCustomKeyQueryString` | `exclude`, `include` | *the `queryString` block* | `RulesetRulesActionParametersCacheKeyCustomKeyQueryString` |
| `RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude` | `all`, `list` | *the `exclude` block* | `RulesetRulesActionParametersCacheKeyCustomKeyQueryStringExclude` |
| `RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude` | `all`, `list` | *the `include` block* | `RulesetRulesActionParametersCacheKeyCustomKeyQueryStringInclude` |
| `RulesetRulesActionParametersEdgeTtlStatusCodeTtl` | `statusCode`, `statusCodeRange` | `match` | `RulesetRulesActionParametersEdgeTtlStatusCodeTtlMatch` |
| `RulesetRulesActionParametersFromValueTargetUrl` | `expression`, `value` | *the `targetUrl` block* | `RulesetRulesActionParametersFromValueTargetUrl` |
| `RulesetRulesActionParametersHeaders` | `expression`, `value` | `value` | `RulesetRulesActionParametersHeadersValue` |
| `RulesetRulesActionParametersUriPath` | `expression`, `value` | *the `path` block* | `RulesetRulesActionParametersUriPath` |
| `RulesetRulesActionParametersUriQuery` | `expression`, `value` | *the `query` block* | `RulesetRulesActionParametersUriQuery` |
| `WorkerVersionAssets` | `directory`, `jwt` | `source` | `WorkerVersionAssetsSource` |
| `WorkerVersionModules` | `contentBase64`, `contentFile` | `content` | `WorkerVersionModulesContent` |
| `WorkersScriptAssets` | `directory`, `jwt` | `source` | `WorkersScriptAssetsSource` |
| `WorkersScriptFiles` | `contentBase64`, `contentFile` | `content` | `WorkersScriptFilesContent` |
| `ZeroTrustAccessApplicationCorsHeaders` | `allowAllHeaders`, `allowedHeaders` | `requestHeaders` | `ZeroTrustAccessApplicationCorsHeadersRequestHeaders` |
| `ZeroTrustAccessApplicationCorsHeaders` | `allowAllMethods`, `allowedMethods` | `methods` | `ZeroTrustAccessApplicationCorsHeadersMethods` |
| `ZeroTrustAccessApplicationCorsHeaders` | `allowAllOrigins`, `allowedOrigins` | `origins` | `ZeroTrustAccessApplicationCorsHeadersOrigins` |
| `ZeroTrustAccessApplicationPolicies` | `id`, `include` | `policy` | `ZeroTrustAccessApplicationPoliciesPolicy` |

</details>

### `terradart_google` Magic Modules input groups are sealed types

**Breaking (`terradart_google`)** — input groups the Magic Modules YAML
declares mutually exclusive take one sealed-type argument (or helper field)
instead of several optional ones: an `exactly_one_of` group (or an
`at_least_one_of` set whose members all `conflicts`) becomes a **required**
argument, and a `conflicts` set no such group covers becomes a **nullable**
one (leave it out to set none). The argument takes a concept name (see
*Sealed arguments take concept names*), and each member is a factory
constructor on the sealed type you pick with a dot shorthand (`.member(...)`), as on `terradart_google_beta`
/ `terradart_aws`.
Synth output is unchanged. Groups a hand-written sealed argument already
covers (`BigtableAppProfileRouting`, `ComputeHealthCheckProtocol`, ...) keep
it. Setting two members, or none of an exactly-one group, used to fail at
`terraform validate`; now it doesn't compile. `terradart-migrate` picks the
variant from whichever member the source sets.

Compute and networking (16 groups on 13 resources):

| Before | After |
|--------|-------|
| `GoogleComputeTargetHttpsProxy(sslCertificates: TfArg.literal([...]), ...)` | `GoogleComputeTargetHttpsProxy(certificates: .sslCertificates(TfArg.literal([...])), ...)` |
| `GoogleVpcAccessConnector(minInstances: TfArg.literal(2), maxInstances: TfArg.literal(3), ...)` | `GoogleVpcAccessConnector(minCapacity: .minInstances(TfArg.literal(2)), maxCapacity: .maxInstances(TfArg.literal(3)), ...)` |
| `GoogleNetworkConnectivityPolicyBasedRoute(virtualMachine: ..., ...)` | `GoogleNetworkConnectivityPolicyBasedRoute(scope: .virtualMachine(...), ...)` |
| `NetworkServicesHttpRouteRulesMatches(fullPathMatch: TfArg.literal('/x'))` | `NetworkServicesHttpRouteRulesMatches(match: .fullPathMatch(TfArg.literal('/x')))` |
| `ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput(name: ...)` | `ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput(plan: .name(...))` |

The other groups: `GoogleComputeRegionTargetHttpsProxy` (as the global
proxy), `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap`
(`default_url_redirect` / `default_route_action`, which keep their helper
classes), `GoogleComputeNodeTemplate` (`node_type` /
`node_type_flexibility`), `GoogleComputeVpnTunnel` (`peer_external_gateway`
/ `peer_gcp_gateway`), `GoogleNetworkSecuritySecurityProfile` (the four
profile blocks), `GoogleNetworkServicesGateway` (`all_ports` / `ports`),
`GoogleComputeReservation`'s `specific_reservation`
(`instance_properties` / `source_instance_template`), and the
`GoogleNetworkServicesHttpRoute` header and query-parameter matches.

Data, storage, databases and observability (35 groups on 20 resources):

| Before | After |
|--------|-------|
| `GooglePubsubSubscription(pushConfig: PubsubSubscriptionPushConfig(...), ...)` | `GooglePubsubSubscription(delivery: .pushConfig(PubsubSubscriptionPushConfig(...)), ...)` |
| `GoogleBigqueryDatasetAccess(specialGroup: TfArg.literal(...), ...)` | `GoogleBigqueryDatasetAccess(grantee: .specialGroup(TfArg.literal(...)), ...)` |
| `GoogleBigqueryAnalyticsHubListing(bigqueryDataset: TfArg.literal({'dataset': ...}), ...)` | `GoogleBigqueryAnalyticsHubListing(source: .bigqueryDataset(BigqueryAnalyticsHubListingBigqueryDataset(dataset: TfArg.literal(...))), ...)` |
| `GoogleMonitoringSlo(rollingPeriodDays: TfArg.literal(30), ...)` | `GoogleMonitoringSlo(period: .rollingPeriodDays(TfArg.literal(30)), ...)` |
| `GoogleLoggingSavedQuery(loggingQuery: LoggingSavedQueryLoggingQuery(...), ...)` | `GoogleLoggingSavedQuery(definition: .loggingQuery(LoggingSavedQueryLoggingQuery(...)), ...)` |
| `data: DataplexDatascanData(resource: TfArg.literal(...))` | `data: .resource(TfArg.literal(...))` |
| `DatastreamStreamSourceConfig(mysqlSourceConfig: ..., ...)` | `DatastreamStreamSourceConfig(system: .mysqlSourceConfig(...), ...)` |

`GoogleBigqueryDatasetAccess`'s `view`, `dataset` and `routine` keep their
helper classes (`BigqueryDatasetAccessView`, ...) inside the variants. The
other groups: `GoogleBigqueryAnalyticsHubDataExchange`
(`default_exchange_config` / `dcr_exchange_config`), the listing's
`selected_resources` (`table` / `routine`),
`GoogleDatabaseMigrationServiceMigrationJob` (the three connectivity
blocks), `GoogleDataplexDatascan` (`execution_identity` and the trigger),
`GoogleDataprocBatch` (`network_uri` / `subnetwork_uri`),
`GoogleDatastreamConnectionProfile` (SSH / private connectivity and the SSH
`password` / `private_key`), the rest of `GoogleDatastreamStream`'s
destination (GCS / BigQuery, file format, target dataset, merge / append
only) and MySQL `binary_log_position` / `gtid`,
`GoogleDataLossPreventionDiscoveryConfig` (namespaced tag value / key),
`GoogleHealthcarePipelineJob` (the three job kinds and the reconciliation
destination), `GoogleMemorystoreInstance` (`gcs_source` /
`managed_backup_source`), `GoogleNetappVolume`'s `restore_parameters`,
`GoogleSpannerBackupSchedule` (`kms_key_name` / `kms_key_names`),
`GoogleSpannerInstancePartition` (node count / processing units /
autoscaling and the autoscaling limits), and the included / excluded bucket
and location filters of the three `GoogleStorageControl*IntelligenceConfig`
resources.

AI / ML, serverless, containers and CI/CD (35 groups on 25 resources):

| Before | After |
|--------|-------|
| `GoogleCloudbuildv2Connection(githubConfig: Cloudbuildv2ConnectionGithubConfig(...), ...)` | `GoogleCloudbuildv2Connection(host: .githubConfig(Cloudbuildv2ConnectionGithubConfig(...)), ...)` |
| `GoogleFirebaseAppHostingTraffic(target: FirebaseAppHostingTrafficAppHostingTrafficTarget(...), ...)` | `GoogleFirebaseAppHostingTraffic(routing: .target(FirebaseAppHostingTrafficAppHostingTrafficTarget(...)), ...)` |
| `role: GkeHubScopeRbacRoleBindingRole(predefinedRole: TfArg.literal(...))` | `role: .predefinedRole(TfArg.literal(...))` |
| `GoogleGkeBackupBackupPlan(backupConfig: TfArg.literal({'all_namespaces': ..., ...}), retentionPolicy: TfArg.literal({...}), ...)` | `GoogleGkeBackupBackupPlan(backupConfig: GkeBackupBackupPlanBackupConfig(scope: .allNamespaces(TfArg.literal(true)), ...), retentionPolicy: GkeBackupBackupPlanRetentionPolicy(...), ...)` |
| `GoogleClouddeployCustomTargetType(customActions: TfArg.literal({...}), ...)` | `GoogleClouddeployCustomTargetType(actions: .customActions(ClouddeployCustomTargetTypeCustomActions(...)), ...)` |
| `IntegrationsAuthConfigDecryptedCredential(usernameAndPassword: ..., ...)` | `IntegrationsAuthConfigDecryptedCredential(secret: .usernameAndPassword(...), ...)` |

Four resources whose sealed groups sit in blocks that used to be untyped
maps take typed nested helpers now: `GoogleGkeBackupBackupPlan`,
`GoogleClouddeployCustomTargetType`, `GoogleCloudRunV2WorkerPool` and
`GoogleVertexAiRagCorpus` (replace `TfArg.literal({...})` with the helper
class of the same block). The other groups: `GoogleCloudRunService`'s
liveness / readiness / startup probe handlers, `GoogleCloudRunV2WorkerPool`,
`GoogleArtifactRegistryRepository`, `GoogleAgentIdentityAuthProvider`,
`GoogleApigeeSecurityAction`, `GoogleCesTool`,
`GoogleDialogflowCxSecuritySettings`, `GoogleDialogflowCxTestCase`,
`GoogleDiscoveryEngineChatEngine`, `GoogleGkeonpremBareMetalCluster`,
`GoogleGkeonpremVmwareAdminCluster`, `GoogleGkeonpremVmwareCluster`,
`GoogleModelArmorTemplate`, `GoogleVertexAiFeaturestore`,
`GoogleVertexAiIndex`, `GoogleVertexAiIndexEndpoint`,
`GoogleVertexAiRagCorpus` (vector DB / Vertex AI Search, the vector DB
kind, KNN / ANN, API key source), `GoogleVertexAiReasoningEngine`
(container / source-code spec, image / Python spec) and
`GoogleWorkbenchInstance`.

Security, identity, billing and operations (13 groups on 8 resources):

| Before | After |
|--------|-------|
| `GoogleAccessContextManagerAccessLevel(basic: AccessContextManagerAccessLevelBasic(...), ...)` | `GoogleAccessContextManagerAccessLevel(definition: .basic(AccessContextManagerAccessLevelBasic(...)), ...)` |
| `GooglePrivatecaCertificate(pemCsr: TfArg.literal(...), ...)` | `GooglePrivatecaCertificate(request: .pemCsr(TfArg.literal(...)), ...)` |
| `amount: BillingBudgetAmount(lastPeriodAmount: TfArg.literal(true))` | `amount: .lastPeriodAmount(TfArg.literal(true))` |
| `PrivilegedAccessManagerEntitlementRequesterJustificationConfig(unstructured: ...)` | `PrivilegedAccessManagerEntitlementRequesterJustificationConfig(requirement: .unstructured(...))` |

`GooglePrivatecaCertificate`'s `config` keeps its helper class inside the
`.config(...)` variant. The other groups:
`GoogleChronicleParserExtension` (`cbn_snippet` / `field_extractors` /
`dynamic_parsing`), `GoogleCloudSecurityComplianceFrameworkDeployment`
(existing target resource / creation config, folder / project creation),
`GoogleContactCenterInsightsAssessmentRule` (`sample_percentage` /
`sample_row`), and `GoogleOsConfigPatchDeployment` (the four pre / post step
`local_path` / `gcs_object` choices and the disruption budget's `fixed` /
`percentage`).

Every `terradart_google` resource override now derives its Magic Modules
groups, and a later MM group seals on the weekly schema bump. Group size is
not capped: `GoogleChronicleFeed`'s 75 `details` feed kinds are one
`source:` argument (`ChronicleFeedDetails(source: .amazonS3Settings(...))`).

### `terradart_cloudflare` exactly-one inputs are sealed types

**Breaking (`terradart_cloudflare`)** — 13 input groups across 5 resources
that the provider requires exactly one of take one required sealed-type
argument (or helper field) instead of several optional ones. These are the
provider's `ExactlyOneOf` sets at the pinned `5.26.0`, plus the
`AtLeastOneOf` sets whose members all conflict with each other; 2 are on
resource arguments and 11 inside nested blocks. The argument takes a
concept name, and each member is a factory constructor on the sealed type
(`.member(...)`). Synth output is unchanged.

| Before | After |
|--------|-------|
| `CloudflareRuleset(zoneId: TfArg.literal(zoneId), ...)` | `CloudflareRuleset(scope: .zoneId(TfArg.literal(zoneId)), ...)` |
| `CloudflareAccountMember(roles: TfArg.literal([roleId]), ...)` | `CloudflareAccountMember(access: .roles(TfArg.literal([roleId])), ...)` |
| `WorkerVersionModules(contentFile: TfArg.literal('dist/index.js'), ...)` | `WorkerVersionModules(content: .contentFile(TfArg.literal('dist/index.js')), ...)` |
| `path: RulesetRulesActionParametersUriPath(value: TfArg.literal('/new'))` | `path: .value(TfArg.literal('/new'))` |

The other groups: `WorkersScriptFiles` (`content_base64` / `content_file`),
the ruleset's `from_value.target_url` (`value` / `expression`), `uri.query`
(`value` / `expression`), `edge_ttl.status_code_ttl`
(`status_code_range` / `status_code`) and the cache key's
`query_string.include` / `exclude` (`list` / `all`), and
`CloudflareZeroTrustAccessApplication`'s `cors_headers`
(`allow_all_methods` / `allowed_methods`, `allow_all_origins` /
`allowed_origins`) and `policies` (`id` / `include`). Leaving the argument
out, or setting two members, used to fail at `terraform validate`; now it
doesn't compile. Mutually exclusive inputs the provider lets you
leave all unset are the next section. `terradart-migrate` picks the variant
from whichever member the source sets.

### `terradart_cloudflare` at-most-one inputs are nullable sealed types

**Breaking (`terradart_cloudflare`)** — 14 input groups across 8 resources
whose members conflict with each other, with no rule requiring one of them,
take one optional sealed-type argument (or helper field) instead of several
optional ones. These are the provider's `ConflictsWith` / `Conflicting` sets
at the pinned `5.26.0` that no exactly-one group covers; 5 are on resource
arguments and 9 inside nested blocks. Naming follows the exactly-one
groups: the argument takes a concept name, and each member is a
`.member(...)` factory constructor. Leave the argument out to set none of
them. Synth output is unchanged.

| Before | After |
|--------|-------|
| `CloudflareDnsRecord(content: TfArg.literal('ghs.googlehosted.com'), ...)` | `CloudflareDnsRecord(content: .content(TfArg.literal('ghs.googlehosted.com')), ...)` |
| `CloudflareWorkersScript(contentFile: TfArg.literal('dist/index.js'), ...)` | `CloudflareWorkersScript(content: .contentFile(TfArg.literal('dist/index.js')), ...)` |
| `CloudflareZeroTrustDeviceCustomProfile(include: [...], ...)` | `CloudflareZeroTrustDeviceCustomProfile(splitTunnel: .include([...]), ...)` |
| `ListItems(ip: TfArg.literal('192.0.2.1'))` | `ListItems(value: .ip(TfArg.literal('192.0.2.1')))` |

The other groups: `CloudflareZeroTrustDeviceDefaultProfile` (`exclude` /
`include`), `CloudflareZeroTrustAccessApplication` (`self_hosted_domains` /
`destinations`, and `cors_headers` `allow_all_headers` /
`allowed_headers`), the `assets` block of `CloudflareWorkersScript` and
`CloudflareWorkerVersion` (`directory` / `jwt`), and the ruleset's
`action_parameters` (`asset_name` / `content`, `from_list` / `from_value`,
`values` / `expression`, `headers` `value` / `expression`, and the cache
key's `query_string` `include` / `exclude`). Setting two members used to
fail at `terraform validate`; now it doesn't compile. `terradart-migrate`
picks the variant from whichever member the source sets, and leaves the
argument out when none is set.

### `CloudflareEmailSecurityAllowPolicy` drops the deprecated sender flags

**Breaking (`terradart_cloudflare`)** — `CloudflareEmailSecurityAllowPolicy`
no longer takes `isSender`, `isSpoof` or `isRecipient`. Cloudflare
deprecated them on 2025-07-01 with an end of life of 2026-07-01; use the
replacements the provider names, which the constructor already requires:

| Before | After |
|--------|-------|
| `isSender: .literal(true)` | `isTrustedSender: .literal(true)` |
| `isSpoof: .literal(true)` | `isAcceptableSender: .literal(true)` |
| `isRecipient: .literal(true)` | `isExemptRecipient: .literal(true)` |

Synth output no longer contains the three keys. `terradart-migrate` keeps a
policy that sets one of them in the leftover sidecar.

### `terradart_aws` at-most-one inputs are nullable sealed types

**Breaking (`terradart_aws`)** — 229 input groups across 160 resources whose
members conflict with each other, with no rule requiring one of them, take
one optional sealed-type argument (or helper field) instead of several
optional ones: the provider's SDKv2 `ConflictsWith` lists and framework
`ConflictsWith` / `Conflicting` validators at the pinned version that no
exactly-one group covers. 169 are on resource arguments and 60 inside nested
blocks; 59 are `name` / `name_prefix`. Naming follows the exactly-one groups:
the argument takes a concept name (`name` for `name` / `name_prefix`), and
each member is a `.member(...)` factory constructor. Leave the argument out to set none of them
(for `name` / `name_prefix`, the provider then generates a name). Synth
output is unchanged.

| Before | After |
|--------|-------|
| `AwsIamRole(name: TfArg.literal('hello'), ...)` | `AwsIamRole(name: .name(TfArg.literal('hello')), ...)` |
| `AwsCloudwatchLogGroup(name: TfArg.literal('/aws/lambda/hello'), ...)` | `AwsCloudwatchLogGroup(name: .name(TfArg.literal('/aws/lambda/hello')), ...)` |
| `AwsS3Bucket(bucketPrefix: TfArg.literal('site-'), ...)` | `AwsS3Bucket(name: .bucketPrefix(TfArg.literal('site-')), ...)` |
| `AppautoscalingPolicyTargetTrackingScalingPolicyConfiguration(predefinedMetricSpecification: spec, ...)` | `...(metricSpecification: .predefinedMetricSpecification(spec), ...)` |

Three exactly-one groups are new too. `AwsDocdbGlobalCluster` gains a
required sealed argument: the provider requires at least one of `engine` /
`source_db_cluster_identifier`, and they conflict, so exactly one is set:
`AwsDocdbGlobalCluster(source: .engine(TfArg.literal(DocdbGlobalClusterEngine.docdb)), ...)`.
`AwsPrometheusAnomalyDetector`'s `ignore_near_expected_from_above` and
`ignore_near_expected_from_below` blocks are sealed types themselves, with
`.amount(...)` / `.ratio(...)` variants (a `float64validator.ExactlyOneOf`
the extractor used to skip): `ignoreNearExpectedFromAbove: .ratio(...)`.

Setting two members used to fail at `terraform validate`; now it doesn't
compile. Two groups stay as separate arguments because one member has no
typed shape: `AwsS3Bucket` `object_lock_configuration` /
`object_lock_enabled` and `AwsWafv2WebAcl` `rule` / `rule_json`.
`terradart-migrate` picks the variant from whichever member the source sets,
and leaves the argument out when none is set.

### `terradart_google_beta` inputs are typed like `terradart_google`

**Breaking (`terradart_google_beta`)** — beta factories now derive their
types from Magic Modules YAML, like the GA package. Synth output is
unchanged, so no Terraform step is needed; fix the compile errors:

- **Nested blocks take helper classes.** An input that took
  `TfArg<Map<String, dynamic>>` takes its generated helper; one that took
  `TfArg<List<Map<String, dynamic>>>` takes a `List` of them. Helper fields
  are `TfArg`s named in camelCase; nested blocks inside them are helpers too.
- **Inputs with a fixed value set are enums**, at the top level and inside
  helpers. Wrap the enum member in `TfArg.literal` as before.
- **`exactly_one_of` groups are one required sealed argument** with a
  concept name; each member is a `.member(...)` factory constructor.
- **`conflicts` sets are one optional sealed argument**, named the same way:
  4 groups on 3 resources (`GoogleTpuV2Vm` `accelerator_type` /
  `accelerator_config` and `network_config` / `network_configs`,
  `GoogleFirebaseHostingChannel` `expire_time` / `ttl`,
  `GoogleComputeRegionNetworkPolicyTrafficClassificationRule`
  `target_service_accounts` / `target_secure_tags`). Leave it out to set
  none.

| Before | After |
|--------|-------|
| `GoogleComputeFutureReservation(timeWindow: TfArg.literal({'start_time': t0, 'end_time': t1}), ...)` | `GoogleComputeFutureReservation(timeWindow: ComputeFutureReservationTimeWindow(startTime: TfArg.literal(t0), endTime: TfArg.literal(t1)), ...)` |
| `GoogleOsConfigGuestPolicies(assignment: TfArg.literal({'zones': ['us-central1-a']}), ...)` | `GoogleOsConfigGuestPolicies(assignment: OsConfigGuestPoliciesAssignment(zones: TfArg.literal(['us-central1-a'])), ...)` |
| `GoogleComputeNetworkFirewallPolicyPacketMirroringRule(direction: TfArg.literal('INGRESS'), ...)` | `...(direction: TfArg.literal(ComputeNetworkFirewallPolicyPacketMirroringRuleDirection.ingress), ...)` |
| `GoogleGkeHubMembershipRbacRoleBinding(role: TfArg.literal({'predefined_role': 'ADMIN'}), ...)` | `...(role: GkeHubMembershipRbacRoleBindingRole(predefinedRole: TfArg.literal(GkeHubMembershipRbacRoleBindingRolePredefinedRole.admin)), ...)` |
| `GoogleApiGatewayApiConfig(openapiDocuments: TfArg.literal([{'document': {'contents': c, 'path': 'openapi.yaml'}}]), ...)` | `GoogleApiGatewayApiConfig(spec: .openapiDocuments([ApiGatewayApiConfigOpenapiDocuments(document: ApiGatewayApiConfigOpenapiDocumentsDocument(contents: TfArg.literal(c), path: TfArg.literal('openapi.yaml')))]), ...)` |
| `GoogleFirebaseHostingChannel(ttl: TfArg.literal('86400s'), ...)` | `GoogleFirebaseHostingChannel(expiration: .ttl(TfArg.literal('86400s')), ...)` |
| `GooglePrivilegedAccessManagerSettings(emailNotificationSettings: TfArg.literal({'disable_all_notifications': {}}), ...)` | `...(emailNotificationSettings: .disableAllNotifications(PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications()), ...)` |

`examples/beta_leftover_quickstart` shows the typed form of every beta
factory. `terradart-migrate` emits the typed form for `google-beta`
resources.

### `GoogleComputeRegionNetworkEndpointGroup` serverless targets are one argument

**Breaking (`terradart_google`)** — `cloudRun`, `cloudFunction` and
`appEngine` are one nullable sealed argument, `serverless`. The Magic
Modules group also names the beta-only `serverless_deployment`, which kept
it unsealed; `terradart wrap` now drops group members the provider schema
has no input for. Synth output is unchanged.

| Before | After |
|--------|-------|
| `GoogleComputeRegionNetworkEndpointGroup(cloudRun: ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun(service: ...), ...)` | `GoogleComputeRegionNetworkEndpointGroup(serverless: .cloudRun(ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun(service: ...)), ...)` |

### `GoogleStorageFtpServer` `config` uses derived helper types

**Breaking (`terradart_google`)** — the hand-written `StorageFtpServerConfig`
from 0.30.0 is replaced by the sealed argument `terradart wrap` derives from
the Magic Modules `internal_config` / `external_config` group. The argument
keeps its name, `config`; its variants are named after the members and take
the derived block helpers. The consumer-list entry classes are renamed, and
`allowedCidrBlocks` is a `TfArg<List<String>>`. Synth output is unchanged.

| Before | After |
|--------|-------|
| `config: StorageFtpServerConfig.internal(consumerAcceptList: [...], consumerRejectList: [...])` | `config: .internalConfig(StorageFtpServerInternalConfig(consumerAcceptList: [...], consumerRejectList: [...]))` |
| `config: StorageFtpServerConfig.external(allowedCidrBlocks: ...)` | `config: .externalConfig(StorageFtpServerExternalConfig(allowedCidrBlocks: ...))` |
| `StorageFtpServerConsumerAccept(project: ..., connectionLimit: ...)` | `StorageFtpServerInternalConfigConsumerAcceptList(project: ..., connectionLimit: ...)` |
| `StorageFtpServerConsumerReject(project: ...)` | `StorageFtpServerInternalConfigConsumerRejectList(project: ...)` |

### Compute nested blocks use derived helper types

**Breaking (`terradart_google`)** — the Compute Engine factories below no
longer carry hand-written helper classes or `TfArg<Map>` blocks; their
nested blocks are derived from the provider schema like the rest of the
catalog. That puts every Magic Modules exactly-one / at-most-one group
inside them in a sealed type and every input that names another resource
(network, subnetwork, KMS key, service account) on `RefTo<R>`.

- Helper classes are named `<Resource><BlockPath>`, without the doubled
  resource segment: `ComputeInstanceTemplateInstanceTemplateDisk` →
  `ComputeInstanceTemplateDisk`,
  `ComputeBackendServiceBackendServiceBackend` →
  `ComputeBackendServiceBackend`, `ComputeUrlMapUrlMapPathMatcher` →
  `ComputeUrlMapPathMatcher`, `ComputeInstanceInitializeParams` →
  `ComputeInstanceBootDiskInitializeParams`,
  `ComputeResourcePolicyRetentionPolicy` →
  `ComputeResourcePolicySnapshotSchedulePolicyRetentionPolicy`. Each
  helper's doc names the block it models.
- List-block parameters take the Terraform block name: `backends` →
  `backend` (`GoogleComputeBackendService`,
  `GoogleComputeRegionBackendService`), `hostRules` / `pathMatchers` /
  `tests` → `hostRule` / `pathMatcher` / `test` (`GoogleComputeUrlMap`,
  `GoogleComputeRegionUrlMap`).
- Helper fields are `TfArg<T>` (`TfArg<Enum>` for enums), so they take dot
  shorthands: `balancingMode: .literal(.rate)`,
  `image: .literal('debian-cloud/debian-12')`.
- `GoogleComputeInstanceFromTemplate` and `GoogleComputeRegionInstanceTemplate`
  take typed helpers instead of `TfArg<Map>` / `TfArg<List<Map>>` blocks.
- `GoogleComputeResourcePolicy`: `snapshotSchedulePolicy`,
  `groupPlacementPolicy`, `instanceSchedulePolicy` and
  `diskConsistencyGroupPolicy` are one nullable sealed argument, `kind`; a
  snapshot schedule's `schedule` is itself the hourly / daily / weekly sealed
  type (`schedule: .dailySchedule(...)`).
- `GoogleComputeRouter`: `network` and `nccGateway` are one sealed
  argument, `network`.
- Newly exposed inputs: encryption keys and `params` on `GoogleComputeDisk`,
  `GoogleComputeRegionDisk`, `GoogleComputeImage`, `GoogleComputeSnapshot`,
  `GoogleComputeStoragePool` and `GoogleComputeInterconnectAttachment`
  (plus `l2Forwarding`); `asyncPrimaryDisk` on the disks;
  `instanceEncryptionKey` and `workloadIdentityConfig` on
  `GoogleComputeInstance`; `logConfig`, `rules`, `subnetwork` and
  `nat64Subnetwork` on `GoogleComputeRouterNat`; `bfd`,
  `md5AuthenticationKey`, `advertisedIpRanges` and `customLearnedIpRanges`
  on `GoogleComputeRouterPeer`; `targetSecureTags` on
  `GoogleComputeRegionNetworkFirewallPolicyRule`;
  `defaultCustomErrorResponsePolicy` on `GoogleComputeUrlMap`.

| Before | After |
|--------|-------|
| `ComputeInstanceBootDisk(initializeParams: ComputeInstanceInitializeParams(image: .literal('debian-cloud/debian-12')))` | `ComputeInstanceBootDisk(initializeParams: ComputeInstanceBootDiskInitializeParams(image: .literal('debian-cloud/debian-12')))` |
| `ComputeInstanceNetworkInterface(subnetwork: .ref(subnet.selfLink))` | `ComputeInstanceNetworkInterface(subnetwork: subnet.ref)` |
| `backends: [ComputeBackendServiceBackendServiceBackend(group: ..., balancingMode: BackendServiceBalancingMode.rate)]` | `backend: [ComputeBackendServiceBackend(group: ..., balancingMode: .literal(.rate))]` |
| `disk: .literal([{'boot': true, 'source_image': 'debian-cloud/debian-12'}])` (`GoogleComputeRegionInstanceTemplate`) | `disk: [ComputeRegionInstanceTemplateDisk(boot: .literal(true), sourceImage: .literal('debian-cloud/debian-12'))]` |
| `instanceSchedulePolicy: .literal({'time_zone': 'Asia/Tokyo', ...})` | `kind: .instanceSchedulePolicy(ComputeResourcePolicyInstanceSchedulePolicy(timeZone: .literal('Asia/Tokyo'), ...))` |
| `snapshotSchedulePolicy: ComputeResourcePolicySnapshotSchedulePolicy(schedule: .daily(daysInCycle: .literal(1), startTime: .literal('04:00')), ...)` | `kind: .snapshotSchedulePolicy(ComputeResourcePolicySnapshotSchedulePolicy(schedule: .dailySchedule(ComputeResourcePolicySnapshotSchedulePolicyScheduleDailySchedule(daysInCycle: .literal(1), startTime: .literal('04:00'))), ...))` |
| `GoogleComputeRouter(network: vpc.ref, ...)` | `GoogleComputeRouter(network: .network(vpc.ref), ...)` |

Synth output changes in two ways, both accepted by the provider: a
`max_items = 1` block the hand helpers emitted as a one-element list
(`boot_disk.initialize_params`, `network_performance_config`) is an object,
and a network / subnetwork reference emits `id` where the examples passed
`self_link`.

### Data and storage nested blocks use derived helper types

**Breaking (`terradart_google`)** — the AlloyDB, BigQuery, Bigtable, Cloud
SQL, Data Catalog, Dataplex, Dataproc Metastore, Filestore, Firestore,
Healthcare and Cloud Storage factories below no longer carry hand-written
helper classes or `TfArg<Map>` blocks; their nested blocks are derived
from the provider schema like the rest of the catalog. That puts every
Magic Modules exactly-one / at-most-one group inside them in a sealed type
and every input that names another resource (network, KMS key, dataset,
bucket, topic) on `RefTo<R>`.

- Helper classes are named `<Resource><BlockPath>`:
  `SqlDatabaseInstanceIpConfiguration` →
  `SqlDatabaseInstanceSettingsIpConfiguration` (likewise
  `BackupConfiguration`, `LocationPreference`, `MaintenanceWindow`;
  `SqlDatabaseInstanceDatabaseFlag` →
  `SqlDatabaseInstanceSettingsDatabaseFlags`),
  `StorageBucketBucketCors` / `BucketLogging` / `BucketWebsite` →
  `StorageBucketCors` / `Logging` / `Website`,
  `StorageBucketLifecycleAction` / `Condition` →
  `StorageBucketLifecycleRuleAction` / `Condition`,
  `BigqueryTableTableView` → `BigqueryTableView`, the
  `BigqueryTable*Options` classes → `BigqueryTableExternalDataConfiguration*Options`,
  `BigqueryTablePrimaryKey` / `ForeignKey` →
  `BigqueryTableTableConstraintsPrimaryKey` / `ForeignKeys`,
  `FilestoreInstanceFileShare` / `Network` →
  `FilestoreInstanceFileShares` / `Networks`,
  `FirestoreFieldSingleFieldIndex` → `FirestoreFieldIndexConfigIndexes`,
  `AlloydbClusterMaintenanceWindow` →
  `AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindows`. Each helper's
  doc names the block it models.
- Helper fields are `TfArg<T>` (`TfArg<Enum>` for enums), so they take dot
  shorthands: `writeDisposition: .literal(.writeTruncate)`. A list block
  with `max_items = 1` takes one helper, not a list
  (`StorageBatchOperationsJobBucketList.buckets`).
- New sealed arguments (the variant is the member name):

  | Factory | Argument | Members |
  |---------|----------|---------|
  | `GoogleBigqueryJob` | `configuration` (was `jobConfiguration`) | `query`, `load`, `copy`, `extract` |
  | `GoogleBigqueryAnalyticsHubListingSubscription` | `destination` | `destinationDataset` |
  | `GoogleBigqueryDatapolicyDataPolicy` | `dataMaskingPolicy` (the block is the sealed type) | `predefinedExpression`, `routine` |
  | `GoogleDatabaseMigrationServiceConnectionProfile` | `engine` | `alloydb`, `cloudsql`, `mysql`, `oracle`, `postgresql` |
  | `GoogleDataformRepository` git remote settings | `authentication` | `authenticationTokenSecretVersion`, `sshAuthenticationConfig`, `gitRepositoryLink` |
  | `GoogleDataplexTask` | `workload` | `spark`, `notebook` (a spark task's `driver`: `mainClass`, `mainJarFileUri`, `pythonScriptFile`, `sqlScript`, `sqlScriptFile`) |
  | `GoogleDataprocGdcSparkApplication` | `workload` (was `sparkApplicationConfig`) | `sparkApplicationConfig`, `pysparkApplicationConfig`, `sparkRApplicationConfig`, `sparkSqlApplicationConfig` |
  | `GoogleDataprocMetastoreService` | `capacity` (was `tier`) | `tier`, `scalingConfig` (itself sealed: `instanceSize`, `scalingFactor`, `autoscalingConfig`) |
  | `GoogleDatastreamConnectionProfile` | `endpoint` (was `gcsProfile` etc.) | the seven `*Profile` blocks |
  | `GoogleDatastreamPrivateConnection` | `connectivity` (was `vpcPeeringConfig`) | `vpcPeeringConfig`, `pscInterfaceConfig` |
  | `GoogleDatastreamStream` | `backfill` (was `backfillNone`) | `backfillNone`, `backfillAll` |
  | `GoogleFilestoreInstance` | `performanceConfig` (the block is the sealed type) | `fixedIops`, `iopsPerTb` |
  | `GoogleFirestoreField` index | `mode` | `order`, `arrayConfig` |
  | `GoogleStorageBatchOperationsJob` | `operation`; a bucket's `objects` | `putMetadata`, `putObjectHold`, `rewriteObject`, `deleteObject`; `prefixList`, `manifest` |
  | `GoogleStorageInsightsDatasetConfig` | `cloudStorageBuckets`, `cloudStorageLocations` (was `includeCloudStorageBuckets`) | include / exclude |
  | `GoogleAlloydbCluster` | `restore`; backup policy `retention` | `restoreBackupSource`, `restoreContinuousBackupSource`; `timeBasedRetention`, `quantityBasedRetention` |
  | `GoogleSpannerInstance` autoscaling limits | `min`, `max` | node / processing-unit counts |

- `BigqueryDataTransferConfigSensitiveParams` is derived too: the
  `BigqueryDataTransferConfigSecretAccessKey` sealed type and its
  `WriteOnly` / `Plaintext` variants are replaced by the derived
  `secretAccessKey: .secretAccessKeyWo(...)` (or `.secretAccessKey(...)`),
  with `secretAccessKeyWoVersion` beside it.
- `GoogleBigqueryDataset` and `GoogleBigqueryDatasetAccess` keep their
  hand-written `access` grantee types; the `datasetId` of their view,
  dataset and routine references takes `RefTo<GoogleBigqueryDataset>`.
- Newly exposed inputs, among them: `GoogleAlloydbCluster`
  `continuousBackupConfig`, `encryptionConfig`, `pscConfig`, `restore`,
  `secondaryConfig`; `GoogleAlloydbInstance` `networkConfig`,
  `readPoolConfig`, `queryInsightsConfig`; `GoogleFilestoreInstance`
  `kmsKeyName`, `performanceConfig`, `directoryServices`, `protocol`;
  `GoogleDataprocMetastoreService` `encryptionConfig`, `networkConfig`,
  `scheduledBackup`; `GoogleHealthcareFhirStore` `notificationConfigs`,
  `streamConfigs`; `GoogleLookerInstance` `pscConfig`; `GoogleNetappVolume`
  `blockDevices`, `tieringPolicy`; `GoogleRedisCluster` `aclPolicy`,
  `crossClusterReplicationConfig`; `GoogleSqlDatabaseInstance` `clone`,
  `restoreBackupContext`; `GoogleStorageTransferJob` `eventStream`,
  `replicationSpec`; `GoogleSpannerInstance` `autoscalingConfig`.
- `GoogleDataFusionInstance`, `GoogleBigqueryBiReservation`,
  `GoogleOracleDatabaseCloudVmCluster` and
  `GoogleOracleDatabaseGoldengateConnection` take typed helpers instead of
  `TfArg<Map>` / `TfArg<List<Map>>` blocks.

| Before | After |
|--------|-------|
| `GoogleBigqueryJob(jobConfiguration: .query(query: ..., destinationTable: BigqueryJobDestinationTable(datasetId: .ref(dataset.datasetIdRef), ...), writeDisposition: BigqueryJobWriteDisposition.writeTruncate))` | `GoogleBigqueryJob(configuration: .query(BigqueryJobQuery(query: ..., destinationTable: BigqueryJobQueryDestinationTable(datasetId: dataset.ref, ...), writeDisposition: .literal(.writeTruncate))))` |
| `SqlDatabaseInstanceSettings(ipConfiguration: SqlDatabaseInstanceIpConfiguration(...))` | `SqlDatabaseInstanceSettings(ipConfiguration: SqlDatabaseInstanceSettingsIpConfiguration(...))` |
| `StorageBucketLifecycleAction(type: LifecycleActionType.setStorageClass, storageClass: BucketStorageClass.archive)` | `StorageBucketLifecycleRuleAction(type: .literal(.setStorageClass), storageClass: .literal(.archive))` |
| `GoogleFilestoreInstance(fileShares: FilestoreInstanceFileShare(...), networks: [FilestoreInstanceNetwork(network: .ref(vpc.id), modes: const [FilestoreInstanceNetworkMode.modeIpv4])])` | `GoogleFilestoreInstance(fileShares: FilestoreInstanceFileShares(...), networks: [FilestoreInstanceNetworks(network: vpc.ref, modes: [.literal(.modeIpv4)])])` |
| `GoogleDataplexTask(workload: .spark(sqlScript: ...))` | `GoogleDataplexTask(workload: .spark(DataplexTaskSpark(driver: .sqlScript(...))))` |
| `GoogleDataprocMetastoreService(tier: .literal(.developer))` | `GoogleDataprocMetastoreService(capacity: .tier(.literal(.developer)))` |
| `GoogleStorageBatchOperationsJob(bucketList: StorageBatchOperationsJobBucketList(buckets: [StorageBatchOperationsJobBuckets(bucket: .ref(bucket.nameRef), prefixList: ...)]), operation: .putMetadata(customMetadata: ...))` | `GoogleStorageBatchOperationsJob(bucketList: StorageBatchOperationsJobBucketList(buckets: StorageBatchOperationsJobBucketListBuckets(bucket: bucket.ref, objects: .prefixList(...))), operation: .putMetadata(StorageBatchOperationsJobPutMetadata(customMetadata: ...)))` |

Synth output changes in two ways, both accepted by the provider: a
`max_items = 1` block the hand helpers emitted as a one-element list
(`settings`, `ip_configuration`, `versioning`, `lifecycle_rule.action`,
`query`, `file_shares`, ...) is an object, and a reference emits the
attribute the reference ledger names — `GoogleAlloydbCluster`
`network_config.network` emits `id` where the examples passed `self_link`,
and `GoogleFilestoreInstance` `networks.network` emits the network `name`,
which is what the Filestore API reads.

### Serverless and application-platform nested blocks use derived helper types

**Breaking (`terradart_google`)** — the Cloud Run v2, Cloud Functions,
Cloud Build, Cloud Scheduler, Cloud Tasks, Pub/Sub, Eventarc, Artifact
Registry, Cloud Deploy, App Engine, Colab, Discovery Engine, Apigee and
Vertex AI factories below drop their hand-written helper classes and
`TfArg<Map>` blocks for helpers derived from the provider schema, as the
data and storage factories did. Every Magic Modules exactly-one /
at-most-one group inside them becomes a sealed type, and every input that
names another resource takes `RefTo<R>`.

- Helper classes are named `<Resource><BlockPath>`. The renames most
  callers meet:

  | Before | After |
  |--------|-------|
  | `CloudRunV2ServiceServiceContainer` | `CloudRunV2ServiceTemplateContainers` |
  | `CloudRunV2ServiceContainerPort` / `ContainerResources` | `CloudRunV2ServiceTemplateContainersPorts` / `ContainersResources` |
  | `CloudRunV2ServiceEnvVar` | `CloudRunV2ServiceTemplateContainersEnv` |
  | `CloudRunV2ServiceServiceVolume` | `CloudRunV2ServiceTemplateVolumes` |
  | `CloudRunV2ServiceVpcAccess` / `VpcNetworkInterface` | `CloudRunV2ServiceTemplateVpcAccess` / `TemplateVpcAccessNetworkInterfaces` |
  | `CloudRunV2ServiceServiceScaling` | `CloudRunV2ServiceScaling` |
  | `CloudRunV2JobTaskTemplate` / `JobContainer` | `CloudRunV2JobTemplateTemplate` / `JobTemplateTemplateContainers` |
  | `CloudRunV2WorkerPoolInstanceSplit` | `CloudRunV2WorkerPoolInstanceSplits` |
  | `CloudSchedulerJobSchedulerRetryConfig` | `CloudSchedulerJobRetryConfig` |
  | `CloudSchedulerJobHttpOidcToken` / `HttpOauthToken` | `CloudSchedulerJobHttpTargetOidcToken` / `HttpTargetOauthToken` |
  | `CloudTasksQueueQueueHttpTarget` | `CloudTasksQueueHttpTarget` |
  | `PubsubSubscriptionOidcToken` / `NoWrapper` | `PubsubSubscriptionPushConfigOidcToken` / `PushConfigNoWrapper` |
  | `PubsubSubscriptionBigQueryConfig` | `PubsubSubscriptionBigqueryConfig` |
  | `ArtifactRegistryRepositoryArtifactRegistry*` | `ArtifactRegistryRepository*` (`CleanupPolicies`, `DockerConfig`, `MavenConfig`, ...) |
  | `EventarcTriggerCloudRunService` / `HttpEndpoint` | `EventarcTriggerDestinationCloudRunService` / `DestinationHttpEndpoint` |
  | `EventarcMessageBusLoggingConfig` (on `GoogleEventarcPipeline`) | `EventarcPipelineLoggingConfig` |
  | `Cloudfunctions2FunctionEventFilter` | `Cloudfunctions2FunctionEventTriggerEventFilters` |
  | `StorageSource` / `RepoSource` (Cloud Functions build source) | `Cloudfunctions2FunctionBuildConfigSourceStorageSource` / `SourceRepoSource`, passed as `.storageSource(...)` / `.repoSource(...)` |
  | `AutomaticUpdatePolicy` / `OnDeployUpdatePolicy` | `Cloudfunctions2FunctionBuildConfigAutomaticUpdatePolicy` / `OnDeployUpdatePolicy`, passed as `.automaticUpdatePolicy(...)` / `.onDeployUpdatePolicy(...)` |

  Each helper's doc names the block it models.
- Helper fields are `TfArg<T>`, so they take dot shorthands
  (`containerPort: .literal(8080)`).
- `GoogleClouddeployTarget`, `GoogleClouddeployAutomation`,
  `GoogleColabRuntimeTemplate`, `GoogleEventarcPipeline`, the Pub/Sub
  `messageTransforms` / `messageStoragePolicy` inputs and the Vertex AI
  `encryptionSpec` inputs take typed helpers instead of `TfArg<Map>` /
  `TfArg<List<Map>>` blocks.
- Sealed arguments (the variant is the member name):

  | Factory or helper | Argument | Members |
  |-------------------|----------|---------|
  | `CloudRunV2*TemplateContainersEnv` | `source` (was `source`) | `value`, `valueSource` |
  | `CloudRunV2*TemplateVolumes` | `source` (was `source`) | `cloudSqlInstance`, `emptyDir`, `gcs`, `nfs`, `secret` |
  | `CloudRunV2ServiceTemplateVpcAccess` | `connection` | `connector`, `networkInterfaces` |
  | `CloudRunV2ServiceBinaryAuthorization`, `CloudRunV2JobBinaryAuthorization` | `policy` | `useDefault`, `policy` |
  | `GoogleCloudRunV2Job` | `executionToken` | `startExecutionToken`, `runExecutionToken` |
  | `GoogleCloudSchedulerJob` | `target` | `pubsubTarget`, `httpTarget`, `appEngineHttpTarget` |
  | `CloudTasksQueueHttpTarget` | `token` | `oauthToken`, `oidcToken` |
  | `GoogleCloudbuildTrigger` | `buildSpec` | `filename`, `build`, `gitFileSource` |
  | `CloudbuildTriggerGithub`, `RepositoryEventConfig`, `BitbucketServerTriggerConfig` | `event`; a push's `revision` | `pullRequest`, `push`; `branch`, `tag` |
  | `CloudbuildTriggerTriggerTemplate`, build `repoSource` | `revision` | `branchName`, `tagName`, `commitSha` |
  | `Cloudfunctions2FunctionBuildConfig` | `updatePolicy` (required, as Magic Modules declares); `source` (the block is the sealed type) | `automaticUpdatePolicy`, `onDeployUpdatePolicy`; `storageSource`, `repoSource` |
  | `Cloudfunctions2FunctionServiceConfig` | `connection` | `vpcConnector`, `directVpcNetworkInterface` |
  | `PubsubSubscriptionBigqueryConfig` | `schema` | `useTopicSchema`, `useTableSchema` |
  | `PubsubTopicIngestionDataSourceSettings` | `source`; Cloud Storage `format` | `awsKinesis`, `cloudStorage`, `azureEventHubs`, `awsMsk`, `confluentCloud`; `textFormat`, `avroFormat`, `pubsubAvroFormat` |
  | `ArtifactRegistryRepositoryRemoteRepositoryConfig` | `format`; each `*Repository` block is itself sealed | the `*Repository` blocks; `publicRepository`, `customRepository` |
  | `GoogleClouddeployAutomation` | each `rules` element and each repair phase is itself sealed | the four `*Rule` blocks; `retry`, `rollback` |
  | `GoogleAppEngineStandardAppVersion` | `scaling`, `legacyServices` (were `automaticScaling` / `manualScaling`, `appEngineApis`) | `automaticScaling`, `basicScaling`, `manualScaling`; `appEngineApis`, `appEngineBundledServices` |
  | `GoogleApigeeSecurityAction` | `effect` (was `deny` etc.) | `allow`, `deny`, `flag` |
  | `GoogleColabSchedule` | `request` (was `createNotebookExecutionJobRequest`) | `createNotebookExecutionJobRequest`, `createPipelineJobRequest` |
  | `GoogleColabNotebookExecution` | `source`, `compute`, `identity` (unchanged names) | as before |
  | `GoogleDiscoveryEngineControl` | `action`; boost action `boost` | the five `*Action` blocks; `fixedBoost`, `interpolationBoostSpec` |
  | `GoogleDiscoveryEngineDataConnector` | `params` (was `jsonParams`) | `params`, `jsonParams` |
  | `GoogleVertexAiFeatureOnlineStoreFeatureview` | `source`; `syncConfig` (the block is the sealed type) | `bigQuerySource`, `featureRegistrySource`; `cron`, `continuous` |

- A hand-sealed variant used to take the member's fields inline; a derived
  variant takes the member's helper: `.pubsubTarget(topicName: ...)` is
  `.pubsubTarget(CloudSchedulerJobPubsubTarget(topicName: ...))`.
- Newly exposed inputs, among them: `GoogleCloudRunV2Service` /
  `GoogleCloudRunV2Job` `binaryAuthorization` and volume sources on every
  container; `GoogleColabNotebookExecution` `workbenchRuntime`;
  `GoogleDiscoveryEngineControl` `conditions`; the Cloud Deploy target and
  automation blocks; the App Engine scaling blocks.
- `GoogleVertexAiFeatureOnlineStore` keeps its hand-written `storage`
  sealed type, and `GoogleAppEngineFlexibleAppVersion` its `scaling`.

| Before | After |
|--------|-------|
| `CloudRunV2ServiceServiceContainer(env: [CloudRunV2ServiceEnvVar(name: .literal('DB'), source: .secret(secret: .literal('db'), version: .literal('latest')))])` | `CloudRunV2ServiceTemplateContainers(env: [CloudRunV2ServiceTemplateContainersEnv(name: .literal('DB'), source: .valueSource(CloudRunV2ServiceTemplateContainersEnvValueSource(secretKeyRef: CloudRunV2ServiceTemplateContainersEnvValueSourceSecretKeyRef(secret: .literal('db'), version: .literal('latest')))))])` |
| `CloudRunV2ServiceVpcAccess(connector: .ref(connector.selfLink))` | `CloudRunV2ServiceTemplateVpcAccess(connection: .connector(.ref(connector.selfLink)))` |
| `GoogleCloudSchedulerJob(target: .pubsubTarget(topicName: .ref(topic.id)))` | `GoogleCloudSchedulerJob(target: .pubsubTarget(CloudSchedulerJobPubsubTarget(topicName: .of(topic))))` |
| `GoogleCloudbuildTrigger(repositoryEventConfig: CloudbuildTriggerRepositoryEventConfig(push: CloudbuildTriggerPushFilter(branch: ...)), buildSpec: .filename(filename: ...))` | `GoogleCloudbuildTrigger(repositoryEventConfig: CloudbuildTriggerRepositoryEventConfig(event: .push(CloudbuildTriggerRepositoryEventConfigPush(revision: .branch(...)))), buildSpec: .filename(...))` |
| `Cloudfunctions2FunctionBuildConfig(source: .storageSource(bucket: ..., object: ...))` | `Cloudfunctions2FunctionBuildConfig(source: .storageSource(Cloudfunctions2FunctionBuildConfigSourceStorageSource(bucket: bucket.ref, object: ...)), updatePolicy: .automaticUpdatePolicy(Cloudfunctions2FunctionBuildConfigAutomaticUpdatePolicy()))` |
| `GoogleClouddeployTarget(run: .literal({'location': ...}))` | `GoogleClouddeployTarget(run: ClouddeployTargetRun(location: .literal(...)))` |
| `GoogleColabSchedule(createNotebookExecutionJobRequest: .literal({...}))` | `GoogleColabSchedule(request: .createNotebookExecutionJobRequest(ColabScheduleCreateNotebookExecutionJobRequest(...)))` |

Synth output changes in two ways, both accepted by the provider: a
`max_items = 1` block the hand helpers emitted as a one-element list
(`template`, `scaling`, `build_config`, `service_config`, `destination`,
`repository_event_config.push`, `logging_config`, ...) is an object, and a
Cloud Functions build config the example left without an update policy
emits `automatic_update_policy {}`, the provider's default.

### Security and operations nested blocks use derived helper types

**Breaking (`terradart_google`)** — the Certificate Manager, Private CA,
Secret Manager, IAM workload / workforce identity, Sensitive Data
Protection (DLP), Cloud Monitoring, Cloud Logging, OS Config, Network
Security TLS policy, Identity Platform, Access Context Manager and
Chronicle factories below drop their hand-written helper classes and
`TfArg<Map>` blocks for helpers derived from the provider schema, as the
serverless factories did. Every Magic Modules exactly-one / at-most-one
group inside them becomes a sealed type. Top-level argument names are
unchanged; what changes is the helper a sealed variant takes.

- Helper classes are named `<Resource><BlockPath>`. The renames most
  callers meet:

  | Before | After |
  |--------|-------|
  | `MonitoringAlertPolicyAlertCondition` | `MonitoringAlertPolicyConditions` |
  | `MonitoringAlertPolicyConditionThreshold` / `Aggregation` | `MonitoringAlertPolicyConditionsConditionThreshold` / `ConditionsConditionThresholdAggregations` (likewise the other `Condition*` blocks) |
  | `MonitoringAlertPolicyNotificationRateLimit` / `DocumentationLink` | `MonitoringAlertPolicyAlertStrategyNotificationRateLimit` / `DocumentationLinks` |
  | `MonitoringSloGoodTotalRatio` | `MonitoringSloRequestBasedSliGoodTotalRatio` |
  | `MonitoringUptimeCheckConfigContentMatcher` / `AcceptedResponseStatus` | `MonitoringUptimeCheckConfigContentMatchers` / `HttpCheckAcceptedResponseStatusCodes` |
  | `MonitoringUptimeCheckConfigHttpAuthInfo` | `MonitoringUptimeCheckConfigHttpCheckAuthInfo` |
  | `SecretManagerSecretReplica` / `SecretTopic` | `SecretManagerSecretReplicationUserManagedReplicas` / `SecretManagerSecretTopics` |
  | `PrivatecaCertificateAuthoritySubjectConfig` / `Subject` / `X509Config` | `PrivatecaCertificateAuthorityConfigSubjectConfig` / `ConfigSubjectConfigSubject` / `ConfigX509Config` |
  | `IamWorkloadIdentityPoolProvider{Aws,Oidc,Saml,X509}Trust` | `IamWorkloadIdentityPoolProvider{Aws,Oidc,Saml,X509}` |
  | `IamWorkforcePoolProvider{Oidc,Saml}Trust` | `IamWorkforcePoolProvider{Oidc,Saml}` |
  | `CertificateManagerCertificateManagedProvisioning` / `SelfManagedProvisioning` | `CertificateManagerCertificateManaged` / `SelfManaged` |

  Each helper's doc names the block it models.
- Helper fields are `TfArg<T>` (`TfArg<Enum>` for enums), so they take dot
  shorthands: `perSeriesAligner: .literal(.alignNextOlder)`,
  `requestMethod: .literal(.get)`. A list of strings is one
  `TfArg<List<String>>` (`allowedAudiences: .literal([...])`).
- A hand-sealed variant used to take the member's fields inline; a derived
  variant takes the member's helper: `.regex(pattern: ...)` is
  `.regex(DataLossPreventionStoredInfoTypeRegex(pattern: ...))`,
  `SecretManagerSecretReplication.userManaged([...])` is
  `.userManaged(SecretManagerSecretReplicationUserManaged(replicas: [...]))`.
  Presets the hand helpers carried are gone:
  `PrivatecaCertificateAuthorityX509Config.rootCa()` is spelled out as
  `caOptions` + `keyUsage`.
- A write-only input and its plaintext sibling are one sealed argument,
  named after the plaintext input: `password: .passwordWo(...)`
  (`GoogleAlloydbUser`, `GoogleAlloydbCluster` `initialUser`),
  `privateKey: .privateKey(...)` / `.privateKeyWo(...)`
  (`GoogleComputeSslCertificate`, `GoogleComputeRegionSslCertificate`, the
  Certificate Manager self-managed block), `credential: .authTokenWo(...)`
  (`MonitoringNotificationChannelSensitiveLabels`),
  `secretAccessKey: .secretAccessKeyWo(...)`
  (`BigqueryDataTransferConfigSensitiveParams`). The provider rejects
  setting both.
- New sealed arguments (the variant is the member name):

  | Factory or helper | Argument | Members |
  |-------------------|----------|---------|
  | `GoogleDataLossPreventionDeidentifyTemplate` | `deidentifyConfig` (was a `TfArg<Map>`) | `infoTypeTransformations`, `recordTransformations`, `imageTransformations` |
  | `DataLossPreventionJobTriggerInspectJob…CloudStorageOptions` | `fileSet` | `url`, `regexFileSet` |
  | `GoogleMonitoringSlo` request- and windows-based SLIs | `requestBasedSli` (the block is the sealed type); windows `criterion` | `goodTotalRatio`, `distributionCut`; `goodBadMetricFilter`, `goodTotalRatioThreshold`, `metricMeanInRange`, `metricSumInRange` |
  | `MonitoringAlertPolicyConditionsConditionSql` | `schedule`, `test` | `minutes`, `hourly`, `daily`; `rowCountTest`, `booleanTest` |
  | `GoogleOsConfigPatchDeployment` | `schedule` (unchanged name); a recurring schedule's `monthly`; each pre / post step `script` | `oneTimeSchedule`, `recurringSchedule`; `weekDayOfMonth`, `monthDay`; `localPath`, `gcsObject` |
  | `GoogleLoggingSavedQuery` | `definition` (unchanged name); a logging query's summary field | `loggingQuery`, `opsAnalyticsQuery`; `summaryFieldStart`, `summaryFieldEnd` |
  | `GoogleAccessContextManagerGcpUserAccessBinding` | `subject` (was `groupKey`, a nullable string) | `groupKey`, `principal` |
  | `GoogleNetworkSecurityClientTlsPolicy`, `…ServerTlsPolicy` | `clientCertificate`, `serverCertificate`; each validation CA | `certificateProviderInstance`, `grpcEndpoint` |
  | `GoogleIdentityPlatformConfig` | `smsRegionConfig` (the block is the sealed type) | `allowByDefault`, `allowlistOnly` |
  | `GooglePrivatecaCertificateAuthority` | `keySpec` (the block is the sealed type, was a helper class); `subordinateConfig` | `algorithm`, `cloudKmsKeyVersion`; `certificateAuthority`, `pemIssuerChain` |

- Newly exposed inputs, among them: `GoogleSecretManagerSecret`
  `secretType`; `GoogleIdentityPlatformConfig` `signIn`, `mfa`,
  `blockingFunctions`, `client`, `monitoring`, `multiTenant`, `quota`,
  `smsRegionConfig`; `GooglePrivatecaCertificateAuthority` `lifetime`,
  `gcsBucket`, `subordinateConfig`, `pemCaCertificate`,
  `userDefinedAccessUrls`;
  `GoogleAccessContextManagerGcpUserAccessBinding` `dryRunAccessLevels`;
  `GoogleSecretManagerRegionalSecret`
  `customerManagedEncryption`, `rotation`, `topics`;
  `GoogleIamWorkloadIdentityPool` `inlineCertificateIssuanceConfig`,
  `inlineTrustConfig`; `GoogleIamWorkforcePoolProvider`
  `detailedAuditLogging`, `scimUsage`, `extendedAttributesOauth2Client`,
  `extraAttributesOauth2Client`; `GoogleLoggingProjectBucketConfig`
  `cmekSettings`, `indexConfigs`; `GoogleObservabilityBucket`
  `cmekSettings`; the OS Config `exec` / `file` / `pkg` / `repository`
  resource blocks, which `GoogleOsConfigOsPolicyAssignment` and
  `GoogleOsConfigV2PolicyOrchestrator` took as `TfArg<List<Map>>`.

| Before | After |
|--------|-------|
| `replication: SecretManagerSecretReplication.auto()` | `replication: const .auto(SecretManagerSecretReplicationAuto())` |
| `sli: .requestBasedSli(goodTotalRatio: MonitoringSloGoodTotalRatio(goodServiceFilter: ..., totalServiceFilter: ...))` | `sli: .requestBasedSli(.goodTotalRatio(MonitoringSloRequestBasedSliGoodTotalRatio(goodServiceFilter: ..., totalServiceFilter: ...)))` |
| `conditions: [MonitoringAlertPolicyAlertCondition(conditionThreshold: MonitoringAlertPolicyConditionThreshold(aggregations: [MonitoringAlertPolicyAggregation(perSeriesAligner: Aligner.percentile95)]))]` | `conditions: [MonitoringAlertPolicyConditions(conditionThreshold: MonitoringAlertPolicyConditionsConditionThreshold(aggregations: [MonitoringAlertPolicyConditionsConditionThresholdAggregations(perSeriesAligner: .literal(.percentile95))]))]` |
| `target: .monitoredResource(type: .literal('uptime_url'), labels: {...})` | `target: .monitoredResource(MonitoringUptimeCheckConfigMonitoredResource(type: .literal('uptime_url'), labels: .literal({...})))` |
| `trustSource: .oidc(issuerUri: ..., allowedAudiences: [.literal('aud')])` | `trustSource: .oidc(IamWorkloadIdentityPoolProviderOidc(issuerUri: ..., allowedAudiences: .literal(['aud'])))` |
| `provisioning: .managed(domains: ['app.example.com'], dnsAuthorizations: [.ref(auth.id)])` | `provisioning: .managed(CertificateManagerCertificateManaged(domains: .literal(['app.example.com']), dnsAuthorizations: .literal([auth.id.interpolation])))` |
| `GoogleAlloydbUser(passwordWo: .literal(pw), ...)` | `GoogleAlloydbUser(password: .passwordWo(.literal(pw)), ...)` |
| `GoogleComputeSslCertificate(privateKey: TfArg.variable('key'), ...)` | `GoogleComputeSslCertificate(privateKey: .privateKey(TfArg.variable('key')), ...)` |
| `GoogleDataLossPreventionStoredInfoType(definition: .regex(pattern: .literal(r'\d{4}')))` | `GoogleDataLossPreventionStoredInfoType(definition: .regex(DataLossPreventionStoredInfoTypeRegex(pattern: .literal(r'\d{4}'))))` |
| `GoogleDataLossPreventionJobTrigger(inspectJob: .literal({...}), triggers: .literal([...]))` | `GoogleDataLossPreventionJobTrigger(inspectJob: DataLossPreventionJobTriggerInspectJob(...), triggers: [DataLossPreventionJobTriggerTriggers(...)])` |

Synth output changes in one way, accepted by the provider: a
`max_items = 1` block the hand helpers emitted as a one-element list
(`managed`, `config`, `key_spec`, `regex`, `oidc`, `alert_strategy`,
`condition_threshold`, `request_based_sli`, `http_check`,
`monitored_resource`, `logging_query`, `one_time_schedule`, ...) is an
object.

### Monitoring snooze and Gemini observability settings use derived helper types

**Breaking (`terradart_google`)** — the blocks the 8.x schema bumps left as
`TfArg<Map>` take the helper types `terradart wrap` derives from the
provider schema. Synth output is unchanged.

| Before | After |
|--------|-------|
| `GoogleMonitoringSnooze(criteria: .literal({'policies': [...]}), interval: .literal({'end_time': ...}))` | `GoogleMonitoringSnooze(criteria: MonitoringSnoozeCriteria(policies: .literal([...])), interval: MonitoringSnoozeInterval(endTime: ...))` |
| `GoogleGeminiGdaObservabilitySetting(conversationalAnalyticsSetting: .literal({'logging_enabled': true}))` | `GoogleGeminiGdaObservabilitySetting(conversationalAnalyticsSetting: GeminiGdaObservabilitySettingConversationalAnalyticsSetting(loggingEnabled: .literal(true)))` |
| `GoogleGeminiGibqObservabilitySetting(conversationalAnalyticsSetting: .literal({...}))` | `GoogleGeminiGibqObservabilitySetting(conversationalAnalyticsSetting: GeminiGibqObservabilitySettingConversationalAnalyticsSetting(...))` |

### GKE nested blocks use derived helper types

**Breaking (`terradart_google`)** — `GoogleContainerCluster` and
`GoogleContainerNodePool` take a derived helper for every nested block
instead of `TfArg<Map>` (a repeated block is a `List` of helpers). Helpers
are named `ContainerCluster<BlockPath>` / `ContainerNodePool<BlockPath>`,
and their fields are `TfArg<T>`. The references inside them are typed:
`network` / `subnetwork` in `network_config`, `service_account` in
`node_config` and the autoprovisioning defaults, the
`database_encryption` key, the notification Pub/Sub topic and the usage
export dataset take `RefTo<R>`.

| Before | After |
|--------|-------|
| `workloadIdentityConfig: .literal({'workload_pool': TfArg.literal(pool)})` | `workloadIdentityConfig: ContainerClusterWorkloadIdentityConfig(workloadPool: .literal(pool))` |
| `addonsConfig: .literal({'gke_backup_agent_config': {'enabled': TfArg.literal(true)}})` | `addonsConfig: ContainerClusterAddonsConfig(gkeBackupAgentConfig: ContainerClusterAddonsConfigGkeBackupAgentConfig(enabled: .literal(true)))` |
| `nodeConfig: .literal({'machine_type': TfArg.literal('e2-medium')})` | `nodeConfig: ContainerNodePoolNodeConfig(machineType: .literal('e2-medium'))` |

Newly exposed inputs: `GoogleContainerCluster` `dataplaneOptimizationMode`,
`deletionPolicy`, `desiredEmulatedVersion`, `ignoreNodeCountChanges`,
`skipNodePoolRefresh`, `nodeCreationConfig`, `rollbackSafeUpgrade`,
`secretSyncConfig`; `GoogleContainerNodePool` `deletionPolicy`,
`ignoreNodeCountChanges`, `maintenancePolicy`.

`GoogleGkeHubScopeRbacRoleBinding` took only `user`; the Magic Modules
`user` / `group` exactly-one group is now the required sealed argument
`principal`, so a Google Group can be bound too. Synth output is unchanged.

| Before | After |
|--------|-------|
| `user: .literal('alice@example.com')` | `principal: .user(.literal('alice@example.com'))` |
| *(not available)* | `principal: .group(.literal('team@example.com'))` |

### The last hand-written Google sealed helpers are derived

**Breaking (`terradart_google`)** — six factories that kept a hand-written
sealed helper take the helpers `terradart wrap` derives, so each variant
wraps the block's own helper class and nested enum fields are
`TfArg<Enum>`. Synth output is unchanged.

| Before | After |
|--------|-------|
| `ConfigDeploymentTerraformBlueprint(source: .git(repo: ..., ref: ...))` | `ConfigDeploymentTerraformBlueprint(source: .gitSource(ConfigDeploymentTerraformBlueprintGitSource(repo: ..., ref: ...)))` |
| `source: .gcs(gcsSource: .literal('gs://b/bp.zip'))` | `source: .gcsSource(.literal('gs://b/bp.zip'))` |
| `ConfigDeploymentInputValue(variableName: ..., inputValue: ...)` | `ConfigDeploymentTerraformBlueprintInputValues(variableName: ..., inputValue: ...)` |
| `controlPlane: .remote(nodeLocation: ...)` | `controlPlane: .remote(EdgecontainerClusterControlPlaneRemote(nodeLocation: ...))` |
| `EdgecontainerClusterSharedDeploymentPolicy.allowed` | `EdgecontainerClusterControlPlaneLocalSharedDeploymentPolicy.allowed` |
| `source: .codebase(branch: .literal('main'))` | `source: .codebase(FirebaseAppHostingBuildSourceCodebase(branch: .literal('main')))` |
| `GkeBackupRestorePlanRestoreConfig(allNamespaces: .literal(true), namespacedResourceRestoreMode: GkeBackupRestorePlanNamespacedResourceRestoreMode.deleteAndRestore)` | `GkeBackupRestorePlanRestoreConfig(namespaces: .allNamespaces(.literal(true)), namespacedResourceRestoreMode: .literal(.deleteAndRestore))` |
| `ragManagedDbConfig: const .basic()` | `ragManagedDbConfig: const .basic(VertexAiRagEngineConfigRagManagedDbConfigBasic())` |
| `attachment: .linkedVpcNetwork(uri: .ref(vpc.id))` | `attachment: .linkedVpcNetwork(NetworkConnectivitySpokeLinkedVpcNetwork(uri: .ref(vpc.id)))` |

`GkeBackupRestorePlanRestoreConfig`'s five namespace selectors are one
required sealed `namespaces` argument, and the restore plan's other hand
enums are named after their block (`GkeBackupRestorePlanRestoreConfig*`).
`GoogleEdgecontainerCluster.controlPlane` is optional, as in the provider
schema. The spoke's `linked_producer_vpc_network` `network` takes
`RefTo<GoogleComputeNetwork>`; `attachment` stays required.

`GoogleIamWorkforcePoolProvider` takes `extendedAttributesOauth2Client` and
`scimUsage` as one nullable sealed argument, because the API rejects a
provider that sets both:

| Before | After |
|--------|-------|
| `scimUsage: .literal(IamWorkforcePoolProviderScimUsage.enabledForGroups)` | `groupSource: .scimUsage(.literal(.enabledForGroups))` |
| `extendedAttributesOauth2Client: IamWorkforcePoolProviderExtendedAttributesOauth2Client(...)` | `groupSource: .extendedAttributesOauth2Client(IamWorkforcePoolProviderExtendedAttributesOauth2Client(...))` |

`GoogleCesApp` no longer takes `dataStoreSettings`, and
`ChronicleFeedFailureDetails` is gone: both blocks are output-only, and
the API ignored them.

### Value lists inside helper classes take their element type

**Breaking (`terradart_google`, `terradart_google_beta`, `terradart_aws`,
`terradart_cloudflare`)** — a list or set of strings, numbers or booleans
inside a generated helper class is a `TfArg<List<String>>` /
`TfArg<List<num>>` / `TfArg<List<bool>>` instead of a
`TfArg<List<Object?>>`, as the same input already was at the top level. A
list literal (`.literal(['10.0.0.0/8'])`) keeps compiling; a list typed
`List<Object?>`, or one mixing element types, no longer does. Put an
attribute of another block in the list as its interpolation string. Lists of
objects stay `List<Object?>`. Synth output is unchanged.

| Before | After |
|--------|-------|
| `StorageFtpServerExternalConfig(allowedCidrBlocks: .literal(<Object?>['203.0.113.0/24']))` | `StorageFtpServerExternalConfig(allowedCidrBlocks: .literal(['203.0.113.0/24']))` |
| `values: .literal([TfArg.ref(distribution.arn)])` (an IAM policy document condition) | `values: .literal([distribution.arn.interpolation])` |
| `values: .literal(<Object?>[0.0, 0.0])` | `values: .literal(<num>[0.0, 0.0])` |

On `terradart_aws`, the QuickSight helper classes shared by blocks of one
shape split where the element type tells the blocks apart: the string
parameter declaration's `defaultValues` takes
`Quicksight{Analysis,Dashboard}DefinitionParameterDeclarationsStringParameterDeclarationDefaultValues`
/ `QuicksightTemplateDefinitionParametersDeclarationsStringParameterDeclarationDefaultValues`
(was the decimal declaration's class), and `parameters.decimalParameters` /
`integerParameters` take `Quicksight{Analysis,Dashboard}ParametersDecimalParameters`
(was `...ParametersDateTimeParameters`).

### Remaining Compute, networking and DNS blocks use derived helper types

**Breaking (`terradart_google`)** — every Compute, networking, DNS and
certificate override now sets `deriveNestedTypes`, so the blocks that
still took `TfArg<Map>` take the helper `terradart wrap` derives from the
provider schema (a repeated block is a `List` of helpers). Most are IAM
conditions: `condition` on the 26 Compute, DNS and network IAM
member / binding factories takes `<Resource>Condition`. Synth output is
unchanged.

| Before | After |
|--------|-------|
| `condition: .literal({'title': 't', 'expression': 'e'})` | `condition: ComputeDiskIamMemberCondition(title: .literal('t'), expression: .literal('e'))` |
| `instances: .literal([{'name': 'vm-1'}])` | `instances: [ComputeBulkPerInstanceConfigInstances(name: .literal('vm-1'))]` |
| `secondaryDisk: .literal({'disk': disk.id.interpolation})` | `secondaryDisk: ComputeDiskAsyncReplicationSecondaryDisk(disk: .ref(disk.id))` |
| `interface: .literal([{'id': 0, 'ip_address': '203.0.113.1'}])` | `interface: [ComputeExternalVpnGatewayInterface(id: .literal(0), ipAddress: .literal('203.0.113.1'))]` |
| `extensionPolicies: .literal([{'extension_name': 'ops-agent'}])` | `extensionPolicies: [ComputeZoneVmExtensionPolicyExtensionPolicies(extensionName: .literal('ops-agent'))]` |

`GoogleComputeInstanceGroup.namedPort` and `GoogleDnsResponsePolicy`'s
`networks` / `gkeClusters` are typed the same way.

Newly exposed inputs: `params` (resource manager tags) on
`GoogleComputeExternalVpnGateway`, `GoogleComputeHaVpnGateway`,
`GoogleComputeInstantSnapshot`, `GoogleComputeInterconnect`,
`GoogleComputeVpnGateway` and `GoogleComputeVpnTunnel`;
`GoogleComputeHaVpnGateway.vpnInterfaces`,
`GoogleComputeInterconnect.macsec`, `GoogleComputeVpnTunnel.cipherSuite`,
`GoogleComputeZoneVmExtensionPolicy.instanceSelectors`, and `condition`
on the two network firewall policy IAM members.

### Gemini setting bindings and the Observability link take `RefTo<R>`

**Breaking (`terradart_google`)** — these inputs name another resource and
take a `RefTo<Target>` instead of a `TfArg<String>`. Each emits the
parent's own id attribute.

| Input | Target (attribute) |
|-------|--------------------|
| `<setting>SettingId` on the seven `GoogleGemini*SettingBinding` | the matching `GoogleGemini*Setting` (`*_setting_id`) |
| `codeRepositoryIndex` on `GoogleGeminiRepositoryGroup` and its IAM adjuncts | `GoogleGeminiCodeRepositoryIndex` (`code_repository_index_id`) |
| `repositoryGroupId` on the `GoogleGeminiRepositoryGroup` IAM adjuncts | `GoogleGeminiRepositoryGroup` (`repository_group_id`) |
| `bucket` on `GoogleObservabilityLink` | `GoogleObservabilityBucket` (`bucket_id`) |

| Before | After |
|--------|-------|
| `loggingSettingId: .literal('terradart-logging')` | `loggingSettingId: logging.ref` (or keep `.literal('terradart-logging')`) |
| `bucket: .literal('telemetry')` beside a `GoogleObservabilityBucket` | `bucket: observabilityBucket.ref` |

`.literal(...)`, `.variable(...)` and `.expression(...)` keep compiling with
the same synth output; only code that passed a `TfArg<String>` value needs a
change (`.arg(value)` keeps it as is). Switching to `.ref` emits the parent's
attribute instead of the literal id, so Terraform orders the two.

## 0.29.x → 0.30.0

0.30.0 is a breaking release for every provider package, and for Google it
also changes the Terraform provider major (`hashicorp/google` 7.x → 8.x), so
some steps must happen **before** you raise the Dart constraint. Follow the
upgrade guide in order; the sections after it are the per-package
references.

### Upgrade guide

1. **On 0.29.x, before anything else — remove the resource types provider
   8.0 deletes from state.** Terraform on provider 8.x cannot read a
   `google_beyondcorp_app_*`, `google_iap_brand` / `google_iap_client`,
   `google_ml_engine_model`, `google_notebooks_*` or
   `google_vertex_ai_schedule` resource. For each such address, either keep
   the cloud resource and stop managing it:

   ```sh
   terraform state list | grep -E 'google_(beyondcorp_app_|iap_(brand|client)|ml_engine_model|notebooks_|vertex_ai_schedule)'
   terraform state rm '<address>'
   ```

   or move to the successor and apply while still on 0.29.x
   ([removed factories and successors](#terradart_google-factories-hashicorpgoogle-80-removes)).
   Skip this step if the list is empty or you do not use `terradart_google`.
2. **Raise every TerraDart constraint to `^0.30.0` by hand.** Below 1.0 a
   caret never crosses a minor, so `dart pub upgrade` alone keeps you on
   0.29.x. The packages release in lockstep; move them together:

   ```yaml
   dependencies:
     terradart_core: ^0.30.0
     terradart_google: ^0.30.0      # and any of: terradart_google_beta,
     terradart_time: ^0.30.0        # terradart_aws, terradart_cloudflare,
                                    # terradart_appwrite — all ^0.30.0
   ```

   then run `dart pub upgrade`.
3. **Fix the compile errors.** Every Dart API break has a before / after in
   the sections below: [Google 8.x API changes](#dart-api-changes),
   [removed Google factories](#terradart_google-factories-hashicorpgoogle-80-removes),
   [beta → GA imports](#beta-only-types-now-in-terradart_google),
   [Cloudflare 5.26.0](#terradart_cloudflare-follows-cloudflarecloudflare-5260),
   [Cloudflare enums](#terradart_cloudflare-inputs-with-a-fixed-value-set-are-enums),
   [Cloudflare map-of-object inputs](#terradart_cloudflare-map-of-object-attributes-take-a-map-of-helpers),
   [Appwrite enums](#terradart_appwrite-inputs-with-a-fixed-value-set-are-enums),
   [AWS enums](#terradart_aws-inputs-with-a-fixed-value-set-are-enums) and
   [AWS exactly-one groups](#terradart_aws-exactly-one-inputs-are-sealed-types).
   Enum and sealed-type changes do not change the synthesized JSON.
4. **Synthesize, then upgrade the provider lock file.** The Google stacks now
   pin `~> 8.0` and Cloudflare stacks `5.26.0`, which no longer match
   `.terraform.lock.hcl`; a plain `terraform init` fails with *locked
   provider … does not match configured version constraint*. Run once, in
   each root module's `tf-out/` directory:

   ```sh
   dart run bin/infra.dart
   cd tf-out
   terraform init -upgrade
   ```

   and commit the updated `.terraform.lock.hcl`.
5. **Run `terraform plan` and read it before you apply.** Provider 8.0
   changes some defaults with no Dart signal
   ([behaviour changes](#behaviour-changes-the-compiler-cannot-show) — for
   example `load_balancing_scheme` now defaults to `EXTERNAL_MANAGED`), and
   the 16 promoted types move from the `google-beta` to the `google`
   provider in state. Expect no replacements; set the old value explicitly
   in the Stack wherever the plan shows one you did not intend, and apply
   only when the plan is what you expect.
6. **Tooling, if you used it.** `terradart-coverage` is retired in favour of
   `terradart-migrate --report`, and `terradart-migrate` moves from
   Homebrew to pub.dev:

   ```sh
   brew uninstall terradart-coverage terradart-migrate   # whichever you had
   dart pub global activate terradart_migrate
   ```

   `--update`, `--in-place`, `--allow-todo` and `--inline-locals` are gone
   ([details](#terradart-migrate-flags-removed)).

### `terradart_google` / `terradart_google_beta`: `hashicorp/google` 8.x

`terradart_google` and `terradart_google_beta` now target provider 8.x. The
stack's `required_providers` pin moves from `~> 7.0` to `~> 8.0` for both
`google` and `google-beta`. The provider's own
[v8 upgrade guide](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/version_8_upgrade)
applies in full; the steps below are the TerraDart side of it.

#### Upgrade steps

1. **Take removed resource types out of state first, on your current
   version.** Terraform on provider 8.x cannot read a resource whose type 8.0
   deleted ([list](#terradart_google-factories-hashicorpgoogle-80-removes)).
   Keep the cloud resource with `terraform state rm <address>`, or replace it
   with its successor and apply while you are still on 0.29.x.
2. **Raise the constraint by hand.** A caret constraint never crosses a
   minor below 1.0, so `terradart_google: ^0.29.0` does not pull 0.30.0 and
   `dart pub upgrade` alone changes nothing. Move every TerraDart package in
   `pubspec.yaml` to `^0.30.0` together (they release in lockstep), then run
   `dart pub upgrade`.
3. **Fix the compile errors.** Each maps to one row of
   [Dart API changes](#dart-api-changes); a removed factory is in the
   [removed list](#terradart_google-factories-hashicorpgoogle-80-removes).
4. **Synthesize, then upgrade the provider lock.** The new
   `required_providers` (`~> 8.0`) no longer matches the 7.x version in
   `.terraform.lock.hcl`, so a plain `terraform init` fails with *locked
   provider … does not match configured version constraint*. Run
   `terraform init -upgrade` once and commit the updated lock file. Every
   other module in the same root module has to accept provider 8.x too.
5. **Run `terraform plan` and read it before you apply.** 8.0 changes some
   defaults with no Dart signal (see
   [Behaviour changes](#behaviour-changes-the-compiler-cannot-show)); a
   routine plan that suddenly wants to update or replace a load balancer,
   an accelerator-backed instance or a dataset comes from those. Set the old
   value explicitly in the Stack when you want to keep it, and apply only
   once the plan shows what you expect.

#### Dart API changes

| Change | What to do |
|--------|------------|
| `GoogleSecretManagerSecretVersion` takes a required sealed `payload:` instead of `secretData` / `secretDataWo` / `secretDataWoVersion` (8.0 makes the version required with `secret_data_wo`, and a string) | `payload: SecretManagerSecretVersionWriteOnlyPayload(secretDataWo: ..., secretDataWoVersion: TfArg.literal('1'))`, or the deprecated `SecretManagerSecretVersionPlaintextPayload(secretData: ...)`. The version was `int`: `TfArg.literal(1)` → `TfArg.literal('1')`; `'0'` counts as unset. State migrates automatically. |
| `BigqueryDataTransferConfigSensitiveParams` takes a required sealed `secretAccessKey:` (8.0 makes `secret_access_key` / `secret_access_key_wo` exactly-one-of) | `BigqueryDataTransferConfigSensitiveParams(secretAccessKey: BigqueryDataTransferConfigWriteOnlySecretAccessKey(secretAccessKeyWo: ..., secretAccessKeyWoVersion: TfArg.literal('1')))`, or `BigqueryDataTransferConfigPlaintextSecretAccessKey(secretAccessKey: ...)`. The version is a string now (was `num`). |
| `MonitoringUptimeCheckConfigHttpAuthInfo` takes a required sealed `password:` (8.0 makes `password` / `password_wo` exactly-one-of) | `password: MonitoringUptimeCheckConfigHttpAuthWriteOnlyPassword(passwordWo: ..., passwordWoVersion: ...)`, or `MonitoringUptimeCheckConfigHttpAuthPlaintextPassword(password: ...)`. |
| `GoogleWorkflowsWorkflow.sourceContents` is required | Pass the workflow definition. |
| `GoogleIamWorkforcePoolProviderScimTenant.claimMapping` is required | Pass the SCIM attribute mapping, e.g. `{'google.subject': 'user.externalId', 'google.group': 'group.externalId'}`. |
| `GoogleCloudRunV2WorkerPool.customAudiences` and the `DataGoogleCloudRunV2WorkerPool.customAudiences` getter are removed | Drop them; the API no longer accepts custom audiences on worker pools. |
| `GoogleIntegrationsClient.runAsServiceAccount` is removed | Drop it. |
| `DataGoogleBackupDrBackupPlanAssociations.resourceType` and `DataGoogleBackupDrDataSourceReferences.resourceType` are removed | Drop them. |
| `GoogleComputeReservation.reservationBlockCount` (and the data source getter) is removed | Drop the reference. |
| `DataGoogleContainerCluster.skipNodePoolRefresh` getter is removed (8.4) | Drop the reference. |
| The 16 types of [Beta-only types now in `terradart_google`](#beta-only-types-now-in-terradart_google) are gone from `terradart_google_beta` | Import them from `terradart_google`. |

Blocks 8.0 turned from lists into sets
(`compute_service_attachment.nat_subnets` / `consumer_reject_lists`,
`container_cluster.*_config.enable_components`,
`cloud_security_compliance_framework.cloud_control_details`) keep their Dart
`List` type. A Terraform expression that indexes one (`...nat_subnets[0]`)
needs `tolist(...)` now.

#### Behaviour changes the compiler cannot show

- **`load_balancing_scheme` defaults to `EXTERNAL_MANAGED`** on
  `GoogleComputeBackendService` and `GoogleComputeGlobalForwardingRule`
  (was `EXTERNAL`). Leaving it unset now plans a change or a replacement of
  a classic load balancer; set `loadBalancingScheme: 'EXTERNAL'` to keep it.
- **`guest_accelerator` on `GoogleComputeInstance`** can now be updated to
  `count = 0` in place, which detaches the accelerators. Removing the block
  still detaches nothing (the field is computed); set `count = 0` explicitly.
- **`GoogleBigqueryDataset.defaultCollation`** is no longer computed: a
  dataset whose collation was set outside Terraform now shows a diff until
  the Stack sets it.
- **GKE node pool `name_prefix`** may now be up to 31 characters (was 14).
  A prefix longer than 14 characters gets a shorter, more collision-prone
  random suffix.
- **`GoogleComputeServiceAttachment.consumerAcceptLists`**: the
  `project_id_or_num`, `network_url` and `endpoint_url` fields default to
  `""` instead of null.
- **Nested fields 8.0 removed that TerraDart passes as raw maps** do not
  fail to compile; `terraform validate` rejects them. Drop
  `http_get.http_headers.port` from Cloud Run v2 worker pool probes (and set
  `http_headers.name`, now required), `actions.publish_findings_to_cloud_data_catalog`
  from `GoogleDataLossPreventionJobTrigger` (use
  `publish_findings_to_dataplex_catalog`), and
  `node_config.host_maintenance_policy` from `GoogleContainerCluster` /
  `GoogleContainerNodePool` (removed in 8.4). The
  `logical_structure[*].zones[*].attachment` output of
  `GoogleComputeInterconnectAttachmentGroup` is gone too.

#### Beta-only types now in `terradart_google`

Provider 8.2 and 8.3 promoted 16 beta-only types to GA, so their factories
move from `terradart_google_beta` to `terradart_google` (same fields; one
constructor change, noted after the list):

- `GoogleBiglakeHiveCatalog`, `GoogleBiglakeHiveDatabase`,
  `GoogleBiglakeHiveTable`, and their `*IamMember` / `*IamBinding` /
  `*IamPolicy` factories (`package:terradart_google/biglake.dart`)
- `GoogleObservabilityFolderSettings`,
  `GoogleObservabilityOrganizationSettings`,
  `GoogleObservabilityProjectSettings`
  (`package:terradart_google/observability.dart`)
- `GoogleComputeNetworkEdgeSecurityService`
  (`package:terradart_google/compute.dart`)

`package:terradart_google_beta/biglake.dart` and
`package:terradart_google_beta/observability.dart` are gone. Change the
import; the compiler finds every use. `GoogleBiglakeHiveTable` also takes
typed blocks now: `storageDescriptor` is a
`BiglakeHiveTableStorageDescriptor` (with
`BiglakeHiveTableStorageDescriptorColumns` entries) and `partitionKeys` a
`List<BiglakeHiveTablePartitionKeys>`, instead of `TfArg` maps. The synth
output is the same. The factories no longer pin
`provider = google-beta`, so the resources move to the `google` provider
(`GoogleProvider` must be in the Stack). The type and schema are identical
in both providers, so Terraform switches the provider in state without
replacing anything; confirm that `terraform plan` shows no replacement
before you apply. Pass `provider: 'google-beta'` to keep a resource on the
beta provider.

#### `terradart-migrate` users

Migrate HCL that already runs on provider 8.x. The migrator emits the
`terradart_google` pin (`~> 8.0`) and warns when the source pins something
else (*required_providers.google pins "~> 7.0"; the Stack emits the
terradart_google pin "~> 8.0"*); a resource of a type 8.0 removed has no
factory and stays in the sidecar. So upgrade the source first — the steps of
the provider's v8 upgrade guide, `terraform init -upgrade`, and a plan with
*No changes* — then migrate, and expect *No changes* again from the
migrated package. A package you migrated earlier follows the upgrade steps
above like any other Stack.

### `terradart_google`: factories `hashicorp/google` 8.0 removes

Provider 8.0 deletes these Terraform types, so their factories are gone from
`terradart_google` with no deprecation release (a factory for a type the
provider no longer has cannot synthesize a plan). The Dart compiler points at
every use:

| Removed factory (Terraform type) | Move to |
|----------------------------------|---------|
| `GoogleBeyondcorpAppConnection`, `GoogleBeyondcorpAppConnector`, `GoogleBeyondcorpAppGateway` (`google_beyondcorp_app_*`) and their `DataGoogleBeyondcorpApp*` data sources | `GoogleBeyondcorpSecurityGateway` / `GoogleBeyondcorpSecurityGatewayApplication` |
| `GoogleIapBrand`, `GoogleIapClient` (`google_iap_brand`, `google_iap_client`) and `DataGoogleIapClient` | manage the OAuth brand and clients in the Google Cloud console |
| `GoogleMlEngineModel` (`google_ml_engine_model`) | Vertex AI (`GoogleVertexAiEndpoint`) |
| `GoogleNotebooksEnvironment`, `GoogleNotebooksInstance`, `GoogleNotebooksRuntime` (`google_notebooks_*`), their `*IamMember` / `*IamBinding` / `*IamPolicy` factories and the `DataGoogleNotebooks*IamPolicy` data sources | `GoogleWorkbenchInstance` (+ `GoogleWorkbenchInstanceIam*`) |
| `GoogleVertexAiSchedule` (`google_vertex_ai_schedule`) | `GoogleColabSchedule` |

`package:terradart_google/notebooks.dart` is gone with them; drop the import.

**Before you upgrade**, take these resources out of Terraform state, or
Terraform on provider 8.x cannot read them:

- To keep the cloud resource and stop managing it:
  `terraform state rm <address>` for each of them.
- To replace it with the successor: create the successor first on your
  current version, move the workload, then delete the old resource from the
  Stack and apply — all before you upgrade.

### `terradart_cloudflare` follows `cloudflare/cloudflare` 5.26.0

**Breaking (`terradart_cloudflare`)** — the provider pin moves from `5.23.0`
to `5.26.0`, and the factories follow the provider's own schema changes
(upstream ships breaking changes in 5.24.0; see its
[CHANGELOG](https://github.com/cloudflare/terraform-provider-cloudflare/blob/v5.26.0/CHANGELOG.md)).
Synth output now pins `version = "5.26.0"`; run `terraform init -upgrade`.

| Before (5.23.0) | After (5.26.0) |
|-----------------|----------------|
| `DataCloudflareRateLimits` | removed upstream; read one rule with `DataCloudflareRateLimit` |
| `CloudflareRateLimit(...).id`, `.description`, `.disabled` (and the `bypass` block) | removed upstream; `rateLimitId:` names the rule |
| `CloudflareFlagshipFlag(flagKey: ...)` | removed; the flag is identified by `key:`, and `.id` is a computed getter |
| `CloudConnectorRulesRules(provider: ...)` | `CloudConnectorRulesRules(cloudConnectorRulesProvider: ...)` |
| `PipelineSinkSchema(format: PipelineSinkSchemaFormat(...))`, `PipelineStreamSchema(format: PipelineStreamSchemaFormat(...))` | the nested `format` is gone from `schema`; drop it |
| `AiSearchInstanceSourceParamsWebCrawler(storeOptions: ...)` and `CloudflareAiSearchInstance.vectorizeName` | removed; `discoverOptions:` (`AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions`) is the new crawl setting |
| `CloudflareEmailRoutingDns.success`, `DataCloudflareEmailRoutingDns.success` | removed |
| `DataCloudflareHostnameTlsSetting(...)` returning `.hostname` / `.id` | `hostname:` is a required input; read `settingId` instead of `id` |
| `DataCloudflareZeroTrustResourceLibraryApplication(id: ...)`, `.intelId` | `id` is computed now, so look the application up with `filter:`; `.intelId` is removed |
| `DataCloudflareZeroTrustResourceLibraryCategory(id: TfArg<String>)` | `id: TfArg<num>` |
| optional `zoneId:` / `accountId:` on `DataCloudflareCloudConnectorRules`, `DataCloudflareEmailRoutingDns`, `DataCloudflareEmailSecurityBlockSender(s)`, `DataCloudflareMagicTransitConnector(s)`, `DataCloudflareRegistrarDomains` | required |

The 14 resources and 22 data sources that 5.24.0–5.26.0 add get factories
too (`CloudflareCtAlerting`, `CloudflareFieldExtractor`,
`CloudflareZeroTrustCasbPolicy`, `CloudflareZoneTracing`, ...), with new
`ct`, `field`, `nel` and `precursor` barrels.

### `terradart_cloudflare` inputs with a fixed value set are enums

**Breaking (`terradart_cloudflare`)** — every constructor slot and helper
field whose provider attribute takes one of a fixed set of values is now a
generated `TerraformEnum` instead of a `String`: 538 string slots and 41
list slots across resources, data sources and their nested helpers, with
579 new enums. The value sets come from the provider's own validators
(`stringvalidator.OneOf`) and its `Available values:` descriptions at the
pinned version. Synth output is unchanged: each member synthesizes its
Terraform value.

| Before | After |
|--------|-------|
| `CloudflareDnsRecord(type: TfArg.literal('CNAME'), ...)` | `CloudflareDnsRecord(type: TfArg.literal(DnsRecordType.cname), ...)` |
| `AccessRuleConfiguration(target: TfArg.literal('ip'), ...)` | `AccessRuleConfiguration(target: TfArg.literal(AccessRuleConfigurationTarget.ip), ...)` |
| `CloudflareHealthcheck(checkRegions: TfArg.literal(['WNAM']), ...)` | `CloudflareHealthcheck(checkRegions: [TfArg.literal(HealthcheckCheckRegions.wnam)], ...)` |
| `R2BucketCorsRulesAllowed(methods: TfArg.literal(['GET']), ...)` | `R2BucketCorsRulesAllowed(methods: [TfArg.literal(R2BucketCorsRulesAllowedMethods.get)], ...)` |

Replace each string with the enum member named after it; the analyzer
names the enum type at every call site. A list of values becomes a Dart
list of `TfArg` elements, so one element can still be a reference. A value
that is not a Dart identifier gets a spelled-out member name (`<` → `lt`,
`<=` → `lte`, `1.2` → `v1p2`). A slot still takes `TfArg.expression(...)`
or a reference to another resource's output.

`terradart-migrate` maps the values in existing Terraform onto the enums,
ignoring case: `type = "cname"` becomes `DnsRecordType.cname`, which
synthesizes `"CNAME"`, and the report warns about each value it
normalized, because `terraform plan` shows the new spelling as a change
wherever the provider compares the value case-sensitively.

### `terradart_cloudflare` map-of-object attributes take a `Map` of helpers

**Breaking (`terradart_cloudflare`)** — an attribute the provider schema
declares as a map of objects (`nested_type` with `nesting_mode: "map"`) used
to take a single helper object, so no value passed `terraform validate`.
Those slots and helper fields now take `Map<String, Helper>`, keyed by the
map key: 34 inputs across 7 resources (`CloudflareZeroTrustRiskBehavior`,
`CloudflarePagesProject`, `CloudflareRuleset`, `CloudflareWorker`,
`CloudflareWorkerVersion`, `CloudflareWorkersScript`, `CloudflareAiGateway`).

| Before | After |
|--------|-------|
| `CloudflareZeroTrustRiskBehavior(behaviors: ZeroTrustRiskBehaviorBehaviors(...), ...)` | `CloudflareZeroTrustRiskBehavior(behaviors: {'imp_travel': ZeroTrustRiskBehaviorBehaviors(...)}, ...)` |
| `PagesProjectDeploymentConfigsPreview(envVars: PagesProjectDeploymentConfigsPreviewEnvVars(...))` | `PagesProjectDeploymentConfigsPreview(envVars: {'API_KEY': PagesProjectDeploymentConfigsPreviewEnvVars(...)})` |
| `CloudflareWorkersScript(files: WorkersScriptFiles(...), ...)` | `CloudflareWorkersScript(files: {'index.js': WorkersScriptFiles(...)}, ...)` |

Wrap the old helper in a map literal under the key Terraform expects. A
sensitive field inside such a map (`env_vars.*.value` on the Pages project
deployment configs) is now checked per entry, so synth rejects a plain
literal there as it does for any other sensitive field — pass a sensitive
variable or reference. `terradart-migrate` translates these maps into the
new shape.

### `terradart_appwrite` inputs with a fixed value set are enums

**Breaking (`terradart_appwrite`)** — 23 string slots across 17 resources
take a generated `TerraformEnum` instead of a `String`: the 21 the
provider's validators restrict (`stringvalidator.OneOf` at the pinned
`2.0.0-beta.1`), plus `AppwriteMessagingProvider.type` and
`AppwriteTablesdbColumn.type`, whose value sets the provider enforces when
it creates the resource. Synth output is unchanged.

| Before | After |
|--------|-------|
| `AppwriteMessagingProvider(type: TfArg.literal('smtp'), ...)` | `AppwriteMessagingProvider(type: TfArg.literal(MessagingProviderType.smtp), ...)` |
| `AppwriteTablesdbColumn(type: TfArg.literal('enum'), ...)` | `AppwriteTablesdbColumn(type: TfArg.literal(TablesdbColumnType.enumCase), ...)` |
| `AppwriteStorageBucket(compression: TfArg.literal('gzip'), ...)` | `AppwriteStorageBucket(compression: TfArg.literal(StorageBucketCompression.gzip), ...)` |
| `AppwritePostgresqlDatabase(syncMode: TfArg.literal('quorum'), ...)` | `AppwritePostgresqlDatabase(syncMode: TfArg.literal(PostgresqlDatabaseSyncMode.quorum), ...)` |
| `AppwriteMysqlBackupStorage(storageProvider: TfArg.literal('s3'), ...)` | `AppwriteMysqlBackupStorage(storageProvider: TfArg.literal(MysqlBackupStorageStorageProvider.s3), ...)` |

The other typed slots: `status` / `maintenanceWindowDay` on the three
`Appwrite*Database` resources, `type` on the `Appwrite*BackupPolicy`
resources, `mode` on `Appwrite*Pooler`, `sourceType` on
`AppwriteFunctionDeployment` / `AppwriteSiteDeployment`, and
`AppwriteProxyRule.type`. The analyzer names the enum at every call site.
`terradart-migrate` maps existing values onto the members, as for
Cloudflare.

### `terradart_aws` inputs with a fixed value set are enums

**Breaking (`terradart_aws`)** — 2903 string inputs across 811 resources
take a generated `TerraformEnum` instead of a `String`. These are the value
sets the provider's validators enforce at the pinned `6.66.0`:
`enum.Validate[T]` / `fwtypes.StringEnumType[T]` over an aws-sdk-go-v2
`types` enum, `validation.StringInSlice` and `stringvalidator.OneOf`. A set
the provider only offers as one alternative (`validation.Any` beside an ARN
or `""`, as on `cloudwatch_role_arn`) stays a `String`. Synth output is
unchanged.

| Before | After |
|--------|-------|
| `AwsLambdaFunction(runtime: TfArg.literal('provided.al2023'), ...)` | `AwsLambdaFunction(runtime: TfArg.literal(LambdaFunctionRuntime.providedAl2023), ...)` |
| `AwsLambdaFunction(architectures: TfArg.literal(['x86_64']), ...)` | `AwsLambdaFunction(architectures: [TfArg.literal(LambdaFunctionArchitectures.x8664)], ...)` |
| `AwsLambdaFunctionUrl(authorizationType: TfArg.literal('NONE'), ...)` | `AwsLambdaFunctionUrl(authorizationType: TfArg.literal(LambdaFunctionUrlAuthorizationType.none), ...)` |
| `AwsAcmCertificate(validationMethod: TfArg.literal('DNS'), ...)` | `AwsAcmCertificate(validationMethod: TfArg.literal(AcmCertificateValidationMethod.dns), ...)` |
| `AwsRoute53Record(type: TfArg.literal('A'), ...)` | `AwsRoute53Record(type: TfArg.literal(Route53RecordType.a), ...)` |
| `AwsCloudfrontDistribution(priceClass: TfArg.literal('PriceClass_100'), ...)` | `AwsCloudfrontDistribution(priceClass: TfArg.literal(CloudfrontDistributionPriceClass.priceclass100), ...)` |

A list of strings with a value set becomes a list of enum literals
(`List<TfArg<E>>`), as `architectures` shows. Nested blocks follow the same
pattern: `CloudfrontDistributionDefaultCacheBehavior(viewerProtocolPolicy:
TfArg.literal(CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy.redirectToHttps))`.
The analyzer names the enum at every call site. Data sources and map-typed
inputs are unchanged. `terradart-migrate` maps existing values onto the
members, as for Cloudflare.

### `terradart_aws` exactly-one inputs are sealed types

**Breaking (`terradart_aws`)** — 160 input groups across 116 resources that
the provider requires exactly one of take one required sealed-type argument
instead of several optional ones. These are the provider's `ExactlyOneOf`
groups at the pinned `6.66.0`, 74 of them on resource arguments and 86 inside
nested blocks. The argument is named after its members joined by `Or`, and
each member is a variant class named `<Prefix><Member>Option`. Synth output
is unchanged.

| Before | After |
|--------|-------|
| `AwsLambdaFunction(filename: TfArg.literal('bootstrap.zip'), ...)` | `AwsLambdaFunction(filenameOrImageUriOrS3Bucket: LambdaFunctionFilenameOption(filename: TfArg.literal('bootstrap.zip')), ...)` |
| `AwsAcmCertificate(domainName: TfArg.literal('example.com'), ...)` | `AwsAcmCertificate(domainNameOrPrivateKeyOrPrivateKeyWo: AcmCertificateDomainNameOption(domainName: TfArg.literal('example.com')), ...)` |
| `AwsRoute53Record(records: TfArg.literal(['192.0.2.1']), ...)` | `AwsRoute53Record(aliasOrRecords: Route53RecordRecordsOption(records: TfArg.literal(['192.0.2.1'])), ...)` |
| `AwsRoute53Record(alias: Route53RecordAlias(...), ...)` | `AwsRoute53Record(aliasOrRecords: Route53RecordAliasOption(alias: Route53RecordAlias(...)), ...)` |

Leaving the argument out, or setting two members, used to fail at
`terraform validate`; now it doesn't compile. A group inside a nested block
works the same way on the helper class:
`WorkspaceswebSessionLoggerEventFilter(allOrInclude:
WorkspaceswebSessionLoggerEventFilterIncludeOption(include: [...]))`. The
other inputs are unchanged, and a member's own type (an enum, a nested
helper) stays what it was. `terradart-migrate` picks the variant from whichever member the source
sets.

### `terradart-coverage` retired

**`terradart-coverage` is retired** — the `terradart_coverage` package, its
release binaries and its Homebrew formula are gone. The Dart packages you
depend on are unchanged. If you installed it:

```sh
brew uninstall terradart-coverage
```

`terradart-migrate --report` replaces it. It reads the same `.tf` / `.tf.json`
source with no `terraform` run, and writes nothing:

| `terradart-coverage` | `terradart-migrate` |
|----------------------|---------------------|
| `terradart-coverage` / `--dir <dir>` | `terradart-migrate --report` / `--report --dir <dir>` |
| `--json` | `--report --json` |
| "Supported" / "Not in catalog" per type | per type: blocks that translate, blocks kept in Terraform (each with its reason), `not in any catalog` |
| "Not analyzed" (remote module) | "Not scanned" |
| `terraform show -json` piped in | not supported: the report reads source. A `count` / `for_each` that is not a literal counts once |
| `package:terradart_coverage` (`scanConfigDir`, `buildCoverageReport`) | `package:terradart_migrate` (`scanModuleTree`, `migrateTree`, `MigrationCoverage.of`) |

A file that does not parse now stops the report with its error (exit 65),
where `terradart-coverage` skipped it.

### `terradart-migrate` flags removed

`--update`, `--in-place`, `--allow-todo` and `--inline-locals` are gone; each
now exits 64. Every migration writes what stays in Terraform to the sidecar,
and finishing it is an edit to the Stack, checked by `terraform plan`:

| Removed flag | Instead |
|--------------|---------|
| `--update <package>` | port the sidecar block into the Stack by hand (`terradart-migrate --report` over the sidecar files shows what translates today), delete it from the sidecar, synthesize, plan |
| `--in-place` | delete the migrated blocks from your source tree yourself, or retire it once the package plans with *No changes* |
| `--allow-todo` | the sidecar: every kept block is listed in `MIGRATION.md` with its reason |
| `--inline-locals` | declare the literal `locals` as Dart `final`s in the Stack and drop them from `locals.tf` |

On the library side `migrateModule` / `migrateTree` lose `allowTodo` and
`inlineLocals`, `MigrationResult.sidecar` and `MigratedModule.sidecar` are
never null, and `rerunProject`, `writeRerun`, `rewriteInPlace` and their
types are removed. The report JSON drops `allowTodo`, `planDiffers` and
`todos`.

### `terradart-migrate` moves from Homebrew to pub.dev

The release binaries and the `nozomi-koborinai/tap/terradart-migrate` formula
are gone; `terradart-migrate` is a pub.dev package now. Switch with:

```sh
brew uninstall terradart-migrate
dart pub global activate terradart_migrate
```

The executable keeps its name and flags. It needs a Dart SDK on the machine,
and `~/.pub-cache/bin` on your `PATH`.

## 0.28.x → 0.29.0

Two breaking changes, neither of which changes synthesized JSON: an import
move for `TimeProvider` / `TimeSleep`, and the retirement of the optional
`terradart-mcp` binary. Everything else in 0.29.0 is additive (the new
`terradart_aws` package among it).

### `terradart-mcp` retired

**`terradart-mcp` is retired.** The `terradart_agent` package, the `terradart-mcp` binary and its Homebrew formula are gone; the Dart packages you depend on are unchanged. If you installed it:

```sh
brew uninstall terradart-mcp
```

and remove the `terradart` entry (`"command": "terradart-mcp"`) from your MCP client configuration (`.mcp.json`, `.cursor/mcp.json`, `claude mcp remove terradart`, ...).

Give your coding agent the [TerraDart Agent Skill](skills/terradart/SKILL.md) instead (`npx skills add nozomi-koborinai/terradart --skill terradart`). It points the agent at what the MCP tools used to return, for every provider package rather than only `terradart_google`:

| `terradart-mcp` tool | Replacement |
|----------------------|-------------|
| `list_resources`, `list_barrels`, `get_resource_schema` | the package's generated `lib/src/_catalog.g.dart` and wrapper sources, or the [coverage page](https://terradart.dev/docs/coverage/) |
| `get_quickstart` | the CI-validated [`examples/`](examples/) |
| `check_coverage` | the `terradart-coverage` CLI |
| `migrate_module` | the `terradart-migrate` CLI |

### `TimeProvider` / `TimeSleep` moved to `terradart_time`

They are no longer part of `terradart_google`, so a stack on any provider
package can use them. Add the package, at the same caret as your
`terradart_google` dependency (the workspace releases in lockstep), and
change the import:

```yaml
dependencies:
  terradart_google: ^0.29.0
  terradart_time: ^0.29.0
```

```dart
// Before
import 'package:terradart_google/time.dart';

// After
import 'package:terradart_time/terradart_time.dart';
```

The classes, their parameters and the synthesized JSON are unchanged.
`Apis.enable` still inserts the propagation `TimeSleep` and still throws
`StateError` unless `const TimeProvider()` is in `Stack.providers`.

A package generated by an earlier `terradart-migrate` imports
`package:terradart_google/time.dart` wherever the source had a `time_sleep`;
apply the same two edits to it. Migrations run with 0.29.0 emit the new
import and dependency themselves, so an AWS or Cloudflare stack no longer
pulls in `terradart_google` just for the wait.

## 0.27.0 → 0.28.0

**`terradart_core`** — `TfArg` gains a fourth variant, `TfArgExpression`
(`TfArg.expression(...)`): a raw Terraform expression, emitted verbatim.
`TfArg` is sealed, so an exhaustive `switch` over its subtypes needs one
more case:

```dart
// Before
switch (arg) {
  case TfArgLiteral(:final value): ...
  case TfArgRef(:final ref): ...
  case TfArgVariable(:final name): ...
}

// After
switch (arg) {
  case TfArgLiteral(:final value): ...
  case TfArgRef(:final ref): ...
  case TfArgVariable(:final name): ...
  case TfArgExpression(:final template): ...
}
```

Nothing changes for code that only constructs arguments. Two synth
behaviours are new, both additive:

- the `var.<name>` references inside a `TfArg.expression` template are
  checked against the Stack's declarations, as `TfArg.variable` is —
  declare them with `addVariable` or `addExternalVariable`;
- a nested sensitive field accepts any Terraform template (a string holding
  an unescaped `${ ... }` or `%{ ... }` anywhere), where it used to accept
  only a string *starting* with `${`.

Where you wrote `TfArg.literal(r'${...}')` to smuggle an expression through
a string argument, write `TfArg.expression(r'${...}')`; the literal form
still works on non-sensitive string arguments.

**`terradart_core`** — `StackProvider` gains `String? get alias`. Every
provider class in the workspace implements it; a hand-written
`StackProvider` implementation needs the getter (`null` for the default
configuration):

```dart
final class MyProvider implements StackProvider {
  const MyProvider({this.alias});

  @override
  final String? alias;
  // providerName, source, versionConstraint, configArgs as before
}
```

That is the whole breaking surface. Provider aliases are now end-to-end
(#666): register a second configuration with `alias:` and select it on a
resource with the `provider:` parameter every curated factory and data
source now takes:

```dart
final class MultiRegionStack extends Stack {
  MultiRegionStack({required String projectId})
      : super(providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
          GoogleProvider(alias: 'eu', project: projectId, region: 'europe-west1'),
          GoogleBetaProvider(project: projectId),
        ]) {
    add(GoogleStorageBucket(
      localName: 'assets_eu',
      name: TfArg.literal('my-app-assets-eu'),
      location: TfArg.literal('EUROPE-WEST1'),
      provider: 'google.eu', // provider = google.eu
    ));
    add(GooglePubsubTopic(
      localName: 'preview',
      name: TfArg.literal('preview'),
      provider: 'google-beta', // a GA type on the registered beta provider
    ));
  }
}
```

Synth changes, additive for a Stack that registers each provider once:

- the `provider` block is emitted as a list when a name has more than one
  configuration — Terraform's JSON form for aliases:
  `"google": [{"project": "p"}, {"alias": "eu", "project": "p", "region": "europe-west1"}]`.
  A single default configuration keeps the object form it had;
- synth rejects a `provider:` with no matching registration, the same
  provider registered twice without an alias (or with the same alias
  twice), and an alias that is not a Terraform identifier.

**`terradart_core`** — `Stack.addMoved(from, to)` records a
`moved { from = ... to = ... }` block (additive, #663): synth emits the
entries under the top-level `moved` key, so a renamed resource — or a
`count` / `for_each` instance unrolled into its own resource — keeps its
state instead of being destroyed and re-created. `to` must name a resource
of the Stack (or lie inside a `module.` call); synth checks it, as Terraform
would.

```dart
add(GooglePubsubTopic(localName: 'orders_0', name: TfArg.literal('orders-0')));
addMoved('google_pubsub_topic.orders[0]', 'google_pubsub_topic.orders_0');
```

**`terradart_core`** — three additions that turn migrator blockers into
translations (#671), all additive:

- **`timeouts:`** on every curated factory and data source, mirroring
  `lifecycle`. `TfTimeouts` carries the Go duration strings Terraform
  writes; which operations a type declares is `terraform validate`'s
  business, not synth's:

  ```dart
  add(GoogleStorageBucket(
    localName: 'assets',
    name: TfArg.literal('my-app-assets'),
    location: TfArg.literal('ASIA-NORTHEAST1'),
    timeouts: const TfTimeouts(create: '10m', read: '5m', update: '10m'),
  ));
  ```

  `TfTimeouts.of(create: Duration(minutes: 10))` builds one from
  `Duration`s (rendered as whole seconds). A hand-written `Resource`
  subclass gains the parameter for free; a hand-written *factory* that
  wants to expose it forwards `super.timeouts` like `super.lifecycle`.

- **`TfArg.workspace()`** — `${terraform.workspace}` under a name.
  Sugar over `TfArg.expression`; use `TfArg.expression` to interpolate the
  workspace into a larger string.

- **Partial backend configuration**: every field of `GcsBackend` and
  `S3Backend` is optional now, so a block whose values arrive at
  `terraform init -backend-config` time is expressible —
  `const GcsBackend()` emits `backend "gcs" {}`. Passing them still works
  exactly as before.

**`terradart_core`** — `Stack.addModule(...)` registers a `ModuleCall`
(additive, #665): a `module "<name>" { ... }` block as a Dart value. Synth
emits the calls under the top-level `module` key, and reads a module's
outputs back as `TfRef`s, so they flow into any `TfArg` slot like a
resource attribute.

```dart
final naming = addModule(ModuleCall(
  localName: 'naming',
  source: '../modules/naming',
  inputs: {'env': TfArg.literal('prod')},
));
add(GooglePubsubTopic(
  localName: 'orders',
  name: TfArg.ref(naming.output<String>('topic_name')),
));
```

A root that *only* calls modules needs no provider of its own —
`Stack(providers: [])` now synthesizes when the stack registers a
`ModuleCall` and no resource or data source, and the `terraform` block
omits `required_providers` instead of emitting an empty one; the child
modules pin what they use. A stack with a resource still needs its
provider registered, as before.

`source` is copied verbatim and Terraform resolves it relative to the
directory the Stack synthesizes into (`tf-out/`), so a local module lives
beside that directory, not beside the Dart. `version`, `providers`,
`dependsOn`, `count` and `forEach` cover the rest of the `module` block;
an input named like one of those meta-arguments is rejected at construction,
and synth checks that every `providers` value names a registered provider
configuration.

`terradart-migrate` now translates `module` blocks instead of leaving them
in the sidecar, and generates a typed wrapper per local module directory
from its `variable` and `output` blocks
(`ServiceAccountModule(localName: 'sa_bff', source: '../modules/service_account', accountId: ...)`,
`sa.member`). Re-running the migrator on a tree migrated with 0.27.0 moves
those calls out of `terradart_leftover.tf` and into the Stack; the plan is
unchanged either way, since the address keeps its `module.<name>.` prefix.

## 0.26.0 → 0.27.0

**Breaking (`terradart_core`)** — synth now refuses to emit a config whose
`TfArg.variable('<name>')` references have no matching declaration. Before,
such a config synthesised cleanly and failed later at `terraform plan` with
*Reference to undeclared input variable*.

Declare the variable on the Stack:

```dart
// Before — the declaration lived in a hand-written file, or nowhere.
password: TfArg.variable('db_password'),

// After — declare it alongside the reference.
addVariable(
  'db_password',
  const TfVariable(type: 'string', sensitive: true),
);
password: TfArg.variable('db_password'),
```

Synth emits the collected declarations under the top-level `variable` key of
`main.tf.json`, and omits the key when a stack declares none (Terraform
rejects an empty `variable` block).

**If your `variable` blocks live in a hand-written file** beside the
generated `main.tf.json` — a legitimate setup, since Terraform merges every
`.tf` / `.tf.json` in the module directory, and the only way to express what
`TfVariable` does not model such as `validation { ... }` blocks — register
the name instead of moving the block. Synth then accepts the reference and
emits nothing for it, so there is no duplicate declaration:

```dart
addExternalVariable('db_password');
```

The reference check still catches typos in every other name.

**Delete any `variables.tf.json` you were writing by hand.** If you followed
the previous pattern — writing a second JSON file next to the generated
`main.tf.json` after `writeTo()` — that file is still on disk, and synth does
not remove it. Once the same names are declared through `addVariable`,
Terraform sees both files and fails:

```
Error: Duplicate variable declaration

  on variables.tf.json line 3, in variable:
A variable named "ops_folder_id" was already declared at main.tf.json.
```

Remove the stale file once (`rm tf-out/variables.tf.json`); nothing
regenerates it.

---

## 0.25.3 → 0.26.0

**Breaking (`terradart_cloudflare`)** — `CloudflareZone.account` is a typed
`ZoneAccount` helper instead of `TfArg<Map<String, dynamic>>`. Nested
plugin-framework objects across the filled `5.23.0` catalog are typed helper
classes, not `TfArg<Map<...>>`.

```dart
// Before
CloudflareZone(
  localName: 'main',
  name: TfArg.literal('example.com'),
  account: TfArg.literal({'id': accountId}),
);

// After
CloudflareZone(
  localName: 'main',
  name: TfArg.literal('example.com'),
  account: ZoneAccount(id: TfArg.literal(accountId)),
);
```

`CloudflareDnsRecord` now exposes typed `data` (`DnsRecordData`), `settings`
(`DnsRecordSettings`), and `private_routing` slots that were previously
omitted from the curated constructor.

`^0.25.x` patches on pub.dev stay compatible with the previous
`TfArg<Map>` zone account.

---

## 0.23.0 → 0.24.0

**Breaking** — 19 resources that previously took an opaque, hand-shaped
`TfArg<Map<String, dynamic>>?` (or `TfArg<List<Map<String, dynamic>>>?` for a
repeated block) for a top-level nested block now take a typed helper class
(or `List<...>` of one) instead. The serialized Terraform JSON is
**semantically unchanged**: the typed `encode()` writes fields in a fixed
alphabetical order, so the JSON object *key order* may differ from what your
hand-written map produced — key order carries no meaning in Terraform. Only
the Dart-side authoring API narrows, from an untyped map literal to a
generated `@immutable` class with named fields, `TerraformEnum` members
where the schema documents finite values, and its own `encode()`.

One value-representation note: attributes whose schema type is `map(string)`
now require string values at compile time. If you previously passed a number
in such a map (e.g. `GoogleAppEngineServiceSplitTraffic`'s
`split.allocations: {'v1': 1.0}`), it becomes `{'v1': '1.0'}` — Terraform
treats a JSON number and a JSON string identically for a string-typed
attribute, so the plan/apply behavior does not change.

New type names follow `<FactoryNameWithoutGoogle><BlockPathInPascalCase>`
(e.g. `google_app_engine_domain_mapping`'s `ssl_settings` block →
`AppEngineDomainMappingSslSettings`); let your IDE's autocomplete on the
constructor parameter's expected type find the exact name rather than
guessing it.

### Before / after: `google_app_engine_domain_mapping.ssl_settings`

```dart
// Before
GoogleAppEngineDomainMapping(
  localName: 'demo',
  domainName: TfArg.literal('example.com'),
  sslSettings: TfArg.literal({'ssl_management_type': 'AUTOMATIC'}),
);

// After
GoogleAppEngineDomainMapping(
  localName: 'demo',
  domainName: TfArg.literal('example.com'),
  sslSettings: AppEngineDomainMappingSslSettings(
    sslManagementType: TfArg.literal(
      AppEngineDomainMappingSslSettingsSslManagementType.automatic,
    ),
  ),
);
```

### Retyped top-level parameters

| Factory | Retyped params |
| --- | --- |
| `GoogleAccessContextManagerAccessLevel` | `basic`, `custom` |
| `GoogleAccessContextManagerServicePerimeter` | `spec`, `status` |
| `GoogleAppEngineDomainMapping` | `sslSettings` |
| `GoogleAppEngineFlexibleAppVersion` | `livenessCheck`, `readinessCheck`, `vpcAccessConnector` |
| `GoogleAppEngineServiceNetworkSettings` | `networkSettings` |
| `GoogleAppEngineServiceSplitTraffic` | `split` |
| `GoogleAppEngineStandardAppVersion` | `handlers`, `deployment`, `entrypoint`, `automaticScaling`, `manualScaling`, `vpcAccessConnector` |
| `GoogleBinaryAuthorizationPolicy` | `admissionWhitelistPatterns`, `clusterAdmissionRules`, `defaultAdmissionRule` |
| `GoogleDataplexAsset` | `discoverySpec`, `resourceSpec` |
| `GoogleDataplexDatascan` | `data`, `executionSpec`, `executionIdentity` |
| `GoogleDataplexEntryLink` | `entryReferences`, `aspects` |
| `GoogleDataplexTask` | `triggerSpec`, `executionSpec` |
| `GoogleDataplexZone` | `discoverySpec`, `resourceSpec` |
| `GoogleNetworkManagementConnectivityTest` | `source`, `destination` |
| `GoogleOsConfigOsPolicyAssignment` | `osPolicies`, `instanceFilter`, `rollout` |
| `GoogleOsConfigPatchDeployment` | `instanceFilter`, `patchConfig`, `rollout` |
| `GoogleRecaptchaEnterpriseKey` | `webSettings`, `androidSettings`, `iosSettings`, `wafSettings`, `testingOptions` |

`GoogleComputeRouterNat` and `GoogleComputeRouterPeer` are in this same
migration wave (their schemas gained the same treatment) but expose no
constructor change: the nested blocks the schema newly types on these two
(`rules`, `subnetwork`, `nat64_subnetwork`, `advertised_ip_ranges`) were
never in the curated `paramOrder` to begin with, so nothing user-facing moves.

`google_dataplex_task`'s `workload`, `google_dataplex_datascan`'s `scanSpec`,
`google_app_engine_flexible_app_version`'s `scaling`, and
`google_os_config_patch_deployment`'s `schedule` are pre-existing
hand-curated sealed types (`DataplexTaskWorkload`,
`DataplexDatascanSpec`, `AppEngineFlexibleAppVersionScaling`,
`OsConfigPatchDeploymentSchedule`) — unrelated to this wave, not listed above.

### Some subtrees stay `Map`-shaped on purpose

A handful of deeply-nested or already-hand-curated subtrees were
deliberately excluded from typing (`nestedTypeExcludes` on the override) to
avoid either a runaway class count on a single resource or a name collision
with a pre-existing hand-written type. These keep taking a literal map (or
list-of-map) exactly as before:

- `GoogleOsConfigOsPolicyAssignment`'s `osPolicies[].resourceGroups[].resources`
  stays `TfArg<List<Map<String, dynamic>>>` — the `exec` / `file` / `pkg` /
  `repository` resource-spec shapes underneath it are not typed.
- `GoogleDataplexDatascan`'s four `scan_spec` variants (`data_profile_spec`,
  `data_quality_spec`, `data_discovery_spec`, `data_documentation_spec`) are
  untouched by this wave — they're already the hand-written
  `DataplexDatascanDataProfileSpec` / `...DataQualitySpec` /
  `...DataDiscoverySpec` / `...DataDocumentationSpec` classes (accessed via
  `scanSpec`), which predate `deriveNestedTypes` and would otherwise collide
  with a freshly-derived class of the same name.

## 0.22.x → 0.23.0

### `StackProvider.toTfJson()` removed

The backwards-compat shim (it just returned `configArgs`) is gone. Read
`configArgs` directly:

```dart
// before
final map = provider.toTfJson();
// after
final map = provider.configArgs;
```

`Backend.toTfJson()` and `TfArg.toTfJson()` are unrelated real APIs and are
unchanged.

### Six string fields became typed enums

The serialized Terraform JSON is unchanged; only the Dart type narrows.

| Factory | Field | New type |
| --- | --- | --- |
| `GoogleAccessContextManagerServicePerimeter` | `perimeterType` | `AccessContextManagerServicePerimeterPerimeterType` |
| `GoogleComputeHaVpnGateway` | `gatewayIpVersion` | `ComputeHaVpnGatewayGatewayIpVersion` |
| `GoogleComputeHaVpnGateway` | `stackType` | `ComputeHaVpnGatewayStackType` |
| `GoogleComputeNetworkPeering` | `stackType` | `ComputeNetworkPeeringStackType` |
| `GoogleComputeNetworkPeering` | `updateStrategy` | `ComputeNetworkPeeringUpdateStrategy` |
| `GoogleComputeRouterPeer` | `advertiseMode` | `ComputeRouterPeerAdvertiseMode` |

Replace the string literal with the enum member:

```dart
// before
stackType: TfArg.literal('IPV4_IPV6'),
// after
stackType: TfArg.literal(ComputeHaVpnGatewayStackType.ipv4Ipv6),
```

## 0.13.0 → 0.14.0

**Breaking** — one curated nested block became typed.

### `connection_tracking_policy` on `google_compute_region_backend_service`

Previously this nested block fell through untyped (`TfArg<Map>`); it is now a
typed helper class with two enums.

```dart
// Before
connectionTrackingPolicy: TfArg.literal({
  'tracking_mode': 'PER_SESSION',
  'connection_persistence_on_unhealthy_backends': 'NEVER_PERSIST',
}),

// After
connectionTrackingPolicy:
    const ComputeRegionBackendServiceRegionBackendServiceConnectionTrackingPolicy(
  trackingMode: RegionBackendServiceTrackingMode.perSession,
  connectionPersistenceOnUnhealthyBackends:
      RegionBackendServiceConnectionPersistence.neverPersist,
),
```

If you did not set `connection_tracking_policy`, no change is needed.

## 0.12.20 → 0.13.0

**Breaking changes** — API-enablement collapse, time-wrapper relocation, and
removal of the unimplemented provider-aliasing surface.

### `Apis.enable` replaces `ApisEnablement` / `ApiEnablement`

The two-layer bundle API is gone; one static call registers the services plus
the propagation `TimeSleep` and returns the dependency list:

```dart
// Before
final apiDeps = ApisEnablement.enable(
  barrels: [Barrels.cloudRun, Barrels.redis],
).registerOn(this);

// After
final apiDeps = Apis.enable(
  this,
  barrels: [Barrels.cloudRun, Barrels.redis],
);
```

Defaults are unchanged (60s propagation, `api` prefix). Callers that built
`ApiEnablement(services: ...)` directly should register the `Apis.required`
list themselves and wire `ResourceDependency` manually.

### `TimeProvider` / `TimeSleep` moved to `terradart_google`

`terradart_core` is provider-neutral again. Import the `time` barrel instead:

```dart
// Before: exported by package:terradart_core/terradart_core.dart
// After:
import 'package:terradart_google/time.dart';
```

### Provider-aliasing surface removed

`GoogleProvider.providerAlias`, `StackProvider.providerAlias`,
`ProviderBinding`, and `Resource.provider` are removed. None of them ever
reached the synthesized Terraform JSON — synth ignored the alias and never
emitted a `provider` meta-argument — so any code passing them was a silent
no-op. Aliasing returns as an end-to-end feature when multi-provider stacks
land.

### Synth validates provider coverage

`Stack.synth()` now throws `StateError` when a registered resource or data
source has no matching provider in `Stack.providers` (matched by the type's
prefix before the first `_`, e.g. `time_sleep` → `time`). Previously Terraform
silently fell back to an unpinned implied provider. Fix: add the missing
provider (e.g. `const TimeProvider()`).

### `GoogleCertificateManagerCertificateMapEntry` — sealed `match`

The provider requires exactly one of `hostname` / `matcher`; both optional
params are replaced by one required sealed `match`:

```dart
// Before
GoogleCertificateManagerCertificateMapEntry(
  // ...
  hostname: TfArg.literal('app.example.com'),
);

// After
GoogleCertificateManagerCertificateMapEntry(
  // ...
  match: CertificateManagerCertificateMapEntryMatch.hostname(
    TfArg.literal('app.example.com'),
  ),
);
// or .matcher(TfArg.literal('PRIMARY'))
```

### `LoggingSavedQueryVisibility.privateVisibility` → `.private`

The enum is now derived from Magic Modules; the value's Dart name matches the
upstream constant directly. Rename `LoggingSavedQueryVisibility.privateVisibility`
to `LoggingSavedQueryVisibility.private` (`.shared` is unchanged).

## 0.12.11 → 0.12.12

**Breaking changes** in `terradart_google` — several curated factories now enforce
GCP / Terraform `exactly_one_of` constraints at compile time via sealed virtual
slots (closes #107 exactly-one debt):

| Factory | Before | After |
|---------|--------|-------|
| `GoogleComputeFirewall` | optional `allow:` / `deny:` | required `rulePolicy:` (`ComputeFirewallAllowPolicy` / `ComputeFirewallDenyPolicy`) |
| `GoogleComputeHealthCheck` | optional `httpHealthCheck:` / `httpsHealthCheck:` / … | required `protocol:` (`ComputeHealthCheckProtocol` variant) |
| `GoogleComputeRegionHealthCheck` | optional per-protocol params | required `protocol:` (`ComputeRegionHealthCheckProtocol` variant) |
| `GoogleMonitoringUptimeCheckConfig` | optional `monitoredResource:` / `resourceGroup:` / `syntheticMonitor:` | required `target:` (`MonitoringUptimeCheckConfigTarget` variant) |
| `GoogleBigqueryJob` | optional `query:` / `load:` / `extract:` / `copy:` | required `jobConfiguration:` (`BigqueryJobConfiguration` variant) |
| `GoogleBigqueryConnection` | optional `cloudSql:` / `aws:` / … | required `backend:` (`BigqueryConnectionBackend` variant) |
| `GoogleCloudbuildTrigger` | optional `filename:` / `build:` / `gitFileSource:` | required `buildSpec:` (`CloudbuildTriggerBuildSpec` variant) |

Example (`GoogleComputeHealthCheck`):

```dart
// Before
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  httpsHealthCheck: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);

// After
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  protocol: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);
```

Example (`GoogleCloudbuildTrigger` filename path):

```dart
// Before
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  filename: TfArg.literal('cloudbuild.yaml'),
);

// After
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  buildSpec: CloudbuildTriggerFilenameSpec(
    filename: TfArg.literal('cloudbuild.yaml'),
  ),
);
```

## 0.12.9 → 0.12.10

**Breaking changes** in `terradart_google` — finite schema fields now use typed
enums instead of `TfArg<String>`:

| Factory | Field | Enum |
|---------|-------|------|
| `GoogleBigqueryDatapolicyDataPolicy` | `dataPolicyType` | `BigqueryDatapolicyDataPolicyType` |
| `GoogleBigqueryReservationAssignment` | `jobType` | `BigqueryReservationAssignmentJobType` |
| `GoogleComputeServiceAttachment` | `connectionPreference` | `ServiceAttachmentConnectionPreference` |
| `GoogleComputeRegionSecurityPolicy` | `type` | `RegionSecurityPolicyType` |
| `GoogleComputeRegionSslPolicy` | `profile` / `minTlsVersion` | `RegionSslPolicyProfile` / `RegionSslPolicyMinTlsVersion` |
| `GoogleComputeTargetTcpProxy` | `proxyHeader` | `TargetTcpProxyProxyHeader` |
| `GoogleComputeTargetSslProxy` | `proxyHeader` | `TargetSslProxyProxyHeader` |
| `GoogleComputeRegionTargetTcpProxy` | `proxyHeader` | `RegionTargetTcpProxyProxyHeader` |
| `GoogleCloudTasksQueue` | `desiredState` | `CloudTasksQueueDesiredState` |
| `GoogleLoggingSavedQuery` | `visibility` | `LoggingSavedQueryVisibility` |
| `GoogleMonitoringSlo` | `calendarPeriod` | `MonitoringSloCalendarPeriod` |
| `GoogleStorageHmacKey` | `state` | `StorageHmacKeyState` |
| `GoogleKmsCryptoKeyVersion` | `state` | `KmsCryptoKeyVersionState` |
| `GoogleSecretManagerSecretVersion` | `deletionPolicy` | `SecretManagerSecretVersionDeletionPolicy` |
| `GoogleComputeInstanceGroupManager` | `listManagedInstancesResults` | `InstanceGroupManagerListManagedInstancesResults` |
| `GoogleComputeRegionInstanceGroupManager` | `listManagedInstancesResults` | `RegionInstanceGroupManagerListManagedInstancesResults` |
| `GoogleSqlUser` | `deletionPolicy` | `SqlUserDeletionPolicy` |

Optional Analytics Hub `discoveryType` fields use
`BigqueryAnalyticsHubDataExchangeDiscoveryType` /
`BigqueryAnalyticsHubListingDiscoveryType`.

`GoogleDnsRecordSet.type` and `GoogleCloudRunV2WorkerPool.launchStage` ship as
enums in `0.12.10` (new factories); no prior `String` API.

Nested blocks that previously accepted `TfArg<Map<String, dynamic>>?` now use
typed helpers:

| Factory | Slot | Helper / enum |
|---------|------|----------------|
| `GoogleComputeRouter` | `bgp` | `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` |
| `GoogleComputeSecurityPolicyRule` | `match` | `ComputeSecurityPolicyRuleMatch` (reuses `SecurityPolicyRuleMatchVersionedExpr`) |
| `GoogleComputeSecurityPolicyRule` | `rateLimitOptions` | `ComputeSecurityPolicyRuleRateLimitOptions` / `ComputeSecurityPolicyRuleRateLimitEnforceOnKey` |
| `GoogleComputeRegionSecurityPolicyRule` | `match` / `rateLimitOptions` | `ComputeRegionSecurityPolicyRule*` types |
| `GoogleEventarcMessageBus` / `GoogleEventarcGoogleApiSource` / `GoogleEventarcPipeline` | `loggingConfig` | `EventarcMessageBusLoggingConfig` / `EventarcMessageBusLogSeverity` |
| `GoogleComputeInstance` | `networkPerformanceConfig.totalEgressBandwidthTier` | `ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier` |
| `GoogleComputeInstanceTemplate` | `networkPerformanceConfig.totalEgressBandwidthTier` | same enum (imported from instance wrapper) |
| `GoogleComputeBackendService` | `localityLbPolicies[].policy.name` | `LocalityLbPolicy` (nested builtin policy) |
| `GoogleComputeSecurityPolicyRule` / `GoogleComputeRegionSecurityPolicyRule` | `preconfiguredWafConfig` / `rateLimitOptions` | WAF exclusion + enforce-on-key helpers / `SecurityPolicyWafExclusionOperator` |
| `GoogleComputeRegionSecurityPolicy` | `rules` / `advancedOptionsConfig` / `ddosProtectionConfig` / `userDefinedFields` | `ComputeRegionSecurityPolicyRegionSecurityPolicy*` helpers |
| `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap` | `defaultRouteAction` / `routeAction.cachePolicy` / `metadataFilters` | `*UrlMapRouteAction` / `*UrlMapCacheMode` / `*UrlMapMetadataFilterMatchCriteria` |
| `GoogleDnsPolicy` | `alternativeNameServerConfig` | `DnsPolicyAlternativeNameServerConfig` (reuses `ForwardingPath`) |
| `GoogleDnsRecordSet` | `routingPolicy` | `DnsRecordSetRoutingPolicy*` / ILB enums |
| `GoogleDnsResponsePolicyRule` | `localData` | `DnsResponsePolicyRuleLocalData` / `DnsResponsePolicyRuleRecordType` |
| `GooglePubsubTopic` | `schemaSettings` / `ingestionDataSourceSettings` | `PubsubTopicSchemaSettings` / `PubsubTopicIngestionDataSourceSettings` |
| `GoogleGkeHubFleet` | `defaultClusterConfig` | `GkeHubFleetDefaultClusterConfig` + posture / binary-auth enums |
| `GoogleGkeBackupBackupPlan` | `backupSchedule` | `GkeBackupBackupPlanBackupSchedule` / `GkeBackupBackupPlanDayOfWeek` |
| `GoogleGkeBackupRestorePlan` | `restoreConfig` | `GkeBackupRestorePlanRestoreConfig` + conflict / restore-mode enums |
| `GoogleCloudRunV2WorkerPool` | `instanceSplits` / `scaling` / `template` | `CloudRunV2WorkerPool*` helpers (reuses `EmptyDirMedium` / `ScalingMode`) |
| `GoogleBigqueryDatapolicyDataPolicy` | `dataMaskingPolicy` | `BigqueryDatapolicyDataPolicyDataMaskingPolicy` / `BigqueryDatapolicyDataPolicyPredefinedExpression` |
| `GoogleArtifactRegistryRepository` | `remoteRepositoryConfig.aptRepository` / `yumRepository` | `ArtifactRegistryAptRepositoryBase` / `ArtifactRegistryYumRepositoryBase` |

```dart
// 0.12.9
dataPolicyType: TfArg.literal('DATA_MASKING_POLICY'),
connectionPreference: TfArg.literal('ACCEPT_AUTOMATIC'),

// 0.12.10
dataPolicyType: TfArg.literal(BigqueryDatapolicyDataPolicyType.dataMaskingPolicy),
connectionPreference:
    TfArg.literal(ServiceAttachmentConnectionPreference.acceptAutomatic),
```

## 0.12.2 → 0.12.3

**Breaking change** in `terradart_google` for users of
`GoogleIamWorkloadIdentityPoolProvider` (shipped in 0.12.2).

The trust-binding oneof (`oidc` / `aws` / `saml` / `x509`) is now a **sealed**
`IamWorkloadIdentityPoolProviderTrustSource` passed as required `trustSource`,
matching the convention used by `GoogleCloudSchedulerJob` and
`GoogleFirestoreBackupSchedule`.

```dart
// 0.12.2
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  oidc: IamWorkloadIdentityPoolProviderOidc(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);

// 0.12.3
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  trustSource: IamWorkloadIdentityPoolProviderOidcTrust(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);
```

Renamed helper types: `…Oidc` → `…OidcTrust`, `…Aws` → `…AwsTrust`,
`…Saml` → `…SamlTrust`, `…X509` → `…X509Trust`. Import from
`package:terradart_google/iam.dart`.

Bump lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.3
  terradart_google: ^0.12.3
```

---

## Unreleased — `terradart codegen` removed

The `terradart codegen` CLI subcommand and `runCodegen` library export are **removed**.
Maintainer generation is **`terradart wrap` only** (`wrap-init`, `wrap-promote` unchanged).

**If you only consumed `terradart_google`:** no Stack changes required.

**If you ran `terradart codegen` locally:** stop using it. Import curated factories from
`terradart_google`, or open a feature issue to request a new curated resource.

`dart pub global activate terradart_codegen` remains valid for **maintainers** running
`terradart wrap` against the repo fixtures.

---

## 0.11.x → 0.12.x

There are **no breaking changes** to the `terradart_core` or `terradart_google`
public APIs compared with `0.11.0`. Bump all three pub packages in lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.0
  terradart_google: ^0.12.0
```

```bash
dart pub global activate terradart_codegen ^0.12.0
```

(`0.12.1` / `0.12.2` are lockstep patches — same caret bump steps.)

### Additive in 0.12.2

- **`terradart_google`** — two new curated factories:
  `google_iam_workload_identity_pool_provider`,
  `google_iap_web_backend_service_iam_binding`, plus `package:terradart_google/iap.dart`.
  Catalog grows to **121 curated resource factories + 1 data source** (122 entries).
  No changes to existing factory signatures.

### Additive in 0.12.0

- **`terradart_google`** — static `terradartCatalog` in
  `package:terradart_google/catalog.dart` (metadata only; factory APIs unchanged).
  **118** curated resource factories + 1 data source at initial `0.12.0` ship
  (grew to **121** + 1 in `0.12.2`).
- **`terradart-mcp`** (optional) — MCP catalog server binary; not on pub.dev.
  See [Agent install](https://terradart.dev/docs/agent/install/).

### 0.12.1

- MCP `list_resources` / `list_barrels` return JSON objects, not bare arrays
  (strict MCP `structuredContent` clients).

No Stack source edits are required when upgrading from `0.11.0`.

---

# Migrating from terradart 0.10.0 to 0.11.0

This guide covers every breaking change introduced between `0.10.0` and
`0.11.0`. Two coordinated themes: the Stack API surface (§1, ADR-0017) and
the codegen identifier rename (§2, ADR-0016). All changes are mechanical;
none require an architectural rethink at the consumer.

`0.9.0` → `0.10.0` was additive (Firestore document curation) and required
no migration. The 0.9.0 migration guide is preserved below for archival
reference.

---

## Before you start

All three packages — `terradart_core`, `terradart_codegen`, and
`terradart_google` — must be bumped in lockstep:

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.11.0
  terradart_google: ^0.11.0
```

If you run codegen locally:

```bash
dart pub global activate terradart_codegen ^0.11.0
```

---

## 1. Stack API surface changes (ADR-0017)

### 1.1 `Stack.synth({required outDir})` split into `synth()` + `writeTo(outDir)`

`Stack.synth` no longer performs file IO. It is now a pure in-memory step
that returns a `SynthResult` carrying the encoded `tfJson` plus the optional
`dartConstants` source for AppExports. The new `Stack.writeTo(outDir)`
method is the file-IO wrapper that writes `main.tf.json` (and, when
`setAppExportsOutputPath` was called, the generated Dart constants file).

```dart
// BEFORE (0.10.0):
await stack.synth(outDir: 'tf-out');

// AFTER (0.11.0) — same end-to-end behaviour:
await stack.writeTo('tf-out');

// AFTER (0.11.0) — in-memory only, no disk write:
final result = stack.synth();
// result.tfJson, result.dartConstants
```

`writeTo` throws `StateError` atomically — **before any disk write** — when
`addExport` was called without `setAppExportsOutputPath`. v0.10.x silently
dropped the exports in that case; v0.11.x makes the misconfiguration fail
loudly at synth time.

### 1.2 `StackSynth` removed from the `terradart_core` public barrel

`StackSynth` is annotated `@internal` and is no longer re-exported from
`package:terradart_core/terradart_core.dart`. Call the public method on
your `Stack` instance instead.

```dart
// BEFORE (0.10.0):
import 'package:terradart_core/terradart_core.dart';
final result = StackSynth.synth(stack);

// AFTER (0.11.0):
final result = stack.synth();
```

If you really need the internal synth function (advanced cases — custom
tooling that drives synth without a `Stack` instance), import it via the
deep path; expect no semver protection on that surface:

```dart
// AFTER (0.11.0) — escape hatch, not recommended:
import 'package:terradart_core/src/synth/stack_synth.dart';
```

### 1.3 `Stack`, `Resource`, `Data` promoted to `abstract base class`

The three foundational classes are now `abstract base class` (Dart 3
class-modifier feature). Their state — dedup maps, lifecycle wiring — is
owned by the base class and must not be bypassed via `implements`.

```dart
// BEFORE (0.10.0):
class OrdersStack extends Stack { ... }

// AFTER (0.11.0):
final class OrdersStack extends Stack { ... }
// (or `base class` / `sealed class` if you have a subclass tree)
```

`implements Stack` / `implements Resource` / `implements Data` are now
compile errors. This was already a foot-gun in v0.10 — a class that
satisfied the interface without inheriting the state would silently break
synth — so the new constraint replaces a runtime hazard with a static
check.

---

## 2. Codegen identifier rename (ADR-0016)

The dollar-prefixed identifiers on `Resource` subclasses are renamed to
their canonical Dart names. External code that read them by `$`-prefixed
name must drop the prefix. The two getters are now annotated `@protected`
(from `package:meta`).

### 2.1 `$tfType` → `tfType`, `$sensitiveFields` → `sensitiveFields`, `$supportsDeletionProtection` → `supportsDeletionProtection`

```dart
// BEFORE (0.10.0):
final String type = MyResource.$tfType;
final Set<String> sensitive = myResource.$sensitiveFields;
final bool gated = myResource.$supportsDeletionProtection;

// AFTER (0.11.0):
final String type = MyResource.tfType;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final Set<String> sensitive = myResource.sensitiveFields;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final bool gated = myResource.supportsDeletionProtection;
```

The `@protected` annotation means that reads from outside the subclass
hierarchy trigger an analyzer warning. The synth-time path (`TfJsonEncoder`)
is the privileged in-library consumer the protected contract permits. If
you have a legitimate need to read these from outside (introspection,
custom diagnostics), add an `// ignore: invalid_use_of_protected_member`
directive **with a justification comment** at the read site.

Mechanical sed recipe for the rename (safe — it only matches the
`$`-prefixed forms):

```bash
find . -name '*.dart' \
  -exec sed -i.bak \
    -e 's/\$tfType\b/tfType/g' \
    -e 's/\$sensitiveFields\b/sensitiveFields/g' \
    -e 's/\$supportsDeletionProtection\b/supportsDeletionProtection/g' \
    {} \;
```

Then review each call site and either keep the bare read (if you're inside
a subclass) or add the `// ignore: invalid_use_of_protected_member`
directive (if you're outside).

### 2.2 `TerraformEnum` interface

`terradart_core` 0.11.0 introduces `abstract interface class TerraformEnum`
with a single `String get terraformValue` contract. `TfArgLiteral.toTfJson`
now routes enum dispatch through `if (v is TerraformEnum)` rather than the
previous duck-typed `dynamic.terraformValue` cast.

Codegen-emitted enums (everything in `terradart_google`) implement
`TerraformEnum` automatically — no consumer action needed.

If you hand-rolled a Terraform-mapped enum to pass to
`TfArg<MyEnum>.literal(...)`, add the `implements` clause and the
`@override` keyword:

```dart
// BEFORE (0.10.0):
enum CustomMode {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  final String terraformValue;
}

// AFTER (0.11.0):
enum CustomMode implements TerraformEnum {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  @override
  final String terraformValue;
}
```

Without the `implements TerraformEnum` clause, the `is TerraformEnum`
check at synth time will not recognise your enum and the value will fall
through to the generic `Object.toString()` path — almost certainly not
what you want.

---

## 3. Cookbook example

The [`terradart-cookbook`](https://github.com/nozomi-koborinai/terradart-cookbook)
repo's recipes will be regenerated against v0.11.0. If you cloned a recipe
before that update, apply the §1 + §2 changes above to the recipe's stack
file.

---

# Migrating from terradart 0.8.0-dev to 0.9.0

This guide covers every breaking change introduced between `0.8.0-dev` and
`0.9.0`. Work through the sections in order: the Stack API changes (§1) are
quick mechanical edits; the sensitive-field correctness fix (§2) may require
an architectural decision; the naming changes (§3) are the largest surface
but are mostly mechanical.

For the full machine-readable rename table see
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
(481 nested-helper renames, 199 TfArg-wrap field renames, 7 enum renames).

---

## Before you start

All four packages — `terradart_annotations`, `terradart_core`,
`terradart_codegen`, and `terradart_google` — must be bumped in lockstep.
Update all four in your `pubspec.yaml` at the same time.

---

## 1. Stack API surface changes

### 1.1 `Stack.synth` is now concrete

`Stack.synth` is no longer abstract. Remove the 11-line override that
`0.x` examples carried — the base class now handles writing `main.tf.json`:

```dart
// BEFORE (0.8.0-dev) — delete this override:
@override
Future<void> synth({required String outDir}) async {
  final result = StackSynth.synth(this);
  await Directory(outDir).create(recursive: true);
  final tfFile = File('$outDir/main.tf.json');
  await tfFile.writeAsString(
    const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
  );
}

// AFTER (0.9.0) — nothing. The base implementation does the same thing.
```

If you need custom file layout (e.g. writing `SynthResult.dartConstants` as
well), override `writeTo` rather than `synth`: in v0.11.0+ `synth()` is the
in-memory step that returns a `SynthResult`, and `writeTo(outDir)` is the
file-IO wrapper. Calling `synth()` from your override gives you the same
`tfJson` / `dartConstants` payload to lay out however you need.

### 1.2 `JsonEncoder` → `TfJsonEncoder`

The public JSON encoder was renamed to avoid collision with `dart:convert`.
Drop the `dart:convert` workaround import and switch to the terradart type:

```dart
// BEFORE (0.8.0-dev):
import 'dart:convert' as dart_convert;
// ...
final encoded = const dart_convert.JsonEncoder.withIndent('  ').convert(map);

// AFTER (0.9.0):
// No import needed — TfJsonEncoder is re-exported from terradart_core.
// If you called it for encoding helpers, use the static methods directly:
final encoded = TfJsonEncoder.encodeArgMap(argMap);
```

Mechanical sed recipe (safe — it only targets the qualified form):

```bash
find . -name '*.dart' \
  -exec sed -i.bak 's/dart_convert\.JsonEncoder/TfJsonEncoder/g' {} \;
```

Check for and remove orphaned `import 'dart:convert' as dart_convert;` lines
after applying the above.

### 1.3 `LocalBackend` replaces handwritten `terraform.tf`

`0.8.x` examples wrote a separate `terraform.tf` file by hand for local-state
workflows. `0.9.0` ships a typed `LocalBackend`:

```dart
// BEFORE (0.8.0-dev) — handwritten file and no backend arg:
class MyStack extends Stack {
  MyStack() : super(providers: [...]);
}
// Separate tool/terraform.tf with: terraform { backend "local" {} }

// AFTER (0.9.0) — pass it to the constructor:
class MyStack extends Stack {
  MyStack()
      : super(
          providers: [...],
          backend: const LocalBackend(),
        );
}
```

Delete the handwritten `terraform.tf` (or `tf-out/terraform.tf`) file — it
is now superseded by the `LocalBackend` block emitted into `main.tf.json`.

**State migration note.** If you were previously using a GCS backend and are
switching to `LocalBackend` for a sample or dogfood stack, Terraform requires
explicit consent:

```bash
terraform init -migrate-state   # interactive prompt to copy state locally
# or, to start fresh with no state:
terraform init -reconfigure
```

### 1.4 `Stack(devMode: true)` for sample and dogfood stacks

`devMode` is a new constructor parameter that flips `deletion_protection` to
`false` on every resource that supports it — so `terraform destroy` works
without manual overrides in development. Production stacks leave it at the
default (`false`).

```dart
// Dogfood / sample stacks:
class SampleStack extends Stack {
  SampleStack() : super(providers: [...], devMode: true);
}

// Production stacks — omit the flag (defaults to false):
class ProdStack extends Stack {
  ProdStack() : super(providers: [...], backend: const GcsBackend(bucket: '...'));
}
```

---

## 2. Synth correctness changes (sensitive fields)

### 2.1 `SensitiveLiteralError` replaces silent masking

In `0.x`, passing a literal string to a `@Sensitive`-annotated field (e.g.
`password`) caused synth to emit an empty string — which Terraform then
rejected at `apply` time with an HTTP 400 error. That silent failure is now
replaced by a `SensitiveLiteralError` thrown at synth time.

**Recovery option A — variable (recommended for production):**

```dart
// BEFORE (0.8.0-dev) — would silently produce an empty password in output:
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.literal('hunter2'),  // BAD — throws SensitiveLiteralError in v1.0
)

// AFTER (0.9.0):
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.variable('db_password'),  // value supplied at apply time
)
```

Then declare the variable and pass it at apply time:

```hcl
# variables.tf (or inline in your Stack if you use Variable<T>):
variable "db_password" { sensitive = true }
```

```bash
terraform apply -var="db_password=hunter2"
# or via a .tfvars file — never commit the value.
```

**Recovery option B — write-only field (simpler for one-off secrets):**

Resources that expose a write-only variant (`<field>_wo`) accept literal
values; the `_wo` fields are write-once and exempt from the sensitive check:

```dart
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  passwordWo: TfArg.literal('hunter2'),  // write-only — exempt from check
)
```

The `_wo` option is convenient for secrets that never change after initial
provisioning. Use `TfArg.variable` when the value needs to be rotated.

### 2.2 `encodeArgMapWithSensitive` signature change

If you called `TfJsonEncoder.encodeArgMapWithSensitive` directly (uncommon
— only relevant if you built a custom resource wrapper), the signature is
unchanged but the function now **throws** instead of masking. Update callers
to handle `SensitiveLiteralError`.

---

## 3. Naming changes (Plan 3)

### 3.1 Nested helper class renames

Nested helper classes are now always prefixed with the parent resource's
class name to eliminate collision between helpers from different resources
(e.g. `Template` existed in both `cloud_run` and `cloud_build`).

The 15 most commonly encountered renames from cookbook rehearsal:

| Old (0.8.0-dev) | New (0.9.0) | Barrel |
|---|---|---|
| `Settings(` | `SqlDatabaseInstanceSettings(` | `sql` |
| `IpConfiguration(` | `SqlDatabaseInstanceIpConfiguration(` | `sql` |
| `DatabaseFlag(` | `SqlDatabaseInstanceDatabaseFlag(` | `sql` |
| `Replication.` | `SecretManagerSecretReplication.` | `secret_manager` |
| `Template(` | `CloudRunV2ServiceTemplate(` | `cloud_run` |
| `ServiceContainer(` | `CloudRunV2ServiceServiceContainer(` | `cloud_run` |
| `EnvVar(` | `CloudRunV2ServiceEnvVar(` | `cloud_run` |
| `EnvVarFromLiteral(` | `CloudRunV2ServiceEnvVarFromLiteral(` | `cloud_run` |
| `EnvVarFromSecret(` | `CloudRunV2ServiceEnvVarFromSecret(` | `cloud_run` |
| `PushConfig(` | `PubsubSubscriptionPushConfig(` | `pubsub` |
| `OidcToken(` | `PubsubSubscriptionOidcToken(` | `pubsub` |
| `AlertCondition(` | `MonitoringAlertPolicyAlertCondition(` | `monitoring` |
| `ConditionThreshold(` | `MonitoringAlertPolicyConditionThreshold(` | `monitoring` |
| `Aggregation(` | `MonitoringAlertPolicyAggregation(` | `monitoring` |
| `MonitoringUptimeCheckHttpCheck(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(` | `monitoring` |

Additional high-frequency renames (Cloud Run Job, Monitoring UptimeCheck):

| Old | New |
|---|---|
| `JobTemplate(` | `CloudRunV2JobJobTemplate(` |
| `TaskTemplate(` | `CloudRunV2JobTaskTemplate(` |
| `MonitoringUptimeCheckMonitoredResource(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(` |
| `MonitoringUptimeCheckResourceGroup(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(` |
| `VersionTemplate(` (KMS) | `KmsCryptoKeyVersionTemplate(` |

The complete list of all 481 nested-helper renames is in
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
under the `nested_helper_renames` key.

### 3.2 Getter renames

| Old (0.8.0-dev) | New (0.9.0) | Notes |
|---|---|---|
| `<serviceAccount>.member` | `<serviceAccount>.iamMember` | `GoogleServiceAccount` only |

New **additive** getters (no migration needed, but useful to know):

- `GoogleCloudRunV2Service.locationRef` — `TfRef<String>` for the service
  location, useful in `GoogleCloudRunV2ServiceIamMember(location: ...)`.
- `GoogleCloudRunV2Job.locationRef` — same for jobs.

### 3.3 Enum value renames (verbose-natural)

Short abbreviated names were replaced with self-documenting spellings.

**`Comparison` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Comparison.lt` | `Comparison.lessThan` |
| `Comparison.gt` | `Comparison.greaterThan` |
| `Comparison.le` | `Comparison.lessThanOrEqual` |
| `Comparison.ge` | `Comparison.greaterThanOrEqual` |
| `Comparison.eq` | `Comparison.equalTo` |
| `Comparison.ne` | `Comparison.notEqualTo` |

**`Aligner` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Aligner.nextOlder` | `Aligner.alignNextOlder` |

### 3.4 Non-mechanical pattern changes

These three patterns cannot be handled by a regex substitution — they require
reading context and making a judgment call.

**Pattern A: `name:` field now takes `TfArg<String>`**

`CloudRunV2ServiceEnvVar.name` (and the Job equivalent `CloudRunV2JobJobEnvVar.name`)
changed from bare `String` to `TfArg<String>`. Any bare string literal must
be wrapped:

```dart
// BEFORE (0.8.0-dev):
EnvVar(
  name: 'LOG_LEVEL',
  source: EnvVarFromLiteral(TfArg.literal('info')),
)

// AFTER (0.9.0):
CloudRunV2ServiceEnvVar(
  name: TfArg.literal('LOG_LEVEL'),  // wrap with TfArg.literal
  source: CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info')),
)
```

**Pattern B: `const` removal for classes with `TfArg<T>` fields**

Classes whose fields changed from bare Dart types (`String`, `int`, `bool`) to
`TfArg<T>` are no longer `const`-constructible. Remove `const` from any call
site where the class now has `TfArg<T>` fields:

```dart
// BEFORE (0.8.0-dev) — field types were bare primitives:
const MonitoringUptimeCheckMonitoredResource(
  type: 'uptime_url',
  labels: {'host': 'example.com'},
)

// AFTER (0.9.0) — fields are TfArg<T>; drop const, wrap values:
MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(
  type: TfArg.literal('uptime_url'),
  labels: TfArg.literal({'host': 'example.com'}),
)
```

**Pattern C: `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource.type` is `TfArg<String>`**

Specifically — `type` was a required bare `String` and is now `TfArg<String>`.
Any use of this field needs `TfArg.literal(...)` wrapping (covered by Pattern B
above, but called out because it's a non-optional required field).

### 3.5 Bulk `find` / `sed` recipes

Run these from the root of your Dart project. The `-i.bak` flag creates
backup files (remove them with `find . -name '*.bak' -delete` afterwards).
Review the diff before committing — these are heuristic pattern substitutions,
not type-aware refactors.

```bash
# ---- SQL nested helpers ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bSettings(/SqlDatabaseInstanceSettings(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bIpConfiguration(/SqlDatabaseInstanceIpConfiguration(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bDatabaseFlag(/SqlDatabaseInstanceDatabaseFlag(/g' {} \;

# ---- Secret Manager ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bReplication\.\(auto\|userManaged\)/SecretManagerSecretReplication.\1/g' {} \;

# ---- Cloud Run v2 Service ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bTemplate(/CloudRunV2ServiceTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bServiceContainer(/CloudRunV2ServiceServiceContainer(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVar(/CloudRunV2ServiceEnvVar(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromLiteral(/CloudRunV2ServiceEnvVarFromLiteral(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromSecret(/CloudRunV2ServiceEnvVarFromSecret(/g' {} \;

# ---- Cloud Run v2 Job (apply after the Service renames above) ----
# Note: JobTemplate / TaskTemplate do not collide with the Service renames.
find . -name '*.dart' -exec sed -i.bak \
  's/\bJobTemplate(/CloudRunV2JobJobTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bTaskTemplate(/CloudRunV2JobTaskTemplate(/g' {} \;

# ---- Pub/Sub ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bPushConfig(/PubsubSubscriptionPushConfig(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bOidcToken(/PubsubSubscriptionOidcToken(/g' {} \;

# ---- Monitoring alert policy ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAlertCondition(/MonitoringAlertPolicyAlertCondition(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bConditionThreshold(/MonitoringAlertPolicyConditionThreshold(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bAggregation(/MonitoringAlertPolicyAggregation(/g' {} \;

# ---- Monitoring uptime check (long names) ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckMonitoredResource(/MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckHttpCheck(/MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckResourceGroup(/MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(/g' {} \;

# ---- IAM getter rename ----
# CAUTION: inspect the diff. Terraform's `member:` argument name on IAM
# binding resources is UNRELATED to the Dart getter and must NOT change.
# This recipe targets the getter call pattern `.member` (preceded by
# identifier chars, not a colon), which is safe in the vast majority of cases.
find . -name '*.dart' -exec sed -i.bak \
  's/\.member\b/.iamMember/g' {} \;

# ---- Enum: Comparison ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.lt\b/Comparison.lessThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.gt\b/Comparison.greaterThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.le\b/Comparison.lessThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ge\b/Comparison.greaterThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.eq\b/Comparison.equalTo/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ne\b/Comparison.notEqualTo/g' {} \;

# ---- Enum: Aligner ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAligner\.nextOlder\b/Aligner.alignNextOlder/g' {} \;

# ---- Cleanup backups ----
find . -name '*.bak' -delete
```

**After running the recipes:** run `dart analyze` and fix any remaining
errors. The recipes above cover the 15 most common renames; projects that
use Compute, Cloud Build, Firestore, or Cloud Functions helpers will also
need renames from the full JSON.

---

## 4. Cookbook example

The `terradart-cookbook` repository's `single-project-app` recipe has been
fully migrated to the v0.9.0 API surface. See the `v0.9.0` tag in that repo
for a working end-to-end reference, including:

- `Stack(devMode: true)` usage
- `LocalBackend` constructor arg instead of handwritten `terraform.tf`
- All nested helper class renames applied
- `TfArg.variable` for the database password

---

## Quick reference: what changed and why

| Change | Why |
|---|---|
| `Stack.synth` concrete | Removes boilerplate that every example duplicated |
| `JsonEncoder` → `TfJsonEncoder` | Avoids shadowing `dart:convert.JsonEncoder` |
| `LocalBackend` typed | Consistent with `GcsBackend`; eliminates handwritten HCL |
| `Stack(devMode: true)` | Keeps `deletion_protection` out of dogfood teardown loops |
| `SensitiveLiteralError` | v0.x silent empty-string masking caused apply-time 400s |
| Nested helper prefixes | Eliminates cross-barrel name collisions (e.g. `Template`) |
| `.member` → `.iamMember` | Avoids confusion with Terraform's `member:` argument |
| Verbose enum names | `Comparison.gt` is cryptic; `greaterThan` is self-documenting |
