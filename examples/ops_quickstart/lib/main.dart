/// Ops quickstart -- Phase 4.5 Wave 2 end-to-end example.
///
/// Defines an `AuditPipelineStack` that provisions:
/// - a BigQuery dataset (`audit_logs`) as the sink destination,
/// - a `GoogleLoggingProjectSink` (`audit-to-bq`) routing Cloud Audit Logs to
///   the dataset, with `BigqueryOptions(usePartitionedTables: true)` and one
///   `LogSinkExclusion` dropping noisy DNS queries before they hit BigQuery,
///
/// demonstrating the `BigqueryOptions` single-block helper and the
/// `LogSinkExclusion` list-entry helper from `google_logging_project_sink`.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/logging.dart';
import 'package:terradart_google/provider.dart';

class AuditPipelineStack extends Stack {
  AuditPipelineStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final dataset = GoogleBigqueryDataset(
      localName: 'audit_logs',
      datasetId: TfArg.literal('audit_logs'),
      location: TfArg.literal('asia-northeast1'),
      friendlyName: TfArg.literal('Cloud Audit Logs sink'),
      description:
          TfArg.literal('Sink destination for cloudaudit.googleapis.com.'),
    );
    add(dataset);

    add(
      GoogleLoggingProjectSink(
        localName: 'audit_to_bq',
        name: TfArg.literal('audit-to-bq'),
        destination: TfArg.literal(
          'bigquery.googleapis.com/projects/$projectId/datasets/audit_logs',
        ),
        filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
        uniqueWriterIdentity: TfArg.literal(true),
        bigqueryOptions: const BigqueryOptions(usePartitionedTables: true),
        exclusions: const [
          LogSinkExclusion(
            name: 'drop-noisy-dns',
            filter: 'resource.type="dns_query"',
            description: 'Skip high-volume DNS query logs.',
          ),
        ],
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
