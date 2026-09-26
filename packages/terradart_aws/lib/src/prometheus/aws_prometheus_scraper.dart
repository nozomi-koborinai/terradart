// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_scraper`.
const Set<String> _awsPrometheusScraperSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperDestination {
  const PrometheusScraperDestination({this.amp, this.cloudwatch});

  final List<PrometheusScraperDestinationAmp>? amp;

  final List<PrometheusScraperDestinationCloudwatch>? cloudwatch;

  Map<String, Object?> encode() => {
    if (amp != null) 'amp': [for (final e in amp!) e.encode()],
    if (cloudwatch != null)
      'cloudwatch': [for (final e in cloudwatch!) e.encode()],
  };
}

/// Typed helper for the `destination.amp` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperDestinationAmp {
  const PrometheusScraperDestinationAmp({required this.workspaceArn});

  final TfArg<String> workspaceArn;

  Map<String, Object?> encode() => {'workspace_arn': workspaceArn.toTfJson()};
}

/// Typed helper for the `destination.cloudwatch` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperDestinationCloudwatch {
  const PrometheusScraperDestinationCloudwatch({required this.datasetArn});

  final TfArg<String> datasetArn;

  Map<String, Object?> encode() => {'dataset_arn': datasetArn.toTfJson()};
}

/// Typed helper for the `exporter` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperExporter {
  const PrometheusScraperExporter({this.opensearch});

  final List<PrometheusScraperExporterOpensearch>? opensearch;

  Map<String, Object?> encode() => {
    if (opensearch != null)
      'opensearch': [for (final e in opensearch!) e.encode()],
  };
}

/// Typed helper for the `exporter.opensearch` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperExporterOpensearch {
  const PrometheusScraperExporterOpensearch({required this.domainArn});

  final TfArg<String> domainArn;

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

  final TfArg<String>? sourceRoleArn;

  final TfArg<String>? targetRoleArn;

  Map<String, Object?> encode() => {
    if (sourceRoleArn != null) 'source_role_arn': sourceRoleArn!.toTfJson(),
    if (targetRoleArn != null) 'target_role_arn': targetRoleArn!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperSource {
  const PrometheusScraperSource({this.eks, this.vpc});

  final List<PrometheusScraperSourceEks>? eks;

  final List<PrometheusScraperSourceVpc>? vpc;

  Map<String, Object?> encode() => {
    if (eks != null) 'eks': [for (final e in eks!) e.encode()],
    if (vpc != null) 'vpc': [for (final e in vpc!) e.encode()],
  };
}

/// Typed helper for the `source.eks` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperSourceEks {
  const PrometheusScraperSourceEks({
    required this.clusterArn,
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<String> clusterArn;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Typed helper for the `source.vpc` block of
/// `aws_prometheus_scraper` (derived from provider schema).
@immutable
final class PrometheusScraperSourceVpc {
  const PrometheusScraperSourceVpc({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_prometheus_scraper`.
final class AwsPrometheusScraper extends Resource {
  static const String tfType = 'aws_prometheus_scraper';

  AwsPrometheusScraper({
    required super.localName,
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
           if (alias != null) 'alias': alias,
           if (region != null) 'region': region,
           'scrape_configuration': scrapeConfiguration,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
