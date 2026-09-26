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
final class QuicksightDashboardDashboardPublishOptions {
  const QuicksightDashboardDashboardPublishOptions({
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

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  adHocFilteringOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  dataPointDrillUpDownOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  dataPointMenuLabelOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  dataPointTooltipOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  exportToCsvOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  exportWithHiddenFieldsOption;

  final QuicksightDashboardDashboardPublishOptionsSheetControlsOption?
  sheetControlsOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  sheetLayoutElementMaximizationOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  visualAxisSortOption;

  final QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption?
  visualMenuOption;

  Map<String, Object?> encode() => {
    if (adHocFilteringOption != null)
      'ad_hoc_filtering_option': adHocFilteringOption!.encode(),
    if (dataPointDrillUpDownOption != null)
      'data_point_drill_up_down_option': dataPointDrillUpDownOption!.encode(),
    if (dataPointMenuLabelOption != null)
      'data_point_menu_label_option': dataPointMenuLabelOption!.encode(),
    if (dataPointTooltipOption != null)
      'data_point_tooltip_option': dataPointTooltipOption!.encode(),
    if (exportToCsvOption != null)
      'export_to_csv_option': exportToCsvOption!.encode(),
    if (exportWithHiddenFieldsOption != null)
      'export_with_hidden_fields_option': exportWithHiddenFieldsOption!
          .encode(),
    if (sheetControlsOption != null)
      'sheet_controls_option': sheetControlsOption!.encode(),
    if (sheetLayoutElementMaximizationOption != null)
      'sheet_layout_element_maximization_option':
          sheetLayoutElementMaximizationOption!.encode(),
    if (visualAxisSortOption != null)
      'visual_axis_sort_option': visualAxisSortOption!.encode(),
    if (visualMenuOption != null)
      'visual_menu_option': visualMenuOption!.encode(),
  };
}

/// Typed helper for the `dashboard_publish_options.ad_hoc_filtering_option` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption {
  const QuicksightDashboardDashboardPublishOptionsAdHocFilteringOption({
    this.availabilityStatus,
  });

  final TfArg<String>? availabilityStatus;

  Map<String, Object?> encode() => {
    if (availabilityStatus != null)
      'availability_status': availabilityStatus!.toTfJson(),
  };
}

/// Typed helper for the `dashboard_publish_options.sheet_controls_option` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDashboardPublishOptionsSheetControlsOption {
  const QuicksightDashboardDashboardPublishOptionsSheetControlsOption({
    this.visibilityState,
  });

  final TfArg<String>? visibilityState;

