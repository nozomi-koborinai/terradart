// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_dashboard`.
const Set<String> _awsQuicksightDashboardSensitive = <String>{};

/// Typed helper for the `dashboard_publish_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPublishOptions {
  const QuicksightDashboardPublishOptions({
    this.adHocFilteringOption,
    this.dataPointDrillUpDownOption,
    this.dataPointMenuLabelOption,
    this.dataPointTooltipOption,
    this.exportToCsvOption,
    this.exportWithHiddenFieldsOption,
    this.sheetControlsOption,
    this.sheetLayoutElementMaximizationOption,
    this.visualAxisSortOption,
    this.visualMenuOption,
  });

  final QuicksightDashboardAdHocFilteringOption? adHocFilteringOption;

  final QuicksightDashboardAdHocFilteringOption? dataPointDrillUpDownOption;

  final QuicksightDashboardAdHocFilteringOption? dataPointMenuLabelOption;

  final QuicksightDashboardAdHocFilteringOption? dataPointTooltipOption;

  final QuicksightDashboardAdHocFilteringOption? exportToCsvOption;

  final QuicksightDashboardAdHocFilteringOption? exportWithHiddenFieldsOption;

  final QuicksightDashboardSheetControlsOption? sheetControlsOption;

  final QuicksightDashboardAdHocFilteringOption?
  sheetLayoutElementMaximizationOption;

  final QuicksightDashboardAdHocFilteringOption? visualAxisSortOption;

  final QuicksightDashboardAdHocFilteringOption? visualMenuOption;

  Map<String, Object?> encode() => {
    'ad_hoc_filtering_option': ?adHocFilteringOption?.encode(),
    'data_point_drill_up_down_option': ?dataPointDrillUpDownOption?.encode(),
    'data_point_menu_label_option': ?dataPointMenuLabelOption?.encode(),
    'data_point_tooltip_option': ?dataPointTooltipOption?.encode(),
    'export_to_csv_option': ?exportToCsvOption?.encode(),
    'export_with_hidden_fields_option': ?exportWithHiddenFieldsOption?.encode(),
    'sheet_controls_option': ?sheetControlsOption?.encode(),
    'sheet_layout_element_maximization_option':
        ?sheetLayoutElementMaximizationOption?.encode(),
    'visual_axis_sort_option': ?visualAxisSortOption?.encode(),
    'visual_menu_option': ?visualMenuOption?.encode(),
  };
}

/// Typed helper for the `dashboard_publish_options.ad_hoc_filtering_option` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardAdHocFilteringOption {
  const QuicksightDashboardAdHocFilteringOption({this.availabilityStatus});

  final TfArg<String>? availabilityStatus;

  Map<String, Object?> encode() => {
    'availability_status': ?availabilityStatus?.toTfJson(),
  };
}

/// Typed helper for the `dashboard_publish_options.sheet_controls_option` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSheetControlsOption {
  const QuicksightDashboardSheetControlsOption({this.visibilityState});

  final TfArg<String>? visibilityState;

  Map<String, Object?> encode() => {
    'visibility_state': ?visibilityState?.toTfJson(),
  };
}

/// Typed helper for the `definition` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinition {
  const QuicksightDashboardDefinition({
    this.analysisDefaults,
    this.calculatedFields,
    this.columnConfigurations,
    required this.dataSetIdentifiersDeclarations,
    this.filterGroups,
    this.parameterDeclarations,
    this.sheets,
  });

  final QuicksightDashboardAnalysisDefaults? analysisDefaults;

  final List<QuicksightDashboardCalculatedFields>? calculatedFields;

  final List<QuicksightDashboardColumnConfigurations>? columnConfigurations;

  final List<QuicksightDashboardDataSetIdentifiersDeclarations>
  dataSetIdentifiersDeclarations;

  final List<QuicksightDashboardFilterGroups>? filterGroups;

  final List<QuicksightDashboardParameterDeclarations>? parameterDeclarations;

  final List<QuicksightDashboardSheets>? sheets;

  Map<String, Object?> encode() => {
    'analysis_defaults': ?analysisDefaults?.encode(),
    if (calculatedFields != null)
      'calculated_fields': [for (final e in calculatedFields!) e.encode()],
    if (columnConfigurations != null)
      'column_configurations': [
        for (final e in columnConfigurations!) e.encode(),
      ],
    'data_set_identifiers_declarations': [
      for (final e in dataSetIdentifiersDeclarations) e.encode(),
    ],
    if (filterGroups != null)
      'filter_groups': [for (final e in filterGroups!) e.encode()],
    if (parameterDeclarations != null)
      'parameter_declarations': [
        for (final e in parameterDeclarations!) e.encode(),
      ],
    if (sheets != null) 'sheets': [for (final e in sheets!) e.encode()],
  };
}

