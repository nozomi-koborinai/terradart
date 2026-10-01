/// Chronicle quickstart — custom list, SOAR network, SOAR case close / stage /
/// tag definitions, native dashboard, and dashboard chart.
library;

import 'package:terradart_google/chronicle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class ChronicleCustomListStack extends Stack {
  ChronicleCustomListStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.chronicle],
      propagationDelay: const Duration(seconds: 60),
    );

    const instanceId = '00000000-0000-0000-0000-000000000000';

    add(
      GoogleChronicleCustomList(
        'approved_files',
        location: .literal('us'),
        instance: .literal(instanceId),
        entityIdentifier: .literal('filename.bin'),
        category: .literal('Approved Files'),
        environments: .literal('["Default Environment"]'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleChronicleSoarNetwork(
        'corp_internal',
        location: .literal('us'),
        instance: .literal(instanceId),
        displayName: .literal('Corp internal'),
        address: .literal('10.0.0.0/8'),
        environmentsJson: .literal('["Default Environment"]'),
        priority: .literal(1),
        dependsOn: apiDeps,
      ),
    );

    // SOAR case lifecycle: a closing reason, a triage stage, and a tag the
    // case title can be taken from.
    add(
      GoogleChronicleCaseCloseDefinition(
        'false_positive_close',
        location: .literal('us'),
        instance: .literal(instanceId),
        closeReason: .notMalicious,
        rootCause: .literal('False positive'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleChronicleCaseStageDefinition(
        'triage_stage',
        location: .literal('us'),
        instance: .literal(instanceId),
        displayName: .literal('Triage'),
        order: .literal(1),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleChronicleCaseTagDefinition(
        'phishing_tag',
        location: .literal('us'),
        instance: .literal(instanceId),
        displayName: .literal('Phishing'),
        value: .literal('phishing'),
        comparisonType: .contain,
        matchCriteria: .byRuleGenerator,
        canBeCaseTitle: .literal(true),
        priority: .literal(1),
        dependsOn: apiDeps,
      ),
    );

    final dashboard = GoogleChronicleNativeDashboard(
      'ops_overview',
      location: .literal('us'),
      instance: .literal(instanceId),
      displayName: .literal('Ops overview'),
      access: .dashboardPrivate,
      type: .custom,
      dependsOn: apiDeps,
    );
    add(dashboard);

    add(
      GoogleChronicleDashboardChart(
        'dns_events',
        location: .literal('us'),
        instance: .literal(instanceId),
        nativeDashboard: dashboard.ref,
        chartLayout: ChronicleDashboardChartLayout(
          spanX: .literal(42),
          spanY: .literal(27),
        ),
        dashboardChart: ChronicleDashboardChartSpec(
          displayName: .literal('DNS events'),
          tileType: ChronicleDashboardChartTileType.tileTypeVisualization,
          visualization: [
            .new(
              series: [.new(seriesType: ChronicleDashboardChartSeriesType.bar)],
            ),
          ],
        ),
        dashboardQuery: ChronicleDashboardChartQuery(
          query: .literal('metadata.event_type = "NETWORK_DNS"'),
          input: .new(
            relativeTime: .new(
              startTimeVal: .literal('1'),
              timeUnit: ChronicleDashboardChartTimeUnit.hour,
            ),
          ),
        ),
        dependsOn: [...apiDeps, dashboard],
      ),
    );
  }
}