  Map<String, Object?> encode() => {
    if (visibilityState != null)
      'visibility_state': visibilityState!.toTfJson(),
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

  final QuicksightDashboardDefinitionAnalysisDefaults? analysisDefaults;

  final List<QuicksightDashboardDefinitionCalculatedFields>? calculatedFields;

  final List<QuicksightDashboardDefinitionColumnConfigurations>?
  columnConfigurations;

  final List<QuicksightDashboardDefinitionDataSetIdentifiersDeclarations>
  dataSetIdentifiersDeclarations;

  final List<QuicksightDashboardDefinitionFilterGroups>? filterGroups;

  final List<QuicksightDashboardDefinitionParameterDeclarations>?
  parameterDeclarations;

  final List<QuicksightDashboardDefinitionSheets>? sheets;

  Map<String, Object?> encode() => {
    if (analysisDefaults != null)
      'analysis_defaults': analysisDefaults!.encode(),
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
final class QuicksightDashboardDefinitionAnalysisDefaults {
  const QuicksightDashboardDefinitionAnalysisDefaults({
    required this.defaultNewSheetConfiguration,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfiguration
  defaultNewSheetConfiguration;

  Map<String, Object?> encode() => {
    'default_new_sheet_configuration': defaultNewSheetConfiguration.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfiguration {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfiguration({
    this.sheetContentType,
    this.interactiveLayoutConfiguration,
    this.paginatedLayoutConfiguration,
  });

  final TfArg<String>? sheetContentType;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration?
  interactiveLayoutConfiguration;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration?
  paginatedLayoutConfiguration;

  Map<String, Object?> encode() => {
    if (sheetContentType != null)
      'sheet_content_type': sheetContentType!.toTfJson(),
    if (interactiveLayoutConfiguration != null)
      'interactive_layout_configuration': interactiveLayoutConfiguration!
          .encode(),
    if (paginatedLayoutConfiguration != null)
      'paginated_layout_configuration': paginatedLayoutConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration({
    this.freeForm,
    this.grid,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm?
  freeForm;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid?
  grid;

  Map<String, Object?> encode() => {
    if (freeForm != null) 'free_form': freeForm!.encode(),
    if (grid != null) 'grid': grid!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm({
    required this.canvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (screenCanvasSizeOptions != null)
      'screen_canvas_size_options': screenCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions({
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
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid({
    required this.canvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (screenCanvasSizeOptions != null)
      'screen_canvas_size_options': screenCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions({
    this.optimizedViewPortWidth,
    required this.resizeOption,
  });

  final TfArg<String>? optimizedViewPortWidth;

  final TfArg<String> resizeOption;

  Map<String, Object?> encode() => {
    if (optimizedViewPortWidth != null)
      'optimized_view_port_width': optimizedViewPortWidth!.toTfJson(),
    'resize_option': resizeOption.toTfJson(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration({
    this.sectionBased,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased?
  sectionBased;

  Map<String, Object?> encode() => {
    if (sectionBased != null) 'section_based': sectionBased!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased({
    required this.canvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions({
    this.paperCanvasSizeOptions,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions?
  paperCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (paperCanvasSizeOptions != null)
      'paper_canvas_size_options': paperCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions({
    this.paperOrientation,
    this.paperSize,
    this.paperMargin,
  });

  final TfArg<String>? paperOrientation;

  final TfArg<String>? paperSize;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin?
  paperMargin;

  Map<String, Object?> encode() => {
    if (paperOrientation != null)
      'paper_orientation': paperOrientation!.toTfJson(),
    if (paperSize != null) 'paper_size': paperSize!.toTfJson(),
    if (paperMargin != null) 'paper_margin': paperMargin!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options.paper_margin` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin {
  const QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin({
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
    if (bottom != null) 'bottom': bottom!.toTfJson(),
    if (left != null) 'left': left!.toTfJson(),
    if (right != null) 'right': right!.toTfJson(),
    if (top != null) 'top': top!.toTfJson(),
  };
}

/// Typed helper for the `definition.calculated_fields` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionCalculatedFields {
  const QuicksightDashboardDefinitionCalculatedFields({
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
final class QuicksightDashboardDefinitionColumnConfigurations {
  const QuicksightDashboardDefinitionColumnConfigurations({
    this.role,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? role;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (role != null) 'role': role!.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.column` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsColumn {
  const QuicksightDashboardDefinitionColumnConfigurationsColumn({
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
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfiguration({
    this.dateTimeFormatConfiguration,
    this.numberFormatConfiguration,
    this.stringFormatConfiguration,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
  dateTimeFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
  numberFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
  stringFormatConfiguration;

  Map<String, Object?> encode() => {
    if (dateTimeFormatConfiguration != null)
      'date_time_format_configuration': dateTimeFormatConfiguration!.encode(),
    if (numberFormatConfiguration != null)
      'number_format_configuration': numberFormatConfiguration!.encode(),
    if (stringFormatConfiguration != null)
      'string_format_configuration': stringFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration({
    this.dateTimeFormat,
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    if (dateTimeFormat != null) 'date_time_format': dateTimeFormat!.toTfJson(),
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (numericFormatConfiguration != null)
      'numeric_format_configuration': numericFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.null_value_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration({
    required this.nullString,
  });

  final TfArg<String> nullString;

  Map<String, Object?> encode() => {'null_string': nullString.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration({
    this.currencyDisplayFormatConfiguration,
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration?
  currencyDisplayFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    if (currencyDisplayFormatConfiguration != null)
      'currency_display_format_configuration':
          currencyDisplayFormatConfiguration!.encode(),
    if (numberDisplayFormatConfiguration != null)
      'number_display_format_configuration': numberDisplayFormatConfiguration!
          .encode(),
    if (percentageDisplayFormatConfiguration != null)
      'percentage_display_format_configuration':
          percentageDisplayFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration({
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

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
  separatorConfiguration;

  Map<String, Object?> encode() => {
    if (numberScale != null) 'number_scale': numberScale!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (symbol != null) 'symbol': symbol!.toTfJson(),
    if (decimalPlacesConfiguration != null)
      'decimal_places_configuration': decimalPlacesConfiguration!.encode(),
    if (negativeValueConfiguration != null)
      'negative_value_configuration': negativeValueConfiguration!.encode(),
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (separatorConfiguration != null)
      'separator_configuration': separatorConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.decimal_places_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration({
    required this.decimalPlaces,
  });

  final TfArg<num> decimalPlaces;

  Map<String, Object?> encode() => {'decimal_places': decimalPlaces.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.negative_value_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration({
    required this.displayMode,
  });

  final TfArg<String> displayMode;

  Map<String, Object?> encode() => {'display_mode': displayMode.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration({
    this.decimalSeparator,
    this.thousandsSeparator,
  });

  final TfArg<String>? decimalSeparator;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator?
  thousandsSeparator;

  Map<String, Object?> encode() => {
    if (decimalSeparator != null)
      'decimal_separator': decimalSeparator!.toTfJson(),
    if (thousandsSeparator != null)
      'thousands_separator': thousandsSeparator!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration.thousands_separator` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator({
    this.symbol,
    this.visibility,
  });

  final TfArg<String>? symbol;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (symbol != null) 'symbol': symbol!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.number_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration({
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

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
  separatorConfiguration;

  Map<String, Object?> encode() => {
    if (numberScale != null) 'number_scale': numberScale!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (decimalPlacesConfiguration != null)
      'decimal_places_configuration': decimalPlacesConfiguration!.encode(),
    if (negativeValueConfiguration != null)
      'negative_value_configuration': negativeValueConfiguration!.encode(),
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (separatorConfiguration != null)
      'separator_configuration': separatorConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.percentage_display_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration({
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
  separatorConfiguration;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (decimalPlacesConfiguration != null)
      'decimal_places_configuration': decimalPlacesConfiguration!.encode(),
    if (negativeValueConfiguration != null)
      'negative_value_configuration': negativeValueConfiguration!.encode(),
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (separatorConfiguration != null)
      'separator_configuration': separatorConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.number_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration({
    this.numericFormatConfiguration,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    if (numericFormatConfiguration != null)
      'numeric_format_configuration': numericFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.string_format_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration {
  const QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration({
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (numericFormatConfiguration != null)
      'numeric_format_configuration': numericFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.data_set_identifiers_declarations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionDataSetIdentifiersDeclarations {
  const QuicksightDashboardDefinitionDataSetIdentifiersDeclarations({
    this.dataSetArn,
    this.identifier,
  });

  final TfArg<String>? dataSetArn;

  final TfArg<String>? identifier;

  Map<String, Object?> encode() => {
    if (dataSetArn != null) 'data_set_arn': dataSetArn!.toTfJson(),
    if (identifier != null) 'identifier': identifier!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroups {
  const QuicksightDashboardDefinitionFilterGroups({
    required this.crossDataset,
    required this.filterGroupId,
    this.status,
    required this.filters,
    required this.scopeConfiguration,
  });

  final TfArg<String> crossDataset;

  final TfArg<String> filterGroupId;

  final TfArg<String>? status;

  final List<QuicksightDashboardDefinitionFilterGroupsFilters> filters;

  final QuicksightDashboardDefinitionFilterGroupsScopeConfiguration
  scopeConfiguration;

  Map<String, Object?> encode() => {
    'cross_dataset': crossDataset.toTfJson(),
    'filter_group_id': filterGroupId.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    'filters': [for (final e in filters) e.encode()],
    'scope_configuration': scopeConfiguration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFilters {
  const QuicksightDashboardDefinitionFilterGroupsFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.numericRangeFilter,
    this.relativeDatesFilter,
    this.timeEqualityFilter,
    this.timeRangeFilter,
    this.topBottomFilter,
  });

  final QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilter?
  categoryFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilter?
  numericRangeFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilter?
  relativeDatesFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersTimeEqualityFilter?
  timeEqualityFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilter?
  timeRangeFilter;

  final QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilter?
  topBottomFilter;

  Map<String, Object?> encode() => {
    if (categoryFilter != null) 'category_filter': categoryFilter!.encode(),
    if (numericEqualityFilter != null)
      'numeric_equality_filter': numericEqualityFilter!.encode(),
    if (numericRangeFilter != null)
      'numeric_range_filter': numericRangeFilter!.encode(),
    if (relativeDatesFilter != null)
      'relative_dates_filter': relativeDatesFilter!.encode(),
    if (timeEqualityFilter != null)
      'time_equality_filter': timeEqualityFilter!.encode(),
    if (timeRangeFilter != null) 'time_range_filter': timeRangeFilter!.encode(),
    if (topBottomFilter != null) 'top_bottom_filter': topBottomFilter!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilter({
    required this.filterId,
    required this.column,
    required this.configuration,
  });

  final TfArg<String> filterId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfiguration
  configuration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'column': column.encode(),
    'configuration': configuration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfiguration({
    this.customFilterConfiguration,
    this.customFilterListConfiguration,
    this.filterListConfiguration,
  });

  final QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration?
  customFilterConfiguration;

  final QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration?
  customFilterListConfiguration;

  final QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration?
  filterListConfiguration;

  Map<String, Object?> encode() => {
    if (customFilterConfiguration != null)
      'custom_filter_configuration': customFilterConfiguration!.encode(),
    if (customFilterListConfiguration != null)
      'custom_filter_list_configuration': customFilterListConfiguration!
          .encode(),
    if (filterListConfiguration != null)
      'filter_list_configuration': filterListConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration({
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
    if (categoryValue != null) 'category_value': categoryValue!.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_list_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration({
    this.categoryValues,
    required this.matchOperator,
    required this.nullOption,
    this.selectAllOptions,
  });

  final TfArg<List<Object?>>? categoryValues;

  final TfArg<String> matchOperator;

  final TfArg<String> nullOption;

  final TfArg<String>? selectAllOptions;

  Map<String, Object?> encode() => {
    if (categoryValues != null) 'category_values': categoryValues!.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.filter_list_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration({
    this.categoryValues,
    required this.matchOperator,
    this.selectAllOptions,
  });

  final TfArg<List<Object?>>? categoryValues;

  final TfArg<String> matchOperator;

  final TfArg<String>? selectAllOptions;

  Map<String, Object?> encode() => {
    if (categoryValues != null) 'category_values': categoryValues!.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilter({
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

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'match_operator': matchOperator.toTfJson(),
    'null_option': nullOption.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction({
    this.categoricalAggregationFunction,
    this.dateAggregationFunction,
    this.numericalAggregationFunction,
  });

  final TfArg<String>? categoricalAggregationFunction;

  final TfArg<String>? dateAggregationFunction;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction?
  numericalAggregationFunction;

  Map<String, Object?> encode() => {
    if (categoricalAggregationFunction != null)
      'categorical_aggregation_function': categoricalAggregationFunction!
          .toTfJson(),
    if (dateAggregationFunction != null)
      'date_aggregation_function': dateAggregationFunction!.toTfJson(),
    if (numericalAggregationFunction != null)
      'numerical_aggregation_function': numericalAggregationFunction!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction({
    this.simpleNumericalAggregation,
    this.percentileAggregation,
  });

  final TfArg<String>? simpleNumericalAggregation;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation?
  percentileAggregation;

  Map<String, Object?> encode() => {
    if (simpleNumericalAggregation != null)
      'simple_numerical_aggregation': simpleNumericalAggregation!.toTfJson(),
    if (percentileAggregation != null)
      'percentile_aggregation': percentileAggregation!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function.percentile_aggregation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation({
    this.percentileValue,
  });

  final TfArg<num>? percentileValue;

  Map<String, Object?> encode() => {
    if (percentileValue != null)
      'percentile_value': percentileValue!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilter({
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

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum?
  rangeMaximum;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum?
  rangeMinimum;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    if (includeMaximum != null) 'include_maximum': includeMaximum!.toTfJson(),
    if (includeMinimum != null) 'include_minimum': includeMinimum!.toTfJson(),
    'null_option': nullOption.toTfJson(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.toTfJson(),
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.encode(),
    'column': column.encode(),
    if (rangeMaximum != null) 'range_maximum': rangeMaximum!.encode(),
    if (rangeMinimum != null) 'range_minimum': rangeMinimum!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter.range_maximum` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum {
  const QuicksightDashboardDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum({
    this.parameter,
    this.staticValue,
  });

  final TfArg<String>? parameter;

  final TfArg<num>? staticValue;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (staticValue != null) 'static_value': staticValue!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilter({
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

  final QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration
  anchorDateConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration?
  excludePeriodConfiguration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'minimum_granularity': minimumGranularity.toTfJson(),
    'null_option': nullOption.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
    'relative_date_type': relativeDateType.toTfJson(),
    if (relativeDateValue != null)
      'relative_date_value': relativeDateValue!.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'anchor_date_configuration': anchorDateConfiguration.encode(),
    'column': column.encode(),
    if (excludePeriodConfiguration != null)
      'exclude_period_configuration': excludePeriodConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter.anchor_date_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration({
    this.anchorOption,
    this.parameterName,
  });

  final TfArg<String>? anchorOption;

  final TfArg<String>? parameterName;

  Map<String, Object?> encode() => {
    if (anchorOption != null) 'anchor_option': anchorOption!.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter.exclude_period_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration({
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
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersTimeEqualityFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersTimeEqualityFilter({
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

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilter({
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

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration?
  excludePeriodConfiguration;

  final QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue?
  rangeMaximumValue;

  final QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue?
  rangeMinimumValue;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    if (includeMaximum != null) 'include_maximum': includeMaximum!.toTfJson(),
    if (includeMinimum != null) 'include_minimum': includeMinimum!.toTfJson(),
    'null_option': nullOption.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'column': column.encode(),
    if (excludePeriodConfiguration != null)
      'exclude_period_configuration': excludePeriodConfiguration!.encode(),
    if (rangeMaximumValue != null)
      'range_maximum_value': rangeMaximumValue!.encode(),
    if (rangeMinimumValue != null)
      'range_minimum_value': rangeMinimumValue!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter.range_maximum_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue {
  const QuicksightDashboardDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue({
    this.parameter,
    this.staticValue,
    this.rollingDate,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? staticValue;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate?
  rollingDate;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (staticValue != null) 'static_value': staticValue!.toTfJson(),
    if (rollingDate != null) 'rolling_date': rollingDate!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.rolling_date` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate {
  const QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate({
    this.dataSetIdentifier,
    required this.expression,
  });

  final TfArg<String>? dataSetIdentifier;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    if (dataSetIdentifier != null)
      'data_set_identifier': dataSetIdentifier!.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.top_bottom_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilter {
  const QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilter({
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

  final List<
    QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration
  >
  aggregationSortConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
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
final class QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration({
    required this.sortDirection,
    required this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> sortDirection;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction
  aggregationFunction;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'sort_direction': sortDirection.toTfJson(),
    'aggregation_function': aggregationFunction.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsScopeConfiguration {
  const QuicksightDashboardDefinitionFilterGroupsScopeConfiguration({
    this.selectedSheets,
  });

  final QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheets?
  selectedSheets;

  Map<String, Object?> encode() => {
    if (selectedSheets != null) 'selected_sheets': selectedSheets!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheets {
  const QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheets({
    this.sheetVisualScopingConfigurations,
  });

  final List<
    QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations
  >?
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
final class QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations {
  const QuicksightDashboardDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations({
    required this.scope,
    required this.sheetId,
    this.visualIds,
  });

  final TfArg<String> scope;

  final TfArg<String> sheetId;

  final TfArg<List<Object?>>? visualIds;

  Map<String, Object?> encode() => {
    'scope': scope.toTfJson(),
    'sheet_id': sheetId.toTfJson(),
    if (visualIds != null) 'visual_ids': visualIds!.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionParameterDeclarations {
  const QuicksightDashboardDefinitionParameterDeclarations({
    this.dateTimeParameterDeclaration,
    this.decimalParameterDeclaration,
    this.integerParameterDeclaration,
    this.stringParameterDeclaration,
  });

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclaration?
  dateTimeParameterDeclaration;

  final QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclaration?
  decimalParameterDeclaration;

  final QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclaration?
  integerParameterDeclaration;

  final QuicksightDashboardDefinitionParameterDeclarationsStringParameterDeclaration?
  stringParameterDeclaration;

  Map<String, Object?> encode() => {
    if (dateTimeParameterDeclaration != null)
      'date_time_parameter_declaration': dateTimeParameterDeclaration!.encode(),
    if (decimalParameterDeclaration != null)
      'decimal_parameter_declaration': decimalParameterDeclaration!.encode(),
    if (integerParameterDeclaration != null)
      'integer_parameter_declaration': integerParameterDeclaration!.encode(),
    if (stringParameterDeclaration != null)
      'string_parameter_declaration': stringParameterDeclaration!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclaration {
  const QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclaration({
    required this.name,
    this.timeGranularity,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String>? timeGranularity;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (timeGranularity != null)
      'time_granularity': timeGranularity!.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValues {
  const QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
    this.rollingDate,
  });

  final TfArg<List<Object?>>? staticValues;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue?
  dynamicValue;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate?
  rollingDate;

  Map<String, Object?> encode() => {
    if (staticValues != null) 'static_values': staticValues!.toTfJson(),
    if (dynamicValue != null) 'dynamic_value': dynamicValue!.encode(),
    if (rollingDate != null) 'rolling_date': rollingDate!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.dynamic_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue {
  const QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue({
    required this.defaultValueColumn,
    this.groupNameColumn,
    this.userNameColumn,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsColumn
  defaultValueColumn;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn?
  groupNameColumn;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn? userNameColumn;

  Map<String, Object?> encode() => {
    'default_value_column': defaultValueColumn.encode(),
    if (groupNameColumn != null) 'group_name_column': groupNameColumn!.encode(),
    if (userNameColumn != null) 'user_name_column': userNameColumn!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationValuesWhenUnset {
  const QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationValuesWhenUnset({
    this.customValue,
    this.valueWhenUnsetOption,
  });

  final TfArg<String>? customValue;

  final TfArg<String>? valueWhenUnsetOption;

  Map<String, Object?> encode() => {
    if (customValue != null) 'custom_value': customValue!.toTfJson(),
    if (valueWhenUnsetOption != null)
      'value_when_unset_option': valueWhenUnsetOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclaration {
  const QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.default_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationDefaultValues {
  const QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<Object?>>? staticValues;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue?
  dynamicValue;

  Map<String, Object?> encode() => {
    if (staticValues != null) 'static_values': staticValues!.toTfJson(),
    if (dynamicValue != null) 'dynamic_value': dynamicValue!.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationValuesWhenUnset {
  const QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationValuesWhenUnset({
    this.customValue,
    this.valueWhenUnsetOption,
  });

  final TfArg<num>? customValue;

  final TfArg<String>? valueWhenUnsetOption;

  Map<String, Object?> encode() => {
    if (customValue != null) 'custom_value': customValue!.toTfJson(),
    if (valueWhenUnsetOption != null)
      'value_when_unset_option': valueWhenUnsetOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.parameter_declarations.string_parameter_declaration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionParameterDeclarationsStringParameterDeclaration {
  const QuicksightDashboardDefinitionParameterDeclarationsStringParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightDashboardDefinitionParameterDeclarationsDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightDashboardDefinitionParameterDeclarationsDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.sheets` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheets {
  const QuicksightDashboardDefinitionSheets({
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

  final List<QuicksightDashboardDefinitionSheetsFilterControls>? filterControls;

  final QuicksightDashboardDefinitionSheetsLayouts? layouts;

  final List<QuicksightDashboardDefinitionSheetsParameterControls>?
  parameterControls;

  final QuicksightDashboardDefinitionSheetsSheetControlLayouts?
  sheetControlLayouts;

  final List<QuicksightDashboardDefinitionSheetsTextBoxes>? textBoxes;

  final List<QuicksightDashboardDefinitionSheetsVisuals>? visuals;

  Map<String, Object?> encode() => {
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'sheet_id': sheetId.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    if (filterControls != null)
      'filter_controls': [for (final e in filterControls!) e.encode()],
    if (layouts != null) 'layouts': layouts!.encode(),
    if (parameterControls != null)
      'parameter_controls': [for (final e in parameterControls!) e.encode()],
    if (sheetControlLayouts != null)
      'sheet_control_layouts': sheetControlLayouts!.encode(),
    if (textBoxes != null)
      'text_boxes': [for (final e in textBoxes!) e.encode()],
    if (visuals != null) 'visuals': [for (final e in visuals!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControls {
  const QuicksightDashboardDefinitionSheetsFilterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.relativeDateTime,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePicker?
  dateTimePicker;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdown? dropdown;

  final QuicksightDashboardDefinitionSheetsFilterControlsList? list;

  final QuicksightDashboardDefinitionSheetsFilterControlsRelativeDateTime?
  relativeDateTime;

  final QuicksightDashboardDefinitionSheetsFilterControlsSlider? slider;

  final QuicksightDashboardDefinitionSheetsFilterControlsTextArea? textArea;

  final QuicksightDashboardDefinitionSheetsFilterControlsTextField? textField;

  Map<String, Object?> encode() => {
    if (dateTimePicker != null) 'date_time_picker': dateTimePicker!.encode(),
    if (dropdown != null) 'dropdown': dropdown!.encode(),
    if (list != null) 'list': list!.encode(),
    if (relativeDateTime != null)
      'relative_date_time': relativeDateTime!.encode(),
    if (slider != null) 'slider': slider!.encode(),
    if (textArea != null) 'text_area': textArea!.encode(),
    if (textField != null) 'text_field': textField!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePicker {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePicker({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptions({
    this.dateTimeFormat,
    this.titleOptions,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (dateTimeFormat != null) 'date_time_format': dateTimeFormat!.toTfJson(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions({
    this.customLabel,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration({
    this.fontColor,
    this.fontDecoration,
    this.fontStyle,
    this.fontSize,
    this.fontWeight,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? fontDecoration;

  final TfArg<String>? fontStyle;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize?
  fontSize;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontWeight?
  fontWeight;

  Map<String, Object?> encode() => {
    if (fontColor != null) 'font_color': fontColor!.toTfJson(),
    if (fontDecoration != null) 'font_decoration': fontDecoration!.toTfJson(),
    if (fontStyle != null) 'font_style': fontStyle!.toTfJson(),
    if (fontSize != null) 'font_size': fontSize!.encode(),
    if (fontWeight != null) 'font_weight': fontWeight!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_size` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize({
    this.relative,
  });

  final TfArg<String>? relative;

  Map<String, Object?> encode() => {
    if (relative != null) 'relative': relative!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_weight` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontWeight {
  const QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontWeight({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdown {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdown({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptions?
  displayOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownSelectableValues?
  selectableValues;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (cascadingControlConfiguration != null)
      'cascading_control_configuration': cascadingControlConfiguration!
          .encode(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
    if (selectableValues != null)
      'selectable_values': selectableValues!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration({
    this.sourceControls,
  });

  final List<
    QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls
  >?
  sourceControls;

  Map<String, Object?> encode() => {
    if (sourceControls != null)
      'source_controls': [for (final e in sourceControls!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration.source_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls({
    this.sourceSheetControlId,
    required this.columnToMatch,
  });

  final TfArg<String>? sourceSheetControlId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn columnToMatch;

  Map<String, Object?> encode() => {
    if (sourceSheetControlId != null)
      'source_sheet_control_id': sourceSheetControlId!.toTfJson(),
    'column_to_match': columnToMatch.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptions({
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  selectAllOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options.select_all_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions({
    this.visibility,
  });

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsDropdownSelectableValues {
  const QuicksightDashboardDefinitionSheetsFilterControlsDropdownSelectableValues({
    this.values,
  });

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.list` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsList {
  const QuicksightDashboardDefinitionSheetsFilterControlsList({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsListDisplayOptions?
  displayOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownSelectableValues?
  selectableValues;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (cascadingControlConfiguration != null)
      'cascading_control_configuration': cascadingControlConfiguration!
          .encode(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
    if (selectableValues != null)
      'selectable_values': selectableValues!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.list.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsListDisplayOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsListDisplayOptions({
    this.searchOptions,
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  searchOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  selectAllOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (searchOptions != null) 'search_options': searchOptions!.encode(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.relative_date_time` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsRelativeDateTime {
  const QuicksightDashboardDefinitionSheetsFilterControlsRelativeDateTime({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsSlider {
  const QuicksightDashboardDefinitionSheetsFilterControlsSlider({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsSliderDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'maximum_value': maximumValue.toTfJson(),
    'minimum_value': minimumValue.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'step_size': stepSize.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsSliderDisplayOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsSliderDisplayOptions({
    this.titleOptions,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsTextArea {
  const QuicksightDashboardDefinitionSheetsFilterControlsTextArea({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area.display_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions {
  const QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions({
    this.placeholderOptions,
    this.titleOptions,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  placeholderOptions;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (placeholderOptions != null)
      'placeholder_options': placeholderOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsFilterControlsTextField {
  const QuicksightDashboardDefinitionSheetsFilterControlsTextField({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayouts {
  const QuicksightDashboardDefinitionSheetsLayouts({
    required this.configuration,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfiguration {
  const QuicksightDashboardDefinitionSheetsLayoutsConfiguration({
    this.freeFormLayout,
    this.gridLayout,
    this.sectionBasedLayout,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayout?
  freeFormLayout;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayout?
  gridLayout;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayout?
  sectionBasedLayout;

  Map<String, Object?> encode() => {
    if (freeFormLayout != null) 'free_form_layout': freeFormLayout!.encode(),
    if (gridLayout != null) 'grid_layout': gridLayout!.encode(),
    if (sectionBasedLayout != null)
      'section_based_layout': sectionBasedLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayout {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions?
  canvasSizeOptions;

  final List<
    QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    if (canvasSizeOptions != null)
      'canvas_size_options': canvasSizeOptions!.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements({
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

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
  backgroundStyle;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
  borderStyle;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  loadingAnimation;

  final List<
    QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules
  >?
  renderingRules;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
  selectedBorderStyle;

  Map<String, Object?> encode() => {
    'element_id': elementId.toTfJson(),
    'element_type': elementType.toTfJson(),
    'height': height.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    'width': width.toTfJson(),
    'x_axis_location': xAxisLocation.toTfJson(),
    'y_axis_location': yAxisLocation.toTfJson(),
    if (backgroundStyle != null) 'background_style': backgroundStyle!.encode(),
    if (borderStyle != null) 'border_style': borderStyle!.encode(),
    if (loadingAnimation != null)
      'loading_animation': loadingAnimation!.encode(),
    if (renderingRules != null)
      'rendering_rules': [for (final e in renderingRules!) e.encode()],
    if (selectedBorderStyle != null)
      'selected_border_style': selectedBorderStyle!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.background_style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle({
    this.color,
    this.visibility,
  });

  final TfArg<String>? color;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.rendering_rules` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules({
    required this.expression,
    required this.configurationOverrides,
  });

  final TfArg<String> expression;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions
  configurationOverrides;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'configuration_overrides': configurationOverrides.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayout {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions?
  canvasSizeOptions;

  final List<
    QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    if (canvasSizeOptions != null)
      'canvas_size_options': canvasSizeOptions!.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout.elements` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayoutElements {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayoutElements({
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
    if (columnIndex != null) 'column_index': columnIndex!.toTfJson(),
    'column_span': columnSpan.toTfJson(),
    'element_id': elementId.toTfJson(),
    'element_type': elementType.toTfJson(),
    if (rowIndex != null) 'row_index': rowIndex!.toTfJson(),
    'row_span': rowSpan.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayout {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayout({
    required this.bodySections,
    this.canvasSizeOptions,
    required this.footerSections,
    required this.headerSections,
  });

  final List<
    QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections
  >
  bodySections;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions?
  canvasSizeOptions;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections
  footerSections;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections
  headerSections;

  Map<String, Object?> encode() => {
    'body_sections': [for (final e in bodySections) e.encode()],
    if (canvasSizeOptions != null)
      'canvas_size_options': canvasSizeOptions!.encode(),
    'footer_sections': footerSections.encode(),
    'header_sections': headerSections.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections({
    required this.sectionId,
    required this.content,
    this.pageBreakConfiguration,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent
  content;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration?
  pageBreakConfiguration;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle?
  style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'content': content.encode(),
    if (pageBreakConfiguration != null)
      'page_break_configuration': pageBreakConfiguration!.encode(),
    if (style != null) 'style': style!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent({
    this.layout,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout?
  layout;

  Map<String, Object?> encode() => {
    if (layout != null) 'layout': layout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout({
    required this.freeFormLayout,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout
  freeFormLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': freeFormLayout.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout.free_form_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout({
    required this.elements,
  });

  final List<
    QuicksightDashboardDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration({
    this.after,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter?
  after;

  Map<String, Object?> encode() => {
    if (after != null) 'after': after!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration.after` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle({
    this.height,
    this.padding,
  });

  final TfArg<String>? height;

  final QuicksightDashboardDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin?
  padding;

  Map<String, Object?> encode() => {
    if (height != null) 'height': height!.toTfJson(),
    if (padding != null) 'padding': padding!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections {
  const QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections({
    required this.sectionId,
    this.layout,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout?
  layout;

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle?
  style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    if (layout != null) 'layout': layout!.encode(),
    if (style != null) 'style': style!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControls {
  const QuicksightDashboardDefinitionSheetsParameterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightDashboardDefinitionSheetsParameterControlsDateTimePicker?
  dateTimePicker;

  final QuicksightDashboardDefinitionSheetsParameterControlsDropdown? dropdown;

  final QuicksightDashboardDefinitionSheetsParameterControlsList? list;

  final QuicksightDashboardDefinitionSheetsParameterControlsSlider? slider;

  final QuicksightDashboardDefinitionSheetsParameterControlsTextArea? textArea;

  final QuicksightDashboardDefinitionSheetsParameterControlsTextField?
  textField;

  Map<String, Object?> encode() => {
    if (dateTimePicker != null) 'date_time_picker': dateTimePicker!.encode(),
    if (dropdown != null) 'dropdown': dropdown!.encode(),
    if (list != null) 'list': list!.encode(),
    if (slider != null) 'slider': slider!.encode(),
    if (textArea != null) 'text_area': textArea!.encode(),
    if (textField != null) 'text_field': textField!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.date_time_picker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsDateTimePicker {
  const QuicksightDashboardDefinitionSheetsParameterControlsDateTimePicker({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsDropdown {
  const QuicksightDashboardDefinitionSheetsParameterControlsDropdown({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptions?
  displayOptions;

  final QuicksightDashboardDefinitionSheetsParameterControlsDropdownSelectableValues?
  selectableValues;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (cascadingControlConfiguration != null)
      'cascading_control_configuration': cascadingControlConfiguration!
          .encode(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
    if (selectableValues != null)
      'selectable_values': selectableValues!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsDropdownSelectableValues {
  const QuicksightDashboardDefinitionSheetsParameterControlsDropdownSelectableValues({
    this.values,
    this.linkToDataSetColumn,
  });

  final TfArg<List<Object?>>? values;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn?
  linkToDataSetColumn;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.toTfJson(),
    if (linkToDataSetColumn != null)
      'link_to_data_set_column': linkToDataSetColumn!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.list` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsList {
  const QuicksightDashboardDefinitionSheetsParameterControlsList({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsListDisplayOptions?
  displayOptions;

  final QuicksightDashboardDefinitionSheetsParameterControlsDropdownSelectableValues?
  selectableValues;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (cascadingControlConfiguration != null)
      'cascading_control_configuration': cascadingControlConfiguration!
          .encode(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
    if (selectableValues != null)
      'selectable_values': selectableValues!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.slider` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsSlider {
  const QuicksightDashboardDefinitionSheetsParameterControlsSlider({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsSliderDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'maximum_value': maximumValue.toTfJson(),
    'minimum_value': minimumValue.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'step_size': stepSize.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_area` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsTextArea {
  const QuicksightDashboardDefinitionSheetsParameterControlsTextArea({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsParameterControlsTextField {
  const QuicksightDashboardDefinitionSheetsParameterControlsTextField({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightDashboardDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.sheet_control_layouts` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsSheetControlLayouts {
  const QuicksightDashboardDefinitionSheetsSheetControlLayouts({
    required this.configuration,
  });

  final QuicksightDashboardDefinitionSheetsSheetControlLayoutsConfiguration
  configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.sheet_control_layouts.configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsSheetControlLayoutsConfiguration {
  const QuicksightDashboardDefinitionSheetsSheetControlLayoutsConfiguration({
    this.gridLayout,
  });

  final QuicksightDashboardDefinitionSheetsLayoutsConfigurationGridLayout?
  gridLayout;

  Map<String, Object?> encode() => {
    if (gridLayout != null) 'grid_layout': gridLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.text_boxes` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsTextBoxes {
  const QuicksightDashboardDefinitionSheetsTextBoxes({
    this.content,
    required this.sheetTextBoxId,
  });

  final TfArg<String>? content;

  final TfArg<String> sheetTextBoxId;

  Map<String, Object?> encode() => {
    if (content != null) 'content': content!.toTfJson(),
    'sheet_text_box_id': sheetTextBoxId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisuals {
  const QuicksightDashboardDefinitionSheetsVisuals({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisual?
  barChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisual? boxPlotVisual;

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisual?
  comboChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsCustomContentVisual?
  customContentVisual;

  final QuicksightDashboardDefinitionSheetsVisualsEmptyVisual? emptyVisual;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisual?
  filledMapVisual;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisual?
  funnelChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisual?
  gaugeChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisual?
  geospatialMapVisual;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisual? heatMapVisual;

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisual?
  histogramVisual;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisual? insightVisual;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisual? kpiVisual;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisual?
  lineChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisual?
  pieChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisual?
  pivotTableVisual;

  final QuicksightDashboardDefinitionSheetsVisualsRadarChartVisual?
  radarChartVisual;

  final QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisual?
  sankeyDiagramVisual;

  final QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisual?
  scatterPlotVisual;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisual? tableVisual;

  final QuicksightDashboardDefinitionSheetsVisualsTreeMapVisual? treeMapVisual;

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisual?
  waterfallVisual;

  final QuicksightDashboardDefinitionSheetsVisualsWordCloudVisual?
  wordCloudVisual;

  Map<String, Object?> encode() => {
    if (barChartVisual != null) 'bar_chart_visual': barChartVisual!.encode(),
    if (boxPlotVisual != null) 'box_plot_visual': boxPlotVisual!.encode(),
    if (comboChartVisual != null)
      'combo_chart_visual': comboChartVisual!.encode(),
    if (customContentVisual != null)
      'custom_content_visual': customContentVisual!.encode(),
    if (emptyVisual != null) 'empty_visual': emptyVisual!.encode(),
    if (filledMapVisual != null) 'filled_map_visual': filledMapVisual!.encode(),
    if (funnelChartVisual != null)
      'funnel_chart_visual': funnelChartVisual!.encode(),
    if (gaugeChartVisual != null)
      'gauge_chart_visual': gaugeChartVisual!.encode(),
    if (geospatialMapVisual != null)
      'geospatial_map_visual': geospatialMapVisual!.encode(),
    if (heatMapVisual != null) 'heat_map_visual': heatMapVisual!.encode(),
    if (histogramVisual != null) 'histogram_visual': histogramVisual!.encode(),
    if (insightVisual != null) 'insight_visual': insightVisual!.encode(),
    if (kpiVisual != null) 'kpi_visual': kpiVisual!.encode(),
    if (lineChartVisual != null) 'line_chart_visual': lineChartVisual!.encode(),
    if (pieChartVisual != null) 'pie_chart_visual': pieChartVisual!.encode(),
    if (pivotTableVisual != null)
      'pivot_table_visual': pivotTableVisual!.encode(),
    if (radarChartVisual != null)
      'radar_chart_visual': radarChartVisual!.encode(),
    if (sankeyDiagramVisual != null)
      'sankey_diagram_visual': sankeyDiagramVisual!.encode(),
    if (scatterPlotVisual != null)
      'scatter_plot_visual': scatterPlotVisual!.encode(),
    if (tableVisual != null) 'table_visual': tableVisual!.encode(),
    if (treeMapVisual != null) 'tree_map_visual': treeMapVisual!.encode(),
    if (waterfallVisual != null) 'waterfall_visual': waterfallVisual!.encode(),
    if (wordCloudVisual != null) 'word_cloud_visual': wordCloudVisual!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions({
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

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperations
  >
  actionOperations;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperations {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperations({
    this.filterOperation,
    this.navigationOperation,
    this.setParametersOperation,
    this.urlOperation,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation?
  filterOperation;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation?
  navigationOperation;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation?
  setParametersOperation;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation?
  urlOperation;

  Map<String, Object?> encode() => {
    if (filterOperation != null) 'filter_operation': filterOperation!.encode(),
    if (navigationOperation != null)
      'navigation_operation': navigationOperation!.encode(),
    if (setParametersOperation != null)
      'set_parameters_operation': setParametersOperation!.encode(),
    if (urlOperation != null) 'url_operation': urlOperation!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation({
    required this.selectedFieldsConfiguration,
    required this.targetVisualsConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration
  selectedFieldsConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration({
    this.selectedFieldOption,
    this.selectedFields,
  });

  final TfArg<String>? selectedFieldOption;

  final TfArg<List<Object?>>? selectedFields;

  Map<String, Object?> encode() => {
    if (selectedFieldOption != null)
      'selected_field_option': selectedFieldOption!.toTfJson(),
    if (selectedFields != null) 'selected_fields': selectedFields!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration({
    this.sameSheetTargetVisualConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration?
  sameSheetTargetVisualConfiguration;

  Map<String, Object?> encode() => {
    if (sameSheetTargetVisualConfiguration != null)
      'same_sheet_target_visual_configuration':
          sameSheetTargetVisualConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration.same_sheet_target_visual_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration({
    this.targetVisualOption,
    this.targetVisuals,
  });

  final TfArg<String>? targetVisualOption;

  final TfArg<List<Object?>>? targetVisuals;

  Map<String, Object?> encode() => {
    if (targetVisualOption != null)
      'target_visual_option': targetVisualOption!.toTfJson(),
    if (targetVisuals != null) 'target_visuals': targetVisuals!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation({
    this.localNavigationConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration?
  localNavigationConfiguration;

  Map<String, Object?> encode() => {
    if (localNavigationConfiguration != null)
      'local_navigation_configuration': localNavigationConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation.local_navigation_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration({
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation({
    required this.parameterValueConfigurations,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations
  >
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations({
    required this.destinationParameterName,
    required this.value,
  });

  final TfArg<String> destinationParameterName;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue
  value;

  Map<String, Object?> encode() => {
    'destination_parameter_name': destinationParameterName.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue({
    this.selectAllValueOptions,
    this.sourceField,
    this.sourceParameterName,
    this.customValuesConfiguration,
  });

  final TfArg<String>? selectAllValueOptions;

  final TfArg<String>? sourceField;

  final TfArg<String>? sourceParameterName;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration?
  customValuesConfiguration;

  Map<String, Object?> encode() => {
    if (selectAllValueOptions != null)
      'select_all_value_options': selectAllValueOptions!.toTfJson(),
    if (sourceField != null) 'source_field': sourceField!.toTfJson(),
    if (sourceParameterName != null)
      'source_parameter_name': sourceParameterName!.toTfJson(),
    if (customValuesConfiguration != null)
      'custom_values_configuration': customValuesConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration({
    this.includeNullValue,
    required this.customValues,
  });

  final TfArg<bool>? includeNullValue;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues
  customValues;

  Map<String, Object?> encode() => {
    if (includeNullValue != null)
      'include_null_value': includeNullValue!.toTfJson(),
    'custom_values': customValues.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration.custom_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues({
    this.dateTimeValues,
    this.decimalValues,
    this.integerValues,
    this.stringValues,
  });

  final TfArg<List<Object?>>? dateTimeValues;

  final TfArg<List<Object?>>? decimalValues;

  final TfArg<List<Object?>>? integerValues;

  final TfArg<List<Object?>>? stringValues;

  Map<String, Object?> encode() => {
    if (dateTimeValues != null) 'date_time_values': dateTimeValues!.toTfJson(),
    if (decimalValues != null) 'decimal_values': decimalValues!.toTfJson(),
    if (integerValues != null) 'integer_values': integerValues!.toTfJson(),
    if (stringValues != null) 'string_values': stringValues!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.url_operation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation({
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  valueAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (barsArrangement != null)
      'bars_arrangement': barsArrangement!.toTfJson(),
    if (orientation != null) 'orientation': orientation!.toTfJson(),
    if (categoryAxis != null) 'category_axis': categoryAxis!.encode(),
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (colorLabelOptions != null)
      'color_label_options': colorLabelOptions!.encode(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    if (smallMultiplesOptions != null)
      'small_multiples_options': smallMultiplesOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (valueAxis != null) 'value_axis': valueAxis!.encode(),
    if (valueLabelOptions != null)
      'value_label_options': valueLabelOptions!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions?
  dataOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions?
  scrollbarOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions?
  tickLabelOptions;

  Map<String, Object?> encode() => {
    if (axisLineVisibility != null)
      'axis_line_visibility': axisLineVisibility!.toTfJson(),
    if (axisOffset != null) 'axis_offset': axisOffset!.toTfJson(),
    if (gridLineVisibility != null)
      'grid_line_visibility': gridLineVisibility!.toTfJson(),
    if (dataOptions != null) 'data_options': dataOptions!.encode(),
    if (scrollbarOptions != null)
      'scrollbar_options': scrollbarOptions!.encode(),
    if (tickLabelOptions != null)
      'tick_label_options': tickLabelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions({
    this.dateAxisOptions,
    this.numericAxisOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions?
  dateAxisOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions?
  numericAxisOptions;

  Map<String, Object?> encode() => {
    if (dateAxisOptions != null) 'date_axis_options': dateAxisOptions!.encode(),
    if (numericAxisOptions != null)
      'numeric_axis_options': numericAxisOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.date_axis_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions({
    this.missingDateVisibility,
  });

  final TfArg<String>? missingDateVisibility;

  Map<String, Object?> encode() => {
    if (missingDateVisibility != null)
      'missing_date_visibility': missingDateVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions({
    this.range,
    this.scale,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange?
  range;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale?
  scale;

  Map<String, Object?> encode() => {
    if (range != null) 'range': range!.encode(),
    if (scale != null) 'scale': scale!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange({
    this.dataDriven,
    this.minMax,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven?
  dataDriven;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax?
  minMax;

  Map<String, Object?> encode() => {
    if (dataDriven != null) 'data_driven': dataDriven!.encode(),
    if (minMax != null) 'min_max': minMax!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.data_driven` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.min_max` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax({
    this.maximum,
    this.minimum,
  });

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  Map<String, Object?> encode() => {
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale({
    this.linear,
    this.logarithmic,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear?
  linear;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic?
  logarithmic;

  Map<String, Object?> encode() => {
    if (linear != null) 'linear': linear!.encode(),
    if (logarithmic != null) 'logarithmic': logarithmic!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.linear` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear({
    this.stepCount,
    this.stepSize,
  });

  final TfArg<num>? stepCount;

  final TfArg<num>? stepSize;

  Map<String, Object?> encode() => {
    if (stepCount != null) 'step_count': stepCount!.toTfJson(),
    if (stepSize != null) 'step_size': stepSize!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.logarithmic` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic({
    this.base,
  });

  final TfArg<num>? base;

  Map<String, Object?> encode() => {if (base != null) 'base': base!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions({
    this.visibility,
    this.visibleRange,
  });

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange?
  visibleRange;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (visibleRange != null) 'visible_range': visibleRange!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange({
    this.percentRange,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange?
  percentRange;

  Map<String, Object?> encode() => {
    if (percentRange != null) 'percent_range': percentRange!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range.percent_range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange({
    this.from,
    this.to,
  });

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.tick_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions({
    this.rotationAngle,
    this.labelOptions,
  });

  final TfArg<num>? rotationAngle;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  labelOptions;

  Map<String, Object?> encode() => {
    if (rotationAngle != null) 'rotation_angle': rotationAngle!.toTfJson(),
    if (labelOptions != null) 'label_options': labelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions({
    this.sortIconVisibility,
    this.visibility,
    this.axisLabelOptions,
  });

  final TfArg<String>? sortIconVisibility;

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions?
  axisLabelOptions;

  Map<String, Object?> encode() => {
    if (sortIconVisibility != null)
      'sort_icon_visibility': sortIconVisibility!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (axisLabelOptions != null)
      'axis_label_options': axisLabelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions({
    this.customLabel,
    this.applyTo,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo?
  applyTo;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (applyTo != null) 'apply_to': applyTo!.encode(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options.apply_to` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo({
    required this.fieldId,
    required this.column,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.contribution_analysis_defaults` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults({
    required this.measureFieldId,
    required this.contributorDimensions,
  });

  final TfArg<String> measureFieldId;

  final List<QuicksightDashboardDefinitionColumnConfigurationsColumn>
  contributorDimensions;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels({
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

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes
  >?
  dataLabelTypes;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  labelFontConfiguration;

  Map<String, Object?> encode() => {
    if (categoryLabelVisibility != null)
      'category_label_visibility': categoryLabelVisibility!.toTfJson(),
    if (labelColor != null) 'label_color': labelColor!.toTfJson(),
    if (labelContent != null) 'label_content': labelContent!.toTfJson(),
    if (measureLabelVisibility != null)
      'measure_label_visibility': measureLabelVisibility!.toTfJson(),
    if (overlap != null) 'overlap': overlap!.toTfJson(),
    if (position != null) 'position': position!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (dataLabelTypes != null)
      'data_label_types': [for (final e in dataLabelTypes!) e.encode()],
    if (labelFontConfiguration != null)
      'label_font_configuration': labelFontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes({
    this.dataPathLabelType,
    this.fieldLabelType,
    this.maximumLabelType,
    this.minimumLabelType,
    this.rangeEndsLabelType,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType?
  dataPathLabelType;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType?
  fieldLabelType;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  maximumLabelType;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  minimumLabelType;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  rangeEndsLabelType;

  Map<String, Object?> encode() => {
    if (dataPathLabelType != null)
      'data_path_label_type': dataPathLabelType!.encode(),
    if (fieldLabelType != null) 'field_label_type': fieldLabelType!.encode(),
    if (maximumLabelType != null)
      'maximum_label_type': maximumLabelType!.encode(),
    if (minimumLabelType != null)
      'minimum_label_type': minimumLabelType!.encode(),
    if (rangeEndsLabelType != null)
      'range_ends_label_type': rangeEndsLabelType!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.data_path_label_type` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType({
    this.fieldId,
    this.fieldValue,
    this.visibility,
  });

  final TfArg<String>? fieldId;

  final TfArg<String>? fieldValue;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (fieldId != null) 'field_id': fieldId!.toTfJson(),
    if (fieldValue != null) 'field_value': fieldValue!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.field_label_type` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType({
    this.fieldId,
    this.visibility,
  });

  final TfArg<String>? fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (fieldId != null) 'field_id': fieldId!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells({
    this.barChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells?
  barChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (barChartAggregatedFieldWells != null)
      'bar_chart_aggregated_field_wells': barChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells.bar_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells({
    this.category,
    this.colors,
    this.smallMultiples,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  smallMultiples;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    if (smallMultiples != null) 'small_multiples': smallMultiples!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups({
    this.categoricalDimensionField,
    this.dateDimensionField,
    this.numericalDimensionField,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField?
  categoricalDimensionField;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField?
  dateDimensionField;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField?
  numericalDimensionField;

  Map<String, Object?> encode() => {
    if (categoricalDimensionField != null)
      'categorical_dimension_field': categoricalDimensionField!.encode(),
    if (dateDimensionField != null)
      'date_dimension_field': dateDimensionField!.encode(),
    if (numericalDimensionField != null)
      'numerical_dimension_field': numericalDimensionField!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.categorical_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (hierarchyId != null) 'hierarchy_id': hierarchyId!.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.date_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField({
    this.dateGranularity,
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? dateGranularity;

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (dateGranularity != null)
      'date_granularity': dateGranularity!.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (hierarchyId != null) 'hierarchy_id': hierarchyId!.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.numerical_dimension_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (hierarchyId != null) 'hierarchy_id': hierarchyId!.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues({
    this.calculatedMeasureField,
    this.categoricalMeasureField,
    this.dateMeasureField,
    this.numericalMeasureField,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField?
  calculatedMeasureField;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField?
  categoricalMeasureField;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField?
  dateMeasureField;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField?
  numericalMeasureField;

  Map<String, Object?> encode() => {
    if (calculatedMeasureField != null)
      'calculated_measure_field': calculatedMeasureField!.encode(),
    if (categoricalMeasureField != null)
      'categorical_measure_field': categoricalMeasureField!.encode(),
    if (dateMeasureField != null)
      'date_measure_field': dateMeasureField!.encode(),
    if (numericalMeasureField != null)
      'numerical_measure_field': numericalMeasureField!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.calculated_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField({
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
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.date_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.numerical_measure_field` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField({
    required this.fieldId,
    this.aggregationFunction,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction?
  aggregationFunction;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.encode(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.legend` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  title;

  Map<String, Object?> encode() => {
    if (height != null) 'height': height!.toTfJson(),
    if (position != null) 'position': position!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (width != null) 'width': width!.toTfJson(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines({
    this.status,
    required this.dataConfiguration,
    this.labelConfiguration,
    this.styleConfiguration,
  });

  final TfArg<String>? status;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration
  dataConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration?
  labelConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration?
  styleConfiguration;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
    'data_configuration': dataConfiguration.encode(),
    if (labelConfiguration != null)
      'label_configuration': labelConfiguration!.encode(),
    if (styleConfiguration != null)
      'style_configuration': styleConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration({
    this.axisBinding,
    this.dynamicConfiguration,
    this.staticConfiguration,
  });

  final TfArg<String>? axisBinding;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration?
  dynamicConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration?
  staticConfiguration;

  Map<String, Object?> encode() => {
    if (axisBinding != null) 'axis_binding': axisBinding!.toTfJson(),
    if (dynamicConfiguration != null)
      'dynamic_configuration': dynamicConfiguration!.encode(),
    if (staticConfiguration != null)
      'static_configuration': staticConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.dynamic_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration({
    required this.calculation,
    required this.column,
    required this.measureAggregationFunction,
  });

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction
  calculation;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction
  measureAggregationFunction;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration?
  customLabelConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration?
  valueLabelConfiguration;

  Map<String, Object?> encode() => {
    if (fontColor != null) 'font_color': fontColor!.toTfJson(),
    if (horizontalPosition != null)
      'horizontal_position': horizontalPosition!.toTfJson(),
    if (verticalPosition != null)
      'vertical_position': verticalPosition!.toTfJson(),
    if (customLabelConfiguration != null)
      'custom_label_configuration': customLabelConfiguration!.encode(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
    if (valueLabelConfiguration != null)
      'value_label_configuration': valueLabelConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.custom_label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration({
    required this.customLabel,
  });

  final TfArg<String> customLabel;

  Map<String, Object?> encode() => {'custom_label': customLabel.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.value_label_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration({
    this.relativePosition,
    this.formatConfiguration,
  });

  final TfArg<String>? relativePosition;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (relativePosition != null)
      'relative_position': relativePosition!.toTfJson(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.style_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration({
    this.color,
    this.pattern,
  });

  final TfArg<String>? color;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    if (pattern != null) 'pattern': pattern!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions({
    this.maxVisibleColumns,
    this.maxVisibleRows,
    this.panelConfiguration,
  });

  final TfArg<num>? maxVisibleColumns;

  final TfArg<num>? maxVisibleRows;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration?
  panelConfiguration;

  Map<String, Object?> encode() => {
    if (maxVisibleColumns != null)
      'max_visible_columns': maxVisibleColumns!.toTfJson(),
    if (maxVisibleRows != null) 'max_visible_rows': maxVisibleRows!.toTfJson(),
    if (panelConfiguration != null)
      'panel_configuration': panelConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle?
  title;

  Map<String, Object?> encode() => {
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (backgroundVisibility != null)
      'background_visibility': backgroundVisibility!.toTfJson(),
    if (borderColor != null) 'border_color': borderColor!.toTfJson(),
    if (borderStyle != null) 'border_style': borderStyle!.toTfJson(),
    if (borderThickness != null)
      'border_thickness': borderThickness!.toTfJson(),
    if (borderVisibility != null)
      'border_visibility': borderVisibility!.toTfJson(),
    if (gutterSpacing != null) 'gutter_spacing': gutterSpacing!.toTfJson(),
    if (gutterVisibility != null)
      'gutter_visibility': gutterVisibility!.toTfJson(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration.title` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle({
    this.horizontalTextAlignment,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (horizontalTextAlignment != null)
      'horizontal_text_alignment': horizontalTextAlignment!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  colorSort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  smallMultiplesSort;

  Map<String, Object?> encode() => {
    if (categoryItemsLimit != null)
      'category_items_limit': categoryItemsLimit!.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (colorItemsLimit != null) 'color_items_limit': colorItemsLimit!.encode(),
    if (colorSort != null)
      'color_sort': [for (final e in colorSort!) e.encode()],
    if (smallMultiplesLimitConfiguration != null)
      'small_multiples_limit_configuration': smallMultiplesLimitConfiguration!
          .encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_items_limit` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit({
    this.itemsLimit,
    required this.otherCategories,
  });

  final TfArg<num>? itemsLimit;

  final TfArg<String> otherCategories;

  Map<String, Object?> encode() => {
    if (itemsLimit != null) 'items_limit': itemsLimit!.toTfJson(),
    'other_categories': otherCategories.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort({
    this.columnSort,
    this.fieldSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort?
  columnSort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort?
  fieldSort;

  Map<String, Object?> encode() => {
    if (columnSort != null) 'column_sort': columnSort!.encode(),
    if (fieldSort != null) 'field_sort': fieldSort!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.column_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort({
    required this.direction,
    this.aggregationFunction,
    required this.sortBy,
  });

  final TfArg<String> direction;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn sortBy;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.encode(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.field_sort` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort({
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip({
    this.selectedTooltipType,
    this.tooltipVisibility,
    this.fieldBaseTooltip,
  });

  final TfArg<String>? selectedTooltipType;

  final TfArg<String>? tooltipVisibility;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip?
  fieldBaseTooltip;

  Map<String, Object?> encode() => {
    if (selectedTooltipType != null)
      'selected_tooltip_type': selectedTooltipType!.toTfJson(),
    if (tooltipVisibility != null)
      'tooltip_visibility': tooltipVisibility!.toTfJson(),
    if (fieldBaseTooltip != null)
      'field_base_tooltip': fieldBaseTooltip!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip({
    this.aggregationVisibility,
    this.tooltipTitleType,
    this.tooltipFields,
  });

  final TfArg<String>? aggregationVisibility;

  final TfArg<String>? tooltipTitleType;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields
  >?
  tooltipFields;

  Map<String, Object?> encode() => {
    if (aggregationVisibility != null)
      'aggregation_visibility': aggregationVisibility!.toTfJson(),
    if (tooltipTitleType != null)
      'tooltip_title_type': tooltipTitleType!.toTfJson(),
    if (tooltipFields != null)
      'tooltip_fields': [for (final e in tooltipFields!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields({
    this.columnTooltipItem,
    this.fieldTooltipItem,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem?
  columnTooltipItem;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem?
  fieldTooltipItem;

  Map<String, Object?> encode() => {
    if (columnTooltipItem != null)
      'column_tooltip_item': columnTooltipItem!.encode(),
    if (fieldTooltipItem != null)
      'field_tooltip_item': fieldTooltipItem!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.column_tooltip_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem({
    this.label,
    this.visibility,
    this.aggregation,
    required this.column,
  });

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregation;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (aggregation != null) 'aggregation': aggregation!.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.field_tooltip_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem({
    required this.fieldId,
    this.label,
    this.visibility,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (label != null) 'label': label!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette({
    this.chartColor,
    this.colorMap,
  });

  final TfArg<String>? chartColor;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap
  >?
  colorMap;

  Map<String, Object?> encode() => {
    if (chartColor != null) 'chart_color': chartColor!.toTfJson(),
    if (colorMap != null) 'color_map': [for (final e in colorMap!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap({
    required this.color,
    this.timeGranularity,
    required this.element,
  });

  final TfArg<String> color;

  final TfArg<String>? timeGranularity;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  element;

  Map<String, Object?> encode() => {
    'color': color.toTfJson(),
    if (timeGranularity != null)
      'time_granularity': timeGranularity!.toTfJson(),
    'element': element.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map.element` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement({
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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies({
    this.dateTimeHierarchy,
    this.explicitHierarchy,
    this.predefinedHierarchy,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy?
  dateTimeHierarchy;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy?
  explicitHierarchy;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy?
  predefinedHierarchy;

  Map<String, Object?> encode() => {
    if (dateTimeHierarchy != null)
      'date_time_hierarchy': dateTimeHierarchy!.encode(),
    if (explicitHierarchy != null)
      'explicit_hierarchy': explicitHierarchy!.encode(),
    if (predefinedHierarchy != null)
      'predefined_hierarchy': predefinedHierarchy!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy({
    required this.hierarchyId,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters
  >?
  drillDownFilters;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.timeRangeFilter,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter?
  categoryFilter;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter?
  timeRangeFilter;

  Map<String, Object?> encode() => {
    if (categoryFilter != null) 'category_filter': categoryFilter!.encode(),
    if (numericEqualityFilter != null)
      'numeric_equality_filter': numericEqualityFilter!.encode(),
    if (timeRangeFilter != null) 'time_range_filter': timeRangeFilter!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.category_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter({
    required this.categoryValues,
    required this.column,
  });

  final TfArg<List<Object?>> categoryValues;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'category_values': categoryValues.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.numeric_equality_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter({
    required this.value,
    required this.column,
  });

  final TfArg<num> value;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.time_range_filter` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter({
    required this.rangeMaximum,
    required this.rangeMinimum,
    required this.timeGranularity,
    required this.column,
  });

  final TfArg<String> rangeMaximum;

  final TfArg<String> rangeMinimum;

  final TfArg<String> timeGranularity;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy({
    required this.hierarchyId,
    required this.columns,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightDashboardDefinitionColumnConfigurationsColumn> columns;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters
  >?
  drillDownFilters;

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
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle({
    this.visibility,
    this.formatText,
  });

  final TfArg<String>? visibility;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitleFormatText?
  formatText;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (formatText != null) 'format_text': formatText!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle.format_text` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitleFormatText {
  const QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitleFormatText({
    this.plainText,
    this.richText,
  });

  final TfArg<String>? plainText;

  final TfArg<String>? richText;

  Map<String, Object?> encode() => {
    if (plainText != null) 'plain_text': plainText!.toTfJson(),
    if (richText != null) 'rich_text': richText!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisual {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions?
  boxPlotOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (boxPlotOptions != null) 'box_plot_options': boxPlotOptions!.encode(),
    if (categoryAxis != null) 'category_axis': categoryAxis!.encode(),
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (primaryYAxisDisplayOptions != null)
      'primary_y_axis_display_options': primaryYAxisDisplayOptions!.encode(),
    if (primaryYAxisLabelOptions != null)
      'primary_y_axis_label_options': primaryYAxisLabelOptions!.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions({
    this.allDataPointsVisibility,
    this.outlierVisibility,
    this.styleOptions,
  });

  final TfArg<String>? allDataPointsVisibility;

  final TfArg<String>? outlierVisibility;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions?
  styleOptions;

  Map<String, Object?> encode() => {
    if (allDataPointsVisibility != null)
      'all_data_points_visibility': allDataPointsVisibility!.toTfJson(),
    if (outlierVisibility != null)
      'outlier_visibility': outlierVisibility!.toTfJson(),
    if (styleOptions != null) 'style_options': styleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options.style_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions({
    this.fillStyle,
  });

  final TfArg<String>? fillStyle;

  Map<String, Object?> encode() => {
    if (fillStyle != null) 'fill_style': fillStyle!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells({
    this.boxPlotAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells?
  boxPlotAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (boxPlotAggregatedFieldWells != null)
      'box_plot_aggregated_field_wells': boxPlotAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells.box_plot_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  groupBy;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': groupBy!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration({
    this.categorySort,
    this.paginationConfiguration,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration?
  paginationConfiguration;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (paginationConfiguration != null)
      'pagination_configuration': paginationConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration.pagination_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration({
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
final class QuicksightDashboardDefinitionSheetsVisualsComboChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsComboChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  barDataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  lineDataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  secondaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  secondaryYAxisLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (barsArrangement != null)
      'bars_arrangement': barsArrangement!.toTfJson(),
    if (barDataLabels != null) 'bar_data_labels': barDataLabels!.encode(),
    if (categoryAxis != null) 'category_axis': categoryAxis!.encode(),
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (colorLabelOptions != null)
      'color_label_options': colorLabelOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (lineDataLabels != null) 'line_data_labels': lineDataLabels!.encode(),
    if (primaryYAxisDisplayOptions != null)
      'primary_y_axis_display_options': primaryYAxisDisplayOptions!.encode(),
    if (primaryYAxisLabelOptions != null)
      'primary_y_axis_label_options': primaryYAxisLabelOptions!.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    if (secondaryYAxisDisplayOptions != null)
      'secondary_y_axis_display_options': secondaryYAxisDisplayOptions!
          .encode(),
    if (secondaryYAxisLabelOptions != null)
      'secondary_y_axis_label_options': secondaryYAxisLabelOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells({
    this.comboChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells?
  comboChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (comboChartAggregatedFieldWells != null)
      'combo_chart_aggregated_field_wells': comboChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells.combo_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells({
    this.barValues,
    this.category,
    this.colors,
    this.lineValues,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  barValues;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  lineValues;

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
final class QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  colorSort;

  Map<String, Object?> encode() => {
    if (categoryItemsLimit != null)
      'category_items_limit': categoryItemsLimit!.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (colorItemsLimit != null) 'color_items_limit': colorItemsLimit!.encode(),
    if (colorSort != null)
      'color_sort': [for (final e in colorSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.custom_content_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsCustomContentVisual {
  const QuicksightDashboardDefinitionSheetsVisualsCustomContentVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsCustomContentVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.custom_content_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsCustomContentVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsCustomContentVisualChartConfiguration({
    this.contentType,
    this.contentUrl,
    this.imageScaling,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? contentUrl;

  final TfArg<String>? imageScaling;

  Map<String, Object?> encode() => {
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (contentUrl != null) 'content_url': contentUrl!.toTfJson(),
    if (imageScaling != null) 'image_scaling': imageScaling!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.empty_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsEmptyVisual {
  const QuicksightDashboardDefinitionSheetsVisualsEmptyVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisual {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (conditionalFormatting != null)
      'conditional_formatting': conditionalFormatting!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.sortConfiguration,
    this.tooltip,
    this.windowOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions?
  mapStyleOptions;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions?
  windowOptions;

  Map<String, Object?> encode() => {
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (mapStyleOptions != null) 'map_style_options': mapStyleOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (windowOptions != null) 'window_options': windowOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells({
    this.filledMapAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells?
  filledMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (filledMapAggregatedFieldWells != null)
      'filled_map_aggregated_field_wells': filledMapAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells.filled_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells({
    this.geospatial,
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  geospatial;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (geospatial != null) 'geospatial': geospatial!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.map_style_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions({
    this.baseMapStyle,
  });

  final TfArg<String>? baseMapStyle;

  Map<String, Object?> encode() => {
    if (baseMapStyle != null) 'base_map_style': baseMapStyle!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration({
    this.categorySort,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions({
    this.mapZoomMode,
    this.bounds,
  });

  final TfArg<String>? mapZoomMode;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds?
  bounds;

  Map<String, Object?> encode() => {
    if (mapZoomMode != null) 'map_zoom_mode': mapZoomMode!.toTfJson(),
    if (bounds != null) 'bounds': bounds!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options.bounds` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds({
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
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormatting {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormatting({
    required this.conditionalFormattingOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions
  >
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
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions({
    required this.shape,
  });

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape
  shape;

  Map<String, Object?> encode() => {'shape': shape.encode()};
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape({
    required this.fieldId,
    this.format,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat?
  format;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape.format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat {
  const QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat({
    required this.backgroundColor,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor({
    this.gradient,
    this.solid,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient?
  gradient;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid?
  solid;

  Map<String, Object?> encode() => {
    if (gradient != null) 'gradient': gradient!.encode(),
    if (solid != null) 'solid': solid!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient({
    required this.expression,
    required this.color,
  });

  final TfArg<String> expression;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor
  color;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'color': color.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor({
    this.stops,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops
  >?
  stops;

  Map<String, Object?> encode() => {
    if (stops != null) 'stops': [for (final e in stops!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color.stops` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops({
    this.color,
    this.dataValue,
    required this.gradientOffset,
  });

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  final TfArg<num> gradientOffset;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    if (dataValue != null) 'data_value': dataValue!.toTfJson(),
    'gradient_offset': gradientOffset.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.solid` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid({
    this.color,
    required this.expression,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.dataLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions?
  dataLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (dataLabelOptions != null)
      'data_label_options': dataLabelOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (valueLabelOptions != null)
      'value_label_options': valueLabelOptions!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.data_label_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions({
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

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  labelFontConfiguration;

  Map<String, Object?> encode() => {
    if (categoryLabelVisibility != null)
      'category_label_visibility': categoryLabelVisibility!.toTfJson(),
    if (labelColor != null) 'label_color': labelColor!.toTfJson(),
    if (measureDataLabelStyle != null)
      'measure_data_label_style': measureDataLabelStyle!.toTfJson(),
    if (measureLabelVisibility != null)
      'measure_label_visibility': measureLabelVisibility!.toTfJson(),
    if (position != null) 'position': position!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (labelFontConfiguration != null)
      'label_font_configuration': labelFontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells({
    this.funnelChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells?
  funnelChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (funnelChartAggregatedFieldWells != null)
      'funnel_chart_aggregated_field_wells': funnelChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells.funnel_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells({
    this.category,
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  Map<String, Object?> encode() => {
    if (categoryItemsLimit != null)
      'category_items_limit': categoryItemsLimit!.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (conditionalFormatting != null)
      'conditional_formatting': conditionalFormatting!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.gaugeChartOptions,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions?
  gaugeChartOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (gaugeChartOptions != null)
      'gauge_chart_options': gaugeChartOptions!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells({
    this.targetValues,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  targetValues;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions({
    this.primaryValueDisplayType,
    this.arc,
    this.arcAxis,
    this.comparison,
    this.primaryValueFontConfiguration,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc?
  arc;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis?
  arcAxis;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison?
  comparison;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  primaryValueFontConfiguration;

  Map<String, Object?> encode() => {
    if (primaryValueDisplayType != null)
      'primary_value_display_type': primaryValueDisplayType!.toTfJson(),
    if (arc != null) 'arc': arc!.encode(),
    if (arcAxis != null) 'arc_axis': arcAxis!.encode(),
    if (comparison != null) 'comparison': comparison!.encode(),
    if (primaryValueFontConfiguration != null)
      'primary_value_font_configuration': primaryValueFontConfiguration!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc({
    this.arcAngle,
    this.arcThickness,
  });

  final TfArg<num>? arcAngle;

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {
    if (arcAngle != null) 'arc_angle': arcAngle!.toTfJson(),
    if (arcThickness != null) 'arc_thickness': arcThickness!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis({
    this.reserveRange,
    this.range,
  });

  final TfArg<num>? reserveRange;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange?
  range;

  Map<String, Object?> encode() => {
    if (reserveRange != null) 'reserve_range': reserveRange!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis.range` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison({
    this.comparisonMethod,
    this.comparisonFormat,
  });

  final TfArg<String>? comparisonMethod;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat?
  comparisonFormat;

  Map<String, Object?> encode() => {
    if (comparisonMethod != null)
      'comparison_method': comparisonMethod!.toTfJson(),
    if (comparisonFormat != null)
      'comparison_format': comparisonFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison.comparison_format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat({
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    if (numberDisplayFormatConfiguration != null)
      'number_display_format_configuration': numberDisplayFormatConfiguration!
          .encode(),
    if (percentageDisplayFormatConfiguration != null)
      'percentage_display_format_configuration':
          percentageDisplayFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions
  >?
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
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions({
    this.arc,
    this.primaryValue,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc?
  arc;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  primaryValue;

  Map<String, Object?> encode() => {
    if (arc != null) 'arc': arc!.encode(),
    if (primaryValue != null) 'primary_value': primaryValue!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc({
    required this.foregroundColor,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  foregroundColor;

  Map<String, Object?> encode() => {
    'foreground_color': foregroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue({
    this.icon,
    required this.textColor,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon?
  icon;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    if (icon != null) 'icon': icon!.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon({
    this.customCondition,
    this.iconSet,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition?
  customCondition;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet?
  iconSet;

  Map<String, Object?> encode() => {
    if (customCondition != null) 'custom_condition': customCondition!.encode(),
    if (iconSet != null) 'icon_set': iconSet!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition({
    this.color,
    required this.expression,
    this.displayConfiguration,
    required this.iconOptions,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration?
  displayConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions
  iconOptions;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    'expression': expression.toTfJson(),
    if (displayConfiguration != null)
      'display_configuration': displayConfiguration!.encode(),
    'icon_options': iconOptions.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.display_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration({
    this.iconDisplayOption,
  });

  final TfArg<String>? iconDisplayOption;

  Map<String, Object?> encode() => {
    if (iconDisplayOption != null)
      'icon_display_option': iconDisplayOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.icon_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions({
    this.icon,
    this.unicodeIcon,
  });

  final TfArg<String>? icon;

  final TfArg<String>? unicodeIcon;

  Map<String, Object?> encode() => {
    if (icon != null) 'icon': icon!.toTfJson(),
    if (unicodeIcon != null) 'unicode_icon': unicodeIcon!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.icon_set` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet {
  const QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet({
    required this.expression,
    this.iconSetType,
  });

  final TfArg<String> expression;

  final TfArg<String>? iconSetType;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    if (iconSetType != null) 'icon_set_type': iconSetType!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisual {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.pointStyleOptions,
    this.tooltip,
    this.visualPalette,
    this.windowOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions?
  mapStyleOptions;

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions?
  pointStyleOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightDashboardDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions?
  windowOptions;

  Map<String, Object?> encode() => {
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (mapStyleOptions != null) 'map_style_options': mapStyleOptions!.encode(),
    if (pointStyleOptions != null)
      'point_style_options': pointStyleOptions!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
    if (windowOptions != null) 'window_options': windowOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells({
    this.geospatialMapAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells?
  geospatialMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (geospatialMapAggregatedFieldWells != null)
      'geospatial_map_aggregated_field_wells':
          geospatialMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells.geospatial_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells({
    this.colors,
    this.geospatial,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  geospatial;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

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
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions({
    this.selectedPointStyle,
    this.clusterMarkerConfiguration,
  });

  final TfArg<String>? selectedPointStyle;

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration?
  clusterMarkerConfiguration;

  Map<String, Object?> encode() => {
    if (selectedPointStyle != null)
      'selected_point_style': selectedPointStyle!.toTfJson(),
    if (clusterMarkerConfiguration != null)
      'cluster_marker_configuration': clusterMarkerConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration({
    this.clusterMarker,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker?
  clusterMarker;

  Map<String, Object?> encode() => {
    if (clusterMarker != null) 'cluster_marker': clusterMarker!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker({
    this.simpleClusterMarker,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker?
  simpleClusterMarker;

  Map<String, Object?> encode() => {
    if (simpleClusterMarker != null)
      'simple_cluster_marker': simpleClusterMarker!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker.simple_cluster_marker` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker {
  const QuicksightDashboardDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker({
    this.color,
  });

  final TfArg<String>? color;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisual {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfiguration({
    this.colorScale,
    this.columnLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.rowLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale?
  colorScale;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  columnLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  rowLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  Map<String, Object?> encode() => {
    if (colorScale != null) 'color_scale': colorScale!.encode(),
    if (columnLabelOptions != null)
      'column_label_options': columnLabelOptions!.encode(),
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (rowLabelOptions != null) 'row_label_options': rowLabelOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale({
    required this.colorFillType,
    required this.colors,
    this.nullValueColor,
  });

  final TfArg<String> colorFillType;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors
  >
  colors;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors?
  nullValueColor;

  Map<String, Object?> encode() => {
    'color_fill_type': colorFillType.toTfJson(),
    'colors': [for (final e in colors) e.encode()],
    if (nullValueColor != null) 'null_value_color': nullValueColor!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale.colors` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors({
    this.color,
    this.dataValue,
  });

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    if (dataValue != null) 'data_value': dataValue!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells({
    this.heatMapAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells?
  heatMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (heatMapAggregatedFieldWells != null)
      'heat_map_aggregated_field_wells': heatMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells.heat_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  columns;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  rows;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': columns!.encode(),
    if (rows != null) 'rows': rows!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration({
    this.heatMapColumnItemsLimitConfiguration,
    this.heatMapColumnSort,
    this.heatMapRowItemsLimitConfiguration,
    this.heatMapRowSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  heatMapColumnItemsLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  heatMapColumnSort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  heatMapRowItemsLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  heatMapRowSort;

  Map<String, Object?> encode() => {
    if (heatMapColumnItemsLimitConfiguration != null)
      'heat_map_column_items_limit_configuration':
          heatMapColumnItemsLimitConfiguration!.encode(),
    if (heatMapColumnSort != null)
      'heat_map_column_sort': [for (final e in heatMapColumnSort!) e.encode()],
    if (heatMapRowItemsLimitConfiguration != null)
      'heat_map_row_items_limit_configuration':
          heatMapRowItemsLimitConfiguration!.encode(),
    if (heatMapRowSort != null)
      'heat_map_row_sort': [for (final e in heatMapRowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisual {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfiguration({
    this.binOptions,
    this.dataLabels,
    this.fieldWells,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions?
  binOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  xAxisLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  yAxisDisplayOptions;

  Map<String, Object?> encode() => {
    if (binOptions != null) 'bin_options': binOptions!.encode(),
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
    if (xAxisDisplayOptions != null)
      'x_axis_display_options': xAxisDisplayOptions!.encode(),
    if (xAxisLabelOptions != null)
      'x_axis_label_options': xAxisLabelOptions!.encode(),
    if (yAxisDisplayOptions != null)
      'y_axis_display_options': yAxisDisplayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions({
    this.selectedBinType,
    this.startValue,
    this.binCount,
    this.binWidth,
  });

  final TfArg<String>? selectedBinType;

  final TfArg<num>? startValue;

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount?
  binCount;

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth?
  binWidth;

  Map<String, Object?> encode() => {
    if (selectedBinType != null)
      'selected_bin_type': selectedBinType!.toTfJson(),
    if (startValue != null) 'start_value': startValue!.toTfJson(),
    if (binCount != null) 'bin_count': binCount!.encode(),
    if (binWidth != null) 'bin_width': binWidth!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_count` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount({
    this.value,
  });

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_width` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth({
    this.binCountLimit,
    this.value,
  });

  final TfArg<num>? binCountLimit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (binCountLimit != null) 'bin_count_limit': binCountLimit!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells({
    this.histogramAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells?
  histogramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (histogramAggregatedFieldWells != null)
      'histogram_aggregated_field_wells': histogramAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells.histogram_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells({
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisual {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.insightConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfiguration?
  insightConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (insightConfiguration != null)
      'insight_configuration': insightConfiguration!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfiguration({
    this.computation,
    this.customNarrative,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation
  >?
  computation;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative?
  customNarrative;

  Map<String, Object?> encode() => {
    if (computation != null)
      'computation': [for (final e in computation!) e.encode()],
    if (customNarrative != null) 'custom_narrative': customNarrative!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation({
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

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast?
  forecast;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate?
  growthRate;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum?
  maximumMinimum;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison?
  metricComparison;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod?
  periodOverPeriod;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate?
  periodToDate;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers?
  topBottomMovers;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked?
  topBottomRanked;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation?
  totalAggregation;

  final QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues?
  uniqueValues;

  Map<String, Object?> encode() => {
    if (forecast != null) 'forecast': forecast!.encode(),
    if (growthRate != null) 'growth_rate': growthRate!.encode(),
    if (maximumMinimum != null) 'maximum_minimum': maximumMinimum!.encode(),
    if (metricComparison != null)
      'metric_comparison': metricComparison!.encode(),
    if (periodOverPeriod != null)
      'period_over_period': periodOverPeriod!.encode(),
    if (periodToDate != null) 'period_to_date': periodToDate!.encode(),
    if (topBottomMovers != null) 'top_bottom_movers': topBottomMovers!.encode(),
    if (topBottomRanked != null) 'top_bottom_ranked': topBottomRanked!.encode(),
    if (totalAggregation != null)
      'total_aggregation': totalAggregation!.encode(),
    if (uniqueValues != null) 'unique_values': uniqueValues!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.forecast` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast({
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

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (customSeasonalityValue != null)
      'custom_seasonality_value': customSeasonalityValue!.toTfJson(),
    if (lowerBoundary != null) 'lower_boundary': lowerBoundary!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (periodsBackward != null)
      'periods_backward': periodsBackward!.toTfJson(),
    if (periodsForward != null) 'periods_forward': periodsForward!.toTfJson(),
    if (predictionInterval != null)
      'prediction_interval': predictionInterval!.toTfJson(),
    'seasonality': seasonality.toTfJson(),
    if (upperBoundary != null) 'upper_boundary': upperBoundary!.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.growth_rate` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate({
    required this.computationId,
    this.name,
    this.periodSize,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? periodSize;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (periodSize != null) 'period_size': periodSize!.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.maximum_minimum` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum({
    required this.computationId,
    this.name,
    required this.type,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> type;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'type': type.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.metric_comparison` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison({
    required this.computationId,
    this.name,
    this.fromValue,
    this.targetValue,
    this.time,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  fromValue;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  targetValue;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (fromValue != null) 'from_value': fromValue!.encode(),
    if (targetValue != null) 'target_value': targetValue!.encode(),
    if (time != null) 'time': time!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_over_period` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod({
    required this.computationId,
    this.name,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_to_date` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate({
    required this.computationId,
    this.name,
    required this.periodTimeGranularity,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> periodTimeGranularity;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'period_time_granularity': periodTimeGranularity.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_movers` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers({
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

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (moverSize != null) 'mover_size': moverSize!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'sort_order': sortOrder.toTfJson(),
    'type': type.toTfJson(),
    if (category != null) 'category': category!.encode(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_ranked` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked({
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

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (resultSize != null) 'result_size': resultSize!.toTfJson(),
    'type': type.toTfJson(),
    if (category != null) 'category': category!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.total_aggregation` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation({
    required this.computationId,
    this.name,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.unique_values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues({
    required this.computationId,
    this.name,
    this.category,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (category != null) 'category': category!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.custom_narrative` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative {
  const QuicksightDashboardDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative({
    required this.narrative,
  });

  final TfArg<String> narrative;

  Map<String, Object?> encode() => {'narrative': narrative.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisual {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (conditionalFormatting != null)
      'conditional_formatting': conditionalFormatting!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfiguration({
    this.fieldWells,
    this.kpiOptions,
    this.sortConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions?
  kpiOptions;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (kpiOptions != null) 'kpi_options': kpiOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells({
    this.targetValues,
    this.trendGroups,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  targetValues;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  trendGroups;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

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
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions({
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

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison?
  comparison;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  primaryValueFontConfiguration;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  progressBar;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  secondaryValue;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  secondaryValueFontConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline?
  sparkline;

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  trendArrows;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions?
  visualLayoutOptions;

  Map<String, Object?> encode() => {
    if (primaryValueDisplayType != null)
      'primary_value_display_type': primaryValueDisplayType!.toTfJson(),
    if (comparison != null) 'comparison': comparison!.encode(),
    if (primaryValueFontConfiguration != null)
      'primary_value_font_configuration': primaryValueFontConfiguration!
          .encode(),
    if (progressBar != null) 'progress_bar': progressBar!.encode(),
    if (secondaryValue != null) 'secondary_value': secondaryValue!.encode(),
    if (secondaryValueFontConfiguration != null)
      'secondary_value_font_configuration': secondaryValueFontConfiguration!
          .encode(),
    if (sparkline != null) 'sparkline': sparkline!.encode(),
    if (trendArrows != null) 'trend_arrows': trendArrows!.encode(),
    if (visualLayoutOptions != null)
      'visual_layout_options': visualLayoutOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.sparkline` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline({
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
    if (color != null) 'color': color!.toTfJson(),
    if (tooltipVisibility != null)
      'tooltip_visibility': tooltipVisibility!.toTfJson(),
    'type': type.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions({
    this.standardLayout,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout?
  standardLayout;

  Map<String, Object?> encode() => {
    if (standardLayout != null) 'standard_layout': standardLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options.standard_layout` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration({
    this.trendGroupSort,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  trendGroupSort;

  Map<String, Object?> encode() => {
    if (trendGroupSort != null)
      'trend_group_sort': [for (final e in trendGroupSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormatting {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions
  >?
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
final class QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions({
    this.actualValue,
    this.comparisonValue,
    this.primaryValue,
    this.progressBar,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  actualValue;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  comparisonValue;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  primaryValue;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc?
  progressBar;

  Map<String, Object?> encode() => {
    if (actualValue != null) 'actual_value': actualValue!.encode(),
    if (comparisonValue != null) 'comparison_value': comparisonValue!.encode(),
    if (primaryValue != null) 'primary_value': primaryValue!.encode(),
    if (progressBar != null) 'progress_bar': progressBar!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfiguration({
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

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings?
  defaultSeriesSettings;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells?
  fieldWells;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations
  >?
  forecastConfigurations;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions?
  primaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions?
  secondaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  secondaryYAxisLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries
  >?
  series;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  xAxisLabelOptions;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (defaultSeriesSettings != null)
      'default_series_settings': defaultSeriesSettings!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (forecastConfigurations != null)
      'forecast_configurations': [
        for (final e in forecastConfigurations!) e.encode(),
      ],
    if (legend != null) 'legend': legend!.encode(),
    if (primaryYAxisDisplayOptions != null)
      'primary_y_axis_display_options': primaryYAxisDisplayOptions!.encode(),
    if (primaryYAxisLabelOptions != null)
      'primary_y_axis_label_options': primaryYAxisLabelOptions!.encode(),
    if (referenceLines != null)
      'reference_lines': [for (final e in referenceLines!) e.encode()],
    if (secondaryYAxisDisplayOptions != null)
      'secondary_y_axis_display_options': secondaryYAxisDisplayOptions!
          .encode(),
    if (secondaryYAxisLabelOptions != null)
      'secondary_y_axis_label_options': secondaryYAxisLabelOptions!.encode(),
    if (series != null) 'series': [for (final e in series!) e.encode()],
    if (smallMultiplesOptions != null)
      'small_multiples_options': smallMultiplesOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
    if (xAxisDisplayOptions != null)
      'x_axis_display_options': xAxisDisplayOptions!.encode(),
    if (xAxisLabelOptions != null)
      'x_axis_label_options': xAxisLabelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings({
    this.axisBinding,
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final TfArg<String>? axisBinding;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings?
  lineStyleSettings;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings?
  markerStyleSettings;

  Map<String, Object?> encode() => {
    if (axisBinding != null) 'axis_binding': axisBinding!.toTfJson(),
    if (lineStyleSettings != null)
      'line_style_settings': lineStyleSettings!.encode(),
    if (markerStyleSettings != null)
      'marker_style_settings': markerStyleSettings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.line_style_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings({
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
    if (lineInterpolation != null)
      'line_interpolation': lineInterpolation!.toTfJson(),
    if (lineStyle != null) 'line_style': lineStyle!.toTfJson(),
    if (lineVisibility != null) 'line_visibility': lineVisibility!.toTfJson(),
    if (lineWidth != null) 'line_width': lineWidth!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.marker_style_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings({
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
    if (markerColor != null) 'marker_color': markerColor!.toTfJson(),
    if (markerShape != null) 'marker_shape': markerShape!.toTfJson(),
    if (markerSize != null) 'marker_size': markerSize!.toTfJson(),
    if (markerVisibility != null)
      'marker_visibility': markerVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells({
    this.lineChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells?
  lineChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (lineChartAggregatedFieldWells != null)
      'line_chart_aggregated_field_wells': lineChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations({
    this.forecastProperties,
    this.scenario,
  });

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties?
  forecastProperties;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario?
  scenario;

  Map<String, Object?> encode() => {
    if (forecastProperties != null)
      'forecast_properties': forecastProperties!.encode(),
    if (scenario != null) 'scenario': scenario!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.forecast_properties` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties({
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
    if (lowerBoundary != null) 'lower_boundary': lowerBoundary!.toTfJson(),
    if (periodsBackward != null)
      'periods_backward': periodsBackward!.toTfJson(),
    if (periodsForward != null) 'periods_forward': periodsForward!.toTfJson(),
    if (predictionInterval != null)
      'prediction_interval': predictionInterval!.toTfJson(),
    if (seasonality != null) 'seasonality': seasonality!.toTfJson(),
    if (upperBoundary != null) 'upper_boundary': upperBoundary!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario({
    this.whatIfPointScenario,
    this.whatIfRangeScenario,
  });

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario?
  whatIfPointScenario;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario?
  whatIfRangeScenario;

  Map<String, Object?> encode() => {
    if (whatIfPointScenario != null)
      'what_if_point_scenario': whatIfPointScenario!.encode(),
    if (whatIfRangeScenario != null)
      'what_if_range_scenario': whatIfRangeScenario!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_point_scenario` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario({
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
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario({
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
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions({
    this.axisOptions,
    this.missingDataConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  axisOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration
  >?
  missingDataConfiguration;

  Map<String, Object?> encode() => {
    if (axisOptions != null) 'axis_options': axisOptions!.encode(),
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
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration({
    this.treatmentOption,
  });

  final TfArg<String>? treatmentOption;

  Map<String, Object?> encode() => {
    if (treatmentOption != null)
      'treatment_option': treatmentOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries({
    this.dataFieldSeriesItem,
    this.fieldSeriesItem,
  });

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem?
  dataFieldSeriesItem;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem?
  fieldSeriesItem;

  Map<String, Object?> encode() => {
    if (dataFieldSeriesItem != null)
      'data_field_series_item': dataFieldSeriesItem!.encode(),
    if (fieldSeriesItem != null) 'field_series_item': fieldSeriesItem!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.fieldValue,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final TfArg<String>? fieldValue;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings?
  settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (fieldValue != null) 'field_value': fieldValue!.toTfJson(),
    if (settings != null) 'settings': settings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item.settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings({
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings?
  lineStyleSettings;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings?
  markerStyleSettings;

  Map<String, Object?> encode() => {
    if (lineStyleSettings != null)
      'line_style_settings': lineStyleSettings!.encode(),
    if (markerStyleSettings != null)
      'marker_style_settings': markerStyleSettings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.field_series_item` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings?
  settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (settings != null) 'settings': settings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimitConfiguration,
    this.categorySort,
    this.colorItemsLimitConfiguration,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimitConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  smallMultiplesSort;

  Map<String, Object?> encode() => {
    if (categoryItemsLimitConfiguration != null)
      'category_items_limit_configuration': categoryItemsLimitConfiguration!
          .encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (colorItemsLimitConfiguration != null)
      'color_items_limit_configuration': colorItemsLimitConfiguration!.encode(),
    if (smallMultiplesLimitConfiguration != null)
      'small_multiples_limit_configuration': smallMultiplesLimitConfiguration!
          .encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions?
  donutOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (contributionAnalysisDefaults != null)
      'contribution_analysis_defaults': [
        for (final e in contributionAnalysisDefaults!) e.encode(),
      ],
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (donutOptions != null) 'donut_options': donutOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (smallMultiplesOptions != null)
      'small_multiples_options': smallMultiplesOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (valueLabelOptions != null)
      'value_label_options': valueLabelOptions!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions({
    this.arcOptions,
    this.donutCenterOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions?
  arcOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions?
  donutCenterOptions;

  Map<String, Object?> encode() => {
    if (arcOptions != null) 'arc_options': arcOptions!.encode(),
    if (donutCenterOptions != null)
      'donut_center_options': donutCenterOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.arc_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions({
    this.arcThickness,
  });

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {
    if (arcThickness != null) 'arc_thickness': arcThickness!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.donut_center_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions({
    this.labelVisibility,
  });

  final TfArg<String>? labelVisibility;

  Map<String, Object?> encode() => {
    if (labelVisibility != null)
      'label_visibility': labelVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells({
    this.pieChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells?
  pieChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (pieChartAggregatedFieldWells != null)
      'pie_chart_aggregated_field_wells': pieChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells.pie_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells({
    this.category,
    this.smallMultiples,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  smallMultiples;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (smallMultiples != null) 'small_multiples': smallMultiples!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  smallMultiplesSort;

  Map<String, Object?> encode() => {
    if (categoryItemsLimit != null)
      'category_items_limit': categoryItemsLimit!.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (smallMultiplesLimitConfiguration != null)
      'small_multiples_limit_configuration': smallMultiplesLimitConfiguration!
          .encode(),
    if (smallMultiplesSort != null)
      'small_multiples_sort': [for (final e in smallMultiplesSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisual {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (conditionalFormatting != null)
      'conditional_formatting': conditionalFormatting!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions?
  fieldOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions?
  paginatedReportOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions?
  tableOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions?
  totalOptions;

  Map<String, Object?> encode() => {
    if (fieldOptions != null) 'field_options': fieldOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (paginatedReportOptions != null)
      'paginated_report_options': paginatedReportOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tableOptions != null) 'table_options': tableOptions!.encode(),
    if (totalOptions != null) 'total_options': totalOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions({
    this.dataPathOptions,
    this.selectedFieldOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions
  >?
  dataPathOptions;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions
  >?
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
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions({
    this.width,
    required this.dataPathList,
  });

  final TfArg<String>? width;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  >
  dataPathList;

  Map<String, Object?> encode() => {
    if (width != null) 'width': width!.toTfJson(),
    'data_path_list': [for (final e in dataPathList) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions({
    this.customLabel,
    required this.fieldId,
    this.visibility,
  });

  final TfArg<String>? customLabel;

  final TfArg<String> fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells({
    this.pivotTableAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells?
  pivotTableAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (pivotTableAggregatedFieldWells != null)
      'pivot_table_aggregated_field_wells': pivotTableAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells.pivot_table_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  columns;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  rows;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

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
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions({
    this.overflowColumnHeaderVisibility,
    this.verticalOverflowVisibility,
  });

  final TfArg<String>? overflowColumnHeaderVisibility;

  final TfArg<String>? verticalOverflowVisibility;

  Map<String, Object?> encode() => {
    if (overflowColumnHeaderVisibility != null)
      'overflow_column_header_visibility': overflowColumnHeaderVisibility!
          .toTfJson(),
    if (verticalOverflowVisibility != null)
      'vertical_overflow_visibility': verticalOverflowVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration({
    this.fieldSortOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions
  >?
  fieldSortOptions;

  Map<String, Object?> encode() => {
    if (fieldSortOptions != null)
      'field_sort_options': [for (final e in fieldSortOptions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions({
    required this.fieldId,
    required this.sortBy,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy
  sortBy;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy({
    this.column,
    this.dataPath,
    this.field,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort?
  column;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath?
  dataPath;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort?
  field;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.encode(),
    if (dataPath != null) 'data_path': dataPath!.encode(),
    if (field != null) 'field': field!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by.data_path` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath({
    required this.direction,
    required this.sortPaths,
  });

  final TfArg<String> direction;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  >
  sortPaths;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'sort_paths': [for (final e in sortPaths) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions({
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

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  cellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  columnHeaderStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions?
  rowAlternateColorOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  rowFieldNamesStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  rowHeaderStyle;

  Map<String, Object?> encode() => {
    if (collapsedRowDimensionsVisibility != null)
      'collapsed_row_dimensions_visibility': collapsedRowDimensionsVisibility!
          .toTfJson(),
    if (columnNamesVisibility != null)
      'column_names_visibility': columnNamesVisibility!.toTfJson(),
    if (metricPlacement != null)
      'metric_placement': metricPlacement!.toTfJson(),
    if (singleMetricVisibility != null)
      'single_metric_visibility': singleMetricVisibility!.toTfJson(),
    if (toggleButtonsVisibility != null)
      'toggle_buttons_visibility': toggleButtonsVisibility!.toTfJson(),
    if (cellStyle != null) 'cell_style': cellStyle!.encode(),
    if (columnHeaderStyle != null)
      'column_header_style': columnHeaderStyle!.encode(),
    if (rowAlternateColorOptions != null)
      'row_alternate_color_options': rowAlternateColorOptions!.encode(),
    if (rowFieldNamesStyle != null)
      'row_field_names_style': rowFieldNamesStyle!.encode(),
    if (rowHeaderStyle != null) 'row_header_style': rowHeaderStyle!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle({
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

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder?
  border;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (height != null) 'height': height!.toTfJson(),
    if (horizontalTextAlignment != null)
      'horizontal_text_alignment': horizontalTextAlignment!.toTfJson(),
    if (textWrap != null) 'text_wrap': textWrap!.toTfJson(),
    if (verticalTextAlignment != null)
      'vertical_text_alignment': verticalTextAlignment!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (border != null) 'border': border!.encode(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder({
    this.sideSpecificBorder,
    required this.uniformBorder,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder?
  sideSpecificBorder;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  uniformBorder;

  Map<String, Object?> encode() => {
    if (sideSpecificBorder != null)
      'side_specific_border': sideSpecificBorder!.encode(),
    'uniform_border': uniformBorder.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.side_specific_border` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder({
    required this.bottom,
    required this.innerHorizontal,
    required this.innerVertical,
    required this.left,
    required this.right,
    required this.top,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  bottom;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  innerHorizontal;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  innerVertical;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  left;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  right;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  top;

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
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder({
    this.color,
    this.style,
    this.thickness,
  });

  final TfArg<String>? color;

  final TfArg<String>? style;

  final TfArg<num>? thickness;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
    if (style != null) 'style': style!.toTfJson(),
    if (thickness != null) 'thickness': thickness!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.row_alternate_color_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions({
    this.rowAlternateColors,
    this.status,
  });

  final TfArg<List<Object?>>? rowAlternateColors;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (rowAlternateColors != null)
      'row_alternate_colors': rowAlternateColors!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions({
    this.columnSubtotalOptions,
    this.columnTotalOptions,
    this.rowSubtotalOptions,
    this.rowTotalOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions?
  columnSubtotalOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions?
  columnTotalOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions?
  rowSubtotalOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions?
  rowTotalOptions;

  Map<String, Object?> encode() => {
    if (columnSubtotalOptions != null)
      'column_subtotal_options': columnSubtotalOptions!.encode(),
    if (columnTotalOptions != null)
      'column_total_options': columnTotalOptions!.encode(),
    if (rowSubtotalOptions != null)
      'row_subtotal_options': rowSubtotalOptions!.encode(),
    if (rowTotalOptions != null) 'row_total_options': rowTotalOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions({
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

  final List<
    QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions
  >?
  fieldLevelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  metricHeaderCellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  totalCellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  valueCellStyle;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (fieldLevel != null) 'field_level': fieldLevel!.toTfJson(),
    if (totalsVisibility != null)
      'totals_visibility': totalsVisibility!.toTfJson(),
    if (fieldLevelOptions != null)
      'field_level_options': [for (final e in fieldLevelOptions!) e.encode()],
    if (metricHeaderCellStyle != null)
      'metric_header_cell_style': metricHeaderCellStyle!.encode(),
    if (totalCellStyle != null) 'total_cell_style': totalCellStyle!.encode(),
    if (valueCellStyle != null) 'value_cell_style': valueCellStyle!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options.field_level_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions({
    this.fieldId,
  });

  final TfArg<String>? fieldId;

  Map<String, Object?> encode() => {
    if (fieldId != null) 'field_id': fieldId!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions({
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

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  metricHeaderCellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  totalCellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  valueCellStyle;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (placement != null) 'placement': placement!.toTfJson(),
    if (scrollStatus != null) 'scroll_status': scrollStatus!.toTfJson(),
    if (totalsVisibility != null)
      'totals_visibility': totalsVisibility!.toTfJson(),
    if (metricHeaderCellStyle != null)
      'metric_header_cell_style': metricHeaderCellStyle!.encode(),
    if (totalCellStyle != null) 'total_cell_style': totalCellStyle!.encode(),
    if (valueCellStyle != null) 'value_cell_style': valueCellStyle!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormatting {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions
  >?
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
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions({
    this.cell,
  });

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell?
  cell;

  Map<String, Object?> encode() => {if (cell != null) 'cell': cell!.encode()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell({
    required this.fieldId,
    this.scope,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope?
  scope;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat?
  textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (scope != null) 'scope': scope!.encode(),
    if (textFormat != null) 'text_format': textFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.scope` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope({
    this.role,
  });

  final TfArg<String>? role;

  Map<String, Object?> encode() => {if (role != null) 'role': role!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.text_format` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat {
  const QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat({
    required this.backgroundColor,
    this.icon,
    required this.textColor,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon?
  icon;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    if (icon != null) 'icon': icon!.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsRadarChartVisual {
  const QuicksightDashboardDefinitionSheetsVisualsRadarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings?
  baseSeriesSettings;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  colorAxis;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  Map<String, Object?> encode() => {
    if (alternateBandColorsVisibility != null)
      'alternate_band_colors_visibility': alternateBandColorsVisibility!
          .toTfJson(),
    if (alternateBandEvenColor != null)
      'alternate_band_even_color': alternateBandEvenColor!.toTfJson(),
    if (alternateBandOddColor != null)
      'alternate_band_odd_color': alternateBandOddColor!.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (startAngle != null) 'start_angle': startAngle!.toTfJson(),
    if (baseSeriesSettings != null)
      'base_series_settings': baseSeriesSettings!.encode(),
    if (categoryAxis != null) 'category_axis': categoryAxis!.encode(),
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (colorAxis != null) 'color_axis': colorAxis!.encode(),
    if (colorLabelOptions != null)
      'color_label_options': colorLabelOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.base_series_settings` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings {
  const QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings({
    this.areaStyleSettings,
  });

  final QuicksightDashboardDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  areaStyleSettings;

  Map<String, Object?> encode() => {
    if (areaStyleSettings != null)
      'area_style_settings': areaStyleSettings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells({
    this.radarChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells?
  radarChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (radarChartAggregatedFieldWells != null)
      'radar_chart_aggregated_field_wells': radarChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells.radar_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells({
    this.category,
    this.color,
    this.values,
  });

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  color;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.encode(),
    if (color != null) 'color': color!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisual {
  const QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.sortConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells({
    this.sankeyDiagramAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells?
  sankeyDiagramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (sankeyDiagramAggregatedFieldWells != null)
      'sankey_diagram_aggregated_field_wells':
          sankeyDiagramAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells.sankey_diagram_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells({
    this.destination,
    this.source,
    this.weight,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  destination;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  source;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  weight;

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
final class QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration({
    this.destinationItemsLimit,
    this.sourceItemsLimit,
    this.weightSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  destinationItemsLimit;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  sourceItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  weightSort;

  Map<String, Object?> encode() => {
    if (destinationItemsLimit != null)
      'destination_items_limit': destinationItemsLimit!.encode(),
    if (sourceItemsLimit != null)
      'source_items_limit': sourceItemsLimit!.encode(),
    if (weightSort != null)
      'weight_sort': [for (final e in weightSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisual {
  const QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  xAxisLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  yAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  yAxisLabelOptions;

  Map<String, Object?> encode() => {
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
    if (xAxisDisplayOptions != null)
      'x_axis_display_options': xAxisDisplayOptions!.encode(),
    if (xAxisLabelOptions != null)
      'x_axis_label_options': xAxisLabelOptions!.encode(),
    if (yAxisDisplayOptions != null)
      'y_axis_display_options': yAxisDisplayOptions!.encode(),
    if (yAxisLabelOptions != null)
      'y_axis_label_options': yAxisLabelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells({
    this.scatterPlotCategoricallyAggregatedFieldWells,
    this.scatterPlotUnaggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells?
  scatterPlotCategoricallyAggregatedFieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells?
  scatterPlotUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (scatterPlotCategoricallyAggregatedFieldWells != null)
      'scatter_plot_categorically_aggregated_field_wells':
          scatterPlotCategoricallyAggregatedFieldWells!.encode(),
    if (scatterPlotUnaggregatedFieldWells != null)
      'scatter_plot_unaggregated_field_wells':
          scatterPlotUnaggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_categorically_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells({
    this.category,
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  size;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  xAxis;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  yAxis;

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
final class QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells({
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  size;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  xAxis;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  yAxis;

  Map<String, Object?> encode() => {
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisual {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (conditionalFormatting != null)
      'conditional_formatting': conditionalFormatting!.encode(),
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableInlineVisualizations,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions?
  fieldOptions;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions?
  paginatedReportOptions;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations
  >?
  tableInlineVisualizations;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions?
  tableOptions;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions?
  totalOptions;

  Map<String, Object?> encode() => {
    if (fieldOptions != null) 'field_options': fieldOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (paginatedReportOptions != null)
      'paginated_report_options': paginatedReportOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tableInlineVisualizations != null)
      'table_inline_visualizations': [
        for (final e in tableInlineVisualizations!) e.encode(),
      ],
    if (tableOptions != null) 'table_options': tableOptions!.encode(),
    if (totalOptions != null) 'total_options': totalOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions({
    this.order,
    this.selectedFieldOptions,
  });

  final TfArg<List<Object?>>? order;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions
  >?
  selectedFieldOptions;

  Map<String, Object?> encode() => {
    if (order != null) 'order': order!.toTfJson(),
    if (selectedFieldOptions != null)
      'selected_field_options': [
        for (final e in selectedFieldOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions({
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

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling?
  urlStyling;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (width != null) 'width': width!.toTfJson(),
    if (urlStyling != null) 'url_styling': urlStyling!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling({
    this.imageConfiguration,
    this.linkConfiguration,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration?
  imageConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration?
  linkConfiguration;

  Map<String, Object?> encode() => {
    if (imageConfiguration != null)
      'image_configuration': imageConfiguration!.encode(),
    if (linkConfiguration != null)
      'link_configuration': linkConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration({
    this.sizingOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions?
  sizingOptions;

  Map<String, Object?> encode() => {
    if (sizingOptions != null) 'sizing_options': sizingOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration.sizing_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions({
    this.tableCellImageScalingConfiguration,
  });

  final TfArg<String>? tableCellImageScalingConfiguration;

  Map<String, Object?> encode() => {
    if (tableCellImageScalingConfiguration != null)
      'table_cell_image_scaling_configuration':
          tableCellImageScalingConfiguration!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration({
    this.target,
    this.content,
  });

  final TfArg<String>? target;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent?
  content;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (content != null) 'content': content!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent({
    this.customIconContent,
    this.customTextContent,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent?
  customIconContent;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent?
  customTextContent;

  Map<String, Object?> encode() => {
    if (customIconContent != null)
      'custom_icon_content': customIconContent!.encode(),
    if (customTextContent != null)
      'custom_text_content': customTextContent!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_icon_content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent({
    this.icon,
  });

  final TfArg<String>? icon;

  Map<String, Object?> encode() => {if (icon != null) 'icon': icon!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_text_content` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent({
    this.value,
    this.fontConfiguration,
  });

  final TfArg<String>? value;

  final QuicksightDashboardDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells({
    this.tableAggregatedFieldWells,
    this.tableUnaggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells?
  tableAggregatedFieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells?
  tableUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (tableAggregatedFieldWells != null)
      'table_aggregated_field_wells': tableAggregatedFieldWells!.encode(),
    if (tableUnaggregatedFieldWells != null)
      'table_unaggregated_field_wells': tableUnaggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  groupBy;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells({
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells.values` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues({
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionColumnConfigurationsColumn column;

  final QuicksightDashboardDefinitionColumnConfigurationsFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration({
    this.paginationConfiguration,
    this.rowSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration?
  paginationConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  rowSort;

  Map<String, Object?> encode() => {
    if (paginationConfiguration != null)
      'pagination_configuration': paginationConfiguration!.encode(),
    if (rowSort != null) 'row_sort': [for (final e in rowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations({
    this.dataBars,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars?
  dataBars;

  Map<String, Object?> encode() => {
    if (dataBars != null) 'data_bars': dataBars!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations.data_bars` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars({
    required this.fieldId,
    this.negativeColor,
    this.positiveColor,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? negativeColor;

  final TfArg<String>? positiveColor;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (negativeColor != null) 'negative_color': negativeColor!.toTfJson(),
    if (positiveColor != null) 'positive_color': positiveColor!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions({
    this.orientation,
    this.cellStyle,
    this.headerStyle,
    this.rowAlternateColorOptions,
  });

  final TfArg<String>? orientation;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  cellStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  headerStyle;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions?
  rowAlternateColorOptions;

  Map<String, Object?> encode() => {
    if (orientation != null) 'orientation': orientation!.toTfJson(),
    if (cellStyle != null) 'cell_style': cellStyle!.encode(),
    if (headerStyle != null) 'header_style': headerStyle!.encode(),
    if (rowAlternateColorOptions != null)
      'row_alternate_color_options': rowAlternateColorOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions({
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

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  totalCellStyle;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (placement != null) 'placement': placement!.toTfJson(),
    if (scrollStatus != null) 'scroll_status': scrollStatus!.toTfJson(),
    if (totalsVisibility != null)
      'totals_visibility': totalsVisibility!.toTfJson(),
    if (totalCellStyle != null) 'total_cell_style': totalCellStyle!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormatting {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions
  >?
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
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions({
    this.cell,
    this.row,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell?
  cell;

  final QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow?
  row;

  Map<String, Object?> encode() => {
    if (cell != null) 'cell': cell!.encode(),
    if (row != null) 'row': row!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell({
    required this.fieldId,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightDashboardDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat?
  textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (textFormat != null) 'text_format': textFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.row` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow {
  const QuicksightDashboardDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow({
    required this.backgroundColor,
    required this.textColor,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTreeMapVisual {
  const QuicksightDashboardDefinitionSheetsVisualsTreeMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale?
  colorScale;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  groupLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  sizeLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  Map<String, Object?> encode() => {
    if (colorLabelOptions != null)
      'color_label_options': colorLabelOptions!.encode(),
    if (colorScale != null) 'color_scale': colorScale!.encode(),
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (groupLabelOptions != null)
      'group_label_options': groupLabelOptions!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (sizeLabelOptions != null)
      'size_label_options': sizeLabelOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (tooltip != null) 'tooltip': tooltip!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells({
    this.treeMapAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells?
  treeMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (treeMapAggregatedFieldWells != null)
      'tree_map_aggregated_field_wells': treeMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells.tree_map_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells({
    this.colors,
    this.groups,
    this.sizes,
  });

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  colors;

  final QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  groups;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  sizes;

  Map<String, Object?> encode() => {
    if (colors != null) 'colors': colors!.encode(),
    if (groups != null) 'groups': groups!.encode(),
    if (sizes != null) 'sizes': sizes!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration({
    this.treeMapGroupItemsLimitConfiguration,
    this.treeMapSort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  treeMapGroupItemsLimitConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  treeMapSort;

  Map<String, Object?> encode() => {
    if (treeMapGroupItemsLimitConfiguration != null)
      'tree_map_group_items_limit_configuration':
          treeMapGroupItemsLimitConfiguration!.encode(),
    if (treeMapSort != null)
      'tree_map_sort': [for (final e in treeMapSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisual {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfiguration({
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

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryAxisLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions?
  waterfallChartOptions;

  Map<String, Object?> encode() => {
    if (categoryAxisDisplayOptions != null)
      'category_axis_display_options': categoryAxisDisplayOptions!.encode(),
    if (categoryAxisLabelOptions != null)
      'category_axis_label_options': categoryAxisLabelOptions!.encode(),
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (legend != null) 'legend': legend!.encode(),
    if (primaryYAxisDisplayOptions != null)
      'primary_y_axis_display_options': primaryYAxisDisplayOptions!.encode(),
    if (primaryYAxisLabelOptions != null)
      'primary_y_axis_label_options': primaryYAxisLabelOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (visualPalette != null) 'visual_palette': visualPalette!.encode(),
    if (waterfallChartOptions != null)
      'waterfall_chart_options': waterfallChartOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells({
    this.waterfallChartAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells?
  waterfallChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (waterfallChartAggregatedFieldWells != null)
      'waterfall_chart_aggregated_field_wells':
          waterfallChartAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells.waterfall_chart_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells({
    this.breakdowns,
    this.categories,
    this.values,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  breakdowns;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  categories;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

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
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration({
    this.breakdownItemsLimit,
    this.categorySort,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  breakdownItemsLimit;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  Map<String, Object?> encode() => {
    if (breakdownItemsLimit != null)
      'breakdown_items_limit': breakdownItemsLimit!.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.waterfall_chart_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions {
  const QuicksightDashboardDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions({
    this.totalBarLabel,
  });

  final TfArg<String>? totalBarLabel;

  Map<String, Object?> encode() => {
    if (totalBarLabel != null) 'total_bar_label': totalBarLabel!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWordCloudVisual {
  const QuicksightDashboardDefinitionSheetsVisualsWordCloudVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightDashboardDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightDashboardDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    if (chartConfiguration != null)
      'chart_configuration': chartConfiguration!.encode(),
    if (columnHierarchies != null)
      'column_hierarchies': [for (final e in columnHierarchies!) e.encode()],
    if (subtitle != null) 'subtitle': subtitle!.encode(),
    if (title != null) 'title': title!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfiguration {
  const QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfiguration({
    this.categoryLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.wordCloudOptions,
  });

  final QuicksightDashboardDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightDashboardDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions?
  wordCloudOptions;

  Map<String, Object?> encode() => {
    if (categoryLabelOptions != null)
      'category_label_options': categoryLabelOptions!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
    if (wordCloudOptions != null)
      'word_cloud_options': wordCloudOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells({
    this.wordCloudAggregatedFieldWells,
  });

  final QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells?
  wordCloudAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (wordCloudAggregatedFieldWells != null)
      'word_cloud_aggregated_field_wells': wordCloudAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells.word_cloud_aggregated_field_wells` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells {
  const QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells({
    this.groupBy,
    this.size,
  });

  final List<
    QuicksightDashboardDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  groupBy;

  final QuicksightDashboardDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  size;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (size != null) 'size': size!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.word_cloud_options` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions {
  const QuicksightDashboardDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions({
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
    if (cloudLayout != null) 'cloud_layout': cloudLayout!.toTfJson(),
    if (maximumStringLength != null)
      'maximum_string_length': maximumStringLength!.toTfJson(),
    if (wordCasing != null) 'word_casing': wordCasing!.toTfJson(),
    if (wordOrientation != null)
      'word_orientation': wordOrientation!.toTfJson(),
    if (wordPadding != null) 'word_padding': wordPadding!.toTfJson(),
    if (wordScaling != null) 'word_scaling': wordScaling!.toTfJson(),
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

  final List<QuicksightDashboardParametersDateTimeParameters>?
  dateTimeParameters;

  final List<QuicksightDashboardParametersDateTimeParameters>?
  decimalParameters;

  final List<QuicksightDashboardParametersDateTimeParameters>?
  integerParameters;

  final List<QuicksightDashboardParametersDateTimeParameters>? stringParameters;

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
final class QuicksightDashboardParametersDateTimeParameters {
  const QuicksightDashboardParametersDateTimeParameters({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

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

  final TfArg<List<Object?>> actions;

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

  final QuicksightDashboardSourceEntitySourceTemplate? sourceTemplate;

  Map<String, Object?> encode() => {
    if (sourceTemplate != null) 'source_template': sourceTemplate!.encode(),
  };
}

/// Typed helper for the `source_entity.source_template` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSourceEntitySourceTemplate {
  const QuicksightDashboardSourceEntitySourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  final TfArg<String> arn;

  final List<QuicksightDashboardSourceEntitySourceTemplateDataSetReferences>
  dataSetReferences;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'data_set_references': [for (final e in dataSetReferences) e.encode()],
  };
}

/// Typed helper for the `source_entity.source_template.data_set_references` block of
/// `aws_quicksight_dashboard` (derived from provider schema).
@immutable
final class QuicksightDashboardSourceEntitySourceTemplateDataSetReferences {
  const QuicksightDashboardSourceEntitySourceTemplateDataSetReferences({
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
    QuicksightDashboardDashboardPublishOptions? dashboardPublishOptions,
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
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'dashboard_id': dashboardId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (themeArn != null) 'theme_arn': themeArn,
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
}