/// Typed helper for the `definition.analysis_defaults` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardAnalysisDefaults {
  const QuicksightDashboardAnalysisDefaults({
    required this.defaultNewSheetConfiguration,
  });

  final QuicksightDashboardDefaultNewSheetConfiguration
  defaultNewSheetConfiguration;

  Map<String, Object?> encode() => {
    'default_new_sheet_configuration': defaultNewSheetConfiguration.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefaultNewSheetConfiguration {
  const QuicksightDashboardDefaultNewSheetConfiguration({
    this.sheetContentType,
    this.interactiveLayoutConfiguration,
    this.paginatedLayoutConfiguration,
  });

  final TfArg<String>? sheetContentType;

  final QuicksightDashboardInteractiveLayoutConfiguration?
  interactiveLayoutConfiguration;

  final QuicksightDashboardPaginatedLayoutConfiguration?
  paginatedLayoutConfiguration;

  Map<String, Object?> encode() => {
    'sheet_content_type': ?sheetContentType?.toTfJson(),
    'interactive_layout_configuration': ?interactiveLayoutConfiguration
        ?.encode(),
    'paginated_layout_configuration': ?paginatedLayoutConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardInteractiveLayoutConfiguration {
  const QuicksightDashboardInteractiveLayoutConfiguration({
    this.freeForm,
    this.grid,
  });

  final QuicksightDashboardFreeForm? freeForm;

  final QuicksightDashboardGrid? grid;

  Map<String, Object?> encode() => {
    'free_form': ?freeForm?.encode(),
    'grid': ?grid?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFreeForm {
  const QuicksightDashboardFreeForm({required this.canvasSizeOptions});

  final QuicksightDashboardFreeFormCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFreeFormCanvasSizeOptions {
  const QuicksightDashboardFreeFormCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightDashboardFreeFormScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFreeFormScreenCanvasSizeOptions {
  const QuicksightDashboardFreeFormScreenCanvasSizeOptions({
    required this.optimizedViewPortWidth,
  });

  final TfArg<String> optimizedViewPortWidth;

  Map<String, Object?> encode() => {
    'optimized_view_port_width': optimizedViewPortWidth.toTfJson(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGrid {
  const QuicksightDashboardGrid({required this.canvasSizeOptions});

  final QuicksightDashboardGridCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardGridCanvasSizeOptions {
  const QuicksightDashboardGridCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightDashboardGridScreenCanvasSizeOptions? screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardGridScreenCanvasSizeOptions {
  const QuicksightDashboardGridScreenCanvasSizeOptions({
    this.optimizedViewPortWidth,
    required this.resizeOption,
  });

  final TfArg<String>? optimizedViewPortWidth;

  final TfArg<String> resizeOption;

  Map<String, Object?> encode() => {
    'optimized_view_port_width': ?optimizedViewPortWidth?.toTfJson(),
    'resize_option': resizeOption.toTfJson(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPaginatedLayoutConfiguration {
  const QuicksightDashboardPaginatedLayoutConfiguration({this.sectionBased});

  final QuicksightDashboardSectionBased? sectionBased;

  Map<String, Object?> encode() => {'section_based': ?sectionBased?.encode()};
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSectionBased {
  const QuicksightDashboardSectionBased({required this.canvasSizeOptions});

  final QuicksightDashboardSectionBasedCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSectionBasedCanvasSizeOptions {
  const QuicksightDashboardSectionBasedCanvasSizeOptions({
    this.paperCanvasSizeOptions,
  });

  final QuicksightDashboardPaperCanvasSizeOptions? paperCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'paper_canvas_size_options': ?paperCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPaperCanvasSizeOptions {
  const QuicksightDashboardPaperCanvasSizeOptions({
    this.paperOrientation,
    this.paperSize,
    this.paperMargin,
  });

  final TfArg<String>? paperOrientation;

  final TfArg<String>? paperSize;

  final QuicksightDashboardPaperMargin? paperMargin;

  Map<String, Object?> encode() => {
    'paper_orientation': ?paperOrientation?.toTfJson(),
    'paper_size': ?paperSize?.toTfJson(),
    'paper_margin': ?paperMargin?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options.paper_margin` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPaperMargin {
  const QuicksightDashboardPaperMargin({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  final TfArg<String>? bottom;

  final TfArg<String>? left;

  final TfArg<String>? right;

  final TfArg<String>? top;

  Map<String, Object?> encode() => {
    'bottom': ?bottom?.toTfJson(),
    'left': ?left?.toTfJson(),
    'right': ?right?.toTfJson(),
    'top': ?top?.toTfJson(),
  };
}

/// Typed helper for the `definition.calculated_fields` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCalculatedFields {
  const QuicksightDashboardCalculatedFields({
    required this.dataSetIdentifier,
    required this.expression,
    required this.name,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> expression;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'expression': expression.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardColumnConfigurations {
  const QuicksightDashboardColumnConfigurations({
    this.role,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? role;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.column` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumn {
  const QuicksightDashboardColumn({
    required this.columnName,
    required this.dataSetIdentifier,
  });

  final TfArg<String> columnName;

  final TfArg<String> dataSetIdentifier;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'data_set_identifier': dataSetIdentifier.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFormatConfiguration {
  const QuicksightDashboardFormatConfiguration({
    this.dateTimeFormatConfiguration,
    this.numberFormatConfiguration,
    this.stringFormatConfiguration,
  });

  final QuicksightDashboardDateTimeFormatConfiguration?
  dateTimeFormatConfiguration;

  final QuicksightDashboardNumberFormatConfiguration? numberFormatConfiguration;

  final QuicksightDashboardStringFormatConfiguration? stringFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format_configuration': ?dateTimeFormatConfiguration?.encode(),
    'number_format_configuration': ?numberFormatConfiguration?.encode(),
    'string_format_configuration': ?stringFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateTimeFormatConfiguration {
  const QuicksightDashboardDateTimeFormatConfiguration({
    this.dateTimeFormat,
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightDashboardNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.null_value_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNullValueFormatConfiguration {
  const QuicksightDashboardNullValueFormatConfiguration({
    required this.nullString,
  });

  final TfArg<String> nullString;

  Map<String, Object?> encode() => {'null_string': nullString.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericFormatConfiguration {
  const QuicksightDashboardNumericFormatConfiguration({
    this.currencyDisplayFormatConfiguration,
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightDashboardCurrencyDisplayFormatConfiguration?
  currencyDisplayFormatConfiguration;

  final QuicksightDashboardNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightDashboardPercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    'currency_display_format_configuration': ?currencyDisplayFormatConfiguration
        ?.encode(),
    'number_display_format_configuration': ?numberDisplayFormatConfiguration
        ?.encode(),
    'percentage_display_format_configuration':
        ?percentageDisplayFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCurrencyDisplayFormatConfiguration {
  const QuicksightDashboardCurrencyDisplayFormatConfiguration({
    this.numberScale,
    this.prefix,
    this.suffix,
    this.symbol,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? numberScale;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final TfArg<String>? symbol;

  final QuicksightDashboardDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardSeparatorConfiguration? separatorConfiguration;

  Map<String, Object?> encode() => {
    'number_scale': ?numberScale?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'symbol': ?symbol?.toTfJson(),
    'decimal_places_configuration': ?decimalPlacesConfiguration?.encode(),
    'negative_value_configuration': ?negativeValueConfiguration?.encode(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'separator_configuration': ?separatorConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.decimal_places_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDecimalPlacesConfiguration {
  const QuicksightDashboardDecimalPlacesConfiguration({
    required this.decimalPlaces,
  });

  final TfArg<num> decimalPlaces;

  Map<String, Object?> encode() => {'decimal_places': decimalPlaces.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.negative_value_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNegativeValueConfiguration {
  const QuicksightDashboardNegativeValueConfiguration({
    required this.displayMode,
  });

  final TfArg<String> displayMode;

  Map<String, Object?> encode() => {'display_mode': displayMode.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSeparatorConfiguration {
  const QuicksightDashboardSeparatorConfiguration({
    this.decimalSeparator,
    this.thousandsSeparator,
  });

  final TfArg<String>? decimalSeparator;

  final QuicksightDashboardThousandsSeparator? thousandsSeparator;

  Map<String, Object?> encode() => {
    'decimal_separator': ?decimalSeparator?.toTfJson(),
    'thousands_separator': ?thousandsSeparator?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration.thousands_separator` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardThousandsSeparator {
  const QuicksightDashboardThousandsSeparator({this.symbol, this.visibility});

  final TfArg<String>? symbol;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'symbol': ?symbol?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.number_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumberDisplayFormatConfiguration {
  const QuicksightDashboardNumberDisplayFormatConfiguration({
    this.numberScale,
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? numberScale;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightDashboardDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardSeparatorConfiguration? separatorConfiguration;

  Map<String, Object?> encode() => {
    'number_scale': ?numberScale?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'decimal_places_configuration': ?decimalPlacesConfiguration?.encode(),
    'negative_value_configuration': ?negativeValueConfiguration?.encode(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'separator_configuration': ?separatorConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.percentage_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPercentageDisplayFormatConfiguration {
  const QuicksightDashboardPercentageDisplayFormatConfiguration({
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightDashboardDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardSeparatorConfiguration? separatorConfiguration;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'decimal_places_configuration': ?decimalPlacesConfiguration?.encode(),
    'negative_value_configuration': ?negativeValueConfiguration?.encode(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'separator_configuration': ?separatorConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.number_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumberFormatConfiguration {
  const QuicksightDashboardNumberFormatConfiguration({
    this.numericFormatConfiguration,
  });

  final QuicksightDashboardNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.string_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardStringFormatConfiguration {
  const QuicksightDashboardStringFormatConfiguration({
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final QuicksightDashboardNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.data_set_identifiers_declarations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataSetIdentifiersDeclarations {
  const QuicksightDashboardDataSetIdentifiersDeclarations({
    this.dataSetArn,
    this.identifier,
  });

  final TfArg<String>? dataSetArn;

  final TfArg<String>? identifier;

  Map<String, Object?> encode() => {
    'data_set_arn': ?dataSetArn?.toTfJson(),
    'identifier': ?identifier?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterGroups {
  const QuicksightDashboardFilterGroups({
    required this.crossDataset,
    required this.filterGroupId,
    this.status,
    required this.filters,
    required this.scopeConfiguration,
  });

  final TfArg<String> crossDataset;

  final TfArg<String> filterGroupId;

  final TfArg<String>? status;

  final List<QuicksightDashboardFilters> filters;

  final QuicksightDashboardScopeConfiguration scopeConfiguration;

  Map<String, Object?> encode() => {
    'cross_dataset': crossDataset.toTfJson(),
    'filter_group_id': filterGroupId.toTfJson(),
    'status': ?status?.toTfJson(),
    'filters': [for (final e in filters) e.encode()],
    'scope_configuration': scopeConfiguration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilters {
  const QuicksightDashboardFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.numericRangeFilter,
    this.relativeDatesFilter,
    this.timeEqualityFilter,
    this.timeRangeFilter,
    this.topBottomFilter,
  });

  final QuicksightDashboardCategoryFilter? categoryFilter;

  final QuicksightDashboardNumericEqualityFilter? numericEqualityFilter;

  final QuicksightDashboardNumericRangeFilter? numericRangeFilter;

  final QuicksightDashboardRelativeDatesFilter? relativeDatesFilter;

  final QuicksightDashboardTimeEqualityFilter? timeEqualityFilter;

  final QuicksightDashboardTimeRangeFilter? timeRangeFilter;

  final QuicksightDashboardTopBottomFilter? topBottomFilter;

  Map<String, Object?> encode() => {
    'category_filter': ?categoryFilter?.encode(),
    'numeric_equality_filter': ?numericEqualityFilter?.encode(),
    'numeric_range_filter': ?numericRangeFilter?.encode(),
    'relative_dates_filter': ?relativeDatesFilter?.encode(),
    'time_equality_filter': ?timeEqualityFilter?.encode(),
    'time_range_filter': ?timeRangeFilter?.encode(),
    'top_bottom_filter': ?topBottomFilter?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCategoryFilter {
  const QuicksightDashboardCategoryFilter({
    required this.filterId,
    required this.column,
    required this.configuration,
  });

  final TfArg<String> filterId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardCategoryFilterConfiguration configuration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'column': column.encode(),
    'configuration': configuration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCategoryFilterConfiguration {
  const QuicksightDashboardCategoryFilterConfiguration({
    this.customFilterConfiguration,
    this.customFilterListConfiguration,
    this.filterListConfiguration,
  });

  final QuicksightDashboardCustomFilterConfiguration? customFilterConfiguration;

  final QuicksightDashboardCustomFilterListConfiguration?
  customFilterListConfiguration;

  final QuicksightDashboardFilterListConfiguration? filterListConfiguration;

  Map<String, Object?> encode() => {
    'custom_filter_configuration': ?customFilterConfiguration?.encode(),
    'custom_filter_list_configuration': ?customFilterListConfiguration
        ?.encode(),
    'filter_list_configuration': ?filterListConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomFilterConfiguration {
  const QuicksightDashboardCustomFilterConfiguration({
    this.categoryValue,
    required this.matchOperator,
    required this.nullOption,
    this.parameterName,
    this.selectAllOptions,
  });

  final TfArg<String>? categoryValue;

  final TfArg<String> matchOperator;

  final TfArg<String> nullOption;

  final TfArg<String>? parameterName;

  final TfArg<String>? selectAllOptions;

  Map<String, Object?> encode() => {
    'category_value': ?categoryValue?.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'select_all_options': ?selectAllOptions?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_list_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomFilterListConfiguration {
  const QuicksightDashboardCustomFilterListConfiguration({
    this.categoryValues,
    required this.matchOperator,
    required this.nullOption,
    this.selectAllOptions,
  });

  final TfArg<List<String>>? categoryValues;

  final TfArg<String> matchOperator;

  final TfArg<String> nullOption;

  final TfArg<String>? selectAllOptions;

  Map<String, Object?> encode() => {
    'category_values': ?categoryValues?.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'select_all_options': ?selectAllOptions?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.filter_list_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterListConfiguration {
  const QuicksightDashboardFilterListConfiguration({
    this.categoryValues,
    required this.matchOperator,
    this.selectAllOptions,
  });

  final TfArg<List<String>>? categoryValues;

  final TfArg<String> matchOperator;

  final TfArg<String>? selectAllOptions;

  Map<String, Object?> encode() => {
    'category_values': ?categoryValues?.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'select_all_options': ?selectAllOptions?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardNumericEqualityFilter {
  const QuicksightDashboardNumericEqualityFilter({
    required this.filterId,
    required this.matchOperator,
    required this.nullOption,
    this.parameterName,
    this.selectAllOptions,
    this.value,
    this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> filterId;

  final TfArg<String> matchOperator;

  final TfArg<String> nullOption;

  final TfArg<String>? parameterName;

  final TfArg<String>? selectAllOptions;

  final TfArg<num>? value;

  final QuicksightDashboardAggregationFunction? aggregationFunction;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'select_all_options': ?selectAllOptions?.toTfJson(),
    'value': ?value?.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardAggregationFunction {
  const QuicksightDashboardAggregationFunction({
    this.categoricalAggregationFunction,
    this.dateAggregationFunction,
    this.numericalAggregationFunction,
  });

  final TfArg<String>? categoricalAggregationFunction;

  final TfArg<String>? dateAggregationFunction;

  final QuicksightDashboardNumericalAggregationFunction?
  numericalAggregationFunction;

  Map<String, Object?> encode() => {
    'categorical_aggregation_function': ?categoricalAggregationFunction
        ?.toTfJson(),
    'date_aggregation_function': ?dateAggregationFunction?.toTfJson(),
    'numerical_aggregation_function': ?numericalAggregationFunction?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericalAggregationFunction {
  const QuicksightDashboardNumericalAggregationFunction({
    this.simpleNumericalAggregation,
    this.percentileAggregation,
  });

  final TfArg<String>? simpleNumericalAggregation;

  final QuicksightDashboardPercentileAggregation? percentileAggregation;

  Map<String, Object?> encode() => {
    'simple_numerical_aggregation': ?simpleNumericalAggregation?.toTfJson(),
    'percentile_aggregation': ?percentileAggregation?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function.percentile_aggregation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPercentileAggregation {
  const QuicksightDashboardPercentileAggregation({this.percentileValue});

  final TfArg<num>? percentileValue;

  Map<String, Object?> encode() => {
    'percentile_value': ?percentileValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardNumericRangeFilter {
  const QuicksightDashboardNumericRangeFilter({
    required this.filterId,
    this.includeMaximum,
    this.includeMinimum,
    required this.nullOption,
    this.selectAllOptions,
    this.aggregationFunction,
    required this.column,
    this.rangeMaximum,
    this.rangeMinimum,
  });

  final TfArg<String> filterId;

  final TfArg<bool>? includeMaximum;

  final TfArg<bool>? includeMinimum;

  final TfArg<String> nullOption;

  final TfArg<String>? selectAllOptions;

  final QuicksightDashboardAggregationFunction? aggregationFunction;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardRangeMaximum? rangeMaximum;

  final QuicksightDashboardRangeMaximum? rangeMinimum;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'include_maximum': ?includeMaximum?.toTfJson(),
    'include_minimum': ?includeMinimum?.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'select_all_options': ?selectAllOptions?.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'column': column.encode(),
    'range_maximum': ?rangeMaximum?.encode(),
    'range_minimum': ?rangeMinimum?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter.range_maximum` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardRangeMaximum {
  const QuicksightDashboardRangeMaximum({this.parameter, this.staticValue});

  final TfArg<String>? parameter;

  final TfArg<num>? staticValue;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRelativeDatesFilter {
  const QuicksightDashboardRelativeDatesFilter({
    required this.filterId,
    required this.minimumGranularity,
    required this.nullOption,
    this.parameterName,
    required this.relativeDateType,
    this.relativeDateValue,
    required this.timeGranularity,
    required this.anchorDateConfiguration,
    required this.column,
    this.excludePeriodConfiguration,
  });

  final TfArg<String> filterId;

  final TfArg<String> minimumGranularity;

  final TfArg<String> nullOption;

  final TfArg<String>? parameterName;

  final TfArg<String> relativeDateType;

  final TfArg<num>? relativeDateValue;

  final TfArg<String> timeGranularity;

  final QuicksightDashboardAnchorDateConfiguration anchorDateConfiguration;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardExcludePeriodConfiguration?
  excludePeriodConfiguration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'minimum_granularity': minimumGranularity.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'relative_date_type': relativeDateType.toTfJson(),
    'relative_date_value': ?relativeDateValue?.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'anchor_date_configuration': anchorDateConfiguration.encode(),
    'column': column.encode(),
    'exclude_period_configuration': ?excludePeriodConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter.anchor_date_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardAnchorDateConfiguration {
  const QuicksightDashboardAnchorDateConfiguration({
    this.anchorOption,
    this.parameterName,
  });

  final TfArg<String>? anchorOption;

  final TfArg<String>? parameterName;

  Map<String, Object?> encode() => {
    'anchor_option': ?anchorOption?.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter.exclude_period_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardExcludePeriodConfiguration {
  const QuicksightDashboardExcludePeriodConfiguration({
    required this.amount,
    required this.granularity,
    this.status,
  });

  final TfArg<num> amount;

  final TfArg<String> granularity;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    'amount': amount.toTfJson(),
    'granularity': granularity.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTimeEqualityFilter {
  const QuicksightDashboardTimeEqualityFilter({
    required this.filterId,
    this.parameterName,
    required this.timeGranularity,
    this.value,
    required this.column,
  });

  final TfArg<String> filterId;

  final TfArg<String>? parameterName;

  final TfArg<String> timeGranularity;

  final TfArg<String>? value;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'value': ?value?.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTimeRangeFilter {
  const QuicksightDashboardTimeRangeFilter({
    required this.filterId,
    this.includeMaximum,
    this.includeMinimum,
    required this.nullOption,
    required this.timeGranularity,
    required this.column,
    this.excludePeriodConfiguration,
    this.rangeMaximumValue,
    this.rangeMinimumValue,
  });

  final TfArg<String> filterId;

  final TfArg<bool>? includeMaximum;

  final TfArg<bool>? includeMinimum;

  final TfArg<String> nullOption;

  final TfArg<String> timeGranularity;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardExcludePeriodConfiguration?
  excludePeriodConfiguration;

  final QuicksightDashboardRangeMaximumValue? rangeMaximumValue;

  final QuicksightDashboardRangeMaximumValue? rangeMinimumValue;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'include_maximum': ?includeMaximum?.toTfJson(),
    'include_minimum': ?includeMinimum?.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'column': column.encode(),
    'exclude_period_configuration': ?excludePeriodConfiguration?.encode(),
    'range_maximum_value': ?rangeMaximumValue?.encode(),
    'range_minimum_value': ?rangeMinimumValue?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter.range_maximum_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardRangeMaximumValue {
  const QuicksightDashboardRangeMaximumValue({
    this.parameter,
    this.staticValue,
    this.rollingDate,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? staticValue;

  final QuicksightDashboardRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.rolling_date` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardRollingDate {
  const QuicksightDashboardRollingDate({
    this.dataSetIdentifier,
    required this.expression,
  });

  final TfArg<String>? dataSetIdentifier;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'data_set_identifier': ?dataSetIdentifier?.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.top_bottom_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTopBottomFilter {
  const QuicksightDashboardTopBottomFilter({
    required this.filterId,
    this.limit,
    this.parameterName,
    required this.timeGranularity,
    required this.aggregationSortConfiguration,
    required this.column,
  });

  final TfArg<String> filterId;

  final TfArg<num>? limit;

  final TfArg<String>? parameterName;

  final TfArg<String> timeGranularity;

  final List<QuicksightDashboardAggregationSortConfiguration>
  aggregationSortConfiguration;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'aggregation_sort_configuration': [
      for (final e in aggregationSortConfiguration) e.encode(),
    ],
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.top_bottom_filter.aggregation_sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardAggregationSortConfiguration {
  const QuicksightDashboardAggregationSortConfiguration({
    required this.sortDirection,
    required this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> sortDirection;

  final QuicksightDashboardAggregationFunction aggregationFunction;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'sort_direction': sortDirection.toTfJson(),
    'aggregation_function': aggregationFunction.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScopeConfiguration {
  const QuicksightDashboardScopeConfiguration({this.selectedSheets});

  final QuicksightDashboardSelectedSheets? selectedSheets;

  Map<String, Object?> encode() => {
    'selected_sheets': ?selectedSheets?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSelectedSheets {
  const QuicksightDashboardSelectedSheets({
    this.sheetVisualScopingConfigurations,
  });

  final List<QuicksightDashboardSheetVisualScopingConfigurations>?
  sheetVisualScopingConfigurations;

  Map<String, Object?> encode() => {
    if (sheetVisualScopingConfigurations != null)
      'sheet_visual_scoping_configurations': [
        for (final e in sheetVisualScopingConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets.sheet_visual_scoping_configurations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSheetVisualScopingConfigurations {
  const QuicksightDashboardSheetVisualScopingConfigurations({
    required this.scope,
    required this.sheetId,
    this.visualIds,
  });

  final TfArg<String> scope;

  final TfArg<String> sheetId;

  final TfArg<List<String>>? visualIds;

  Map<String, Object?> encode() => {
    'scope': scope.toTfJson(),
    'sheet_id': sheetId.toTfJson(),
    'visual_ids': ?visualIds?.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterDeclarations {
  const QuicksightDashboardParameterDeclarations({
    this.dateTimeParameterDeclaration,
    this.decimalParameterDeclaration,
    this.integerParameterDeclaration,
    this.stringParameterDeclaration,
  });

  final QuicksightDashboardDateTimeParameterDeclaration?
  dateTimeParameterDeclaration;

  final QuicksightDashboardDecimalParameterDeclaration?
  decimalParameterDeclaration;

  final QuicksightDashboardDecimalParameterDeclaration?
  integerParameterDeclaration;

  final QuicksightDashboardStringParameterDeclaration?
  stringParameterDeclaration;

  Map<String, Object?> encode() => {
    'date_time_parameter_declaration': ?dateTimeParameterDeclaration?.encode(),
    'decimal_parameter_declaration': ?decimalParameterDeclaration?.encode(),
    'integer_parameter_declaration': ?integerParameterDeclaration?.encode(),
    'string_parameter_declaration': ?stringParameterDeclaration?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDateTimeParameterDeclaration {
  const QuicksightDashboardDateTimeParameterDeclaration({
    required this.name,
    this.timeGranularity,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String>? timeGranularity;

  final QuicksightDashboardDateTimeParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDateTimeParameterDeclarationDefaultValues {
  const QuicksightDashboardDateTimeParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
    this.rollingDate,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightDashboardDynamicValue? dynamicValue;

  final QuicksightDashboardRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.dynamic_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDynamicValue {
  const QuicksightDashboardDynamicValue({
    required this.defaultValueColumn,
    this.groupNameColumn,
    this.userNameColumn,
  });

  final QuicksightDashboardColumn defaultValueColumn;

  final QuicksightDashboardColumn? groupNameColumn;

  final QuicksightDashboardColumn? userNameColumn;

  Map<String, Object?> encode() => {
    'default_value_column': defaultValueColumn.encode(),
    'group_name_column': ?groupNameColumn?.encode(),
    'user_name_column': ?userNameColumn?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateTimeParameterDeclarationValuesWhenUnset {
  const QuicksightDashboardDateTimeParameterDeclarationValuesWhenUnset({
    this.customValue,
    this.valueWhenUnsetOption,
  });

  final TfArg<String>? customValue;

  final TfArg<String>? valueWhenUnsetOption;

  Map<String, Object?> encode() => {
    'custom_value': ?customValue?.toTfJson(),
    'value_when_unset_option': ?valueWhenUnsetOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDecimalParameterDeclaration {
  const QuicksightDashboardDecimalParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightDashboardDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDecimalParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.default_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDecimalParameterDeclarationDefaultValues {
  const QuicksightDashboardDecimalParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<num>>? staticValues;

  final QuicksightDashboardDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDecimalParameterDeclarationValuesWhenUnset {
  const QuicksightDashboardDecimalParameterDeclarationValuesWhenUnset({
    this.customValue,
    this.valueWhenUnsetOption,
  });

  final TfArg<num>? customValue;

  final TfArg<String>? valueWhenUnsetOption;

  Map<String, Object?> encode() => {
    'custom_value': ?customValue?.toTfJson(),
    'value_when_unset_option': ?valueWhenUnsetOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations.string_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardStringParameterDeclaration {
  const QuicksightDashboardStringParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightDashboardStringParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.string_parameter_declaration.default_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardStringParameterDeclarationDefaultValues {
  const QuicksightDashboardStringParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightDashboardDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSheets {
  const QuicksightDashboardSheets({
    this.contentType,
    this.description,
    this.name,
    required this.sheetId,
    this.title,
    this.filterControls,
    this.layouts,
    this.parameterControls,
    this.sheetControlLayouts,
    this.textBoxes,
    this.visuals,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? description;

  final TfArg<String>? name;

  final TfArg<String> sheetId;

  final TfArg<String>? title;

  final List<QuicksightDashboardFilterControls>? filterControls;

  final QuicksightDashboardLayouts? layouts;

  final List<QuicksightDashboardParameterControls>? parameterControls;

  final QuicksightDashboardSheetControlLayouts? sheetControlLayouts;

  final List<QuicksightDashboardTextBoxes>? textBoxes;

  final List<QuicksightDashboardVisuals>? visuals;

  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': ?name?.toTfJson(),
    'sheet_id': sheetId.toTfJson(),
    'title': ?title?.toTfJson(),
    if (filterControls != null)
      'filter_controls': [for (final e in filterControls!) e.encode()],
    'layouts': ?layouts?.encode(),
    if (parameterControls != null)
      'parameter_controls': [for (final e in parameterControls!) e.encode()],
    'sheet_control_layouts': ?sheetControlLayouts?.encode(),
    if (textBoxes != null)
      'text_boxes': [for (final e in textBoxes!) e.encode()],
    if (visuals != null) 'visuals': [for (final e in visuals!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControls {
  const QuicksightDashboardFilterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.relativeDateTime,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightDashboardFilterControlsDateTimePicker? dateTimePicker;

  final QuicksightDashboardFilterControlsDropdown? dropdown;

  final QuicksightDashboardFilterControlsList? list;

  final QuicksightDashboardRelativeDateTime? relativeDateTime;

  final QuicksightDashboardFilterControlsSlider? slider;

  final QuicksightDashboardFilterControlsTextArea? textArea;

  final QuicksightDashboardFilterControlsTextField? textField;

  Map<String, Object?> encode() => {
    'date_time_picker': ?dateTimePicker?.encode(),
    'dropdown': ?dropdown?.encode(),
    'list': ?list?.encode(),
    'relative_date_time': ?relativeDateTime?.encode(),
    'slider': ?slider?.encode(),
    'text_area': ?textArea?.encode(),
    'text_field': ?textField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsDateTimePicker {
  const QuicksightDashboardFilterControlsDateTimePicker({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.type,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateTimePickerDisplayOptions {
  const QuicksightDashboardDateTimePickerDisplayOptions({
    this.dateTimeFormat,
    this.titleOptions,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightDashboardTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTitleOptions {
  const QuicksightDashboardTitleOptions({
    this.customLabel,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? visibility;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFontConfiguration {
  const QuicksightDashboardFontConfiguration({
    this.fontColor,
    this.fontDecoration,
    this.fontStyle,
    this.fontSize,
    this.fontWeight,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? fontDecoration;

  final TfArg<String>? fontStyle;

  final QuicksightDashboardFontSize? fontSize;

  final QuicksightDashboardFontWeight? fontWeight;

  Map<String, Object?> encode() => {
    'font_color': ?fontColor?.toTfJson(),
    'font_decoration': ?fontDecoration?.toTfJson(),
    'font_style': ?fontStyle?.toTfJson(),
    'font_size': ?fontSize?.encode(),
    'font_weight': ?fontWeight?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_size` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFontSize {
  const QuicksightDashboardFontSize({this.relative});

  final TfArg<String>? relative;

  Map<String, Object?> encode() => {'relative': ?relative?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_weight` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFontWeight {
  const QuicksightDashboardFontWeight({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsDropdown {
  const QuicksightDashboardFilterControlsDropdown({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.type,
    this.cascadingControlConfiguration,
    this.displayOptions,
    this.selectableValues,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDropdownDisplayOptions? displayOptions;

  final QuicksightDashboardFilterControlsSelectableValues? selectableValues;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'cascading_control_configuration': ?cascadingControlConfiguration?.encode(),
    'display_options': ?displayOptions?.encode(),
    'selectable_values': ?selectableValues?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCascadingControlConfiguration {
  const QuicksightDashboardCascadingControlConfiguration({this.sourceControls});

  final List<QuicksightDashboardSourceControls>? sourceControls;

  Map<String, Object?> encode() => {
    if (sourceControls != null)
      'source_controls': [for (final e in sourceControls!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration.source_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSourceControls {
  const QuicksightDashboardSourceControls({
    this.sourceSheetControlId,
    required this.columnToMatch,
  });

  final TfArg<String>? sourceSheetControlId;

  final QuicksightDashboardColumn columnToMatch;

  Map<String, Object?> encode() => {
    'source_sheet_control_id': ?sourceSheetControlId?.toTfJson(),
    'column_to_match': columnToMatch.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDropdownDisplayOptions {
  const QuicksightDashboardDropdownDisplayOptions({
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightDashboardSelectAllOptions? selectAllOptions;

  final QuicksightDashboardTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options.select_all_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSelectAllOptions {
  const QuicksightDashboardSelectAllOptions({this.visibility});

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {'visibility': ?visibility?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFilterControlsSelectableValues {
  const QuicksightDashboardFilterControlsSelectableValues({this.values});

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {'values': ?values?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.list` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsList {
  const QuicksightDashboardFilterControlsList({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.type,
    this.cascadingControlConfiguration,
    this.displayOptions,
    this.selectableValues,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardListDisplayOptions? displayOptions;

  final QuicksightDashboardFilterControlsSelectableValues? selectableValues;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'cascading_control_configuration': ?cascadingControlConfiguration?.encode(),
    'display_options': ?displayOptions?.encode(),
    'selectable_values': ?selectableValues?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.list.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardListDisplayOptions {
  const QuicksightDashboardListDisplayOptions({
    this.searchOptions,
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightDashboardSelectAllOptions? searchOptions;

  final QuicksightDashboardSelectAllOptions? selectAllOptions;

  final QuicksightDashboardTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'search_options': ?searchOptions?.encode(),
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.relative_date_time` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRelativeDateTime {
  const QuicksightDashboardRelativeDateTime({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightDashboardDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsSlider {
  const QuicksightDashboardFilterControlsSlider({
    required this.filterControlId,
    required this.maximumValue,
    required this.minimumValue,
    required this.sourceFilterId,
    required this.stepSize,
    required this.title,
    this.type,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<num> maximumValue;

  final TfArg<num> minimumValue;

  final TfArg<String> sourceFilterId;

  final TfArg<num> stepSize;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardSliderDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'maximum_value': maximumValue.toTfJson(),
    'minimum_value': minimumValue.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'step_size': stepSize.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSliderDisplayOptions {
  const QuicksightDashboardSliderDisplayOptions({this.titleOptions});

  final QuicksightDashboardTitleOptions? titleOptions;

  Map<String, Object?> encode() => {'title_options': ?titleOptions?.encode()};
}

/// Typed helper for the `definition.sheets.filter_controls.text_area` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsTextArea {
  const QuicksightDashboardFilterControlsTextArea({
    this.delimiter,
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String>? delimiter;

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightDashboardTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTextAreaDisplayOptions {
  const QuicksightDashboardTextAreaDisplayOptions({
    this.placeholderOptions,
    this.titleOptions,
  });

  final QuicksightDashboardSelectAllOptions? placeholderOptions;

  final QuicksightDashboardTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'placeholder_options': ?placeholderOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilterControlsTextField {
  const QuicksightDashboardFilterControlsTextField({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightDashboardTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLayouts {
  const QuicksightDashboardLayouts({required this.configuration});

  final QuicksightDashboardLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLayoutsConfiguration {
  const QuicksightDashboardLayoutsConfiguration({
    this.freeFormLayout,
    this.gridLayout,
    this.sectionBasedLayout,
  });

  final QuicksightDashboardFreeFormLayout? freeFormLayout;

  final QuicksightDashboardGridLayout? gridLayout;

  final QuicksightDashboardSectionBasedLayout? sectionBasedLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': ?freeFormLayout?.encode(),
    'grid_layout': ?gridLayout?.encode(),
    'section_based_layout': ?sectionBasedLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFreeFormLayout {
  const QuicksightDashboardFreeFormLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightDashboardFreeFormCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightDashboardFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFreeFormLayoutElements {
  const QuicksightDashboardFreeFormLayoutElements({
    required this.elementId,
    required this.elementType,
    required this.height,
    this.visibility,
    required this.width,
    required this.xAxisLocation,
    required this.yAxisLocation,
    this.backgroundStyle,
    this.borderStyle,
    this.loadingAnimation,
    this.renderingRules,
    this.selectedBorderStyle,
  });

  final TfArg<String> elementId;

  final TfArg<String> elementType;

  final TfArg<String> height;

  final TfArg<String>? visibility;

  final TfArg<String> width;

  final TfArg<String> xAxisLocation;

  final TfArg<String> yAxisLocation;

  final QuicksightDashboardBackgroundStyle? backgroundStyle;

  final QuicksightDashboardBackgroundStyle? borderStyle;

  final QuicksightDashboardSelectAllOptions? loadingAnimation;

  final List<QuicksightDashboardRenderingRules>? renderingRules;

  final QuicksightDashboardBackgroundStyle? selectedBorderStyle;

  Map<String, Object?> encode() => {
    'element_id': elementId.toTfJson(),
    'element_type': elementType.toTfJson(),
    'height': height.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': width.toTfJson(),
    'x_axis_location': xAxisLocation.toTfJson(),
    'y_axis_location': yAxisLocation.toTfJson(),
    'background_style': ?backgroundStyle?.encode(),
    'border_style': ?borderStyle?.encode(),
    'loading_animation': ?loadingAnimation?.encode(),
    if (renderingRules != null)
      'rendering_rules': [for (final e in renderingRules!) e.encode()],
    'selected_border_style': ?selectedBorderStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.background_style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardBackgroundStyle {
  const QuicksightDashboardBackgroundStyle({this.color, this.visibility});

  final TfArg<String>? color;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.rendering_rules` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardRenderingRules {
  const QuicksightDashboardRenderingRules({
    required this.expression,
    required this.configurationOverrides,
  });

  final TfArg<String> expression;

  final QuicksightDashboardSelectAllOptions configurationOverrides;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'configuration_overrides': configurationOverrides.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardGridLayout {
  const QuicksightDashboardGridLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightDashboardGridCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightDashboardGridLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout.elements` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardGridLayoutElements {
  const QuicksightDashboardGridLayoutElements({
    this.columnIndex,
    required this.columnSpan,
    required this.elementId,
    required this.elementType,
    this.rowIndex,
    required this.rowSpan,
  });

  final TfArg<String>? columnIndex;

  final TfArg<num> columnSpan;

  final TfArg<String> elementId;

  final TfArg<String> elementType;

  final TfArg<String>? rowIndex;

  final TfArg<num> rowSpan;

  Map<String, Object?> encode() => {
    'column_index': ?columnIndex?.toTfJson(),
    'column_span': columnSpan.toTfJson(),
    'element_id': elementId.toTfJson(),
    'element_type': elementType.toTfJson(),
    'row_index': ?rowIndex?.toTfJson(),
    'row_span': rowSpan.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSectionBasedLayout {
  const QuicksightDashboardSectionBasedLayout({
    required this.bodySections,
    this.canvasSizeOptions,
    required this.footerSections,
    required this.headerSections,
  });

  final List<QuicksightDashboardBodySections> bodySections;

  final QuicksightDashboardSectionBasedCanvasSizeOptions? canvasSizeOptions;

  final QuicksightDashboardFooterSections footerSections;

  final QuicksightDashboardFooterSections headerSections;

  Map<String, Object?> encode() => {
    'body_sections': [for (final e in bodySections) e.encode()],
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'footer_sections': footerSections.encode(),
    'header_sections': headerSections.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBodySections {
  const QuicksightDashboardBodySections({
    required this.sectionId,
    required this.content,
    this.pageBreakConfiguration,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightDashboardContent content;

  final QuicksightDashboardPageBreakConfiguration? pageBreakConfiguration;

  final QuicksightDashboardStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'content': content.encode(),
    'page_break_configuration': ?pageBreakConfiguration?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardContent {
  const QuicksightDashboardContent({this.layout});

  final QuicksightDashboardLayout? layout;

  Map<String, Object?> encode() => {'layout': ?layout?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLayout {
  const QuicksightDashboardLayout({required this.freeFormLayout});

  final QuicksightDashboardLayoutFreeFormLayout freeFormLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': freeFormLayout.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout.free_form_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLayoutFreeFormLayout {
  const QuicksightDashboardLayoutFreeFormLayout({required this.elements});

  final List<QuicksightDashboardFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPageBreakConfiguration {
  const QuicksightDashboardPageBreakConfiguration({this.after});

  final QuicksightDashboardAfter? after;

  Map<String, Object?> encode() => {'after': ?after?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration.after` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardAfter {
  const QuicksightDashboardAfter({this.status});

  final TfArg<String>? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardStyle {
  const QuicksightDashboardStyle({this.height, this.padding});

  final TfArg<String>? height;

  final QuicksightDashboardPaperMargin? padding;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'padding': ?padding?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFooterSections {
  const QuicksightDashboardFooterSections({
    required this.sectionId,
    this.layout,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightDashboardLayout? layout;

  final QuicksightDashboardStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'layout': ?layout?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControls {
  const QuicksightDashboardParameterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightDashboardParameterControlsDateTimePicker? dateTimePicker;

  final QuicksightDashboardParameterControlsDropdown? dropdown;

  final QuicksightDashboardParameterControlsList? list;

  final QuicksightDashboardParameterControlsSlider? slider;

  final QuicksightDashboardParameterControlsTextArea? textArea;

  final QuicksightDashboardParameterControlsTextField? textField;

  Map<String, Object?> encode() => {
    'date_time_picker': ?dateTimePicker?.encode(),
    'dropdown': ?dropdown?.encode(),
    'list': ?list?.encode(),
    'slider': ?slider?.encode(),
    'text_area': ?textArea?.encode(),
    'text_field': ?textField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.date_time_picker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsDateTimePicker {
  const QuicksightDashboardParameterControlsDateTimePicker({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightDashboardDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsDropdown {
  const QuicksightDashboardParameterControlsDropdown({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.type,
    this.cascadingControlConfiguration,
    this.displayOptions,
    this.selectableValues,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDropdownDisplayOptions? displayOptions;

  final QuicksightDashboardParameterControlsSelectableValues? selectableValues;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'cascading_control_configuration': ?cascadingControlConfiguration?.encode(),
    'display_options': ?displayOptions?.encode(),
    'selectable_values': ?selectableValues?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardParameterControlsSelectableValues {
  const QuicksightDashboardParameterControlsSelectableValues({
    this.values,
    this.linkToDataSetColumn,
  });

  final TfArg<List<String>>? values;

  final QuicksightDashboardColumn? linkToDataSetColumn;

  Map<String, Object?> encode() => {
    'values': ?values?.toTfJson(),
    'link_to_data_set_column': ?linkToDataSetColumn?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.list` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsList {
  const QuicksightDashboardParameterControlsList({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.type,
    this.cascadingControlConfiguration,
    this.displayOptions,
    this.selectableValues,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final TfArg<String>? type;

  final QuicksightDashboardCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardListDisplayOptions? displayOptions;

  final QuicksightDashboardParameterControlsSelectableValues? selectableValues;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'cascading_control_configuration': ?cascadingControlConfiguration?.encode(),
    'display_options': ?displayOptions?.encode(),
    'selectable_values': ?selectableValues?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.slider` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsSlider {
  const QuicksightDashboardParameterControlsSlider({
    required this.maximumValue,
    required this.minimumValue,
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.stepSize,
    required this.title,
    this.displayOptions,
  });

  final TfArg<num> maximumValue;

  final TfArg<num> minimumValue;

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<num> stepSize;

  final TfArg<String> title;

  final QuicksightDashboardSliderDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'maximum_value': maximumValue.toTfJson(),
    'minimum_value': minimumValue.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'step_size': stepSize.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_area` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsTextArea {
  const QuicksightDashboardParameterControlsTextArea({
    this.delimiter,
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String>? delimiter;

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightDashboardTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameterControlsTextField {
  const QuicksightDashboardParameterControlsTextField({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightDashboardTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.sheet_control_layouts` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSheetControlLayouts {
  const QuicksightDashboardSheetControlLayouts({required this.configuration});

  final QuicksightDashboardSheetControlLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.sheet_control_layouts.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSheetControlLayoutsConfiguration {
  const QuicksightDashboardSheetControlLayoutsConfiguration({this.gridLayout});

  final QuicksightDashboardGridLayout? gridLayout;

  Map<String, Object?> encode() => {'grid_layout': ?gridLayout?.encode()};
}

/// Typed helper for the `definition.sheets.text_boxes` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTextBoxes {
  const QuicksightDashboardTextBoxes({
    this.content,
    required this.sheetTextBoxId,
  });

  final TfArg<String>? content;

  final TfArg<String> sheetTextBoxId;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'sheet_text_box_id': sheetTextBoxId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardVisuals {
  const QuicksightDashboardVisuals({
    this.barChartVisual,
    this.boxPlotVisual,
    this.comboChartVisual,
    this.customContentVisual,
    this.emptyVisual,
    this.filledMapVisual,
    this.funnelChartVisual,
    this.gaugeChartVisual,
    this.geospatialMapVisual,
    this.heatMapVisual,
    this.histogramVisual,
    this.insightVisual,
    this.kpiVisual,
    this.lineChartVisual,
    this.pieChartVisual,
    this.pivotTableVisual,
    this.radarChartVisual,
    this.sankeyDiagramVisual,
    this.scatterPlotVisual,
    this.tableVisual,
    this.treeMapVisual,
    this.waterfallVisual,
    this.wordCloudVisual,
  });

  final QuicksightDashboardBarChartVisual? barChartVisual;

  final QuicksightDashboardBoxPlotVisual? boxPlotVisual;

  final QuicksightDashboardComboChartVisual? comboChartVisual;

  final QuicksightDashboardCustomContentVisual? customContentVisual;

  final QuicksightDashboardEmptyVisual? emptyVisual;

  final QuicksightDashboardFilledMapVisual? filledMapVisual;

  final QuicksightDashboardFunnelChartVisual? funnelChartVisual;

  final QuicksightDashboardGaugeChartVisual? gaugeChartVisual;

  final QuicksightDashboardGeospatialMapVisual? geospatialMapVisual;

  final QuicksightDashboardHeatMapVisual? heatMapVisual;

  final QuicksightDashboardHistogramVisual? histogramVisual;

  final QuicksightDashboardInsightVisual? insightVisual;

  final QuicksightDashboardKpiVisual? kpiVisual;

  final QuicksightDashboardLineChartVisual? lineChartVisual;

  final QuicksightDashboardPieChartVisual? pieChartVisual;

  final QuicksightDashboardPivotTableVisual? pivotTableVisual;

  final QuicksightDashboardRadarChartVisual? radarChartVisual;

  final QuicksightDashboardSankeyDiagramVisual? sankeyDiagramVisual;

  final QuicksightDashboardScatterPlotVisual? scatterPlotVisual;

  final QuicksightDashboardTableVisual? tableVisual;

  final QuicksightDashboardTreeMapVisual? treeMapVisual;

  final QuicksightDashboardWaterfallVisual? waterfallVisual;

  final QuicksightDashboardWordCloudVisual? wordCloudVisual;

  Map<String, Object?> encode() => {
    'bar_chart_visual': ?barChartVisual?.encode(),
    'box_plot_visual': ?boxPlotVisual?.encode(),
    'combo_chart_visual': ?comboChartVisual?.encode(),
    'custom_content_visual': ?customContentVisual?.encode(),
    'empty_visual': ?emptyVisual?.encode(),
    'filled_map_visual': ?filledMapVisual?.encode(),
    'funnel_chart_visual': ?funnelChartVisual?.encode(),
    'gauge_chart_visual': ?gaugeChartVisual?.encode(),
    'geospatial_map_visual': ?geospatialMapVisual?.encode(),
    'heat_map_visual': ?heatMapVisual?.encode(),
    'histogram_visual': ?histogramVisual?.encode(),
    'insight_visual': ?insightVisual?.encode(),
    'kpi_visual': ?kpiVisual?.encode(),
    'line_chart_visual': ?lineChartVisual?.encode(),
    'pie_chart_visual': ?pieChartVisual?.encode(),
    'pivot_table_visual': ?pivotTableVisual?.encode(),
    'radar_chart_visual': ?radarChartVisual?.encode(),
    'sankey_diagram_visual': ?sankeyDiagramVisual?.encode(),
    'scatter_plot_visual': ?scatterPlotVisual?.encode(),
    'table_visual': ?tableVisual?.encode(),
    'tree_map_visual': ?treeMapVisual?.encode(),
    'waterfall_visual': ?waterfallVisual?.encode(),
    'word_cloud_visual': ?wordCloudVisual?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBarChartVisual {
  const QuicksightDashboardBarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardBarChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardActions {
  const QuicksightDashboardActions({
    required this.customActionId,
    required this.name,
    required this.status,
    required this.trigger,
    required this.actionOperations,
  });

  final TfArg<String> customActionId;

  final TfArg<String> name;

  final TfArg<String> status;

  final TfArg<String> trigger;

  final List<QuicksightDashboardActionOperations> actionOperations;

  Map<String, Object?> encode() => {
    'custom_action_id': customActionId.toTfJson(),
    'name': name.toTfJson(),
    'status': status.toTfJson(),
    'trigger': trigger.toTfJson(),
    'action_operations': [for (final e in actionOperations) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardActionOperations {
  const QuicksightDashboardActionOperations({
    this.filterOperation,
    this.navigationOperation,
    this.setParametersOperation,
    this.urlOperation,
  });

  final QuicksightDashboardFilterOperation? filterOperation;

  final QuicksightDashboardNavigationOperation? navigationOperation;

  final QuicksightDashboardSetParametersOperation? setParametersOperation;

  final QuicksightDashboardUrlOperation? urlOperation;

  Map<String, Object?> encode() => {
    'filter_operation': ?filterOperation?.encode(),
    'navigation_operation': ?navigationOperation?.encode(),
    'set_parameters_operation': ?setParametersOperation?.encode(),
    'url_operation': ?urlOperation?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFilterOperation {
  const QuicksightDashboardFilterOperation({
    required this.selectedFieldsConfiguration,
    required this.targetVisualsConfiguration,
  });

  final QuicksightDashboardSelectedFieldsConfiguration
  selectedFieldsConfiguration;

  final QuicksightDashboardTargetVisualsConfiguration
  targetVisualsConfiguration;

  Map<String, Object?> encode() => {
    'selected_fields_configuration': selectedFieldsConfiguration.encode(),
    'target_visuals_configuration': targetVisualsConfiguration.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.selected_fields_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSelectedFieldsConfiguration {
  const QuicksightDashboardSelectedFieldsConfiguration({
    this.selectedFieldOption,
    this.selectedFields,
  });

  final TfArg<String>? selectedFieldOption;

  final TfArg<List<String>>? selectedFields;

  Map<String, Object?> encode() => {
    'selected_field_option': ?selectedFieldOption?.toTfJson(),
    'selected_fields': ?selectedFields?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTargetVisualsConfiguration {
  const QuicksightDashboardTargetVisualsConfiguration({
    this.sameSheetTargetVisualConfiguration,
  });

  final QuicksightDashboardSameSheetTargetVisualConfiguration?
  sameSheetTargetVisualConfiguration;

  Map<String, Object?> encode() => {
    'same_sheet_target_visual_configuration':
        ?sameSheetTargetVisualConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration.same_sheet_target_visual_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSameSheetTargetVisualConfiguration {
  const QuicksightDashboardSameSheetTargetVisualConfiguration({
    this.targetVisualOption,
    this.targetVisuals,
  });

  final TfArg<String>? targetVisualOption;

  final TfArg<List<String>>? targetVisuals;

  Map<String, Object?> encode() => {
    'target_visual_option': ?targetVisualOption?.toTfJson(),
    'target_visuals': ?targetVisuals?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNavigationOperation {
  const QuicksightDashboardNavigationOperation({
    this.localNavigationConfiguration,
  });

  final QuicksightDashboardLocalNavigationConfiguration?
  localNavigationConfiguration;

  Map<String, Object?> encode() => {
    'local_navigation_configuration': ?localNavigationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation.local_navigation_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLocalNavigationConfiguration {
  const QuicksightDashboardLocalNavigationConfiguration({
    required this.targetSheetId,
  });

  final TfArg<String> targetSheetId;

  Map<String, Object?> encode() => {
    'target_sheet_id': targetSheetId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSetParametersOperation {
  const QuicksightDashboardSetParametersOperation({
    required this.parameterValueConfigurations,
  });

  final List<QuicksightDashboardParameterValueConfigurations>
  parameterValueConfigurations;

  Map<String, Object?> encode() => {
    'parameter_value_configurations': [
      for (final e in parameterValueConfigurations) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardParameterValueConfigurations {
  const QuicksightDashboardParameterValueConfigurations({
    required this.destinationParameterName,
    required this.value,
  });

  final TfArg<String> destinationParameterName;

  final QuicksightDashboardValue value;

  Map<String, Object?> encode() => {
    'destination_parameter_name': destinationParameterName.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardValue {
  const QuicksightDashboardValue({
    this.selectAllValueOptions,
    this.sourceField,
    this.sourceParameterName,
    this.customValuesConfiguration,
  });

  final TfArg<String>? selectAllValueOptions;

  final TfArg<String>? sourceField;

  final TfArg<String>? sourceParameterName;

  final QuicksightDashboardCustomValuesConfiguration? customValuesConfiguration;

  Map<String, Object?> encode() => {
    'select_all_value_options': ?selectAllValueOptions?.toTfJson(),
    'source_field': ?sourceField?.toTfJson(),
    'source_parameter_name': ?sourceParameterName?.toTfJson(),
    'custom_values_configuration': ?customValuesConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCustomValuesConfiguration {
  const QuicksightDashboardCustomValuesConfiguration({
    this.includeNullValue,
    required this.customValues,
  });

  final TfArg<bool>? includeNullValue;

  final QuicksightDashboardCustomValues customValues;

  Map<String, Object?> encode() => {
    'include_null_value': ?includeNullValue?.toTfJson(),
    'custom_values': customValues.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration.custom_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCustomValues {
  const QuicksightDashboardCustomValues({
    this.dateTimeValues,
    this.decimalValues,
    this.integerValues,
    this.stringValues,
  });

  final TfArg<List<String>>? dateTimeValues;

  final TfArg<List<num>>? decimalValues;

  final TfArg<List<num>>? integerValues;

  final TfArg<List<String>>? stringValues;

  Map<String, Object?> encode() => {
    'date_time_values': ?dateTimeValues?.toTfJson(),
    'decimal_values': ?decimalValues?.toTfJson(),
    'integer_values': ?integerValues?.toTfJson(),
    'string_values': ?stringValues?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.url_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardUrlOperation {
  const QuicksightDashboardUrlOperation({
    required this.urlTarget,
    required this.urlTemplate,
  });

  final TfArg<String> urlTarget;

  final TfArg<String> urlTemplate;

  Map<String, Object?> encode() => {
    'url_target': urlTarget.toTfJson(),
    'url_template': urlTemplate.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBarChartVisualChartConfiguration {
  const QuicksightDashboardBarChartVisualChartConfiguration({
    this.barsArrangement,
    this.orientation,
    this.categoryAxis,
    this.categoryLabelOptions,
    this.colorLabelOptions,
    this.contributionAnalysisDefaults,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.referenceLines,
    this.smallMultiplesOptions,
    this.sortConfiguration,
    this.tooltip,
    this.valueAxis,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final TfArg<String>? barsArrangement;

  final TfArg<String>? orientation;

  final QuicksightDashboardCategoryAxis? categoryAxis;

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardCategoryLabelOptions? colorLabelOptions;

  final List<QuicksightDashboardContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardBarChartVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final List<QuicksightDashboardReferenceLines>? referenceLines;

  final QuicksightDashboardSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightDashboardBarChartVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardCategoryAxis? valueAxis;

  final QuicksightDashboardCategoryLabelOptions? valueLabelOptions;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'bars_arrangement': ?barsArrangement?.toTfJson(),
    'orientation': ?orientation?.toTfJson(),
    'category_axis': ?categoryAxis?.encode(),
    'category_label_options': ?categoryLabelOptions?.encode(),
    'color_label_options': ?colorLabelOptions?.encode(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    'small_multiples_options': ?smallMultiplesOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'value_axis': ?valueAxis?.encode(),
    'value_label_options': ?valueLabelOptions?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategoryAxis {
  const QuicksightDashboardCategoryAxis({
    this.axisLineVisibility,
    this.axisOffset,
    this.gridLineVisibility,
    this.dataOptions,
    this.scrollbarOptions,
    this.tickLabelOptions,
  });

  final TfArg<String>? axisLineVisibility;

  final TfArg<String>? axisOffset;

  final TfArg<String>? gridLineVisibility;

  final QuicksightDashboardDataOptions? dataOptions;

  final QuicksightDashboardScrollbarOptions? scrollbarOptions;

  final QuicksightDashboardTickLabelOptions? tickLabelOptions;

  Map<String, Object?> encode() => {
    'axis_line_visibility': ?axisLineVisibility?.toTfJson(),
    'axis_offset': ?axisOffset?.toTfJson(),
    'grid_line_visibility': ?gridLineVisibility?.toTfJson(),
    'data_options': ?dataOptions?.encode(),
    'scrollbar_options': ?scrollbarOptions?.encode(),
    'tick_label_options': ?tickLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataOptions {
  const QuicksightDashboardDataOptions({
    this.dateAxisOptions,
    this.numericAxisOptions,
  });

  final QuicksightDashboardDateAxisOptions? dateAxisOptions;

  final QuicksightDashboardNumericAxisOptions? numericAxisOptions;

  Map<String, Object?> encode() => {
    'date_axis_options': ?dateAxisOptions?.encode(),
    'numeric_axis_options': ?numericAxisOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.date_axis_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateAxisOptions {
  const QuicksightDashboardDateAxisOptions({this.missingDateVisibility});

  final TfArg<String>? missingDateVisibility;

  Map<String, Object?> encode() => {
    'missing_date_visibility': ?missingDateVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericAxisOptions {
  const QuicksightDashboardNumericAxisOptions({this.range, this.scale});

  final QuicksightDashboardNumericAxisOptionsRange? range;

  final QuicksightDashboardScale? scale;

  Map<String, Object?> encode() => {
    'range': ?range?.encode(),
    'scale': ?scale?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericAxisOptionsRange {
  const QuicksightDashboardNumericAxisOptionsRange({
    this.dataDriven,
    this.minMax,
  });

  final QuicksightDashboardDataDriven? dataDriven;

  final QuicksightDashboardMinMax? minMax;

  Map<String, Object?> encode() => {
    'data_driven': ?dataDriven?.encode(),
    'min_max': ?minMax?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.data_driven` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataDriven {
  const QuicksightDashboardDataDriven();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.min_max` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardMinMax {
  const QuicksightDashboardMinMax({this.maximum, this.minimum});

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  Map<String, Object?> encode() => {
    'maximum': ?maximum?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardScale {
  const QuicksightDashboardScale({this.linear, this.logarithmic});

  final QuicksightDashboardLinear? linear;

  final QuicksightDashboardLogarithmic? logarithmic;

  Map<String, Object?> encode() => {
    'linear': ?linear?.encode(),
    'logarithmic': ?logarithmic?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.linear` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLinear {
  const QuicksightDashboardLinear({this.stepCount, this.stepSize});

  final TfArg<num>? stepCount;

  final TfArg<num>? stepSize;

  Map<String, Object?> encode() => {
    'step_count': ?stepCount?.toTfJson(),
    'step_size': ?stepSize?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.logarithmic` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLogarithmic {
  const QuicksightDashboardLogarithmic({this.base});

  final TfArg<num>? base;

  Map<String, Object?> encode() => {'base': ?base?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardScrollbarOptions {
  const QuicksightDashboardScrollbarOptions({
    this.visibility,
    this.visibleRange,
  });

  final TfArg<String>? visibility;

  final QuicksightDashboardVisibleRange? visibleRange;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'visible_range': ?visibleRange?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardVisibleRange {
  const QuicksightDashboardVisibleRange({this.percentRange});

  final QuicksightDashboardPercentRange? percentRange;

  Map<String, Object?> encode() => {'percent_range': ?percentRange?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range.percent_range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPercentRange {
  const QuicksightDashboardPercentRange({this.from, this.to});

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.tick_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTickLabelOptions {
  const QuicksightDashboardTickLabelOptions({
    this.rotationAngle,
    this.labelOptions,
  });

  final TfArg<num>? rotationAngle;

  final QuicksightDashboardTitleOptions? labelOptions;

  Map<String, Object?> encode() => {
    'rotation_angle': ?rotationAngle?.toTfJson(),
    'label_options': ?labelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategoryLabelOptions {
  const QuicksightDashboardCategoryLabelOptions({
    this.sortIconVisibility,
    this.visibility,
    this.axisLabelOptions,
  });

  final TfArg<String>? sortIconVisibility;

  final TfArg<String>? visibility;

  final QuicksightDashboardAxisLabelOptions? axisLabelOptions;

  Map<String, Object?> encode() => {
    'sort_icon_visibility': ?sortIconVisibility?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'axis_label_options': ?axisLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardAxisLabelOptions {
  const QuicksightDashboardAxisLabelOptions({
    this.customLabel,
    this.applyTo,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final QuicksightDashboardApplyTo? applyTo;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'apply_to': ?applyTo?.encode(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options.apply_to` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardApplyTo {
  const QuicksightDashboardApplyTo({
    required this.fieldId,
    required this.column,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.contribution_analysis_defaults` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardContributionAnalysisDefaults {
  const QuicksightDashboardContributionAnalysisDefaults({
    required this.measureFieldId,
    required this.contributorDimensions,
  });

  final TfArg<String> measureFieldId;

  final List<QuicksightDashboardColumn> contributorDimensions;

  Map<String, Object?> encode() => {
    'measure_field_id': measureFieldId.toTfJson(),
    'contributor_dimensions': [
      for (final e in contributorDimensions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataLabels {
  const QuicksightDashboardDataLabels({
    this.categoryLabelVisibility,
    this.labelColor,
    this.labelContent,
    this.measureLabelVisibility,
    this.overlap,
    this.position,
    this.visibility,
    this.dataLabelTypes,
    this.labelFontConfiguration,
  });

  final TfArg<String>? categoryLabelVisibility;

  final TfArg<String>? labelColor;

  final TfArg<String>? labelContent;

  final TfArg<String>? measureLabelVisibility;

  final TfArg<String>? overlap;

  final TfArg<String>? position;

  final TfArg<String>? visibility;

  final List<QuicksightDashboardDataLabelTypes>? dataLabelTypes;

  final QuicksightDashboardFontConfiguration? labelFontConfiguration;

  Map<String, Object?> encode() => {
    'category_label_visibility': ?categoryLabelVisibility?.toTfJson(),
    'label_color': ?labelColor?.toTfJson(),
    'label_content': ?labelContent?.toTfJson(),
    'measure_label_visibility': ?measureLabelVisibility?.toTfJson(),
    'overlap': ?overlap?.toTfJson(),
    'position': ?position?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    if (dataLabelTypes != null)
      'data_label_types': [for (final e in dataLabelTypes!) e.encode()],
    'label_font_configuration': ?labelFontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataLabelTypes {
  const QuicksightDashboardDataLabelTypes({
    this.dataPathLabelType,
    this.fieldLabelType,
    this.maximumLabelType,
    this.minimumLabelType,
    this.rangeEndsLabelType,
  });

  final QuicksightDashboardDataPathLabelType? dataPathLabelType;

  final QuicksightDashboardFieldLabelType? fieldLabelType;

  final QuicksightDashboardSelectAllOptions? maximumLabelType;

  final QuicksightDashboardSelectAllOptions? minimumLabelType;

  final QuicksightDashboardSelectAllOptions? rangeEndsLabelType;

  Map<String, Object?> encode() => {
    'data_path_label_type': ?dataPathLabelType?.encode(),
    'field_label_type': ?fieldLabelType?.encode(),
    'maximum_label_type': ?maximumLabelType?.encode(),
    'minimum_label_type': ?minimumLabelType?.encode(),
    'range_ends_label_type': ?rangeEndsLabelType?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.data_path_label_type` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataPathLabelType {
  const QuicksightDashboardDataPathLabelType({
    this.fieldId,
    this.fieldValue,
    this.visibility,
  });

  final TfArg<String>? fieldId;

  final TfArg<String>? fieldValue;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': ?fieldId?.toTfJson(),
    'field_value': ?fieldValue?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.field_label_type` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFieldLabelType {
  const QuicksightDashboardFieldLabelType({this.fieldId, this.visibility});

  final TfArg<String>? fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': ?fieldId?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBarChartVisualFieldWells {
  const QuicksightDashboardBarChartVisualFieldWells({
    this.barChartAggregatedFieldWells,
  });

  final QuicksightDashboardBarChartAggregatedFieldWells?
  barChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'bar_chart_aggregated_field_wells': ?barChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells.bar_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardBarChartAggregatedFieldWells {
  const QuicksightDashboardBarChartAggregatedFieldWells({
    this.category,
    this.colors,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? category;

  final List<QuicksightDashboardTrendGroups>? colors;

  final QuicksightDashboardTrendGroups? smallMultiples;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTrendGroups {
  const QuicksightDashboardTrendGroups({
    this.categoricalDimensionField,
    this.dateDimensionField,
    this.numericalDimensionField,
  });

  final QuicksightDashboardCategoricalDimensionField? categoricalDimensionField;

  final QuicksightDashboardDateDimensionField? dateDimensionField;

  final QuicksightDashboardNumericalDimensionField? numericalDimensionField;

  Map<String, Object?> encode() => {
    'categorical_dimension_field': ?categoricalDimensionField?.encode(),
    'date_dimension_field': ?dateDimensionField?.encode(),
    'numerical_dimension_field': ?numericalDimensionField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.categorical_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategoricalDimensionField {
  const QuicksightDashboardCategoricalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.date_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateDimensionField {
  const QuicksightDashboardDateDimensionField({
    this.dateGranularity,
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? dateGranularity;

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'date_granularity': ?dateGranularity?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.numerical_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericalDimensionField {
  const QuicksightDashboardNumericalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTargetValues {
  const QuicksightDashboardTargetValues({
    this.calculatedMeasureField,
    this.categoricalMeasureField,
    this.dateMeasureField,
    this.numericalMeasureField,
  });

  final QuicksightDashboardCalculatedMeasureField? calculatedMeasureField;

  final QuicksightDashboardCategoricalMeasureField? categoricalMeasureField;

  final QuicksightDashboardDateMeasureField? dateMeasureField;

  final QuicksightDashboardNumericalMeasureField? numericalMeasureField;

  Map<String, Object?> encode() => {
    'calculated_measure_field': ?calculatedMeasureField?.encode(),
    'categorical_measure_field': ?categoricalMeasureField?.encode(),
    'date_measure_field': ?dateMeasureField?.encode(),
    'numerical_measure_field': ?numericalMeasureField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.calculated_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCalculatedMeasureField {
  const QuicksightDashboardCalculatedMeasureField({
    required this.expression,
    required this.fieldId,
  });

  final TfArg<String> expression;

  final TfArg<String> fieldId;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'field_id': fieldId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.categorical_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategoricalMeasureField {
  const QuicksightDashboardCategoricalMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.date_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateMeasureField {
  const QuicksightDashboardDateMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.numerical_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardNumericalMeasureField {
  const QuicksightDashboardNumericalMeasureField({
    required this.fieldId,
    this.aggregationFunction,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardNumericalAggregationFunction? aggregationFunction;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.legend` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLegend {
  const QuicksightDashboardLegend({
    this.height,
    this.position,
    this.visibility,
    this.width,
    this.title,
  });

  final TfArg<String>? height;

  final TfArg<String>? position;

  final TfArg<String>? visibility;

  final TfArg<String>? width;

  final QuicksightDashboardTitleOptions? title;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'position': ?position?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardReferenceLines {
  const QuicksightDashboardReferenceLines({
    this.status,
    required this.dataConfiguration,
    this.labelConfiguration,
    this.styleConfiguration,
  });

  final TfArg<String>? status;

  final QuicksightDashboardDataConfiguration dataConfiguration;

  final QuicksightDashboardLabelConfiguration? labelConfiguration;

  final QuicksightDashboardStyleConfiguration? styleConfiguration;

  Map<String, Object?> encode() => {
    'status': ?status?.toTfJson(),
    'data_configuration': dataConfiguration.encode(),
    'label_configuration': ?labelConfiguration?.encode(),
    'style_configuration': ?styleConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDataConfiguration {
  const QuicksightDashboardDataConfiguration({
    this.axisBinding,
    this.dynamicConfiguration,
    this.staticConfiguration,
  });

  final TfArg<String>? axisBinding;

  final QuicksightDashboardDynamicConfiguration? dynamicConfiguration;

  final QuicksightDashboardStaticConfiguration? staticConfiguration;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'dynamic_configuration': ?dynamicConfiguration?.encode(),
    'static_configuration': ?staticConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.dynamic_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDynamicConfiguration {
  const QuicksightDashboardDynamicConfiguration({
    required this.calculation,
    required this.column,
    required this.measureAggregationFunction,
  });

  final QuicksightDashboardNumericalAggregationFunction calculation;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardAggregationFunction measureAggregationFunction;

  Map<String, Object?> encode() => {
    'calculation': calculation.encode(),
    'column': column.encode(),
    'measure_aggregation_function': measureAggregationFunction.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.static_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardStaticConfiguration {
  const QuicksightDashboardStaticConfiguration({required this.value});

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLabelConfiguration {
  const QuicksightDashboardLabelConfiguration({
    this.fontColor,
    this.horizontalPosition,
    this.verticalPosition,
    this.customLabelConfiguration,
    this.fontConfiguration,
    this.valueLabelConfiguration,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? horizontalPosition;

  final TfArg<String>? verticalPosition;

  final QuicksightDashboardCustomLabelConfiguration? customLabelConfiguration;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  final QuicksightDashboardValueLabelConfiguration? valueLabelConfiguration;

  Map<String, Object?> encode() => {
    'font_color': ?fontColor?.toTfJson(),
    'horizontal_position': ?horizontalPosition?.toTfJson(),
    'vertical_position': ?verticalPosition?.toTfJson(),
    'custom_label_configuration': ?customLabelConfiguration?.encode(),
    'font_configuration': ?fontConfiguration?.encode(),
    'value_label_configuration': ?valueLabelConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.custom_label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCustomLabelConfiguration {
  const QuicksightDashboardCustomLabelConfiguration({
    required this.customLabel,
  });

  final TfArg<String> customLabel;

  Map<String, Object?> encode() => {'custom_label': customLabel.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.value_label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardValueLabelConfiguration {
  const QuicksightDashboardValueLabelConfiguration({
    this.relativePosition,
    this.formatConfiguration,
  });

  final TfArg<String>? relativePosition;

  final QuicksightDashboardNumericFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'relative_position': ?relativePosition?.toTfJson(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.style_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardStyleConfiguration {
  const QuicksightDashboardStyleConfiguration({this.color, this.pattern});

  final TfArg<String>? color;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSmallMultiplesOptions {
  const QuicksightDashboardSmallMultiplesOptions({
    this.maxVisibleColumns,
    this.maxVisibleRows,
    this.panelConfiguration,
  });

  final TfArg<num>? maxVisibleColumns;

  final TfArg<num>? maxVisibleRows;

  final QuicksightDashboardPanelConfiguration? panelConfiguration;

  Map<String, Object?> encode() => {
    'max_visible_columns': ?maxVisibleColumns?.toTfJson(),
    'max_visible_rows': ?maxVisibleRows?.toTfJson(),
    'panel_configuration': ?panelConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPanelConfiguration {
  const QuicksightDashboardPanelConfiguration({
    this.backgroundColor,
    this.backgroundVisibility,
    this.borderColor,
    this.borderStyle,
    this.borderThickness,
    this.borderVisibility,
    this.gutterSpacing,
    this.gutterVisibility,
    this.title,
  });

  final TfArg<String>? backgroundColor;

  final TfArg<String>? backgroundVisibility;

  final TfArg<String>? borderColor;

  final TfArg<String>? borderStyle;

  final TfArg<String>? borderThickness;

  final TfArg<String>? borderVisibility;

  final TfArg<String>? gutterSpacing;

  final TfArg<String>? gutterVisibility;

  final QuicksightDashboardTitle? title;

  Map<String, Object?> encode() => {
    'background_color': ?backgroundColor?.toTfJson(),
    'background_visibility': ?backgroundVisibility?.toTfJson(),
    'border_color': ?borderColor?.toTfJson(),
    'border_style': ?borderStyle?.toTfJson(),
    'border_thickness': ?borderThickness?.toTfJson(),
    'border_visibility': ?borderVisibility?.toTfJson(),
    'gutter_spacing': ?gutterSpacing?.toTfJson(),
    'gutter_visibility': ?gutterVisibility?.toTfJson(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration.title` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTitle {
  const QuicksightDashboardTitle({
    this.horizontalTextAlignment,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'horizontal_text_alignment': ?horizontalTextAlignment?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBarChartVisualSortConfiguration {
  const QuicksightDashboardBarChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightDashboardCategorySort>? categorySort;

  final QuicksightDashboardCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightDashboardCategorySort>? colorSort;

  final QuicksightDashboardCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? smallMultiplesSort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'color_items_limit': ?colorItemsLimit?.encode(),
    if (colorSort != null)
      'color_sort': [for (final e in colorSort!) e.encode()],
    'small_multiples_limit_configuration': ?smallMultiplesLimitConfiguration
        ?.encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_items_limit` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategoryItemsLimit {
  const QuicksightDashboardCategoryItemsLimit({
    this.itemsLimit,
    required this.otherCategories,
  });

  final TfArg<num>? itemsLimit;

  final TfArg<String> otherCategories;

  Map<String, Object?> encode() => {
    'items_limit': ?itemsLimit?.toTfJson(),
    'other_categories': otherCategories.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCategorySort {
  const QuicksightDashboardCategorySort({this.columnSort, this.fieldSort});

  final QuicksightDashboardColumnSort? columnSort;

  final QuicksightDashboardFieldSort? fieldSort;

  Map<String, Object?> encode() => {
    'column_sort': ?columnSort?.encode(),
    'field_sort': ?fieldSort?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.column_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumnSort {
  const QuicksightDashboardColumnSort({
    required this.direction,
    this.aggregationFunction,
    required this.sortBy,
  });

  final TfArg<String> direction;

  final QuicksightDashboardAggregationFunction? aggregationFunction;

  final QuicksightDashboardColumn sortBy;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.field_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFieldSort {
  const QuicksightDashboardFieldSort({
    required this.direction,
    required this.fieldId,
  });

  final TfArg<String> direction;

  final TfArg<String> fieldId;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'field_id': fieldId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTooltip {
  const QuicksightDashboardTooltip({
    this.selectedTooltipType,
    this.tooltipVisibility,
    this.fieldBaseTooltip,
  });

  final TfArg<String>? selectedTooltipType;

  final TfArg<String>? tooltipVisibility;

  final QuicksightDashboardFieldBaseTooltip? fieldBaseTooltip;

  Map<String, Object?> encode() => {
    'selected_tooltip_type': ?selectedTooltipType?.toTfJson(),
    'tooltip_visibility': ?tooltipVisibility?.toTfJson(),
    'field_base_tooltip': ?fieldBaseTooltip?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFieldBaseTooltip {
  const QuicksightDashboardFieldBaseTooltip({
    this.aggregationVisibility,
    this.tooltipTitleType,
    this.tooltipFields,
  });

  final TfArg<String>? aggregationVisibility;

  final TfArg<String>? tooltipTitleType;

  final List<QuicksightDashboardTooltipFields>? tooltipFields;

  Map<String, Object?> encode() => {
    'aggregation_visibility': ?aggregationVisibility?.toTfJson(),
    'tooltip_title_type': ?tooltipTitleType?.toTfJson(),
    if (tooltipFields != null)
      'tooltip_fields': [for (final e in tooltipFields!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTooltipFields {
  const QuicksightDashboardTooltipFields({
    this.columnTooltipItem,
    this.fieldTooltipItem,
  });

  final QuicksightDashboardColumnTooltipItem? columnTooltipItem;

  final QuicksightDashboardFieldTooltipItem? fieldTooltipItem;

  Map<String, Object?> encode() => {
    'column_tooltip_item': ?columnTooltipItem?.encode(),
    'field_tooltip_item': ?fieldTooltipItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.column_tooltip_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumnTooltipItem {
  const QuicksightDashboardColumnTooltipItem({
    this.label,
    this.visibility,
    this.aggregation,
    required this.column,
  });

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  final QuicksightDashboardAggregationFunction? aggregation;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'aggregation': ?aggregation?.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.field_tooltip_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFieldTooltipItem {
  const QuicksightDashboardFieldTooltipItem({
    required this.fieldId,
    this.label,
    this.visibility,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'label': ?label?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardVisualPalette {
  const QuicksightDashboardVisualPalette({this.chartColor, this.colorMap});

  final TfArg<String>? chartColor;

  final List<QuicksightDashboardColorMap>? colorMap;

  Map<String, Object?> encode() => {
    'chart_color': ?chartColor?.toTfJson(),
    if (colorMap != null) 'color_map': [for (final e in colorMap!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColorMap {
  const QuicksightDashboardColorMap({
    required this.color,
    this.timeGranularity,
    required this.element,
  });

  final TfArg<String> color;

  final TfArg<String>? timeGranularity;

  final QuicksightDashboardElement element;

  Map<String, Object?> encode() => {
    'color': color.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'element': element.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map.element` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardElement {
  const QuicksightDashboardElement({
    required this.fieldId,
    required this.fieldValue,
  });

  final TfArg<String> fieldId;

  final TfArg<String> fieldValue;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'field_value': fieldValue.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumnHierarchies {
  const QuicksightDashboardColumnHierarchies({
    this.dateTimeHierarchy,
    this.explicitHierarchy,
    this.predefinedHierarchy,
  });

  final QuicksightDashboardDateTimeHierarchy? dateTimeHierarchy;

  final QuicksightDashboardExplicitHierarchy? explicitHierarchy;

  final QuicksightDashboardExplicitHierarchy? predefinedHierarchy;

  Map<String, Object?> encode() => {
    'date_time_hierarchy': ?dateTimeHierarchy?.encode(),
    'explicit_hierarchy': ?explicitHierarchy?.encode(),
    'predefined_hierarchy': ?predefinedHierarchy?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateTimeHierarchy {
  const QuicksightDashboardDateTimeHierarchy({
    required this.hierarchyId,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightDashboardDrillDownFilters>? drillDownFilters;

  Map<String, Object?> encode() => {
    'hierarchy_id': hierarchyId.toTfJson(),
    if (drillDownFilters != null)
      'drill_down_filters': [for (final e in drillDownFilters!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDrillDownFilters {
  const QuicksightDashboardDrillDownFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.timeRangeFilter,
  });

  final QuicksightDashboardDrillDownFiltersCategoryFilter? categoryFilter;

  final QuicksightDashboardDrillDownFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightDashboardDrillDownFiltersTimeRangeFilter? timeRangeFilter;

  Map<String, Object?> encode() => {
    'category_filter': ?categoryFilter?.encode(),
    'numeric_equality_filter': ?numericEqualityFilter?.encode(),
    'time_range_filter': ?timeRangeFilter?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.category_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDrillDownFiltersCategoryFilter {
  const QuicksightDashboardDrillDownFiltersCategoryFilter({
    required this.categoryValues,
    required this.column,
  });

  final TfArg<List<String>> categoryValues;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'category_values': categoryValues.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.numeric_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDrillDownFiltersNumericEqualityFilter {
  const QuicksightDashboardDrillDownFiltersNumericEqualityFilter({
    required this.value,
    required this.column,
  });

  final TfArg<num> value;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.time_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDrillDownFiltersTimeRangeFilter {
  const QuicksightDashboardDrillDownFiltersTimeRangeFilter({
    required this.rangeMaximum,
    required this.rangeMinimum,
    required this.timeGranularity,
    required this.column,
  });

  final TfArg<String> rangeMaximum;

  final TfArg<String> rangeMinimum;

  final TfArg<String> timeGranularity;

  final QuicksightDashboardColumn column;

  Map<String, Object?> encode() => {
    'range_maximum': rangeMaximum.toTfJson(),
    'range_minimum': rangeMinimum.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.explicit_hierarchy` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardExplicitHierarchy {
  const QuicksightDashboardExplicitHierarchy({
    required this.hierarchyId,
    required this.columns,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightDashboardColumn> columns;

  final List<QuicksightDashboardDrillDownFilters>? drillDownFilters;

  Map<String, Object?> encode() => {
    'hierarchy_id': hierarchyId.toTfJson(),
    'columns': [for (final e in columns) e.encode()],
    if (drillDownFilters != null)
      'drill_down_filters': [for (final e in drillDownFilters!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSubtitle {
  const QuicksightDashboardSubtitle({this.visibility, this.formatText});

  final TfArg<String>? visibility;

  final QuicksightDashboardFormatText? formatText;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'format_text': ?formatText?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle.format_text` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFormatText {
  const QuicksightDashboardFormatText({this.plainText, this.richText});

  final TfArg<String>? plainText;

  final TfArg<String>? richText;

  Map<String, Object?> encode() => {
    'plain_text': ?plainText?.toTfJson(),
    'rich_text': ?richText?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotVisual {
  const QuicksightDashboardBoxPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardBoxPlotVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotVisualChartConfiguration {
  const QuicksightDashboardBoxPlotVisualChartConfiguration({
    this.boxPlotOptions,
    this.categoryAxis,
    this.categoryLabelOptions,
    this.fieldWells,
    this.legend,
    this.primaryYAxisDisplayOptions,
    this.primaryYAxisLabelOptions,
    this.referenceLines,
    this.sortConfiguration,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightDashboardBoxPlotOptions? boxPlotOptions;

  final QuicksightDashboardCategoryAxis? categoryAxis;

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardBoxPlotVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightDashboardReferenceLines>? referenceLines;

  final QuicksightDashboardBoxPlotVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'box_plot_options': ?boxPlotOptions?.encode(),
    'category_axis': ?categoryAxis?.encode(),
    'category_label_options': ?categoryLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'primary_y_axis_display_options': ?primaryYAxisDisplayOptions?.encode(),
    'primary_y_axis_label_options': ?primaryYAxisLabelOptions?.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotOptions {
  const QuicksightDashboardBoxPlotOptions({
    this.allDataPointsVisibility,
    this.outlierVisibility,
    this.styleOptions,
  });

  final TfArg<String>? allDataPointsVisibility;

  final TfArg<String>? outlierVisibility;

  final QuicksightDashboardStyleOptions? styleOptions;

  Map<String, Object?> encode() => {
    'all_data_points_visibility': ?allDataPointsVisibility?.toTfJson(),
    'outlier_visibility': ?outlierVisibility?.toTfJson(),
    'style_options': ?styleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options.style_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardStyleOptions {
  const QuicksightDashboardStyleOptions({this.fillStyle});

  final TfArg<String>? fillStyle;

  Map<String, Object?> encode() => {'fill_style': ?fillStyle?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotVisualFieldWells {
  const QuicksightDashboardBoxPlotVisualFieldWells({
    this.boxPlotAggregatedFieldWells,
  });

  final QuicksightDashboardBoxPlotAggregatedFieldWells?
  boxPlotAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'box_plot_aggregated_field_wells': ?boxPlotAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells.box_plot_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotAggregatedFieldWells {
  const QuicksightDashboardBoxPlotAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final QuicksightDashboardTrendGroups? groupBy;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    'group_by': ?groupBy?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBoxPlotVisualSortConfiguration {
  const QuicksightDashboardBoxPlotVisualSortConfiguration({
    this.categorySort,
    this.paginationConfiguration,
  });

  final List<QuicksightDashboardCategorySort>? categorySort;

  final QuicksightDashboardPaginationConfiguration? paginationConfiguration;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'pagination_configuration': ?paginationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration.pagination_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPaginationConfiguration {
  const QuicksightDashboardPaginationConfiguration({
    required this.pageNumber,
    required this.pageSize,
  });

  final TfArg<num> pageNumber;

  final TfArg<num> pageSize;

  Map<String, Object?> encode() => {
    'page_number': pageNumber.toTfJson(),
    'page_size': pageSize.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardComboChartVisual {
  const QuicksightDashboardComboChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardComboChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardComboChartVisualChartConfiguration {
  const QuicksightDashboardComboChartVisualChartConfiguration({
    this.barsArrangement,
    this.barDataLabels,
    this.categoryAxis,
    this.categoryLabelOptions,
    this.colorLabelOptions,
    this.fieldWells,
    this.legend,
    this.lineDataLabels,
    this.primaryYAxisDisplayOptions,
    this.primaryYAxisLabelOptions,
    this.referenceLines,
    this.secondaryYAxisDisplayOptions,
    this.secondaryYAxisLabelOptions,
    this.sortConfiguration,
    this.tooltip,
    this.visualPalette,
  });

  final TfArg<String>? barsArrangement;

  final QuicksightDashboardDataLabels? barDataLabels;

  final QuicksightDashboardCategoryAxis? categoryAxis;

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardCategoryLabelOptions? colorLabelOptions;

  final QuicksightDashboardComboChartVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardDataLabels? lineDataLabels;

  final QuicksightDashboardCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightDashboardReferenceLines>? referenceLines;

  final QuicksightDashboardCategoryAxis? secondaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? secondaryYAxisLabelOptions;

  final QuicksightDashboardComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'bars_arrangement': ?barsArrangement?.toTfJson(),
    'bar_data_labels': ?barDataLabels?.encode(),
    'category_axis': ?categoryAxis?.encode(),
    'category_label_options': ?categoryLabelOptions?.encode(),
    'color_label_options': ?colorLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'line_data_labels': ?lineDataLabels?.encode(),
    'primary_y_axis_display_options': ?primaryYAxisDisplayOptions?.encode(),
    'primary_y_axis_label_options': ?primaryYAxisLabelOptions?.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    'secondary_y_axis_display_options': ?secondaryYAxisDisplayOptions?.encode(),
    'secondary_y_axis_label_options': ?secondaryYAxisLabelOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardComboChartVisualFieldWells {
  const QuicksightDashboardComboChartVisualFieldWells({
    this.comboChartAggregatedFieldWells,
  });

  final QuicksightDashboardComboChartAggregatedFieldWells?
  comboChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'combo_chart_aggregated_field_wells': ?comboChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells.combo_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardComboChartAggregatedFieldWells {
  const QuicksightDashboardComboChartAggregatedFieldWells({
    this.barValues,
    this.category,
    this.colors,
    this.lineValues,
  });

  final List<QuicksightDashboardTargetValues>? barValues;

  final List<QuicksightDashboardTrendGroups>? category;

  final List<QuicksightDashboardTrendGroups>? colors;

  final List<QuicksightDashboardTargetValues>? lineValues;

  Map<String, Object?> encode() => {
    if (barValues != null)
      'bar_values': [for (final e in barValues!) e.encode()],
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    if (lineValues != null)
      'line_values': [for (final e in lineValues!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardComboChartVisualSortConfiguration {
  const QuicksightDashboardComboChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
  });

  final QuicksightDashboardCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightDashboardCategorySort>? categorySort;

  final QuicksightDashboardCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightDashboardCategorySort>? colorSort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'color_items_limit': ?colorItemsLimit?.encode(),
    if (colorSort != null)
      'color_sort': [for (final e in colorSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.custom_content_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomContentVisual {
  const QuicksightDashboardCustomContentVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardCustomContentVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.custom_content_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomContentVisualChartConfiguration {
  const QuicksightDashboardCustomContentVisualChartConfiguration({
    this.contentType,
    this.contentUrl,
    this.imageScaling,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? contentUrl;

  final TfArg<String>? imageScaling;

  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'content_url': ?contentUrl?.toTfJson(),
    'image_scaling': ?imageScaling?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.empty_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardEmptyVisual {
  const QuicksightDashboardEmptyVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisual {
  const QuicksightDashboardFilledMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardFilledMapVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardFilledMapVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'conditional_formatting': ?conditionalFormatting?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisualChartConfiguration {
  const QuicksightDashboardFilledMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.sortConfiguration,
    this.tooltip,
    this.windowOptions,
  });

  final QuicksightDashboardFilledMapVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardMapStyleOptions? mapStyleOptions;

  final QuicksightDashboardFilledMapVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardWindowOptions? windowOptions;

  Map<String, Object?> encode() => {
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'map_style_options': ?mapStyleOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'window_options': ?windowOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisualFieldWells {
  const QuicksightDashboardFilledMapVisualFieldWells({
    this.filledMapAggregatedFieldWells,
  });

  final QuicksightDashboardFilledMapAggregatedFieldWells?
  filledMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'filled_map_aggregated_field_wells': ?filledMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells.filled_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapAggregatedFieldWells {
  const QuicksightDashboardFilledMapAggregatedFieldWells({
    this.geospatial,
    this.values,
  });

  final QuicksightDashboardTrendGroups? geospatial;

  final QuicksightDashboardTargetValues? values;

  Map<String, Object?> encode() => {
    'geospatial': ?geospatial?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.map_style_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardMapStyleOptions {
  const QuicksightDashboardMapStyleOptions({this.baseMapStyle});

  final TfArg<String>? baseMapStyle;

  Map<String, Object?> encode() => {
    'base_map_style': ?baseMapStyle?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisualSortConfiguration {
  const QuicksightDashboardFilledMapVisualSortConfiguration({
    this.categorySort,
  });

  final List<QuicksightDashboardCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardWindowOptions {
  const QuicksightDashboardWindowOptions({this.mapZoomMode, this.bounds});

  final TfArg<String>? mapZoomMode;

  final QuicksightDashboardBounds? bounds;

  Map<String, Object?> encode() => {
    'map_zoom_mode': ?mapZoomMode?.toTfJson(),
    'bounds': ?bounds?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options.bounds` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardBounds {
  const QuicksightDashboardBounds({
    required this.east,
    required this.north,
    required this.south,
    required this.west,
  });

  final TfArg<num> east;

  final TfArg<num> north;

  final TfArg<num> south;

  final TfArg<num> west;

  Map<String, Object?> encode() => {
    'east': east.toTfJson(),
    'north': north.toTfJson(),
    'south': south.toTfJson(),
    'west': west.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisualConditionalFormatting {
  const QuicksightDashboardFilledMapVisualConditionalFormatting({
    required this.conditionalFormattingOptions,
  });

  final List<QuicksightDashboardFilledMapVisualConditionalFormattingOptions>
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    'conditional_formatting_options': [
      for (final e in conditionalFormattingOptions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFilledMapVisualConditionalFormattingOptions {
  const QuicksightDashboardFilledMapVisualConditionalFormattingOptions({
    required this.shape,
  });

  final QuicksightDashboardShape shape;

  Map<String, Object?> encode() => {'shape': shape.encode()};
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardShape {
  const QuicksightDashboardShape({required this.fieldId, this.format});

  final TfArg<String> fieldId;

  final QuicksightDashboardFormat? format;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'format': ?format?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape.format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFormat {
  const QuicksightDashboardFormat({required this.backgroundColor});

  final QuicksightDashboardForegroundColor backgroundColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardForegroundColor {
  const QuicksightDashboardForegroundColor({this.gradient, this.solid});

  final QuicksightDashboardGradient? gradient;

  final QuicksightDashboardSolid? solid;

  Map<String, Object?> encode() => {
    'gradient': ?gradient?.encode(),
    'solid': ?solid?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardGradient {
  const QuicksightDashboardGradient({
    required this.expression,
    required this.color,
  });

  final TfArg<String> expression;

  final QuicksightDashboardColor color;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'color': color.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColor {
  const QuicksightDashboardColor({this.stops});

  final List<QuicksightDashboardStops>? stops;

  Map<String, Object?> encode() => {
    if (stops != null) 'stops': [for (final e in stops!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color.stops` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardStops {
  const QuicksightDashboardStops({
    this.color,
    this.dataValue,
    required this.gradientOffset,
  });

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  final TfArg<num> gradientOffset;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'data_value': ?dataValue?.toTfJson(),
    'gradient_offset': gradientOffset.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.solid` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSolid {
  const QuicksightDashboardSolid({this.color, required this.expression});

  final TfArg<String>? color;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFunnelChartVisual {
  const QuicksightDashboardFunnelChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardFunnelChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFunnelChartVisualChartConfiguration {
  const QuicksightDashboardFunnelChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.dataLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardDataLabelOptions? dataLabelOptions;

  final QuicksightDashboardFunnelChartVisualFieldWells? fieldWells;

  final QuicksightDashboardFunnelChartVisualSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardCategoryLabelOptions? valueLabelOptions;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'category_label_options': ?categoryLabelOptions?.encode(),
    'data_label_options': ?dataLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'value_label_options': ?valueLabelOptions?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.data_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataLabelOptions {
  const QuicksightDashboardDataLabelOptions({
    this.categoryLabelVisibility,
    this.labelColor,
    this.measureDataLabelStyle,
    this.measureLabelVisibility,
    this.position,
    this.visibility,
    this.labelFontConfiguration,
  });

  final TfArg<String>? categoryLabelVisibility;

  final TfArg<String>? labelColor;

  final TfArg<String>? measureDataLabelStyle;

  final TfArg<String>? measureLabelVisibility;

  final TfArg<String>? position;

  final TfArg<String>? visibility;

  final QuicksightDashboardFontConfiguration? labelFontConfiguration;

  Map<String, Object?> encode() => {
    'category_label_visibility': ?categoryLabelVisibility?.toTfJson(),
    'label_color': ?labelColor?.toTfJson(),
    'measure_data_label_style': ?measureDataLabelStyle?.toTfJson(),
    'measure_label_visibility': ?measureLabelVisibility?.toTfJson(),
    'position': ?position?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'label_font_configuration': ?labelFontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFunnelChartVisualFieldWells {
  const QuicksightDashboardFunnelChartVisualFieldWells({
    this.funnelChartAggregatedFieldWells,
  });

  final QuicksightDashboardFunnelChartAggregatedFieldWells?
  funnelChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'funnel_chart_aggregated_field_wells': ?funnelChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells.funnel_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFunnelChartAggregatedFieldWells {
  const QuicksightDashboardFunnelChartAggregatedFieldWells({
    this.category,
    this.values,
  });

  final QuicksightDashboardTrendGroups? category;

  final QuicksightDashboardTargetValues? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFunnelChartVisualSortConfiguration {
  const QuicksightDashboardFunnelChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
  });

  final QuicksightDashboardCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightDashboardCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartVisual {
  const QuicksightDashboardGaugeChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardGaugeChartVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardGaugeChartVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'conditional_formatting': ?conditionalFormatting?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartVisualChartConfiguration {
  const QuicksightDashboardGaugeChartVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.gaugeChartOptions,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardGaugeChartVisualFieldWells? fieldWells;

  final QuicksightDashboardGaugeChartOptions? gaugeChartOptions;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'gauge_chart_options': ?gaugeChartOptions?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartVisualFieldWells {
  const QuicksightDashboardGaugeChartVisualFieldWells({
    this.targetValues,
    this.values,
  });

  final List<QuicksightDashboardTargetValues>? targetValues;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartOptions {
  const QuicksightDashboardGaugeChartOptions({
    this.primaryValueDisplayType,
    this.arc,
    this.arcAxis,
    this.comparison,
    this.primaryValueFontConfiguration,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightDashboardGaugeChartOptionsArc? arc;

  final QuicksightDashboardArcAxis? arcAxis;

  final QuicksightDashboardComparison? comparison;

  final QuicksightDashboardFontConfiguration? primaryValueFontConfiguration;

  Map<String, Object?> encode() => {
    'primary_value_display_type': ?primaryValueDisplayType?.toTfJson(),
    'arc': ?arc?.encode(),
    'arc_axis': ?arcAxis?.encode(),
    'comparison': ?comparison?.encode(),
    'primary_value_font_configuration': ?primaryValueFontConfiguration
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartOptionsArc {
  const QuicksightDashboardGaugeChartOptionsArc({
    this.arcAngle,
    this.arcThickness,
  });

  final TfArg<num>? arcAngle;

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {
    'arc_angle': ?arcAngle?.toTfJson(),
    'arc_thickness': ?arcThickness?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardArcAxis {
  const QuicksightDashboardArcAxis({this.reserveRange, this.range});

  final TfArg<num>? reserveRange;

  final QuicksightDashboardRange? range;

  Map<String, Object?> encode() => {
    'reserve_range': ?reserveRange?.toTfJson(),
    'range': ?range?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis.range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRange {
  const QuicksightDashboardRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardComparison {
  const QuicksightDashboardComparison({
    this.comparisonMethod,
    this.comparisonFormat,
  });

  final TfArg<String>? comparisonMethod;

  final QuicksightDashboardComparisonFormat? comparisonFormat;

  Map<String, Object?> encode() => {
    'comparison_method': ?comparisonMethod?.toTfJson(),
    'comparison_format': ?comparisonFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison.comparison_format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardComparisonFormat {
  const QuicksightDashboardComparisonFormat({
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightDashboardNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightDashboardPercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    'number_display_format_configuration': ?numberDisplayFormatConfiguration
        ?.encode(),
    'percentage_display_format_configuration':
        ?percentageDisplayFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartVisualConditionalFormatting {
  const QuicksightDashboardGaugeChartVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightDashboardGaugeChartVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGaugeChartVisualConditionalFormattingOptions {
  const QuicksightDashboardGaugeChartVisualConditionalFormattingOptions({
    this.arc,
    this.primaryValue,
  });

  final QuicksightDashboardConditionalFormattingOptionsArc? arc;

  final QuicksightDashboardPrimaryValue? primaryValue;

  Map<String, Object?> encode() => {
    'arc': ?arc?.encode(),
    'primary_value': ?primaryValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardConditionalFormattingOptionsArc {
  const QuicksightDashboardConditionalFormattingOptionsArc({
    required this.foregroundColor,
  });

  final QuicksightDashboardForegroundColor foregroundColor;

  Map<String, Object?> encode() => {
    'foreground_color': foregroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPrimaryValue {
  const QuicksightDashboardPrimaryValue({this.icon, required this.textColor});

  final QuicksightDashboardIcon? icon;

  final QuicksightDashboardForegroundColor textColor;

  Map<String, Object?> encode() => {
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardIcon {
  const QuicksightDashboardIcon({this.customCondition, this.iconSet});

  final QuicksightDashboardCustomCondition? customCondition;

  final QuicksightDashboardIconSet? iconSet;

  Map<String, Object?> encode() => {
    'custom_condition': ?customCondition?.encode(),
    'icon_set': ?iconSet?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCustomCondition {
  const QuicksightDashboardCustomCondition({
    this.color,
    required this.expression,
    this.displayConfiguration,
    required this.iconOptions,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  final QuicksightDashboardDisplayConfiguration? displayConfiguration;

  final QuicksightDashboardIconOptions iconOptions;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
    'display_configuration': ?displayConfiguration?.encode(),
    'icon_options': iconOptions.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.display_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDisplayConfiguration {
  const QuicksightDashboardDisplayConfiguration({this.iconDisplayOption});

  final TfArg<String>? iconDisplayOption;

  Map<String, Object?> encode() => {
    'icon_display_option': ?iconDisplayOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.icon_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardIconOptions {
  const QuicksightDashboardIconOptions({this.icon, this.unicodeIcon});

  final TfArg<String>? icon;

  final TfArg<String>? unicodeIcon;

  Map<String, Object?> encode() => {
    'icon': ?icon?.toTfJson(),
    'unicode_icon': ?unicodeIcon?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.icon_set` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardIconSet {
  const QuicksightDashboardIconSet({
    required this.expression,
    this.iconSetType,
  });

  final TfArg<String> expression;

  final TfArg<String>? iconSetType;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'icon_set_type': ?iconSetType?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGeospatialMapVisual {
  const QuicksightDashboardGeospatialMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardGeospatialMapVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGeospatialMapVisualChartConfiguration {
  const QuicksightDashboardGeospatialMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.pointStyleOptions,
    this.tooltip,
    this.visualPalette,
    this.windowOptions,
  });

  final QuicksightDashboardGeospatialMapVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardMapStyleOptions? mapStyleOptions;

  final QuicksightDashboardPointStyleOptions? pointStyleOptions;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  final QuicksightDashboardWindowOptions? windowOptions;

  Map<String, Object?> encode() => {
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'map_style_options': ?mapStyleOptions?.encode(),
    'point_style_options': ?pointStyleOptions?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
    'window_options': ?windowOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGeospatialMapVisualFieldWells {
  const QuicksightDashboardGeospatialMapVisualFieldWells({
    this.geospatialMapAggregatedFieldWells,
  });

  final QuicksightDashboardGeospatialMapAggregatedFieldWells?
  geospatialMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'geospatial_map_aggregated_field_wells': ?geospatialMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells.geospatial_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGeospatialMapAggregatedFieldWells {
  const QuicksightDashboardGeospatialMapAggregatedFieldWells({
    this.colors,
    this.geospatial,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? colors;

  final List<QuicksightDashboardTrendGroups>? geospatial;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    if (geospatial != null)
      'geospatial': [for (final e in geospatial!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPointStyleOptions {
  const QuicksightDashboardPointStyleOptions({
    this.selectedPointStyle,
    this.clusterMarkerConfiguration,
  });

  final TfArg<String>? selectedPointStyle;

  final QuicksightDashboardClusterMarkerConfiguration?
  clusterMarkerConfiguration;

  Map<String, Object?> encode() => {
    'selected_point_style': ?selectedPointStyle?.toTfJson(),
    'cluster_marker_configuration': ?clusterMarkerConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardClusterMarkerConfiguration {
  const QuicksightDashboardClusterMarkerConfiguration({this.clusterMarker});

  final QuicksightDashboardClusterMarker? clusterMarker;

  Map<String, Object?> encode() => {'cluster_marker': ?clusterMarker?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardClusterMarker {
  const QuicksightDashboardClusterMarker({this.simpleClusterMarker});

  final QuicksightDashboardSimpleClusterMarker? simpleClusterMarker;

  Map<String, Object?> encode() => {
    'simple_cluster_marker': ?simpleClusterMarker?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker.simple_cluster_marker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSimpleClusterMarker {
  const QuicksightDashboardSimpleClusterMarker({this.color});

  final TfArg<String>? color;

  Map<String, Object?> encode() => {'color': ?color?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHeatMapVisual {
  const QuicksightDashboardHeatMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardHeatMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHeatMapVisualChartConfiguration {
  const QuicksightDashboardHeatMapVisualChartConfiguration({
    this.colorScale,
    this.columnLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.rowLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightDashboardColorScale? colorScale;

  final QuicksightDashboardCategoryLabelOptions? columnLabelOptions;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardHeatMapVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardCategoryLabelOptions? rowLabelOptions;

  final QuicksightDashboardHeatMapVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  Map<String, Object?> encode() => {
    'color_scale': ?colorScale?.encode(),
    'column_label_options': ?columnLabelOptions?.encode(),
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'row_label_options': ?rowLabelOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColorScale {
  const QuicksightDashboardColorScale({
    required this.colorFillType,
    required this.colors,
    this.nullValueColor,
  });

  final TfArg<String> colorFillType;

  final List<QuicksightDashboardColors> colors;

  final QuicksightDashboardColors? nullValueColor;

  Map<String, Object?> encode() => {
    'color_fill_type': colorFillType.toTfJson(),
    'colors': [for (final e in colors) e.encode()],
    'null_value_color': ?nullValueColor?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale.colors` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColors {
  const QuicksightDashboardColors({this.color, this.dataValue});

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'data_value': ?dataValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHeatMapVisualFieldWells {
  const QuicksightDashboardHeatMapVisualFieldWells({
    this.heatMapAggregatedFieldWells,
  });

  final QuicksightDashboardHeatMapAggregatedFieldWells?
  heatMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'heat_map_aggregated_field_wells': ?heatMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells.heat_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHeatMapAggregatedFieldWells {
  const QuicksightDashboardHeatMapAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final QuicksightDashboardTrendGroups? columns;

  final QuicksightDashboardTrendGroups? rows;

  final QuicksightDashboardTargetValues? values;

  Map<String, Object?> encode() => {
    'columns': ?columns?.encode(),
    'rows': ?rows?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHeatMapVisualSortConfiguration {
  const QuicksightDashboardHeatMapVisualSortConfiguration({
    this.heatMapColumnItemsLimitConfiguration,
    this.heatMapColumnSort,
    this.heatMapRowItemsLimitConfiguration,
    this.heatMapRowSort,
  });

  final QuicksightDashboardCategoryItemsLimit?
  heatMapColumnItemsLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? heatMapColumnSort;

  final QuicksightDashboardCategoryItemsLimit?
  heatMapRowItemsLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? heatMapRowSort;

  Map<String, Object?> encode() => {
    'heat_map_column_items_limit_configuration':
        ?heatMapColumnItemsLimitConfiguration?.encode(),
    if (heatMapColumnSort != null)
      'heat_map_column_sort': [for (final e in heatMapColumnSort!) e.encode()],
    'heat_map_row_items_limit_configuration': ?heatMapRowItemsLimitConfiguration
        ?.encode(),
    if (heatMapRowSort != null)
      'heat_map_row_sort': [for (final e in heatMapRowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHistogramVisual {
  const QuicksightDashboardHistogramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardHistogramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHistogramVisualChartConfiguration {
  const QuicksightDashboardHistogramVisualChartConfiguration({
    this.binOptions,
    this.dataLabels,
    this.fieldWells,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
  });

  final QuicksightDashboardBinOptions? binOptions;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardHistogramVisualFieldWells? fieldWells;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  final QuicksightDashboardCategoryAxis? xAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightDashboardCategoryAxis? yAxisDisplayOptions;

  Map<String, Object?> encode() => {
    'bin_options': ?binOptions?.encode(),
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
    'x_axis_display_options': ?xAxisDisplayOptions?.encode(),
    'x_axis_label_options': ?xAxisLabelOptions?.encode(),
    'y_axis_display_options': ?yAxisDisplayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBinOptions {
  const QuicksightDashboardBinOptions({
    this.selectedBinType,
    this.startValue,
    this.binCount,
    this.binWidth,
  });

  final TfArg<String>? selectedBinType;

  final TfArg<num>? startValue;

  final QuicksightDashboardBinCount? binCount;

  final QuicksightDashboardBinWidth? binWidth;

  Map<String, Object?> encode() => {
    'selected_bin_type': ?selectedBinType?.toTfJson(),
    'start_value': ?startValue?.toTfJson(),
    'bin_count': ?binCount?.encode(),
    'bin_width': ?binWidth?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_count` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBinCount {
  const QuicksightDashboardBinCount({this.value});

  final TfArg<num>? value;

  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_width` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBinWidth {
  const QuicksightDashboardBinWidth({this.binCountLimit, this.value});

  final TfArg<num>? binCountLimit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'bin_count_limit': ?binCountLimit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHistogramVisualFieldWells {
  const QuicksightDashboardHistogramVisualFieldWells({
    this.histogramAggregatedFieldWells,
  });

  final QuicksightDashboardHistogramAggregatedFieldWells?
  histogramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'histogram_aggregated_field_wells': ?histogramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells.histogram_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardHistogramAggregatedFieldWells {
  const QuicksightDashboardHistogramAggregatedFieldWells({this.values});

  final QuicksightDashboardTargetValues? values;

  Map<String, Object?> encode() => {'values': ?values?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.insight_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardInsightVisual {
  const QuicksightDashboardInsightVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.insightConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardInsightConfiguration? insightConfiguration;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'insight_configuration': ?insightConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardInsightConfiguration {
  const QuicksightDashboardInsightConfiguration({
    this.computation,
    this.customNarrative,
  });

  final List<QuicksightDashboardComputation>? computation;

  final QuicksightDashboardCustomNarrative? customNarrative;

  Map<String, Object?> encode() => {
    if (computation != null)
      'computation': [for (final e in computation!) e.encode()],
    'custom_narrative': ?customNarrative?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardComputation {
  const QuicksightDashboardComputation({
    this.forecast,
    this.growthRate,
    this.maximumMinimum,
    this.metricComparison,
    this.periodOverPeriod,
    this.periodToDate,
    this.topBottomMovers,
    this.topBottomRanked,
    this.totalAggregation,
    this.uniqueValues,
  });

  final QuicksightDashboardForecast? forecast;

  final QuicksightDashboardGrowthRate? growthRate;

  final QuicksightDashboardMaximumMinimum? maximumMinimum;

  final QuicksightDashboardMetricComparison? metricComparison;

  final QuicksightDashboardPeriodOverPeriod? periodOverPeriod;

  final QuicksightDashboardPeriodToDate? periodToDate;

  final QuicksightDashboardTopBottomMovers? topBottomMovers;

  final QuicksightDashboardTopBottomRanked? topBottomRanked;

  final QuicksightDashboardTotalAggregation? totalAggregation;

  final QuicksightDashboardUniqueValues? uniqueValues;

  Map<String, Object?> encode() => {
    'forecast': ?forecast?.encode(),
    'growth_rate': ?growthRate?.encode(),
    'maximum_minimum': ?maximumMinimum?.encode(),
    'metric_comparison': ?metricComparison?.encode(),
    'period_over_period': ?periodOverPeriod?.encode(),
    'period_to_date': ?periodToDate?.encode(),
    'top_bottom_movers': ?topBottomMovers?.encode(),
    'top_bottom_ranked': ?topBottomRanked?.encode(),
    'total_aggregation': ?totalAggregation?.encode(),
    'unique_values': ?uniqueValues?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.forecast` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardForecast {
  const QuicksightDashboardForecast({
    required this.computationId,
    this.customSeasonalityValue,
    this.lowerBoundary,
    this.name,
    this.periodsBackward,
    this.periodsForward,
    this.predictionInterval,
    required this.seasonality,
    this.upperBoundary,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<num>? customSeasonalityValue;

  final TfArg<num>? lowerBoundary;

  final TfArg<String>? name;

  final TfArg<num>? periodsBackward;

  final TfArg<num>? periodsForward;

  final TfArg<num>? predictionInterval;

  final TfArg<String> seasonality;

  final TfArg<num>? upperBoundary;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'custom_seasonality_value': ?customSeasonalityValue?.toTfJson(),
    'lower_boundary': ?lowerBoundary?.toTfJson(),
    'name': ?name?.toTfJson(),
    'periods_backward': ?periodsBackward?.toTfJson(),
    'periods_forward': ?periodsForward?.toTfJson(),
    'prediction_interval': ?predictionInterval?.toTfJson(),
    'seasonality': seasonality.toTfJson(),
    'upper_boundary': ?upperBoundary?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.growth_rate` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardGrowthRate {
  const QuicksightDashboardGrowthRate({
    required this.computationId,
    this.name,
    this.periodSize,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? periodSize;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_size': ?periodSize?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.maximum_minimum` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardMaximumMinimum {
  const QuicksightDashboardMaximumMinimum({
    required this.computationId,
    this.name,
    required this.type,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> type;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'type': type.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.metric_comparison` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardMetricComparison {
  const QuicksightDashboardMetricComparison({
    required this.computationId,
    this.name,
    this.fromValue,
    this.targetValue,
    this.time,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardTargetValues? fromValue;

  final QuicksightDashboardTargetValues? targetValue;

  final QuicksightDashboardTrendGroups? time;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'from_value': ?fromValue?.encode(),
    'target_value': ?targetValue?.encode(),
    'time': ?time?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_over_period` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPeriodOverPeriod {
  const QuicksightDashboardPeriodOverPeriod({
    required this.computationId,
    this.name,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_to_date` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPeriodToDate {
  const QuicksightDashboardPeriodToDate({
    required this.computationId,
    this.name,
    required this.periodTimeGranularity,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> periodTimeGranularity;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_time_granularity': periodTimeGranularity.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_movers` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTopBottomMovers {
  const QuicksightDashboardTopBottomMovers({
    required this.computationId,
    this.moverSize,
    this.name,
    required this.sortOrder,
    required this.type,
    this.category,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<num>? moverSize;

  final TfArg<String>? name;

  final TfArg<String> sortOrder;

  final TfArg<String> type;

  final QuicksightDashboardTrendGroups? category;

  final QuicksightDashboardTrendGroups? time;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'mover_size': ?moverSize?.toTfJson(),
    'name': ?name?.toTfJson(),
    'sort_order': sortOrder.toTfJson(),
    'type': type.toTfJson(),
    'category': ?category?.encode(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_ranked` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTopBottomRanked {
  const QuicksightDashboardTopBottomRanked({
    required this.computationId,
    this.name,
    this.resultSize,
    required this.type,
    this.category,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? resultSize;

  final TfArg<String> type;

  final QuicksightDashboardTrendGroups? category;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'result_size': ?resultSize?.toTfJson(),
    'type': type.toTfJson(),
    'category': ?category?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.total_aggregation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTotalAggregation {
  const QuicksightDashboardTotalAggregation({
    required this.computationId,
    this.name,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.unique_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardUniqueValues {
  const QuicksightDashboardUniqueValues({
    required this.computationId,
    this.name,
    this.category,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardTrendGroups? category;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'category': ?category?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.custom_narrative` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomNarrative {
  const QuicksightDashboardCustomNarrative({required this.narrative});

  final TfArg<String> narrative;

  Map<String, Object?> encode() => {'narrative': narrative.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisual {
  const QuicksightDashboardKpiVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardKpiVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardKpiVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'conditional_formatting': ?conditionalFormatting?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisualChartConfiguration {
  const QuicksightDashboardKpiVisualChartConfiguration({
    this.fieldWells,
    this.kpiOptions,
    this.sortConfiguration,
  });

  final QuicksightDashboardKpiVisualFieldWells? fieldWells;

  final QuicksightDashboardKpiOptions? kpiOptions;

  final QuicksightDashboardKpiVisualSortConfiguration? sortConfiguration;

  Map<String, Object?> encode() => {
    'field_wells': ?fieldWells?.encode(),
    'kpi_options': ?kpiOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisualFieldWells {
  const QuicksightDashboardKpiVisualFieldWells({
    this.targetValues,
    this.trendGroups,
    this.values,
  });

  final List<QuicksightDashboardTargetValues>? targetValues;

  final List<QuicksightDashboardTrendGroups>? trendGroups;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (trendGroups != null)
      'trend_groups': [for (final e in trendGroups!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiOptions {
  const QuicksightDashboardKpiOptions({
    this.primaryValueDisplayType,
    this.comparison,
    this.primaryValueFontConfiguration,
    this.progressBar,
    this.secondaryValue,
    this.secondaryValueFontConfiguration,
    this.sparkline,
    this.trendArrows,
    this.visualLayoutOptions,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightDashboardComparison? comparison;

  final QuicksightDashboardFontConfiguration? primaryValueFontConfiguration;

  final QuicksightDashboardSelectAllOptions? progressBar;

  final QuicksightDashboardSelectAllOptions? secondaryValue;

  final QuicksightDashboardFontConfiguration? secondaryValueFontConfiguration;

  final QuicksightDashboardSparkline? sparkline;

  final QuicksightDashboardSelectAllOptions? trendArrows;

  final QuicksightDashboardVisualLayoutOptions? visualLayoutOptions;

  Map<String, Object?> encode() => {
    'primary_value_display_type': ?primaryValueDisplayType?.toTfJson(),
    'comparison': ?comparison?.encode(),
    'primary_value_font_configuration': ?primaryValueFontConfiguration
        ?.encode(),
    'progress_bar': ?progressBar?.encode(),
    'secondary_value': ?secondaryValue?.encode(),
    'secondary_value_font_configuration': ?secondaryValueFontConfiguration
        ?.encode(),
    'sparkline': ?sparkline?.encode(),
    'trend_arrows': ?trendArrows?.encode(),
    'visual_layout_options': ?visualLayoutOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.sparkline` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSparkline {
  const QuicksightDashboardSparkline({
    this.color,
    this.tooltipVisibility,
    required this.type,
    this.visibility,
  });

  final TfArg<String>? color;

  final TfArg<String>? tooltipVisibility;

  final TfArg<String> type;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'tooltip_visibility': ?tooltipVisibility?.toTfJson(),
    'type': type.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardVisualLayoutOptions {
  const QuicksightDashboardVisualLayoutOptions({this.standardLayout});

  final QuicksightDashboardStandardLayout? standardLayout;

  Map<String, Object?> encode() => {
    'standard_layout': ?standardLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options.standard_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardStandardLayout {
  const QuicksightDashboardStandardLayout({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisualSortConfiguration {
  const QuicksightDashboardKpiVisualSortConfiguration({this.trendGroupSort});

  final List<QuicksightDashboardCategorySort>? trendGroupSort;

  Map<String, Object?> encode() => {
    if (trendGroupSort != null)
      'trend_group_sort': [for (final e in trendGroupSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisualConditionalFormatting {
  const QuicksightDashboardKpiVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightDashboardKpiVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardKpiVisualConditionalFormattingOptions {
  const QuicksightDashboardKpiVisualConditionalFormattingOptions({
    this.actualValue,
    this.comparisonValue,
    this.primaryValue,
    this.progressBar,
  });

  final QuicksightDashboardPrimaryValue? actualValue;

  final QuicksightDashboardPrimaryValue? comparisonValue;

  final QuicksightDashboardPrimaryValue? primaryValue;

  final QuicksightDashboardConditionalFormattingOptionsArc? progressBar;

  Map<String, Object?> encode() => {
    'actual_value': ?actualValue?.encode(),
    'comparison_value': ?comparisonValue?.encode(),
    'primary_value': ?primaryValue?.encode(),
    'progress_bar': ?progressBar?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLineChartVisual {
  const QuicksightDashboardLineChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardLineChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLineChartVisualChartConfiguration {
  const QuicksightDashboardLineChartVisualChartConfiguration({
    this.type,
    this.contributionAnalysisDefaults,
    this.dataLabels,
    this.defaultSeriesSettings,
    this.fieldWells,
    this.forecastConfigurations,
    this.legend,
    this.primaryYAxisDisplayOptions,
    this.primaryYAxisLabelOptions,
    this.referenceLines,
    this.secondaryYAxisDisplayOptions,
    this.secondaryYAxisLabelOptions,
    this.series,
    this.smallMultiplesOptions,
    this.sortConfiguration,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
  });

  final TfArg<String>? type;

  final List<QuicksightDashboardContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardDefaultSeriesSettings? defaultSeriesSettings;

  final QuicksightDashboardLineChartVisualFieldWells? fieldWells;

  final List<QuicksightDashboardForecastConfigurations>? forecastConfigurations;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardPrimaryYAxisDisplayOptions?
  primaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightDashboardReferenceLines>? referenceLines;

  final QuicksightDashboardPrimaryYAxisDisplayOptions?
  secondaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? secondaryYAxisLabelOptions;

  final List<QuicksightDashboardSeries>? series;

  final QuicksightDashboardSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightDashboardLineChartVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  final QuicksightDashboardCategoryAxis? xAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? xAxisLabelOptions;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    'data_labels': ?dataLabels?.encode(),
    'default_series_settings': ?defaultSeriesSettings?.encode(),
    'field_wells': ?fieldWells?.encode(),
    if (forecastConfigurations != null)
      'forecast_configurations': [
        for (final e in forecastConfigurations!) e.encode(),
      ],
    'legend': ?legend?.encode(),
    'primary_y_axis_display_options': ?primaryYAxisDisplayOptions?.encode(),
    'primary_y_axis_label_options': ?primaryYAxisLabelOptions?.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    'secondary_y_axis_display_options': ?secondaryYAxisDisplayOptions?.encode(),
    'secondary_y_axis_label_options': ?secondaryYAxisLabelOptions?.encode(),
    if (series != null) 'series': [for (final e in series!) e.encode()],
    'small_multiples_options': ?smallMultiplesOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
    'x_axis_display_options': ?xAxisDisplayOptions?.encode(),
    'x_axis_label_options': ?xAxisLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefaultSeriesSettings {
  const QuicksightDashboardDefaultSeriesSettings({
    this.axisBinding,
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final TfArg<String>? axisBinding;

  final QuicksightDashboardLineStyleSettings? lineStyleSettings;

  final QuicksightDashboardMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.line_style_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardLineStyleSettings {
  const QuicksightDashboardLineStyleSettings({
    this.lineInterpolation,
    this.lineStyle,
    this.lineVisibility,
    this.lineWidth,
  });

  final TfArg<String>? lineInterpolation;

  final TfArg<String>? lineStyle;

  final TfArg<String>? lineVisibility;

  final TfArg<String>? lineWidth;

  Map<String, Object?> encode() => {
    'line_interpolation': ?lineInterpolation?.toTfJson(),
    'line_style': ?lineStyle?.toTfJson(),
    'line_visibility': ?lineVisibility?.toTfJson(),
    'line_width': ?lineWidth?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.marker_style_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardMarkerStyleSettings {
  const QuicksightDashboardMarkerStyleSettings({
    this.markerColor,
    this.markerShape,
    this.markerSize,
    this.markerVisibility,
  });

  final TfArg<String>? markerColor;

  final TfArg<String>? markerShape;

  final TfArg<String>? markerSize;

  final TfArg<String>? markerVisibility;

  Map<String, Object?> encode() => {
    'marker_color': ?markerColor?.toTfJson(),
    'marker_shape': ?markerShape?.toTfJson(),
    'marker_size': ?markerSize?.toTfJson(),
    'marker_visibility': ?markerVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLineChartVisualFieldWells {
  const QuicksightDashboardLineChartVisualFieldWells({
    this.lineChartAggregatedFieldWells,
  });

  final QuicksightDashboardBarChartAggregatedFieldWells?
  lineChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'line_chart_aggregated_field_wells': ?lineChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardForecastConfigurations {
  const QuicksightDashboardForecastConfigurations({
    this.forecastProperties,
    this.scenario,
  });

  final QuicksightDashboardForecastProperties? forecastProperties;

  final QuicksightDashboardScenario? scenario;

  Map<String, Object?> encode() => {
    'forecast_properties': ?forecastProperties?.encode(),
    'scenario': ?scenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.forecast_properties` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardForecastProperties {
  const QuicksightDashboardForecastProperties({
    this.lowerBoundary,
    this.periodsBackward,
    this.periodsForward,
    this.predictionInterval,
    this.seasonality,
    this.upperBoundary,
  });

  final TfArg<num>? lowerBoundary;

  final TfArg<num>? periodsBackward;

  final TfArg<num>? periodsForward;

  final TfArg<num>? predictionInterval;

  final TfArg<num>? seasonality;

  final TfArg<num>? upperBoundary;

  Map<String, Object?> encode() => {
    'lower_boundary': ?lowerBoundary?.toTfJson(),
    'periods_backward': ?periodsBackward?.toTfJson(),
    'periods_forward': ?periodsForward?.toTfJson(),
    'prediction_interval': ?predictionInterval?.toTfJson(),
    'seasonality': ?seasonality?.toTfJson(),
    'upper_boundary': ?upperBoundary?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScenario {
  const QuicksightDashboardScenario({
    this.whatIfPointScenario,
    this.whatIfRangeScenario,
  });

  final QuicksightDashboardWhatIfPointScenario? whatIfPointScenario;

  final QuicksightDashboardWhatIfRangeScenario? whatIfRangeScenario;

  Map<String, Object?> encode() => {
    'what_if_point_scenario': ?whatIfPointScenario?.encode(),
    'what_if_range_scenario': ?whatIfRangeScenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_point_scenario` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWhatIfPointScenario {
  const QuicksightDashboardWhatIfPointScenario({
    required this.date,
    required this.value,
  });

  final TfArg<String> date;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'date': date.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_range_scenario` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWhatIfRangeScenario {
  const QuicksightDashboardWhatIfRangeScenario({
    required this.endDate,
    required this.startDate,
    required this.value,
  });

  final TfArg<String> endDate;

  final TfArg<String> startDate;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'end_date': endDate.toTfJson(),
    'start_date': startDate.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.primary_y_axis_display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPrimaryYAxisDisplayOptions {
  const QuicksightDashboardPrimaryYAxisDisplayOptions({
    this.axisOptions,
    this.missingDataConfiguration,
  });

  final QuicksightDashboardCategoryAxis? axisOptions;

  final List<QuicksightDashboardMissingDataConfiguration>?
  missingDataConfiguration;

  Map<String, Object?> encode() => {
    'axis_options': ?axisOptions?.encode(),
    if (missingDataConfiguration != null)
      'missing_data_configuration': [
        for (final e in missingDataConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.primary_y_axis_display_options.missing_data_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardMissingDataConfiguration {
  const QuicksightDashboardMissingDataConfiguration({this.treatmentOption});

  final TfArg<String>? treatmentOption;

  Map<String, Object?> encode() => {
    'treatment_option': ?treatmentOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSeries {
  const QuicksightDashboardSeries({
    this.dataFieldSeriesItem,
    this.fieldSeriesItem,
  });

  final QuicksightDashboardDataFieldSeriesItem? dataFieldSeriesItem;

  final QuicksightDashboardFieldSeriesItem? fieldSeriesItem;

  Map<String, Object?> encode() => {
    'data_field_series_item': ?dataFieldSeriesItem?.encode(),
    'field_series_item': ?fieldSeriesItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataFieldSeriesItem {
  const QuicksightDashboardDataFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.fieldValue,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final TfArg<String>? fieldValue;

  final QuicksightDashboardSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'field_value': ?fieldValue?.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item.settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSettings {
  const QuicksightDashboardSettings({
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final QuicksightDashboardLineStyleSettings? lineStyleSettings;

  final QuicksightDashboardMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.field_series_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFieldSeriesItem {
  const QuicksightDashboardFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final QuicksightDashboardSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLineChartVisualSortConfiguration {
  const QuicksightDashboardLineChartVisualSortConfiguration({
    this.categoryItemsLimitConfiguration,
    this.categorySort,
    this.colorItemsLimitConfiguration,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardCategoryItemsLimit? categoryItemsLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? categorySort;

  final QuicksightDashboardCategoryItemsLimit? colorItemsLimitConfiguration;

  final QuicksightDashboardCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? smallMultiplesSort;

  Map<String, Object?> encode() => {
    'category_items_limit_configuration': ?categoryItemsLimitConfiguration
        ?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'color_items_limit_configuration': ?colorItemsLimitConfiguration?.encode(),
    'small_multiples_limit_configuration': ?smallMultiplesLimitConfiguration
        ?.encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPieChartVisual {
  const QuicksightDashboardPieChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardPieChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPieChartVisualChartConfiguration {
  const QuicksightDashboardPieChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.contributionAnalysisDefaults,
    this.dataLabels,
    this.donutOptions,
    this.fieldWells,
    this.legend,
    this.smallMultiplesOptions,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final List<QuicksightDashboardContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardDonutOptions? donutOptions;

  final QuicksightDashboardPieChartVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightDashboardPieChartVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardCategoryLabelOptions? valueLabelOptions;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'category_label_options': ?categoryLabelOptions?.encode(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    'data_labels': ?dataLabels?.encode(),
    'donut_options': ?donutOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'small_multiples_options': ?smallMultiplesOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
    'value_label_options': ?valueLabelOptions?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDonutOptions {
  const QuicksightDashboardDonutOptions({
    this.arcOptions,
    this.donutCenterOptions,
  });

  final QuicksightDashboardArcOptions? arcOptions;

  final QuicksightDashboardDonutCenterOptions? donutCenterOptions;

  Map<String, Object?> encode() => {
    'arc_options': ?arcOptions?.encode(),
    'donut_center_options': ?donutCenterOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.arc_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardArcOptions {
  const QuicksightDashboardArcOptions({this.arcThickness});

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {'arc_thickness': ?arcThickness?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.donut_center_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDonutCenterOptions {
  const QuicksightDashboardDonutCenterOptions({this.labelVisibility});

  final TfArg<String>? labelVisibility;

  Map<String, Object?> encode() => {
    'label_visibility': ?labelVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPieChartVisualFieldWells {
  const QuicksightDashboardPieChartVisualFieldWells({
    this.pieChartAggregatedFieldWells,
  });

  final QuicksightDashboardPieChartAggregatedFieldWells?
  pieChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pie_chart_aggregated_field_wells': ?pieChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells.pie_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPieChartAggregatedFieldWells {
  const QuicksightDashboardPieChartAggregatedFieldWells({
    this.category,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? category;

  final QuicksightDashboardTrendGroups? smallMultiples;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPieChartVisualSortConfiguration {
  const QuicksightDashboardPieChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightDashboardCategorySort>? categorySort;

  final QuicksightDashboardCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? smallMultiplesSort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'small_multiples_limit_configuration': ?smallMultiplesLimitConfiguration
        ?.encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisual {
  const QuicksightDashboardPivotTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardPivotTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardPivotTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'conditional_formatting': ?conditionalFormatting?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualChartConfiguration {
  const QuicksightDashboardPivotTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightDashboardPivotTableVisualFieldOptions? fieldOptions;

  final QuicksightDashboardPivotTableVisualFieldWells? fieldWells;

  final QuicksightDashboardPaginatedReportOptions? paginatedReportOptions;

  final QuicksightDashboardPivotTableVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardPivotTableVisualTableOptions? tableOptions;

  final QuicksightDashboardPivotTableVisualTotalOptions? totalOptions;

  Map<String, Object?> encode() => {
    'field_options': ?fieldOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'paginated_report_options': ?paginatedReportOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'table_options': ?tableOptions?.encode(),
    'total_options': ?totalOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualFieldOptions {
  const QuicksightDashboardPivotTableVisualFieldOptions({
    this.dataPathOptions,
    this.selectedFieldOptions,
  });

  final List<QuicksightDashboardDataPathOptions>? dataPathOptions;

  final List<QuicksightDashboardPivotTableVisualSelectedFieldOptions>?
  selectedFieldOptions;

  Map<String, Object?> encode() => {
    if (dataPathOptions != null)
      'data_path_options': [for (final e in dataPathOptions!) e.encode()],
    if (selectedFieldOptions != null)
      'selected_field_options': [
        for (final e in selectedFieldOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.data_path_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataPathOptions {
  const QuicksightDashboardDataPathOptions({
    this.width,
    required this.dataPathList,
  });

  final TfArg<String>? width;

  final List<QuicksightDashboardElement> dataPathList;

  Map<String, Object?> encode() => {
    'width': ?width?.toTfJson(),
    'data_path_list': [for (final e in dataPathList) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualSelectedFieldOptions {
  const QuicksightDashboardPivotTableVisualSelectedFieldOptions({
    this.customLabel,
    required this.fieldId,
    this.visibility,
  });

  final TfArg<String>? customLabel;

  final TfArg<String> fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualFieldWells {
  const QuicksightDashboardPivotTableVisualFieldWells({
    this.pivotTableAggregatedFieldWells,
  });

  final QuicksightDashboardPivotTableAggregatedFieldWells?
  pivotTableAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pivot_table_aggregated_field_wells': ?pivotTableAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells.pivot_table_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableAggregatedFieldWells {
  const QuicksightDashboardPivotTableAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? columns;

  final List<QuicksightDashboardTrendGroups>? rows;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    if (rows != null) 'rows': [for (final e in rows!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.paginated_report_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardPaginatedReportOptions {
  const QuicksightDashboardPaginatedReportOptions({
    this.overflowColumnHeaderVisibility,
    this.verticalOverflowVisibility,
  });

  final TfArg<String>? overflowColumnHeaderVisibility;

  final TfArg<String>? verticalOverflowVisibility;

  Map<String, Object?> encode() => {
    'overflow_column_header_visibility': ?overflowColumnHeaderVisibility
        ?.toTfJson(),
    'vertical_overflow_visibility': ?verticalOverflowVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualSortConfiguration {
  const QuicksightDashboardPivotTableVisualSortConfiguration({
    this.fieldSortOptions,
  });

  final List<QuicksightDashboardFieldSortOptions>? fieldSortOptions;

  Map<String, Object?> encode() => {
    if (fieldSortOptions != null)
      'field_sort_options': [for (final e in fieldSortOptions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardFieldSortOptions {
  const QuicksightDashboardFieldSortOptions({
    required this.fieldId,
    required this.sortBy,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardSortBy sortBy;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSortBy {
  const QuicksightDashboardSortBy({this.column, this.dataPath, this.field});

  final QuicksightDashboardColumnSort? column;

  final QuicksightDashboardDataPath? dataPath;

  final QuicksightDashboardFieldSort? field;

  Map<String, Object?> encode() => {
    'column': ?column?.encode(),
    'data_path': ?dataPath?.encode(),
    'field': ?field?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by.data_path` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataPath {
  const QuicksightDashboardDataPath({
    required this.direction,
    required this.sortPaths,
  });

  final TfArg<String> direction;

  final List<QuicksightDashboardElement> sortPaths;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'sort_paths': [for (final e in sortPaths) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualTableOptions {
  const QuicksightDashboardPivotTableVisualTableOptions({
    this.collapsedRowDimensionsVisibility,
    this.columnNamesVisibility,
    this.metricPlacement,
    this.singleMetricVisibility,
    this.toggleButtonsVisibility,
    this.cellStyle,
    this.columnHeaderStyle,
    this.rowAlternateColorOptions,
    this.rowFieldNamesStyle,
    this.rowHeaderStyle,
  });

  final TfArg<String>? collapsedRowDimensionsVisibility;

  final TfArg<String>? columnNamesVisibility;

  final TfArg<String>? metricPlacement;

  final TfArg<String>? singleMetricVisibility;

  final TfArg<String>? toggleButtonsVisibility;

  final QuicksightDashboardCellStyle? cellStyle;

  final QuicksightDashboardCellStyle? columnHeaderStyle;

  final QuicksightDashboardRowAlternateColorOptions? rowAlternateColorOptions;

  final QuicksightDashboardCellStyle? rowFieldNamesStyle;

  final QuicksightDashboardCellStyle? rowHeaderStyle;

  Map<String, Object?> encode() => {
    'collapsed_row_dimensions_visibility': ?collapsedRowDimensionsVisibility
        ?.toTfJson(),
    'column_names_visibility': ?columnNamesVisibility?.toTfJson(),
    'metric_placement': ?metricPlacement?.toTfJson(),
    'single_metric_visibility': ?singleMetricVisibility?.toTfJson(),
    'toggle_buttons_visibility': ?toggleButtonsVisibility?.toTfJson(),
    'cell_style': ?cellStyle?.encode(),
    'column_header_style': ?columnHeaderStyle?.encode(),
    'row_alternate_color_options': ?rowAlternateColorOptions?.encode(),
    'row_field_names_style': ?rowFieldNamesStyle?.encode(),
    'row_header_style': ?rowHeaderStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardCellStyle {
  const QuicksightDashboardCellStyle({
    this.backgroundColor,
    this.height,
    this.horizontalTextAlignment,
    this.textWrap,
    this.verticalTextAlignment,
    this.visibility,
    this.border,
    this.fontConfiguration,
  });

  final TfArg<String>? backgroundColor;

  final TfArg<num>? height;

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? textWrap;

  final TfArg<String>? verticalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightDashboardBorder? border;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'background_color': ?backgroundColor?.toTfJson(),
    'height': ?height?.toTfJson(),
    'horizontal_text_alignment': ?horizontalTextAlignment?.toTfJson(),
    'text_wrap': ?textWrap?.toTfJson(),
    'vertical_text_alignment': ?verticalTextAlignment?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'border': ?border?.encode(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardBorder {
  const QuicksightDashboardBorder({
    this.sideSpecificBorder,
    required this.uniformBorder,
  });

  final QuicksightDashboardSideSpecificBorder? sideSpecificBorder;

  final QuicksightDashboardUniformBorder uniformBorder;

  Map<String, Object?> encode() => {
    'side_specific_border': ?sideSpecificBorder?.encode(),
    'uniform_border': uniformBorder.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.side_specific_border` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardSideSpecificBorder {
  const QuicksightDashboardSideSpecificBorder({
    required this.bottom,
    required this.innerHorizontal,
    required this.innerVertical,
    required this.left,
    required this.right,
    required this.top,
  });

  final QuicksightDashboardUniformBorder bottom;

  final QuicksightDashboardUniformBorder innerHorizontal;

  final QuicksightDashboardUniformBorder innerVertical;

  final QuicksightDashboardUniformBorder left;

  final QuicksightDashboardUniformBorder right;

  final QuicksightDashboardUniformBorder top;

  Map<String, Object?> encode() => {
    'bottom': bottom.encode(),
    'inner_horizontal': innerHorizontal.encode(),
    'inner_vertical': innerVertical.encode(),
    'left': left.encode(),
    'right': right.encode(),
    'top': top.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.uniform_border` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardUniformBorder {
  const QuicksightDashboardUniformBorder({
    this.color,
    this.style,
    this.thickness,
  });

  final TfArg<String>? color;

  final TfArg<String>? style;

  final TfArg<num>? thickness;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'style': ?style?.toTfJson(),
    'thickness': ?thickness?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.row_alternate_color_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardRowAlternateColorOptions {
  const QuicksightDashboardRowAlternateColorOptions({
    this.rowAlternateColors,
    this.status,
  });

  final TfArg<List<String>>? rowAlternateColors;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    'row_alternate_colors': ?rowAlternateColors?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualTotalOptions {
  const QuicksightDashboardPivotTableVisualTotalOptions({
    this.columnSubtotalOptions,
    this.columnTotalOptions,
    this.rowSubtotalOptions,
    this.rowTotalOptions,
  });

  final QuicksightDashboardColumnSubtotalOptions? columnSubtotalOptions;

  final QuicksightDashboardColumnTotalOptions? columnTotalOptions;

  final QuicksightDashboardColumnSubtotalOptions? rowSubtotalOptions;

  final QuicksightDashboardColumnTotalOptions? rowTotalOptions;

  Map<String, Object?> encode() => {
    'column_subtotal_options': ?columnSubtotalOptions?.encode(),
    'column_total_options': ?columnTotalOptions?.encode(),
    'row_subtotal_options': ?rowSubtotalOptions?.encode(),
    'row_total_options': ?rowTotalOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumnSubtotalOptions {
  const QuicksightDashboardColumnSubtotalOptions({
    this.customLabel,
    this.fieldLevel,
    this.totalsVisibility,
    this.fieldLevelOptions,
    this.metricHeaderCellStyle,
    this.totalCellStyle,
    this.valueCellStyle,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? fieldLevel;

  final TfArg<String>? totalsVisibility;

  final List<QuicksightDashboardFieldLevelOptions>? fieldLevelOptions;

  final QuicksightDashboardCellStyle? metricHeaderCellStyle;

  final QuicksightDashboardCellStyle? totalCellStyle;

  final QuicksightDashboardCellStyle? valueCellStyle;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'field_level': ?fieldLevel?.toTfJson(),
    'totals_visibility': ?totalsVisibility?.toTfJson(),
    if (fieldLevelOptions != null)
      'field_level_options': [for (final e in fieldLevelOptions!) e.encode()],
    'metric_header_cell_style': ?metricHeaderCellStyle?.encode(),
    'total_cell_style': ?totalCellStyle?.encode(),
    'value_cell_style': ?valueCellStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options.field_level_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardFieldLevelOptions {
  const QuicksightDashboardFieldLevelOptions({this.fieldId});

  final TfArg<String>? fieldId;

  Map<String, Object?> encode() => {'field_id': ?fieldId?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardColumnTotalOptions {
  const QuicksightDashboardColumnTotalOptions({
    this.customLabel,
    this.placement,
    this.scrollStatus,
    this.totalsVisibility,
    this.metricHeaderCellStyle,
    this.totalCellStyle,
    this.valueCellStyle,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? placement;

  final TfArg<String>? scrollStatus;

  final TfArg<String>? totalsVisibility;

  final QuicksightDashboardCellStyle? metricHeaderCellStyle;

  final QuicksightDashboardCellStyle? totalCellStyle;

  final QuicksightDashboardCellStyle? valueCellStyle;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'placement': ?placement?.toTfJson(),
    'scroll_status': ?scrollStatus?.toTfJson(),
    'totals_visibility': ?totalsVisibility?.toTfJson(),
    'metric_header_cell_style': ?metricHeaderCellStyle?.encode(),
    'total_cell_style': ?totalCellStyle?.encode(),
    'value_cell_style': ?valueCellStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualConditionalFormatting {
  const QuicksightDashboardPivotTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightDashboardPivotTableVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualConditionalFormattingOptions {
  const QuicksightDashboardPivotTableVisualConditionalFormattingOptions({
    this.cell,
  });

  final QuicksightDashboardPivotTableVisualCell? cell;

  Map<String, Object?> encode() => {'cell': ?cell?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPivotTableVisualCell {
  const QuicksightDashboardPivotTableVisualCell({
    required this.fieldId,
    this.scope,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardScope? scope;

  final QuicksightDashboardTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'scope': ?scope?.encode(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.scope` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScope {
  const QuicksightDashboardScope({this.role});

  final TfArg<String>? role;

  Map<String, Object?> encode() => {'role': ?role?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.text_format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardTextFormat {
  const QuicksightDashboardTextFormat({
    required this.backgroundColor,
    this.icon,
    required this.textColor,
  });

  final QuicksightDashboardForegroundColor backgroundColor;

  final QuicksightDashboardIcon? icon;

  final QuicksightDashboardForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRadarChartVisual {
  const QuicksightDashboardRadarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardRadarChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRadarChartVisualChartConfiguration {
  const QuicksightDashboardRadarChartVisualChartConfiguration({
    this.alternateBandColorsVisibility,
    this.alternateBandEvenColor,
    this.alternateBandOddColor,
    this.shape,
    this.startAngle,
    this.baseSeriesSettings,
    this.categoryAxis,
    this.categoryLabelOptions,
    this.colorAxis,
    this.colorLabelOptions,
    this.fieldWells,
    this.legend,
    this.sortConfiguration,
    this.visualPalette,
  });

  final TfArg<String>? alternateBandColorsVisibility;

  final TfArg<String>? alternateBandEvenColor;

  final TfArg<String>? alternateBandOddColor;

  final TfArg<String>? shape;

  final TfArg<num>? startAngle;

  final QuicksightDashboardBaseSeriesSettings? baseSeriesSettings;

  final QuicksightDashboardCategoryAxis? categoryAxis;

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardCategoryAxis? colorAxis;

  final QuicksightDashboardCategoryLabelOptions? colorLabelOptions;

  final QuicksightDashboardRadarChartVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'alternate_band_colors_visibility': ?alternateBandColorsVisibility
        ?.toTfJson(),
    'alternate_band_even_color': ?alternateBandEvenColor?.toTfJson(),
    'alternate_band_odd_color': ?alternateBandOddColor?.toTfJson(),
    'shape': ?shape?.toTfJson(),
    'start_angle': ?startAngle?.toTfJson(),
    'base_series_settings': ?baseSeriesSettings?.encode(),
    'category_axis': ?categoryAxis?.encode(),
    'category_label_options': ?categoryLabelOptions?.encode(),
    'color_axis': ?colorAxis?.encode(),
    'color_label_options': ?colorLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.base_series_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardBaseSeriesSettings {
  const QuicksightDashboardBaseSeriesSettings({this.areaStyleSettings});

  final QuicksightDashboardSelectAllOptions? areaStyleSettings;

  Map<String, Object?> encode() => {
    'area_style_settings': ?areaStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRadarChartVisualFieldWells {
  const QuicksightDashboardRadarChartVisualFieldWells({
    this.radarChartAggregatedFieldWells,
  });

  final QuicksightDashboardRadarChartAggregatedFieldWells?
  radarChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'radar_chart_aggregated_field_wells': ?radarChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells.radar_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRadarChartAggregatedFieldWells {
  const QuicksightDashboardRadarChartAggregatedFieldWells({
    this.category,
    this.color,
    this.values,
  });

  final QuicksightDashboardTrendGroups? category;

  final QuicksightDashboardTrendGroups? color;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'color': ?color?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSankeyDiagramVisual {
  const QuicksightDashboardSankeyDiagramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardSankeyDiagramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSankeyDiagramVisualChartConfiguration {
  const QuicksightDashboardSankeyDiagramVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.sortConfiguration,
  });

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardSankeyDiagramVisualFieldWells? fieldWells;

  final QuicksightDashboardSankeyDiagramVisualSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSankeyDiagramVisualFieldWells {
  const QuicksightDashboardSankeyDiagramVisualFieldWells({
    this.sankeyDiagramAggregatedFieldWells,
  });

  final QuicksightDashboardSankeyDiagramAggregatedFieldWells?
  sankeyDiagramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'sankey_diagram_aggregated_field_wells': ?sankeyDiagramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells.sankey_diagram_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSankeyDiagramAggregatedFieldWells {
  const QuicksightDashboardSankeyDiagramAggregatedFieldWells({
    this.destination,
    this.source,
    this.weight,
  });

  final List<QuicksightDashboardTrendGroups>? destination;

  final List<QuicksightDashboardTrendGroups>? source;

  final List<QuicksightDashboardTargetValues>? weight;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
    if (weight != null) 'weight': [for (final e in weight!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSankeyDiagramVisualSortConfiguration {
  const QuicksightDashboardSankeyDiagramVisualSortConfiguration({
    this.destinationItemsLimit,
    this.sourceItemsLimit,
    this.weightSort,
  });

  final QuicksightDashboardCategoryItemsLimit? destinationItemsLimit;

  final QuicksightDashboardCategoryItemsLimit? sourceItemsLimit;

  final List<QuicksightDashboardCategorySort>? weightSort;

  Map<String, Object?> encode() => {
    'destination_items_limit': ?destinationItemsLimit?.encode(),
    'source_items_limit': ?sourceItemsLimit?.encode(),
    if (weightSort != null)
      'weight_sort': [for (final e in weightSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScatterPlotVisual {
  const QuicksightDashboardScatterPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardScatterPlotVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScatterPlotVisualChartConfiguration {
  const QuicksightDashboardScatterPlotVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
    this.yAxisLabelOptions,
  });

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardScatterPlotVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardTooltip? tooltip;

  final QuicksightDashboardVisualPalette? visualPalette;

  final QuicksightDashboardCategoryAxis? xAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightDashboardCategoryAxis? yAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? yAxisLabelOptions;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
    'x_axis_display_options': ?xAxisDisplayOptions?.encode(),
    'x_axis_label_options': ?xAxisLabelOptions?.encode(),
    'y_axis_display_options': ?yAxisDisplayOptions?.encode(),
    'y_axis_label_options': ?yAxisLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScatterPlotVisualFieldWells {
  const QuicksightDashboardScatterPlotVisualFieldWells({
    this.scatterPlotCategoricallyAggregatedFieldWells,
    this.scatterPlotUnaggregatedFieldWells,
  });

  final QuicksightDashboardScatterPlotCategoricallyAggregatedFieldWells?
  scatterPlotCategoricallyAggregatedFieldWells;

  final QuicksightDashboardScatterPlotUnaggregatedFieldWells?
  scatterPlotUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'scatter_plot_categorically_aggregated_field_wells':
        ?scatterPlotCategoricallyAggregatedFieldWells?.encode(),
    'scatter_plot_unaggregated_field_wells': ?scatterPlotUnaggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_categorically_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScatterPlotCategoricallyAggregatedFieldWells {
  const QuicksightDashboardScatterPlotCategoricallyAggregatedFieldWells({
    this.category,
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightDashboardTrendGroups>? category;

  final List<QuicksightDashboardTargetValues>? size;

  final List<QuicksightDashboardTargetValues>? xAxis;

  final List<QuicksightDashboardTargetValues>? yAxis;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_unaggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardScatterPlotUnaggregatedFieldWells {
  const QuicksightDashboardScatterPlotUnaggregatedFieldWells({
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightDashboardTargetValues>? size;

  final List<QuicksightDashboardTrendGroups>? xAxis;

  final List<QuicksightDashboardTrendGroups>? yAxis;

  Map<String, Object?> encode() => {
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisual {
  const QuicksightDashboardTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardTableVisualChartConfiguration? chartConfiguration;

  final QuicksightDashboardTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'conditional_formatting': ?conditionalFormatting?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualChartConfiguration {
  const QuicksightDashboardTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableInlineVisualizations,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightDashboardTableVisualFieldOptions? fieldOptions;

  final QuicksightDashboardTableVisualFieldWells? fieldWells;

  final QuicksightDashboardPaginatedReportOptions? paginatedReportOptions;

  final QuicksightDashboardTableVisualSortConfiguration? sortConfiguration;

  final List<QuicksightDashboardTableInlineVisualizations>?
  tableInlineVisualizations;

  final QuicksightDashboardTableVisualTableOptions? tableOptions;

  final QuicksightDashboardTableVisualTotalOptions? totalOptions;

  Map<String, Object?> encode() => {
    'field_options': ?fieldOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'paginated_report_options': ?paginatedReportOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    if (tableInlineVisualizations != null)
      'table_inline_visualizations': [
        for (final e in tableInlineVisualizations!) e.encode(),
      ],
    'table_options': ?tableOptions?.encode(),
    'total_options': ?totalOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualFieldOptions {
  const QuicksightDashboardTableVisualFieldOptions({
    this.order,
    this.selectedFieldOptions,
  });

  final TfArg<List<String>>? order;

  final List<QuicksightDashboardTableVisualSelectedFieldOptions>?
  selectedFieldOptions;

  Map<String, Object?> encode() => {
    'order': ?order?.toTfJson(),
    if (selectedFieldOptions != null)
      'selected_field_options': [
        for (final e in selectedFieldOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualSelectedFieldOptions {
  const QuicksightDashboardTableVisualSelectedFieldOptions({
    this.customLabel,
    required this.fieldId,
    this.visibility,
    this.width,
    this.urlStyling,
  });

  final TfArg<String>? customLabel;

  final TfArg<String> fieldId;

  final TfArg<String>? visibility;

  final TfArg<String>? width;

  final QuicksightDashboardUrlStyling? urlStyling;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'url_styling': ?urlStyling?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardUrlStyling {
  const QuicksightDashboardUrlStyling({
    this.imageConfiguration,
    this.linkConfiguration,
  });

  final QuicksightDashboardImageConfiguration? imageConfiguration;

  final QuicksightDashboardLinkConfiguration? linkConfiguration;

  Map<String, Object?> encode() => {
    'image_configuration': ?imageConfiguration?.encode(),
    'link_configuration': ?linkConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardImageConfiguration {
  const QuicksightDashboardImageConfiguration({this.sizingOptions});

  final QuicksightDashboardSizingOptions? sizingOptions;

  Map<String, Object?> encode() => {'sizing_options': ?sizingOptions?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration.sizing_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSizingOptions {
  const QuicksightDashboardSizingOptions({
    this.tableCellImageScalingConfiguration,
  });

  final TfArg<String>? tableCellImageScalingConfiguration;

  Map<String, Object?> encode() => {
    'table_cell_image_scaling_configuration':
        ?tableCellImageScalingConfiguration?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLinkConfiguration {
  const QuicksightDashboardLinkConfiguration({this.target, this.content});

  final TfArg<String>? target;

  final QuicksightDashboardLinkConfigurationContent? content;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'content': ?content?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardLinkConfigurationContent {
  const QuicksightDashboardLinkConfigurationContent({
    this.customIconContent,
    this.customTextContent,
  });

  final QuicksightDashboardCustomIconContent? customIconContent;

  final QuicksightDashboardCustomTextContent? customTextContent;

  Map<String, Object?> encode() => {
    'custom_icon_content': ?customIconContent?.encode(),
    'custom_text_content': ?customTextContent?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_icon_content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomIconContent {
  const QuicksightDashboardCustomIconContent({this.icon});

  final TfArg<String>? icon;

  Map<String, Object?> encode() => {'icon': ?icon?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_text_content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardCustomTextContent {
  const QuicksightDashboardCustomTextContent({
    this.value,
    this.fontConfiguration,
  });

  final TfArg<String>? value;

  final QuicksightDashboardFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'value': ?value?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualFieldWells {
  const QuicksightDashboardTableVisualFieldWells({
    this.tableAggregatedFieldWells,
    this.tableUnaggregatedFieldWells,
  });

  final QuicksightDashboardTableAggregatedFieldWells? tableAggregatedFieldWells;

  final QuicksightDashboardTableUnaggregatedFieldWells?
  tableUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'table_aggregated_field_wells': ?tableAggregatedFieldWells?.encode(),
    'table_unaggregated_field_wells': ?tableUnaggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableAggregatedFieldWells {
  const QuicksightDashboardTableAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? groupBy;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableUnaggregatedFieldWells {
  const QuicksightDashboardTableUnaggregatedFieldWells({this.values});

  final List<QuicksightDashboardValues>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells.values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardValues {
  const QuicksightDashboardValues({
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardColumn column;

  final QuicksightDashboardFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualSortConfiguration {
  const QuicksightDashboardTableVisualSortConfiguration({
    this.paginationConfiguration,
    this.rowSort,
  });

  final QuicksightDashboardPaginationConfiguration? paginationConfiguration;

  final List<QuicksightDashboardCategorySort>? rowSort;

  Map<String, Object?> encode() => {
    'pagination_configuration': ?paginationConfiguration?.encode(),
    if (rowSort != null) 'row_sort': [for (final e in rowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableInlineVisualizations {
  const QuicksightDashboardTableInlineVisualizations({this.dataBars});

  final QuicksightDashboardDataBars? dataBars;

  Map<String, Object?> encode() => {'data_bars': ?dataBars?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations.data_bars` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataBars {
  const QuicksightDashboardDataBars({
    required this.fieldId,
    this.negativeColor,
    this.positiveColor,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? negativeColor;

  final TfArg<String>? positiveColor;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'negative_color': ?negativeColor?.toTfJson(),
    'positive_color': ?positiveColor?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualTableOptions {
  const QuicksightDashboardTableVisualTableOptions({
    this.orientation,
    this.cellStyle,
    this.headerStyle,
    this.rowAlternateColorOptions,
  });

  final TfArg<String>? orientation;

  final QuicksightDashboardCellStyle? cellStyle;

  final QuicksightDashboardCellStyle? headerStyle;

  final QuicksightDashboardRowAlternateColorOptions? rowAlternateColorOptions;

  Map<String, Object?> encode() => {
    'orientation': ?orientation?.toTfJson(),
    'cell_style': ?cellStyle?.encode(),
    'header_style': ?headerStyle?.encode(),
    'row_alternate_color_options': ?rowAlternateColorOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualTotalOptions {
  const QuicksightDashboardTableVisualTotalOptions({
    this.customLabel,
    this.placement,
    this.scrollStatus,
    this.totalsVisibility,
    this.totalCellStyle,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? placement;

  final TfArg<String>? scrollStatus;

  final TfArg<String>? totalsVisibility;

  final QuicksightDashboardCellStyle? totalCellStyle;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'placement': ?placement?.toTfJson(),
    'scroll_status': ?scrollStatus?.toTfJson(),
    'totals_visibility': ?totalsVisibility?.toTfJson(),
    'total_cell_style': ?totalCellStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualConditionalFormatting {
  const QuicksightDashboardTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightDashboardTableVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualConditionalFormattingOptions {
  const QuicksightDashboardTableVisualConditionalFormattingOptions({
    this.cell,
    this.row,
  });

  final QuicksightDashboardTableVisualCell? cell;

  final QuicksightDashboardRow? row;

  Map<String, Object?> encode() => {
    'cell': ?cell?.encode(),
    'row': ?row?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTableVisualCell {
  const QuicksightDashboardTableVisualCell({
    required this.fieldId,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.row` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardRow {
  const QuicksightDashboardRow({
    required this.backgroundColor,
    required this.textColor,
  });

  final QuicksightDashboardForegroundColor backgroundColor;

  final QuicksightDashboardForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTreeMapVisual {
  const QuicksightDashboardTreeMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardTreeMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTreeMapVisualChartConfiguration {
  const QuicksightDashboardTreeMapVisualChartConfiguration({
    this.colorLabelOptions,
    this.colorScale,
    this.dataLabels,
    this.fieldWells,
    this.groupLabelOptions,
    this.legend,
    this.sizeLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightDashboardCategoryLabelOptions? colorLabelOptions;

  final QuicksightDashboardColorScale? colorScale;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardTreeMapVisualFieldWells? fieldWells;

  final QuicksightDashboardCategoryLabelOptions? groupLabelOptions;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardCategoryLabelOptions? sizeLabelOptions;

  final QuicksightDashboardTreeMapVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardTooltip? tooltip;

  Map<String, Object?> encode() => {
    'color_label_options': ?colorLabelOptions?.encode(),
    'color_scale': ?colorScale?.encode(),
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'group_label_options': ?groupLabelOptions?.encode(),
    'legend': ?legend?.encode(),
    'size_label_options': ?sizeLabelOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'tooltip': ?tooltip?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTreeMapVisualFieldWells {
  const QuicksightDashboardTreeMapVisualFieldWells({
    this.treeMapAggregatedFieldWells,
  });

  final QuicksightDashboardTreeMapAggregatedFieldWells?
  treeMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'tree_map_aggregated_field_wells': ?treeMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells.tree_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTreeMapAggregatedFieldWells {
  const QuicksightDashboardTreeMapAggregatedFieldWells({
    this.colors,
    this.groups,
    this.sizes,
  });

  final QuicksightDashboardTargetValues? colors;

  final QuicksightDashboardTrendGroups? groups;

  final QuicksightDashboardTargetValues? sizes;

  Map<String, Object?> encode() => {
    'colors': ?colors?.encode(),
    'groups': ?groups?.encode(),
    'sizes': ?sizes?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardTreeMapVisualSortConfiguration {
  const QuicksightDashboardTreeMapVisualSortConfiguration({
    this.treeMapGroupItemsLimitConfiguration,
    this.treeMapSort,
  });

  final QuicksightDashboardCategoryItemsLimit?
  treeMapGroupItemsLimitConfiguration;

  final List<QuicksightDashboardCategorySort>? treeMapSort;

  Map<String, Object?> encode() => {
    'tree_map_group_items_limit_configuration':
        ?treeMapGroupItemsLimitConfiguration?.encode(),
    if (treeMapSort != null)
      'tree_map_sort': [for (final e in treeMapSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallVisual {
  const QuicksightDashboardWaterfallVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardWaterfallVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallVisualChartConfiguration {
  const QuicksightDashboardWaterfallVisualChartConfiguration({
    this.categoryAxisDisplayOptions,
    this.categoryAxisLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.primaryYAxisDisplayOptions,
    this.primaryYAxisLabelOptions,
    this.sortConfiguration,
    this.visualPalette,
    this.waterfallChartOptions,
  });

  final QuicksightDashboardCategoryAxis? categoryAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? categoryAxisLabelOptions;

  final QuicksightDashboardDataLabels? dataLabels;

  final QuicksightDashboardWaterfallVisualFieldWells? fieldWells;

  final QuicksightDashboardLegend? legend;

  final QuicksightDashboardCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightDashboardCategoryLabelOptions? primaryYAxisLabelOptions;

  final QuicksightDashboardWaterfallVisualSortConfiguration? sortConfiguration;

  final QuicksightDashboardVisualPalette? visualPalette;

  final QuicksightDashboardWaterfallChartOptions? waterfallChartOptions;

  Map<String, Object?> encode() => {
    'category_axis_display_options': ?categoryAxisDisplayOptions?.encode(),
    'category_axis_label_options': ?categoryAxisLabelOptions?.encode(),
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'legend': ?legend?.encode(),
    'primary_y_axis_display_options': ?primaryYAxisDisplayOptions?.encode(),
    'primary_y_axis_label_options': ?primaryYAxisLabelOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'visual_palette': ?visualPalette?.encode(),
    'waterfall_chart_options': ?waterfallChartOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallVisualFieldWells {
  const QuicksightDashboardWaterfallVisualFieldWells({
    this.waterfallChartAggregatedFieldWells,
  });

  final QuicksightDashboardWaterfallChartAggregatedFieldWells?
  waterfallChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'waterfall_chart_aggregated_field_wells':
        ?waterfallChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells.waterfall_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallChartAggregatedFieldWells {
  const QuicksightDashboardWaterfallChartAggregatedFieldWells({
    this.breakdowns,
    this.categories,
    this.values,
  });

  final List<QuicksightDashboardTrendGroups>? breakdowns;

  final List<QuicksightDashboardTrendGroups>? categories;

  final List<QuicksightDashboardTargetValues>? values;

  Map<String, Object?> encode() => {
    if (breakdowns != null)
      'breakdowns': [for (final e in breakdowns!) e.encode()],
    if (categories != null)
      'categories': [for (final e in categories!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallVisualSortConfiguration {
  const QuicksightDashboardWaterfallVisualSortConfiguration({
    this.breakdownItemsLimit,
    this.categorySort,
  });

  final QuicksightDashboardCategoryItemsLimit? breakdownItemsLimit;

  final List<QuicksightDashboardCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'breakdown_items_limit': ?breakdownItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.waterfall_chart_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWaterfallChartOptions {
  const QuicksightDashboardWaterfallChartOptions({this.totalBarLabel});

  final TfArg<String>? totalBarLabel;

  Map<String, Object?> encode() => {
    'total_bar_label': ?totalBarLabel?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWordCloudVisual {
  const QuicksightDashboardWordCloudVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardActions>? actions;

  final QuicksightDashboardWordCloudVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightDashboardColumnHierarchies>? columnHierarchies;

  final QuicksightDashboardSubtitle? subtitle;

  final QuicksightDashboardSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWordCloudVisualChartConfiguration {
  const QuicksightDashboardWordCloudVisualChartConfiguration({
    this.categoryLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.wordCloudOptions,
  });

  final QuicksightDashboardCategoryLabelOptions? categoryLabelOptions;

  final QuicksightDashboardWordCloudVisualFieldWells? fieldWells;

  final QuicksightDashboardFunnelChartVisualSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardWordCloudOptions? wordCloudOptions;

  Map<String, Object?> encode() => {
    'category_label_options': ?categoryLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'word_cloud_options': ?wordCloudOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWordCloudVisualFieldWells {
  const QuicksightDashboardWordCloudVisualFieldWells({
    this.wordCloudAggregatedFieldWells,
  });

  final QuicksightDashboardWordCloudAggregatedFieldWells?
  wordCloudAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'word_cloud_aggregated_field_wells': ?wordCloudAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells.word_cloud_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWordCloudAggregatedFieldWells {
  const QuicksightDashboardWordCloudAggregatedFieldWells({
    this.groupBy,
    this.size,
  });

  final List<QuicksightDashboardTrendGroups>? groupBy;

  final QuicksightDashboardTargetValues? size;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    'size': ?size?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.word_cloud_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardWordCloudOptions {
  const QuicksightDashboardWordCloudOptions({
    this.cloudLayout,
    this.maximumStringLength,
    this.wordCasing,
    this.wordOrientation,
    this.wordPadding,
    this.wordScaling,
  });

  final TfArg<String>? cloudLayout;

  final TfArg<num>? maximumStringLength;

  final TfArg<String>? wordCasing;

  final TfArg<String>? wordOrientation;

  final TfArg<String>? wordPadding;

  final TfArg<String>? wordScaling;

  Map<String, Object?> encode() => {
    'cloud_layout': ?cloudLayout?.toTfJson(),
    'maximum_string_length': ?maximumStringLength?.toTfJson(),
    'word_casing': ?wordCasing?.toTfJson(),
    'word_orientation': ?wordOrientation?.toTfJson(),
    'word_padding': ?wordPadding?.toTfJson(),
    'word_scaling': ?wordScaling?.toTfJson(),
  };
}

/// Typed helper for the `parameters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardParameters {
  const QuicksightDashboardParameters({
    this.dateTimeParameters,
    this.decimalParameters,
    this.integerParameters,
    this.stringParameters,
  });

  final List<QuicksightDashboardDateTimeParameters>? dateTimeParameters;

  final List<QuicksightDashboardDecimalParameters>? decimalParameters;

  final List<QuicksightDashboardDecimalParameters>? integerParameters;

  final List<QuicksightDashboardDateTimeParameters>? stringParameters;

  Map<String, Object?> encode() => {
    if (dateTimeParameters != null)
      'date_time_parameters': [for (final e in dateTimeParameters!) e.encode()],
    if (decimalParameters != null)
      'decimal_parameters': [for (final e in decimalParameters!) e.encode()],
    if (integerParameters != null)
      'integer_parameters': [for (final e in integerParameters!) e.encode()],
    if (stringParameters != null)
      'string_parameters': [for (final e in stringParameters!) e.encode()],
  };
}

/// Typed helper for the `parameters.date_time_parameters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDateTimeParameters {
  const QuicksightDashboardDateTimeParameters({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `parameters.decimal_parameters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDecimalParameters {
  const QuicksightDashboardDecimalParameters({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<num>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `permissions` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardPermissions {
  const QuicksightDashboardPermissions({
    required this.actions,
    required this.principal,
  });

  final TfArg<List<String>> actions;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Typed helper for the `source_entity` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSourceEntity {
  const QuicksightDashboardSourceEntity({this.sourceTemplate});

  final QuicksightDashboardSourceTemplate? sourceTemplate;

  Map<String, Object?> encode() => {
    'source_template': ?sourceTemplate?.encode(),
  };
}

/// Typed helper for the `source_entity.source_template` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSourceTemplate {
  const QuicksightDashboardSourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  final TfArg<String> arn;

  final List<QuicksightDashboardDataSetReferences> dataSetReferences;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'data_set_references': [for (final e in dataSetReferences) e.encode()],
  };
}

/// Typed helper for the `source_entity.source_template.data_set_references` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDataSetReferences {
  const QuicksightDashboardDataSetReferences({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  final TfArg<String> dataSetArn;

  final TfArg<String> dataSetPlaceholder;

  Map<String, Object?> encode() => {
    'data_set_arn': dataSetArn.toTfJson(),
    'data_set_placeholder': dataSetPlaceholder.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_dashboard`.
final class AwsQuicksightDashboard extends Resource {
  static const String tfType = 'aws_quicksight_dashboard';

  AwsQuicksightDashboard({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dashboardId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? themeArn,
    required TfArg<String> versionDescription,
    QuicksightDashboardPublishOptions? dashboardPublishOptions,
    QuicksightDashboardDefinition? definition,
    QuicksightDashboardParameters? parameters,
    List<QuicksightDashboardPermissions>? permissions,
    QuicksightDashboardSourceEntity? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'dashboard_id': dashboardId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'theme_arn': ?themeArn,
           'version_description': versionDescription,
           if (dashboardPublishOptions != null)
             'dashboard_publish_options': TfArg.literal(
               dashboardPublishOptions.encode(),
             ),
           if (definition != null)
             'definition': TfArg.literal(definition.encode()),
           if (parameters != null)
             'parameters': TfArg.literal(parameters.encode()),
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
           if (sourceEntity != null)
             'source_entity': TfArg.literal(sourceEntity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightDashboardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightDashboard>`.
  RefTo<AwsQuicksightDashboard> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_published_time` attribute.
  TfRef<String> get lastPublishedTime =>
      TfRef.attribute<String>(this, 'last_published_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `source_entity_arn` attribute.
  TfRef<String> get sourceEntityArn =>
      TfRef.attribute<String>(this, 'source_entity_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `dashboard_id` attribute.
  TfRef<String> get dashboardIdRef =>
      TfRef.attribute<String>(this, 'dashboard_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `theme_arn` attribute.
  TfRef<String> get themeArnRef => TfRef.attribute<String>(this, 'theme_arn');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescriptionRef =>
      TfRef.attribute<String>(this, 'version_description');
}
