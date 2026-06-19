/// Chronicle quickstart — custom list, native dashboard, and dashboard chart.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/chronicle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
        localName: 'approved_files',
        location: TfArg.literal('us'),
        instance: TfArg.literal(instanceId),
        entityIdentifier: TfArg.literal('filename.bin'),
        category: TfArg.literal('Approved Files'),
        environments: TfArg.literal('["Default Environment"]'),
        dependsOn: apiDeps,
      ),
    );

    final dashboard = GoogleChronicleNativeDashboard(
      localName: 'ops_overview',
      location: TfArg.literal('us'),
      instance: TfArg.literal(instanceId),
      displayName: TfArg.literal('Ops overview'),
      access: TfArg.literal(ChronicleNativeDashboardAccess.dashboardPrivate),
      type: TfArg.literal(ChronicleNativeDashboardType.custom),
      dependsOn: apiDeps,
    );
    add(dashboard);

    add(
      GoogleChronicleDashboardChart(
        localName: 'dns_events',
        location: TfArg.literal('us'),
        instance: TfArg.literal(instanceId),
        nativeDashboard: TfArg.ref(dashboard.nameRef),
        chartLayout: ChronicleDashboardChartChartLayout(
          spanX: TfArg.literal(42),
          spanY: TfArg.literal(27),
        ),
        dashboardChart: ChronicleDashboardChartSpec(
          displayName: TfArg.literal('DNS events'),
          tileType: ChronicleDashboardChartTileType.tileTypeVisualization,
          visualization: [
            ChronicleDashboardChartVisualization(
              series: [
                ChronicleDashboardChartSeries(
                  seriesType: ChronicleDashboardChartSeriesType.bar,
                ),
              ],
            ),
          ],
        ),
        dashboardQuery: ChronicleDashboardChartQuery(
          query: TfArg.literal('metadata.event_type = "NETWORK_DNS"'),
          input: ChronicleDashboardChartQueryInput(
            relativeTime: ChronicleDashboardChartRelativeTime(
              startTimeVal: TfArg.literal('1'),
              timeUnit: ChronicleDashboardChartTimeUnit.hour,
            ),
          ),
        ),
        dependsOn: [...apiDeps, ResourceDependency(dashboard)],
      ),
    );
  }
}
