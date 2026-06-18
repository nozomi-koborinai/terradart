// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_dashboard_chart`.
const Set<String> _googleChronicleDashboardChartSensitive = <String>{};

/// Terraform `deletion_policy` for Chronicle dashboard charts.
enum ChronicleDashboardChartDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const ChronicleDashboardChartDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Tile type for `dashboard_chart.tile_type`.
enum ChronicleDashboardChartTileType implements TerraformEnum {
  tileTypeUnspecified('TILE_TYPE_UNSPECIFIED'),
  tileTypeVisualization('TILE_TYPE_VISUALIZATION'),
  tileTypeButton('TILE_TYPE_BUTTON'),
  tileTypeMarkdown('TILE_TYPE_MARKDOWN');

  const ChronicleDashboardChartTileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Relative time unit for `dashboard_query.input.relative_time.time_unit`.
enum ChronicleDashboardChartTimeUnit implements TerraformEnum {
  second('SECOND'),
  minute('MINUTE'),
  hour('HOUR'),
  day('DAY'),
  week('WEEK'),
  month('MONTH'),
  year('YEAR');

  const ChronicleDashboardChartTimeUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Filter operator used in drill-down filter blocks.
enum ChronicleDashboardChartFilterOperator implements TerraformEnum {
  equal('EQUAL'),
  notEqual('NOT_EQUAL'),
  in_('IN'),
  greaterThan('GREATER_THAN'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  lessThan('LESS_THAN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  between('BETWEEN'),
  past('PAST'),
  isNull('IS_NULL'),
  isNotNull('IS_NOT_NULL'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  doesNotStartsWith('DOES_NOT_STARTS_WITH'),
  doesNotEndsWith('DOES_NOT_ENDS_WITH'),
  notIn('NOT_IN'),
  contains('CONTAINS'),
  doesNotContain('DOES_NOT_CONTAIN');

  const ChronicleDashboardChartFilterOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Button style for visualization buttons.
enum ChronicleDashboardChartButtonStyle implements TerraformEnum {
  buttonStyleUnspecified('BUTTON_STYLE_UNSPECIFIED'),
  buttonStyleFilled('BUTTON_STYLE_FILLED'),
  buttonStyleOutlined('BUTTON_STYLE_OUTLINED'),
  buttonStyleTransparent('BUTTON_STYLE_TRANSPARENT');

  const ChronicleDashboardChartButtonStyle(this.terraformValue);
  @override
  final String terraformValue;
}

/// Google Maps plot mode.
enum ChronicleDashboardChartPlotMode implements TerraformEnum {
  plotModeUnspecified('PLOT_MODE_UNSPECIFIED'),
  plotModePoints('PLOT_MODE_POINTS'),
  plotModeHeatmap('PLOT_MODE_HEATMAP'),
  plotModeBoth('PLOT_MODE_BOTH');

  const ChronicleDashboardChartPlotMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Google Maps point size type.
enum ChronicleDashboardChartPointSizeType implements TerraformEnum {
  pointSizeTypeUnspecified('POINT_SIZE_TYPE_UNSPECIFIED'),
  pointSizeTypeFixed('POINT_SIZE_TYPE_FIXED'),
  pointSizeTypeProportionalToSize('POINT_SIZE_TYPE_PROPORTIONAL_TO_SIZE');

  const ChronicleDashboardChartPointSizeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Legend alignment.
enum ChronicleDashboardChartLegendAlign implements TerraformEnum {
  auto('AUTO'),
  left('LEFT'),
  right('RIGHT');

  const ChronicleDashboardChartLegendAlign(this.terraformValue);
  @override
  final String terraformValue;
}

/// Legend orientation.
enum ChronicleDashboardChartLegendOrient implements TerraformEnum {
  vertical('VERTICAL'),
  horizontal('HORIZONTAL');

  const ChronicleDashboardChartLegendOrient(this.terraformValue);
  @override
  final String terraformValue;
}

/// Series stack strategy.
enum ChronicleDashboardChartSeriesStackStrategy implements TerraformEnum {
  samesign('SAMESIGN'),
  all('ALL'),
  positive('POSITIVE'),
  negative('NEGATIVE');

  const ChronicleDashboardChartSeriesStackStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Chart series type.
enum ChronicleDashboardChartSeriesType implements TerraformEnum {
  line('LINE'),
  bar('BAR'),
  pie('PIE'),
  text('TEXT'),
  map('MAP'),
  gauge('GAUGE'),
  scatterplot('SCATTERPLOT');

  const ChronicleDashboardChartSeriesType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Metric display trend mode.
enum ChronicleDashboardChartMetricDisplayTrend implements TerraformEnum {
  metricDisplayTrendUnspecified('METRIC_DISPLAY_TREND_UNSPECIFIED'),
  metricDisplayTrendAbsoluteValue('METRIC_DISPLAY_TREND_ABSOLUTE_VALUE'),
  metricDisplayTrendPercentage('METRIC_DISPLAY_TREND_PERCENTAGE'),
  metricDisplayTrendAbsoluteValueAndPercentage(
    'METRIC_DISPLAY_TREND_ABSOLUTE_VALUE_AND_PERCENTAGE',
  );

  const ChronicleDashboardChartMetricDisplayTrend(this.terraformValue);
  @override
  final String terraformValue;
}

/// Metric format.
enum ChronicleDashboardChartMetricFormat implements TerraformEnum {
  metricFormatUnspecified('METRIC_FORMAT_UNSPECIFIED'),
  metricFormatNumber('METRIC_FORMAT_NUMBER'),
  metricFormatPlainText('METRIC_FORMAT_PLAIN_TEXT');

  const ChronicleDashboardChartMetricFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Metric trend type.
enum ChronicleDashboardChartMetricTrendType implements TerraformEnum {
  metricTrendTypeUnspecified('METRIC_TREND_TYPE_UNSPECIFIED'),
  metricTrendTypeRegular('METRIC_TREND_TYPE_REGULAR'),
  metricTrendTypeInverse('METRIC_TREND_TYPE_INVERSE');

  const ChronicleDashboardChartMetricTrendType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Table column render type.
enum ChronicleDashboardChartColumnRenderType implements TerraformEnum {
  renderTypeUnspecified('RENDER_TYPE_UNSPECIFIED'),
  renderTypeText('RENDER_TYPE_TEXT'),
  renderTypeIcon('RENDER_TYPE_ICON'),
  renderTypeIconAndText('RENDER_TYPE_ICON_AND_TEXT');

  const ChronicleDashboardChartColumnRenderType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Tooltip trigger mode.
enum ChronicleDashboardChartTooltipTrigger implements TerraformEnum {
  tooltipTriggerUnspecified('TOOLTIP_TRIGGER_UNSPECIFIED'),
  tooltipTriggerNone('TOOLTIP_TRIGGER_NONE'),
  tooltipTriggerItem('TOOLTIP_TRIGGER_ITEM'),
  tooltipTriggerAxis('TOOLTIP_TRIGGER_AXIS');

  const ChronicleDashboardChartTooltipTrigger(this.terraformValue);
  @override
  final String terraformValue;
}

/// Visual map type.
enum ChronicleDashboardChartVisualMapType implements TerraformEnum {
  visualMapTypeUnspecified('VISUAL_MAP_TYPE_UNSPECIFIED'),
  continuous('CONTINUOUS'),
  piecewise('PIECEWISE');

  const ChronicleDashboardChartVisualMapType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Axis type for chart axes.
enum ChronicleDashboardChartAxisType implements TerraformEnum {
  value('VALUE'),
  category('CATEGORY'),
  time('TIME'),
  log('LOG');

  const ChronicleDashboardChartAxisType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `chart_layout` block.
@immutable
class ChronicleDashboardChartChartLayout {
  const ChronicleDashboardChartChartLayout({
    this.startX,
    required this.spanX,
    this.startY,
    required this.spanY,
  });

  final TfArg<int>? startX;
  final TfArg<int> spanX;
  final TfArg<int>? startY;
  final TfArg<int> spanY;

  Map<String, Object?> toArgMap() => {
    if (startX != null) 'start_x': startX!.toTfJson(),
    'span_x': spanX.toTfJson(),
    if (startY != null) 'start_y': startY!.toTfJson(),
    'span_y': spanY.toTfJson(),
  };
}

/// Drill-down filter operator entry (covers nested drill-down enum sites).
@immutable
class ChronicleDashboardChartFilterOperatorAndValues {
  const ChronicleDashboardChartFilterOperatorAndValues({this.filterOperator});

  final ChronicleDashboardChartFilterOperator? filterOperator;

  Map<String, Object?> toArgMap() => {
    if (filterOperator != null)
      'filter_operator': filterOperator!.terraformValue,
  };
}

/// Metric trend configuration on a chart series.
@immutable
class ChronicleDashboardChartMetricTrendConfig {
  const ChronicleDashboardChartMetricTrendConfig({
    this.metricDisplayTrend,
    this.metricFormat,
    this.metricTrendType,
  });

  final ChronicleDashboardChartMetricDisplayTrend? metricDisplayTrend;
  final ChronicleDashboardChartMetricFormat? metricFormat;
  final ChronicleDashboardChartMetricTrendType? metricTrendType;

  Map<String, Object?> toArgMap() => {
    if (metricDisplayTrend != null)
      'metric_display_trend': metricDisplayTrend!.terraformValue,
    if (metricFormat != null) 'metric_format': metricFormat!.terraformValue,
    if (metricTrendType != null)
      'metric_trend_type': metricTrendType!.terraformValue,
  };
}

/// Chart series entry inside `visualization`.
@immutable
class ChronicleDashboardChartSeries {
  const ChronicleDashboardChartSeries({
    this.seriesType,
    this.seriesStackStrategy,
    this.metricTrendConfig,
  });

  final ChronicleDashboardChartSeriesType? seriesType;
  final ChronicleDashboardChartSeriesStackStrategy? seriesStackStrategy;
  final ChronicleDashboardChartMetricTrendConfig? metricTrendConfig;

  Map<String, Object?> toArgMap() => {
    if (seriesType != null) 'series_type': seriesType!.terraformValue,
    if (seriesStackStrategy != null)
      'series_stack_strategy': seriesStackStrategy!.terraformValue,
    if (metricTrendConfig != null)
      'metric_trend_config': [metricTrendConfig!.toArgMap()],
  };
}

/// Visualization block on a dashboard chart.
@immutable
class ChronicleDashboardChartVisualization {
  const ChronicleDashboardChartVisualization({
    this.series,
    this.buttonStyle,
    this.plotMode,
    this.pointSizeType,
    this.legendAlign,
    this.legendOrient,
    this.columnRenderType,
    this.tooltipTrigger,
    this.visualMapType,
    this.axisType,
  });

  final List<ChronicleDashboardChartSeries>? series;
  final ChronicleDashboardChartButtonStyle? buttonStyle;
  final ChronicleDashboardChartPlotMode? plotMode;
  final ChronicleDashboardChartPointSizeType? pointSizeType;
  final ChronicleDashboardChartLegendAlign? legendAlign;
  final ChronicleDashboardChartLegendOrient? legendOrient;
  final ChronicleDashboardChartColumnRenderType? columnRenderType;
  final ChronicleDashboardChartTooltipTrigger? tooltipTrigger;
  final ChronicleDashboardChartVisualMapType? visualMapType;
  final ChronicleDashboardChartAxisType? axisType;

  Map<String, Object?> toArgMap() => {
    if (series != null) 'series': series!.map((s) => s.toArgMap()).toList(),
    if (buttonStyle != null)
      'button': [
        {
          'properties': [
            {'button_style': buttonStyle!.terraformValue},
          ],
        },
      ],
    if (plotMode != null)
      'google_maps_config': [
        {
          'plot_mode': plotMode!.terraformValue,
          if (pointSizeType != null)
            'point_settings': [
              {'point_size_type': pointSizeType!.terraformValue},
            ],
        },
      ],
    if (legendAlign != null || legendOrient != null)
      'legends': [
        {
          if (legendAlign != null) 'legend_align': legendAlign!.terraformValue,
          if (legendOrient != null)
            'legend_orient': legendOrient!.terraformValue,
        },
      ],
    if (columnRenderType != null)
      'table_config': [
        {
          'column_render_type_settings': [
            {'column_render_type': columnRenderType!.terraformValue},
          ],
        },
      ],
    if (tooltipTrigger != null)
      'tooltip': [
        {'tooltip_trigger': tooltipTrigger!.terraformValue},
      ],
    if (visualMapType != null)
      'visual_maps': [
        {'visual_map_type': visualMapType!.terraformValue},
      ],
    if (axisType != null) ...{
      'x_axes': [
        {'axis_type': axisType!.terraformValue},
      ],
      'y_axes': [
        {'axis_type': axisType!.terraformValue},
      ],
    },
  };
}

/// `dashboard_chart` block.
@immutable
class ChronicleDashboardChartSpec {
  const ChronicleDashboardChartSpec({
    required this.displayName,
    this.tileType,
    this.visualization,
    this.filterOperatorAndValues,
  });

  final TfArg<String> displayName;
  final ChronicleDashboardChartTileType? tileType;
  final List<ChronicleDashboardChartVisualization>? visualization;
  final ChronicleDashboardChartFilterOperatorAndValues? filterOperatorAndValues;

  Map<String, Object?> toArgMap() => {
    'display_name': displayName.toTfJson(),
    if (tileType != null) 'tile_type': tileType!.terraformValue,
    if (visualization != null)
      'visualization': visualization!.map((v) => v.toArgMap()).toList(),
    if (filterOperatorAndValues != null)
      'drill_down_config': [
        {
          'left_drill_downs': [
            {
              'custom_settings': [
                {
                  'filter': [
                    {
                      'dashboard_filters': [
                        filterOperatorAndValues!.toArgMap(),
                      ],
                    },
                  ],
                },
              ],
            },
          ],
        },
      ],
  };
}

/// Relative time window for a dashboard query.
@immutable
class ChronicleDashboardChartRelativeTime {
  const ChronicleDashboardChartRelativeTime({
    required this.startTimeVal,
    required this.timeUnit,
  });

  final TfArg<String> startTimeVal;
  final ChronicleDashboardChartTimeUnit timeUnit;

  Map<String, Object?> toArgMap() => {
    'start_time_val': startTimeVal.toTfJson(),
    'time_unit': timeUnit.terraformValue,
  };
}

/// Query input parameters.
@immutable
class ChronicleDashboardChartQueryInput {
  const ChronicleDashboardChartQueryInput({this.relativeTime});

  final ChronicleDashboardChartRelativeTime? relativeTime;

  Map<String, Object?> toArgMap() => {
    if (relativeTime != null) 'relative_time': [relativeTime!.toArgMap()],
  };
}

/// `dashboard_query` block.
@immutable
class ChronicleDashboardChartQuery {
  const ChronicleDashboardChartQuery({required this.query, this.input});

  final TfArg<String> query;
  final ChronicleDashboardChartQueryInput? input;

  Map<String, Object?> toArgMap() => {
    'query': query.toTfJson(),
    if (input != null) 'input': [input!.toArgMap()],
  };
}

/// Factory wrapper for `google_chronicle_dashboard_chart`.
///
/// A chart resource used within a NativeDashboard. Its lifecycle (Create,
/// Update, Delete) is managed via custom methods on the NativeDashboard
/// resource.
///
/// Chronicle dashboard chart tile managed against a [GoogleChronicleNativeDashboard].
///
/// Set [nativeDashboard] to `TfArg.ref(dashboard.nameRef)`. Use
/// [ChronicleDashboardChartChartLayout], [ChronicleDashboardChartSpec], and
/// [ChronicleDashboardChartQuery] for the nested blocks.
final class GoogleChronicleDashboardChart extends Resource {
  static const String tfType = 'google_chronicle_dashboard_chart';

  GoogleChronicleDashboardChart({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? nativeDashboard,
    ChronicleDashboardChartChartLayout? chartLayout,
    required ChronicleDashboardChartSpec dashboardChart,
    ChronicleDashboardChartQuery? dashboardQuery,
    TfArg<ChronicleDashboardChartDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           if (nativeDashboard != null) 'native_dashboard': nativeDashboard,
           if (chartLayout != null)
             'chart_layout': TfArg.literal([chartLayout.toArgMap()]),
           'dashboard_chart': TfArg.literal([dashboardChart.toArgMap()]),
           if (dashboardQuery != null)
             'dashboard_query': TfArg.literal([dashboardQuery.toArgMap()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDashboardChartSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `chart_id` attribute.
  TfRef<String> get chartId => TfRef.attribute<String>(this, 'chart_id');
}
