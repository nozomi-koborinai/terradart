// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_prometheus_scraper`.
const Set<String> _awsPrometheusScraperSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperDestination {
  const PrometheusScraperDestination({this.amp, this.cloudwatch});

  final List<PrometheusScraperAmp>? amp;

  final List<PrometheusScraperCloudwatch>? cloudwatch;

  @internal
  Map<String, Object?> encode() => {
    if (amp != null) 'amp': [for (final e in amp!) e.encode()],
    if (cloudwatch != null)
      'cloudwatch': [for (final e in cloudwatch!) e.encode()],
  };
}

/// Typed helper for the `destination.amp` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperAmp {
  const PrometheusScraperAmp({required this.workspaceArn});

  final TfArg<String> workspaceArn;

  @internal
  Map<String, Object?> encode() => {'workspace_arn': workspaceArn.toTfJson()};
}

/// Typed helper for the `destination.cloudwatch` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperCloudwatch {
  const PrometheusScraperCloudwatch({required this.datasetArn});

  final TfArg<String> datasetArn;

  @internal
  Map<String, Object?> encode() => {'dataset_arn': datasetArn.toTfJson()};
}

/// Typed helper for the `exporter` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperExporter {
  const PrometheusScraperExporter({this.opensearch});

  final List<PrometheusScraperOpensearch>? opensearch;

  @internal
  Map<String, Object?> encode() => {
    if (opensearch != null)
      'opensearch': [for (final e in opensearch!) e.encode()],
  };
}

/// Typed helper for the `exporter.opensearch` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperOpensearch {
  const PrometheusScraperOpensearch({required this.domainArn});

  final TfArg<String> domainArn;

  @internal
  Map<String, Object?> encode() => {'domain_arn': domainArn.toTfJson()};
}

/// Typed helper for the `role_configuration` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperRoleConfiguration {
  const PrometheusScraperRoleConfiguration({
    this.sourceRoleArn,
    this.targetRoleArn,
  });

  final RefTo<AwsIamRole>? sourceRoleArn;

  final TfArg<String>? targetRoleArn;

  @internal
  Map<String, Object?> encode() => {
    'source_role_arn': ?sourceRoleArn?.encodeAs('arn').toTfJson(),
    'target_role_arn': ?targetRoleArn?.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperSource {
  const PrometheusScraperSource({this.eks, this.vpc});

  final List<PrometheusScraperEks>? eks;

  final List<PrometheusScraperVpc>? vpc;

  @internal
  Map<String, Object?> encode() => {
    if (eks != null) 'eks': [for (final e in eks!) e.encode()],
    if (vpc != null) 'vpc': [for (final e in vpc!) e.encode()],
  };
}

/// Typed helper for the `source.eks` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperEks {
  const PrometheusScraperEks({
    required this.clusterArn,
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<String> clusterArn;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `source.vpc` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperVpc {
  const PrometheusScraperVpc({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_prometheus_scraper`.
final class AwsPrometheusScraper extends Resource {
  static const String tfType = 'aws_prometheus_scraper';

  AwsPrometheusScraper(
    super.localName, {
    TfArg<String>? alias,
    TfArg<String>? region,
    required TfArg<String> scrapeConfiguration,
    TfArg<Map<String, String>>? tags,
    List<PrometheusScraperDestination>? destination,
    List<PrometheusScraperExporter>? exporter,
    List<PrometheusScraperRoleConfiguration>? roleConfiguration,
    List<PrometheusScraperSource>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': ?alias,
           'region': ?region,
           'scrape_configuration': scrapeConfiguration,
           'tags': ?tags,
           if (destination != null)
             'destination': TfArg.literal([
               for (final e in destination) e.encode(),
             ]),
           if (exporter != null)
             'exporter': TfArg.literal([for (final e in exporter) e.encode()]),
           if (roleConfiguration != null)
             'role_configuration': TfArg.literal([
               for (final e in roleConfiguration) e.encode(),
             ]),
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusScraperSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusScraper>`.
  RefTo<AwsPrometheusScraper> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scrape_configuration` attribute.
  TfRef<String> get scrapeConfiguration =>
      TfRef.attribute<String>(this, 'scrape_configuration');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
