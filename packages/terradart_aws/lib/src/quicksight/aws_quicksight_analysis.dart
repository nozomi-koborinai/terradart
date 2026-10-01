// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_analysis`.
const Set<String> _awsQuicksightAnalysisSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDefinition {
  const QuicksightAnalysisDefinition({
    this.analysisDefaults,
    this.calculatedFields,
    this.columnConfigurations,
    required this.dataSetIdentifiersDeclarations,
    this.filterGroups,
    this.parameterDeclarations,
    this.sheets,
  });

  final QuicksightAnalysisDefaults? analysisDefaults;

  final List<QuicksightAnalysisCalculatedFields>? calculatedFields;

  final List<QuicksightAnalysisColumnConfigurations>? columnConfigurations;

  final List<QuicksightAnalysisDataSetIdentifiersDeclarations>
  dataSetIdentifiersDeclarations;

  final List<QuicksightAnalysisFilterGroups>? filterGroups;

  final List<QuicksightAnalysisParameterDeclarations>? parameterDeclarations;

  final List<QuicksightAnalysisSheets>? sheets;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDefaults {
  const QuicksightAnalysisDefaults({
    required this.defaultNewSheetConfiguration,
  });

  final QuicksightAnalysisDefaultNewSheetConfiguration
  defaultNewSheetConfiguration;

  Map<String, Object?> encode() => {
    'default_new_sheet_configuration': defaultNewSheetConfiguration.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDefaultNewSheetConfiguration {
  const QuicksightAnalysisDefaultNewSheetConfiguration({
    this.sheetContentType,
    this.interactiveLayoutConfiguration,
    this.paginatedLayoutConfiguration,
  });

  final TfArg<String>? sheetContentType;

  final QuicksightAnalysisInteractiveLayoutConfiguration?
  interactiveLayoutConfiguration;

  final QuicksightAnalysisPaginatedLayoutConfiguration?
  paginatedLayoutConfiguration;

  Map<String, Object?> encode() => {
    'sheet_content_type': ?sheetContentType?.toTfJson(),
    'interactive_layout_configuration': ?interactiveLayoutConfiguration
        ?.encode(),
    'paginated_layout_configuration': ?paginatedLayoutConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisInteractiveLayoutConfiguration {
  const QuicksightAnalysisInteractiveLayoutConfiguration({
    this.freeForm,
    this.grid,
  });

  final QuicksightAnalysisFreeForm? freeForm;

  final QuicksightAnalysisGrid? grid;

  Map<String, Object?> encode() => {
    'free_form': ?freeForm?.encode(),
    'grid': ?grid?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFreeForm {
  const QuicksightAnalysisFreeForm({required this.canvasSizeOptions});

  final QuicksightAnalysisFreeFormCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFreeFormCanvasSizeOptions {
  const QuicksightAnalysisFreeFormCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightAnalysisFreeFormScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFreeFormScreenCanvasSizeOptions {
  const QuicksightAnalysisFreeFormScreenCanvasSizeOptions({
    required this.optimizedViewPortWidth,
  });

  final TfArg<String> optimizedViewPortWidth;

  Map<String, Object?> encode() => {
    'optimized_view_port_width': optimizedViewPortWidth.toTfJson(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGrid {
  const QuicksightAnalysisGrid({required this.canvasSizeOptions});

  final QuicksightAnalysisGridCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisGridCanvasSizeOptions {
  const QuicksightAnalysisGridCanvasSizeOptions({this.screenCanvasSizeOptions});

  final QuicksightAnalysisGridScreenCanvasSizeOptions? screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisGridScreenCanvasSizeOptions {
  const QuicksightAnalysisGridScreenCanvasSizeOptions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPaginatedLayoutConfiguration {
  const QuicksightAnalysisPaginatedLayoutConfiguration({this.sectionBased});

  final QuicksightAnalysisSectionBased? sectionBased;

  Map<String, Object?> encode() => {'section_based': ?sectionBased?.encode()};
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSectionBased {
  const QuicksightAnalysisSectionBased({required this.canvasSizeOptions});

  final QuicksightAnalysisSectionBasedCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSectionBasedCanvasSizeOptions {
  const QuicksightAnalysisSectionBasedCanvasSizeOptions({
    this.paperCanvasSizeOptions,
  });

  final QuicksightAnalysisPaperCanvasSizeOptions? paperCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'paper_canvas_size_options': ?paperCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPaperCanvasSizeOptions {
  const QuicksightAnalysisPaperCanvasSizeOptions({
    this.paperOrientation,
    this.paperSize,
    this.paperMargin,
  });

  final TfArg<String>? paperOrientation;

  final TfArg<String>? paperSize;

  final QuicksightAnalysisPaperMargin? paperMargin;

  Map<String, Object?> encode() => {
    'paper_orientation': ?paperOrientation?.toTfJson(),
    'paper_size': ?paperSize?.toTfJson(),
    'paper_margin': ?paperMargin?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options.paper_margin` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPaperMargin {
  const QuicksightAnalysisPaperMargin({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCalculatedFields {
  const QuicksightAnalysisCalculatedFields({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisColumnConfigurations {
  const QuicksightAnalysisColumnConfigurations({
    this.role,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? role;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.column` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumn {
  const QuicksightAnalysisColumn({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFormatConfiguration {
  const QuicksightAnalysisFormatConfiguration({
    this.dateTimeFormatConfiguration,
    this.numberFormatConfiguration,
    this.stringFormatConfiguration,
  });

  final QuicksightAnalysisDateTimeFormatConfiguration?
  dateTimeFormatConfiguration;

  final QuicksightAnalysisNumberFormatConfiguration? numberFormatConfiguration;

  final QuicksightAnalysisStringFormatConfiguration? stringFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format_configuration': ?dateTimeFormatConfiguration?.encode(),
    'number_format_configuration': ?numberFormatConfiguration?.encode(),
    'string_format_configuration': ?stringFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateTimeFormatConfiguration {
  const QuicksightAnalysisDateTimeFormatConfiguration({
    this.dateTimeFormat,
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightAnalysisNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightAnalysisNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.null_value_format_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNullValueFormatConfiguration {
  const QuicksightAnalysisNullValueFormatConfiguration({
    required this.nullString,
  });

  final TfArg<String> nullString;

  Map<String, Object?> encode() => {'null_string': nullString.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericFormatConfiguration {
  const QuicksightAnalysisNumericFormatConfiguration({
    this.currencyDisplayFormatConfiguration,
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightAnalysisCurrencyDisplayFormatConfiguration?
  currencyDisplayFormatConfiguration;

  final QuicksightAnalysisNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightAnalysisPercentageDisplayFormatConfiguration?
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCurrencyDisplayFormatConfiguration {
  const QuicksightAnalysisCurrencyDisplayFormatConfiguration({
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

  final QuicksightAnalysisDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightAnalysisNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightAnalysisNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightAnalysisSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDecimalPlacesConfiguration {
  const QuicksightAnalysisDecimalPlacesConfiguration({
    required this.decimalPlaces,
  });

  final TfArg<num> decimalPlaces;

  Map<String, Object?> encode() => {'decimal_places': decimalPlaces.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.negative_value_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNegativeValueConfiguration {
  const QuicksightAnalysisNegativeValueConfiguration({
    required this.displayMode,
  });

  final TfArg<String> displayMode;

  Map<String, Object?> encode() => {'display_mode': displayMode.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSeparatorConfiguration {
  const QuicksightAnalysisSeparatorConfiguration({
    this.decimalSeparator,
    this.thousandsSeparator,
  });

  final TfArg<String>? decimalSeparator;

  final QuicksightAnalysisThousandsSeparator? thousandsSeparator;

  Map<String, Object?> encode() => {
    'decimal_separator': ?decimalSeparator?.toTfJson(),
    'thousands_separator': ?thousandsSeparator?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration.thousands_separator` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisThousandsSeparator {
  const QuicksightAnalysisThousandsSeparator({this.symbol, this.visibility});

  final TfArg<String>? symbol;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'symbol': ?symbol?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.number_display_format_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumberDisplayFormatConfiguration {
  const QuicksightAnalysisNumberDisplayFormatConfiguration({
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

  final QuicksightAnalysisDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightAnalysisNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightAnalysisNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightAnalysisSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPercentageDisplayFormatConfiguration {
  const QuicksightAnalysisPercentageDisplayFormatConfiguration({
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightAnalysisDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightAnalysisNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightAnalysisNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightAnalysisSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumberFormatConfiguration {
  const QuicksightAnalysisNumberFormatConfiguration({
    this.numericFormatConfiguration,
  });

  final QuicksightAnalysisNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.string_format_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisStringFormatConfiguration {
  const QuicksightAnalysisStringFormatConfiguration({
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final QuicksightAnalysisNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightAnalysisNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.data_set_identifiers_declarations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataSetIdentifiersDeclarations {
  const QuicksightAnalysisDataSetIdentifiersDeclarations({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterGroups {
  const QuicksightAnalysisFilterGroups({
    required this.crossDataset,
    required this.filterGroupId,
    this.status,
    required this.filters,
    required this.scopeConfiguration,
  });

  final TfArg<String> crossDataset;

  final TfArg<String> filterGroupId;

  final TfArg<String>? status;

  final List<QuicksightAnalysisFilters> filters;

  final QuicksightAnalysisScopeConfiguration scopeConfiguration;

  Map<String, Object?> encode() => {
    'cross_dataset': crossDataset.toTfJson(),
    'filter_group_id': filterGroupId.toTfJson(),
    'status': ?status?.toTfJson(),
    'filters': [for (final e in filters) e.encode()],
    'scope_configuration': scopeConfiguration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilters {
  const QuicksightAnalysisFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.numericRangeFilter,
    this.relativeDatesFilter,
    this.timeEqualityFilter,
    this.timeRangeFilter,
    this.topBottomFilter,
  });

  final QuicksightAnalysisCategoryFilter? categoryFilter;

  final QuicksightAnalysisNumericEqualityFilter? numericEqualityFilter;

  final QuicksightAnalysisNumericRangeFilter? numericRangeFilter;

  final QuicksightAnalysisRelativeDatesFilter? relativeDatesFilter;

  final QuicksightAnalysisTimeEqualityFilter? timeEqualityFilter;

  final QuicksightAnalysisTimeRangeFilter? timeRangeFilter;

  final QuicksightAnalysisTopBottomFilter? topBottomFilter;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCategoryFilter {
  const QuicksightAnalysisCategoryFilter({
    required this.filterId,
    required this.column,
    required this.configuration,
  });

  final TfArg<String> filterId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisCategoryFilterConfiguration configuration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'column': column.encode(),
    'configuration': configuration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCategoryFilterConfiguration {
  const QuicksightAnalysisCategoryFilterConfiguration({
    this.customFilterConfiguration,
    this.customFilterListConfiguration,
    this.filterListConfiguration,
  });

  final QuicksightAnalysisCustomFilterConfiguration? customFilterConfiguration;

  final QuicksightAnalysisCustomFilterListConfiguration?
  customFilterListConfiguration;

  final QuicksightAnalysisFilterListConfiguration? filterListConfiguration;

  Map<String, Object?> encode() => {
    'custom_filter_configuration': ?customFilterConfiguration?.encode(),
    'custom_filter_list_configuration': ?customFilterListConfiguration
        ?.encode(),
    'filter_list_configuration': ?filterListConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomFilterConfiguration {
  const QuicksightAnalysisCustomFilterConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomFilterListConfiguration {
  const QuicksightAnalysisCustomFilterListConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterListConfiguration {
  const QuicksightAnalysisFilterListConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisNumericEqualityFilter {
  const QuicksightAnalysisNumericEqualityFilter({
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

  final QuicksightAnalysisAggregationFunction? aggregationFunction;

  final QuicksightAnalysisColumn column;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisAggregationFunction {
  const QuicksightAnalysisAggregationFunction({
    this.categoricalAggregationFunction,
    this.dateAggregationFunction,
    this.numericalAggregationFunction,
  });

  final TfArg<String>? categoricalAggregationFunction;

  final TfArg<String>? dateAggregationFunction;

  final QuicksightAnalysisNumericalAggregationFunction?
  numericalAggregationFunction;

  Map<String, Object?> encode() => {
    'categorical_aggregation_function': ?categoricalAggregationFunction
        ?.toTfJson(),
    'date_aggregation_function': ?dateAggregationFunction?.toTfJson(),
    'numerical_aggregation_function': ?numericalAggregationFunction?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericalAggregationFunction {
  const QuicksightAnalysisNumericalAggregationFunction({
    this.simpleNumericalAggregation,
    this.percentileAggregation,
  });

  final TfArg<String>? simpleNumericalAggregation;

  final QuicksightAnalysisPercentileAggregation? percentileAggregation;

  Map<String, Object?> encode() => {
    'simple_numerical_aggregation': ?simpleNumericalAggregation?.toTfJson(),
    'percentile_aggregation': ?percentileAggregation?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function.percentile_aggregation` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPercentileAggregation {
  const QuicksightAnalysisPercentileAggregation({this.percentileValue});

  final TfArg<num>? percentileValue;

  Map<String, Object?> encode() => {
    'percentile_value': ?percentileValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisNumericRangeFilter {
  const QuicksightAnalysisNumericRangeFilter({
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

  final QuicksightAnalysisAggregationFunction? aggregationFunction;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisRangeMaximum? rangeMaximum;

  final QuicksightAnalysisRangeMaximum? rangeMinimum;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisRangeMaximum {
  const QuicksightAnalysisRangeMaximum({this.parameter, this.staticValue});

  final TfArg<String>? parameter;

  final TfArg<num>? staticValue;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRelativeDatesFilter {
  const QuicksightAnalysisRelativeDatesFilter({
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

  final QuicksightAnalysisAnchorDateConfiguration anchorDateConfiguration;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisExcludePeriodConfiguration?
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisAnchorDateConfiguration {
  const QuicksightAnalysisAnchorDateConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisExcludePeriodConfiguration {
  const QuicksightAnalysisExcludePeriodConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTimeEqualityFilter {
  const QuicksightAnalysisTimeEqualityFilter({
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

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'value': ?value?.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTimeRangeFilter {
  const QuicksightAnalysisTimeRangeFilter({
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

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisExcludePeriodConfiguration?
  excludePeriodConfiguration;

  final QuicksightAnalysisRangeMaximumValue? rangeMaximumValue;

  final QuicksightAnalysisRangeMaximumValue? rangeMinimumValue;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisRangeMaximumValue {
  const QuicksightAnalysisRangeMaximumValue({
    this.parameter,
    this.staticValue,
    this.rollingDate,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? staticValue;

  final QuicksightAnalysisRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.rolling_date` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisRollingDate {
  const QuicksightAnalysisRollingDate({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTopBottomFilter {
  const QuicksightAnalysisTopBottomFilter({
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

  final List<QuicksightAnalysisAggregationSortConfiguration>
  aggregationSortConfiguration;

  final QuicksightAnalysisColumn column;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisAggregationSortConfiguration {
  const QuicksightAnalysisAggregationSortConfiguration({
    required this.sortDirection,
    required this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> sortDirection;

  final QuicksightAnalysisAggregationFunction aggregationFunction;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'sort_direction': sortDirection.toTfJson(),
    'aggregation_function': aggregationFunction.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScopeConfiguration {
  const QuicksightAnalysisScopeConfiguration({this.selectedSheets});

  final QuicksightAnalysisSelectedSheets? selectedSheets;

  Map<String, Object?> encode() => {
    'selected_sheets': ?selectedSheets?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSelectedSheets {
  const QuicksightAnalysisSelectedSheets({
    this.sheetVisualScopingConfigurations,
  });

  final List<QuicksightAnalysisSheetVisualScopingConfigurations>?
  sheetVisualScopingConfigurations;

  Map<String, Object?> encode() => {
    if (sheetVisualScopingConfigurations != null)
      'sheet_visual_scoping_configurations': [
        for (final e in sheetVisualScopingConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets.sheet_visual_scoping_configurations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSheetVisualScopingConfigurations {
  const QuicksightAnalysisSheetVisualScopingConfigurations({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterDeclarations {
  const QuicksightAnalysisParameterDeclarations({
    this.dateTimeParameterDeclaration,
    this.decimalParameterDeclaration,
    this.integerParameterDeclaration,
    this.stringParameterDeclaration,
  });

  final QuicksightAnalysisDateTimeParameterDeclaration?
  dateTimeParameterDeclaration;

  final QuicksightAnalysisDecimalParameterDeclaration?
  decimalParameterDeclaration;

  final QuicksightAnalysisDecimalParameterDeclaration?
  integerParameterDeclaration;

  final QuicksightAnalysisStringParameterDeclaration?
  stringParameterDeclaration;

  Map<String, Object?> encode() => {
    'date_time_parameter_declaration': ?dateTimeParameterDeclaration?.encode(),
    'decimal_parameter_declaration': ?decimalParameterDeclaration?.encode(),
    'integer_parameter_declaration': ?integerParameterDeclaration?.encode(),
    'string_parameter_declaration': ?stringParameterDeclaration?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDateTimeParameterDeclaration {
  const QuicksightAnalysisDateTimeParameterDeclaration({
    required this.name,
    this.timeGranularity,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String>? timeGranularity;

  final QuicksightAnalysisDateTimeParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightAnalysisDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDateTimeParameterDeclarationDefaultValues {
  const QuicksightAnalysisDateTimeParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
    this.rollingDate,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightAnalysisDynamicValue? dynamicValue;

  final QuicksightAnalysisRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.default_values.dynamic_value` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDynamicValue {
  const QuicksightAnalysisDynamicValue({
    required this.defaultValueColumn,
    this.groupNameColumn,
    this.userNameColumn,
  });

  final QuicksightAnalysisColumn defaultValueColumn;

  final QuicksightAnalysisColumn? groupNameColumn;

  final QuicksightAnalysisColumn? userNameColumn;

  Map<String, Object?> encode() => {
    'default_value_column': defaultValueColumn.encode(),
    'group_name_column': ?groupNameColumn?.encode(),
    'user_name_column': ?userNameColumn?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.date_time_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateTimeParameterDeclarationValuesWhenUnset {
  const QuicksightAnalysisDateTimeParameterDeclarationValuesWhenUnset({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDecimalParameterDeclaration {
  const QuicksightAnalysisDecimalParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightAnalysisDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightAnalysisDecimalParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.default_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDecimalParameterDeclarationDefaultValues {
  const QuicksightAnalysisDecimalParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<num>>? staticValues;

  final QuicksightAnalysisDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.decimal_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDecimalParameterDeclarationValuesWhenUnset {
  const QuicksightAnalysisDecimalParameterDeclarationValuesWhenUnset({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisStringParameterDeclaration {
  const QuicksightAnalysisStringParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightAnalysisStringParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightAnalysisDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameter_declarations.string_parameter_declaration.default_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisStringParameterDeclarationDefaultValues {
  const QuicksightAnalysisStringParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightAnalysisDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSheets {
  const QuicksightAnalysisSheets({
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

  final List<QuicksightAnalysisFilterControls>? filterControls;

  final QuicksightAnalysisLayouts? layouts;

  final List<QuicksightAnalysisParameterControls>? parameterControls;

  final QuicksightAnalysisSheetControlLayouts? sheetControlLayouts;

  final List<QuicksightAnalysisTextBoxes>? textBoxes;

  final List<QuicksightAnalysisVisuals>? visuals;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControls {
  const QuicksightAnalysisFilterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.relativeDateTime,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightAnalysisFilterControlsDateTimePicker? dateTimePicker;

  final QuicksightAnalysisFilterControlsDropdown? dropdown;

  final QuicksightAnalysisFilterControlsList? list;

  final QuicksightAnalysisRelativeDateTime? relativeDateTime;

  final QuicksightAnalysisFilterControlsSlider? slider;

  final QuicksightAnalysisFilterControlsTextArea? textArea;

  final QuicksightAnalysisFilterControlsTextField? textField;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsDateTimePicker {
  const QuicksightAnalysisFilterControlsDateTimePicker({
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

  final QuicksightAnalysisDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateTimePickerDisplayOptions {
  const QuicksightAnalysisDateTimePickerDisplayOptions({
    this.dateTimeFormat,
    this.titleOptions,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightAnalysisTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTitleOptions {
  const QuicksightAnalysisTitleOptions({
    this.customLabel,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? visibility;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFontConfiguration {
  const QuicksightAnalysisFontConfiguration({
    this.fontColor,
    this.fontDecoration,
    this.fontStyle,
    this.fontSize,
    this.fontWeight,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? fontDecoration;

  final TfArg<String>? fontStyle;

  final QuicksightAnalysisFontSize? fontSize;

  final QuicksightAnalysisFontWeight? fontWeight;

  Map<String, Object?> encode() => {
    'font_color': ?fontColor?.toTfJson(),
    'font_decoration': ?fontDecoration?.toTfJson(),
    'font_style': ?fontStyle?.toTfJson(),
    'font_size': ?fontSize?.encode(),
    'font_weight': ?fontWeight?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_size` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFontSize {
  const QuicksightAnalysisFontSize({this.relative});

  final TfArg<String>? relative;

  Map<String, Object?> encode() => {'relative': ?relative?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_weight` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFontWeight {
  const QuicksightAnalysisFontWeight({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsDropdown {
  const QuicksightAnalysisFilterControlsDropdown({
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

  final QuicksightAnalysisCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightAnalysisDropdownDisplayOptions? displayOptions;

  final QuicksightAnalysisFilterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCascadingControlConfiguration {
  const QuicksightAnalysisCascadingControlConfiguration({this.sourceControls});

  final List<QuicksightAnalysisSourceControls>? sourceControls;

  Map<String, Object?> encode() => {
    if (sourceControls != null)
      'source_controls': [for (final e in sourceControls!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration.source_controls` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSourceControls {
  const QuicksightAnalysisSourceControls({
    this.sourceSheetControlId,
    required this.columnToMatch,
  });

  final TfArg<String>? sourceSheetControlId;

  final QuicksightAnalysisColumn columnToMatch;

  Map<String, Object?> encode() => {
    'source_sheet_control_id': ?sourceSheetControlId?.toTfJson(),
    'column_to_match': columnToMatch.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDropdownDisplayOptions {
  const QuicksightAnalysisDropdownDisplayOptions({
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightAnalysisSelectAllOptions? selectAllOptions;

  final QuicksightAnalysisTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options.select_all_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSelectAllOptions {
  const QuicksightAnalysisSelectAllOptions({this.visibility});

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {'visibility': ?visibility?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFilterControlsSelectableValues {
  const QuicksightAnalysisFilterControlsSelectableValues({this.values});

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {'values': ?values?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.list` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsList {
  const QuicksightAnalysisFilterControlsList({
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

  final QuicksightAnalysisCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightAnalysisListDisplayOptions? displayOptions;

  final QuicksightAnalysisFilterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisListDisplayOptions {
  const QuicksightAnalysisListDisplayOptions({
    this.searchOptions,
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightAnalysisSelectAllOptions? searchOptions;

  final QuicksightAnalysisSelectAllOptions? selectAllOptions;

  final QuicksightAnalysisTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'search_options': ?searchOptions?.encode(),
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.relative_date_time` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRelativeDateTime {
  const QuicksightAnalysisRelativeDateTime({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightAnalysisDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsSlider {
  const QuicksightAnalysisFilterControlsSlider({
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

  final QuicksightAnalysisSliderDisplayOptions? displayOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSliderDisplayOptions {
  const QuicksightAnalysisSliderDisplayOptions({this.titleOptions});

  final QuicksightAnalysisTitleOptions? titleOptions;

  Map<String, Object?> encode() => {'title_options': ?titleOptions?.encode()};
}

/// Typed helper for the `definition.sheets.filter_controls.text_area` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsTextArea {
  const QuicksightAnalysisFilterControlsTextArea({
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

  final QuicksightAnalysisTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area.display_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTextAreaDisplayOptions {
  const QuicksightAnalysisTextAreaDisplayOptions({
    this.placeholderOptions,
    this.titleOptions,
  });

  final QuicksightAnalysisSelectAllOptions? placeholderOptions;

  final QuicksightAnalysisTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'placeholder_options': ?placeholderOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilterControlsTextField {
  const QuicksightAnalysisFilterControlsTextField({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightAnalysisTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLayouts {
  const QuicksightAnalysisLayouts({required this.configuration});

  final QuicksightAnalysisLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLayoutsConfiguration {
  const QuicksightAnalysisLayoutsConfiguration({
    this.freeFormLayout,
    this.gridLayout,
    this.sectionBasedLayout,
  });

  final QuicksightAnalysisFreeFormLayout? freeFormLayout;

  final QuicksightAnalysisGridLayout? gridLayout;

  final QuicksightAnalysisSectionBasedLayout? sectionBasedLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': ?freeFormLayout?.encode(),
    'grid_layout': ?gridLayout?.encode(),
    'section_based_layout': ?sectionBasedLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFreeFormLayout {
  const QuicksightAnalysisFreeFormLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightAnalysisFreeFormCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightAnalysisFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFreeFormLayoutElements {
  const QuicksightAnalysisFreeFormLayoutElements({
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

  final QuicksightAnalysisBackgroundStyle? backgroundStyle;

  final QuicksightAnalysisBackgroundStyle? borderStyle;

  final QuicksightAnalysisSelectAllOptions? loadingAnimation;

  final List<QuicksightAnalysisRenderingRules>? renderingRules;

  final QuicksightAnalysisBackgroundStyle? selectedBorderStyle;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisBackgroundStyle {
  const QuicksightAnalysisBackgroundStyle({this.color, this.visibility});

  final TfArg<String>? color;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.rendering_rules` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisRenderingRules {
  const QuicksightAnalysisRenderingRules({
    required this.expression,
    required this.configurationOverrides,
  });

  final TfArg<String> expression;

  final QuicksightAnalysisSelectAllOptions configurationOverrides;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'configuration_overrides': configurationOverrides.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisGridLayout {
  const QuicksightAnalysisGridLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightAnalysisGridCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightAnalysisGridLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout.elements` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisGridLayoutElements {
  const QuicksightAnalysisGridLayoutElements({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSectionBasedLayout {
  const QuicksightAnalysisSectionBasedLayout({
    required this.bodySections,
    this.canvasSizeOptions,
    required this.footerSections,
    required this.headerSections,
  });

  final List<QuicksightAnalysisBodySections> bodySections;

  final QuicksightAnalysisSectionBasedCanvasSizeOptions? canvasSizeOptions;

  final QuicksightAnalysisFooterSections footerSections;

  final QuicksightAnalysisFooterSections headerSections;

  Map<String, Object?> encode() => {
    'body_sections': [for (final e in bodySections) e.encode()],
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'footer_sections': footerSections.encode(),
    'header_sections': headerSections.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBodySections {
  const QuicksightAnalysisBodySections({
    required this.sectionId,
    required this.content,
    this.pageBreakConfiguration,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightAnalysisContent content;

  final QuicksightAnalysisPageBreakConfiguration? pageBreakConfiguration;

  final QuicksightAnalysisStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'content': content.encode(),
    'page_break_configuration': ?pageBreakConfiguration?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.content` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisContent {
  const QuicksightAnalysisContent({this.layout});

  final QuicksightAnalysisLayout? layout;

  Map<String, Object?> encode() => {'layout': ?layout?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLayout {
  const QuicksightAnalysisLayout({required this.freeFormLayout});

  final QuicksightAnalysisLayoutFreeFormLayout freeFormLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': freeFormLayout.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout.free_form_layout` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLayoutFreeFormLayout {
  const QuicksightAnalysisLayoutFreeFormLayout({required this.elements});

  final List<QuicksightAnalysisFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPageBreakConfiguration {
  const QuicksightAnalysisPageBreakConfiguration({this.after});

  final QuicksightAnalysisAfter? after;

  Map<String, Object?> encode() => {'after': ?after?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration.after` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisAfter {
  const QuicksightAnalysisAfter({this.status});

  final TfArg<String>? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.style` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisStyle {
  const QuicksightAnalysisStyle({this.height, this.padding});

  final TfArg<String>? height;

  final QuicksightAnalysisPaperMargin? padding;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'padding': ?padding?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFooterSections {
  const QuicksightAnalysisFooterSections({
    required this.sectionId,
    this.layout,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightAnalysisLayout? layout;

  final QuicksightAnalysisStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'layout': ?layout?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControls {
  const QuicksightAnalysisParameterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightAnalysisParameterControlsDateTimePicker? dateTimePicker;

  final QuicksightAnalysisParameterControlsDropdown? dropdown;

  final QuicksightAnalysisParameterControlsList? list;

  final QuicksightAnalysisParameterControlsSlider? slider;

  final QuicksightAnalysisParameterControlsTextArea? textArea;

  final QuicksightAnalysisParameterControlsTextField? textField;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsDateTimePicker {
  const QuicksightAnalysisParameterControlsDateTimePicker({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightAnalysisDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsDropdown {
  const QuicksightAnalysisParameterControlsDropdown({
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

  final QuicksightAnalysisCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightAnalysisDropdownDisplayOptions? displayOptions;

  final QuicksightAnalysisParameterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisParameterControlsSelectableValues {
  const QuicksightAnalysisParameterControlsSelectableValues({
    this.values,
    this.linkToDataSetColumn,
  });

  final TfArg<List<String>>? values;

  final QuicksightAnalysisColumn? linkToDataSetColumn;

  Map<String, Object?> encode() => {
    'values': ?values?.toTfJson(),
    'link_to_data_set_column': ?linkToDataSetColumn?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.list` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsList {
  const QuicksightAnalysisParameterControlsList({
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

  final QuicksightAnalysisCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightAnalysisListDisplayOptions? displayOptions;

  final QuicksightAnalysisParameterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsSlider {
  const QuicksightAnalysisParameterControlsSlider({
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

  final QuicksightAnalysisSliderDisplayOptions? displayOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsTextArea {
  const QuicksightAnalysisParameterControlsTextArea({
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

  final QuicksightAnalysisTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameterControlsTextField {
  const QuicksightAnalysisParameterControlsTextField({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightAnalysisTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.sheet_control_layouts` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSheetControlLayouts {
  const QuicksightAnalysisSheetControlLayouts({required this.configuration});

  final QuicksightAnalysisSheetControlLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.sheet_control_layouts.configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSheetControlLayoutsConfiguration {
  const QuicksightAnalysisSheetControlLayoutsConfiguration({this.gridLayout});

  final QuicksightAnalysisGridLayout? gridLayout;

  Map<String, Object?> encode() => {'grid_layout': ?gridLayout?.encode()};
}

/// Typed helper for the `definition.sheets.text_boxes` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTextBoxes {
  const QuicksightAnalysisTextBoxes({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisVisuals {
  const QuicksightAnalysisVisuals({
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

  final QuicksightAnalysisBarChartVisual? barChartVisual;

  final QuicksightAnalysisBoxPlotVisual? boxPlotVisual;

  final QuicksightAnalysisComboChartVisual? comboChartVisual;

  final QuicksightAnalysisCustomContentVisual? customContentVisual;

  final QuicksightAnalysisEmptyVisual? emptyVisual;

  final QuicksightAnalysisFilledMapVisual? filledMapVisual;

  final QuicksightAnalysisFunnelChartVisual? funnelChartVisual;

  final QuicksightAnalysisGaugeChartVisual? gaugeChartVisual;

  final QuicksightAnalysisGeospatialMapVisual? geospatialMapVisual;

  final QuicksightAnalysisHeatMapVisual? heatMapVisual;

  final QuicksightAnalysisHistogramVisual? histogramVisual;

  final QuicksightAnalysisInsightVisual? insightVisual;

  final QuicksightAnalysisKpiVisual? kpiVisual;

  final QuicksightAnalysisLineChartVisual? lineChartVisual;

  final QuicksightAnalysisPieChartVisual? pieChartVisual;

  final QuicksightAnalysisPivotTableVisual? pivotTableVisual;

  final QuicksightAnalysisRadarChartVisual? radarChartVisual;

  final QuicksightAnalysisSankeyDiagramVisual? sankeyDiagramVisual;

  final QuicksightAnalysisScatterPlotVisual? scatterPlotVisual;

  final QuicksightAnalysisTableVisual? tableVisual;

  final QuicksightAnalysisTreeMapVisual? treeMapVisual;

  final QuicksightAnalysisWaterfallVisual? waterfallVisual;

  final QuicksightAnalysisWordCloudVisual? wordCloudVisual;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBarChartVisual {
  const QuicksightAnalysisBarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisBarChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisActions {
  const QuicksightAnalysisActions({
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

  final List<QuicksightAnalysisActionOperations> actionOperations;

  Map<String, Object?> encode() => {
    'custom_action_id': customActionId.toTfJson(),
    'name': name.toTfJson(),
    'status': status.toTfJson(),
    'trigger': trigger.toTfJson(),
    'action_operations': [for (final e in actionOperations) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisActionOperations {
  const QuicksightAnalysisActionOperations({
    this.filterOperation,
    this.navigationOperation,
    this.setParametersOperation,
    this.urlOperation,
  });

  final QuicksightAnalysisFilterOperation? filterOperation;

  final QuicksightAnalysisNavigationOperation? navigationOperation;

  final QuicksightAnalysisSetParametersOperation? setParametersOperation;

  final QuicksightAnalysisUrlOperation? urlOperation;

  Map<String, Object?> encode() => {
    'filter_operation': ?filterOperation?.encode(),
    'navigation_operation': ?navigationOperation?.encode(),
    'set_parameters_operation': ?setParametersOperation?.encode(),
    'url_operation': ?urlOperation?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFilterOperation {
  const QuicksightAnalysisFilterOperation({
    required this.selectedFieldsConfiguration,
    required this.targetVisualsConfiguration,
  });

  final QuicksightAnalysisSelectedFieldsConfiguration
  selectedFieldsConfiguration;

  final QuicksightAnalysisTargetVisualsConfiguration targetVisualsConfiguration;

  Map<String, Object?> encode() => {
    'selected_fields_configuration': selectedFieldsConfiguration.encode(),
    'target_visuals_configuration': targetVisualsConfiguration.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.selected_fields_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSelectedFieldsConfiguration {
  const QuicksightAnalysisSelectedFieldsConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTargetVisualsConfiguration {
  const QuicksightAnalysisTargetVisualsConfiguration({
    this.sameSheetTargetVisualConfiguration,
  });

  final QuicksightAnalysisSameSheetTargetVisualConfiguration?
  sameSheetTargetVisualConfiguration;

  Map<String, Object?> encode() => {
    'same_sheet_target_visual_configuration':
        ?sameSheetTargetVisualConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration.same_sheet_target_visual_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSameSheetTargetVisualConfiguration {
  const QuicksightAnalysisSameSheetTargetVisualConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNavigationOperation {
  const QuicksightAnalysisNavigationOperation({
    this.localNavigationConfiguration,
  });

  final QuicksightAnalysisLocalNavigationConfiguration?
  localNavigationConfiguration;

  Map<String, Object?> encode() => {
    'local_navigation_configuration': ?localNavigationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation.local_navigation_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLocalNavigationConfiguration {
  const QuicksightAnalysisLocalNavigationConfiguration({
    required this.targetSheetId,
  });

  final TfArg<String> targetSheetId;

  Map<String, Object?> encode() => {
    'target_sheet_id': targetSheetId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSetParametersOperation {
  const QuicksightAnalysisSetParametersOperation({
    required this.parameterValueConfigurations,
  });

  final List<QuicksightAnalysisParameterValueConfigurations>
  parameterValueConfigurations;

  Map<String, Object?> encode() => {
    'parameter_value_configurations': [
      for (final e in parameterValueConfigurations) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisParameterValueConfigurations {
  const QuicksightAnalysisParameterValueConfigurations({
    required this.destinationParameterName,
    required this.value,
  });

  final TfArg<String> destinationParameterName;

  final QuicksightAnalysisValue value;

  Map<String, Object?> encode() => {
    'destination_parameter_name': destinationParameterName.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisValue {
  const QuicksightAnalysisValue({
    this.selectAllValueOptions,
    this.sourceField,
    this.sourceParameterName,
    this.customValuesConfiguration,
  });

  final TfArg<String>? selectAllValueOptions;

  final TfArg<String>? sourceField;

  final TfArg<String>? sourceParameterName;

  final QuicksightAnalysisCustomValuesConfiguration? customValuesConfiguration;

  Map<String, Object?> encode() => {
    'select_all_value_options': ?selectAllValueOptions?.toTfJson(),
    'source_field': ?sourceField?.toTfJson(),
    'source_parameter_name': ?sourceParameterName?.toTfJson(),
    'custom_values_configuration': ?customValuesConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCustomValuesConfiguration {
  const QuicksightAnalysisCustomValuesConfiguration({
    this.includeNullValue,
    required this.customValues,
  });

  final TfArg<bool>? includeNullValue;

  final QuicksightAnalysisCustomValues customValues;

  Map<String, Object?> encode() => {
    'include_null_value': ?includeNullValue?.toTfJson(),
    'custom_values': customValues.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration.custom_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCustomValues {
  const QuicksightAnalysisCustomValues({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisUrlOperation {
  const QuicksightAnalysisUrlOperation({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBarChartVisualChartConfiguration {
  const QuicksightAnalysisBarChartVisualChartConfiguration({
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

  final QuicksightAnalysisCategoryAxis? categoryAxis;

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisCategoryLabelOptions? colorLabelOptions;

  final List<QuicksightAnalysisContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisBarChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final List<QuicksightAnalysisReferenceLines>? referenceLines;

  final QuicksightAnalysisSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightAnalysisBarChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisCategoryAxis? valueAxis;

  final QuicksightAnalysisCategoryLabelOptions? valueLabelOptions;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategoryAxis {
  const QuicksightAnalysisCategoryAxis({
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

  final QuicksightAnalysisDataOptions? dataOptions;

  final QuicksightAnalysisScrollbarOptions? scrollbarOptions;

  final QuicksightAnalysisTickLabelOptions? tickLabelOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataOptions {
  const QuicksightAnalysisDataOptions({
    this.dateAxisOptions,
    this.numericAxisOptions,
  });

  final QuicksightAnalysisDateAxisOptions? dateAxisOptions;

  final QuicksightAnalysisNumericAxisOptions? numericAxisOptions;

  Map<String, Object?> encode() => {
    'date_axis_options': ?dateAxisOptions?.encode(),
    'numeric_axis_options': ?numericAxisOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.date_axis_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateAxisOptions {
  const QuicksightAnalysisDateAxisOptions({this.missingDateVisibility});

  final TfArg<String>? missingDateVisibility;

  Map<String, Object?> encode() => {
    'missing_date_visibility': ?missingDateVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericAxisOptions {
  const QuicksightAnalysisNumericAxisOptions({this.range, this.scale});

  final QuicksightAnalysisNumericAxisOptionsRange? range;

  final QuicksightAnalysisScale? scale;

  Map<String, Object?> encode() => {
    'range': ?range?.encode(),
    'scale': ?scale?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericAxisOptionsRange {
  const QuicksightAnalysisNumericAxisOptionsRange({
    this.dataDriven,
    this.minMax,
  });

  final QuicksightAnalysisDataDriven? dataDriven;

  final QuicksightAnalysisMinMax? minMax;

  Map<String, Object?> encode() => {
    'data_driven': ?dataDriven?.encode(),
    'min_max': ?minMax?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.data_driven` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataDriven {
  const QuicksightAnalysisDataDriven();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.min_max` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisMinMax {
  const QuicksightAnalysisMinMax({this.maximum, this.minimum});

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  Map<String, Object?> encode() => {
    'maximum': ?maximum?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisScale {
  const QuicksightAnalysisScale({this.linear, this.logarithmic});

  final QuicksightAnalysisLinear? linear;

  final QuicksightAnalysisLogarithmic? logarithmic;

  Map<String, Object?> encode() => {
    'linear': ?linear?.encode(),
    'logarithmic': ?logarithmic?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.linear` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLinear {
  const QuicksightAnalysisLinear({this.stepCount, this.stepSize});

  final TfArg<num>? stepCount;

  final TfArg<num>? stepSize;

  Map<String, Object?> encode() => {
    'step_count': ?stepCount?.toTfJson(),
    'step_size': ?stepSize?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.logarithmic` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLogarithmic {
  const QuicksightAnalysisLogarithmic({this.base});

  final TfArg<num>? base;

  Map<String, Object?> encode() => {'base': ?base?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisScrollbarOptions {
  const QuicksightAnalysisScrollbarOptions({
    this.visibility,
    this.visibleRange,
  });

  final TfArg<String>? visibility;

  final QuicksightAnalysisVisibleRange? visibleRange;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'visible_range': ?visibleRange?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisVisibleRange {
  const QuicksightAnalysisVisibleRange({this.percentRange});

  final QuicksightAnalysisPercentRange? percentRange;

  Map<String, Object?> encode() => {'percent_range': ?percentRange?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range.percent_range` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPercentRange {
  const QuicksightAnalysisPercentRange({this.from, this.to});

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.tick_label_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTickLabelOptions {
  const QuicksightAnalysisTickLabelOptions({
    this.rotationAngle,
    this.labelOptions,
  });

  final TfArg<num>? rotationAngle;

  final QuicksightAnalysisTitleOptions? labelOptions;

  Map<String, Object?> encode() => {
    'rotation_angle': ?rotationAngle?.toTfJson(),
    'label_options': ?labelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategoryLabelOptions {
  const QuicksightAnalysisCategoryLabelOptions({
    this.sortIconVisibility,
    this.visibility,
    this.axisLabelOptions,
  });

  final TfArg<String>? sortIconVisibility;

  final TfArg<String>? visibility;

  final QuicksightAnalysisAxisLabelOptions? axisLabelOptions;

  Map<String, Object?> encode() => {
    'sort_icon_visibility': ?sortIconVisibility?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'axis_label_options': ?axisLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisAxisLabelOptions {
  const QuicksightAnalysisAxisLabelOptions({
    this.customLabel,
    this.applyTo,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final QuicksightAnalysisApplyTo? applyTo;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'apply_to': ?applyTo?.encode(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options.apply_to` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisApplyTo {
  const QuicksightAnalysisApplyTo({
    required this.fieldId,
    required this.column,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.contribution_analysis_defaults` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisContributionAnalysisDefaults {
  const QuicksightAnalysisContributionAnalysisDefaults({
    required this.measureFieldId,
    required this.contributorDimensions,
  });

  final TfArg<String> measureFieldId;

  final List<QuicksightAnalysisColumn> contributorDimensions;

  Map<String, Object?> encode() => {
    'measure_field_id': measureFieldId.toTfJson(),
    'contributor_dimensions': [
      for (final e in contributorDimensions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataLabels {
  const QuicksightAnalysisDataLabels({
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

  final List<QuicksightAnalysisDataLabelTypes>? dataLabelTypes;

  final QuicksightAnalysisFontConfiguration? labelFontConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataLabelTypes {
  const QuicksightAnalysisDataLabelTypes({
    this.dataPathLabelType,
    this.fieldLabelType,
    this.maximumLabelType,
    this.minimumLabelType,
    this.rangeEndsLabelType,
  });

  final QuicksightAnalysisDataPathLabelType? dataPathLabelType;

  final QuicksightAnalysisFieldLabelType? fieldLabelType;

  final QuicksightAnalysisSelectAllOptions? maximumLabelType;

  final QuicksightAnalysisSelectAllOptions? minimumLabelType;

  final QuicksightAnalysisSelectAllOptions? rangeEndsLabelType;

  Map<String, Object?> encode() => {
    'data_path_label_type': ?dataPathLabelType?.encode(),
    'field_label_type': ?fieldLabelType?.encode(),
    'maximum_label_type': ?maximumLabelType?.encode(),
    'minimum_label_type': ?minimumLabelType?.encode(),
    'range_ends_label_type': ?rangeEndsLabelType?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.data_path_label_type` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataPathLabelType {
  const QuicksightAnalysisDataPathLabelType({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFieldLabelType {
  const QuicksightAnalysisFieldLabelType({this.fieldId, this.visibility});

  final TfArg<String>? fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': ?fieldId?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBarChartVisualFieldWells {
  const QuicksightAnalysisBarChartVisualFieldWells({
    this.barChartAggregatedFieldWells,
  });

  final QuicksightAnalysisBarChartAggregatedFieldWells?
  barChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'bar_chart_aggregated_field_wells': ?barChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells.bar_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisBarChartAggregatedFieldWells {
  const QuicksightAnalysisBarChartAggregatedFieldWells({
    this.category,
    this.colors,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? category;

  final List<QuicksightAnalysisTrendGroups>? colors;

  final QuicksightAnalysisTrendGroups? smallMultiples;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTrendGroups {
  const QuicksightAnalysisTrendGroups({
    this.categoricalDimensionField,
    this.dateDimensionField,
    this.numericalDimensionField,
  });

  final QuicksightAnalysisCategoricalDimensionField? categoricalDimensionField;

  final QuicksightAnalysisDateDimensionField? dateDimensionField;

  final QuicksightAnalysisNumericalDimensionField? numericalDimensionField;

  Map<String, Object?> encode() => {
    'categorical_dimension_field': ?categoricalDimensionField?.encode(),
    'date_dimension_field': ?dateDimensionField?.encode(),
    'numerical_dimension_field': ?numericalDimensionField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.categorical_dimension_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategoricalDimensionField {
  const QuicksightAnalysisCategoricalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.date_dimension_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateDimensionField {
  const QuicksightAnalysisDateDimensionField({
    this.dateGranularity,
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? dateGranularity;

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'date_granularity': ?dateGranularity?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.numerical_dimension_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericalDimensionField {
  const QuicksightAnalysisNumericalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTargetValues {
  const QuicksightAnalysisTargetValues({
    this.calculatedMeasureField,
    this.categoricalMeasureField,
    this.dateMeasureField,
    this.numericalMeasureField,
  });

  final QuicksightAnalysisCalculatedMeasureField? calculatedMeasureField;

  final QuicksightAnalysisCategoricalMeasureField? categoricalMeasureField;

  final QuicksightAnalysisDateMeasureField? dateMeasureField;

  final QuicksightAnalysisNumericalMeasureField? numericalMeasureField;

  Map<String, Object?> encode() => {
    'calculated_measure_field': ?calculatedMeasureField?.encode(),
    'categorical_measure_field': ?categoricalMeasureField?.encode(),
    'date_measure_field': ?dateMeasureField?.encode(),
    'numerical_measure_field': ?numericalMeasureField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.calculated_measure_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCalculatedMeasureField {
  const QuicksightAnalysisCalculatedMeasureField({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategoricalMeasureField {
  const QuicksightAnalysisCategoricalMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.date_measure_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateMeasureField {
  const QuicksightAnalysisDateMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.numerical_measure_field` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisNumericalMeasureField {
  const QuicksightAnalysisNumericalMeasureField({
    required this.fieldId,
    this.aggregationFunction,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisNumericalAggregationFunction? aggregationFunction;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.legend` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLegend {
  const QuicksightAnalysisLegend({
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

  final QuicksightAnalysisTitleOptions? title;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'position': ?position?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisReferenceLines {
  const QuicksightAnalysisReferenceLines({
    this.status,
    required this.dataConfiguration,
    this.labelConfiguration,
    this.styleConfiguration,
  });

  final TfArg<String>? status;

  final QuicksightAnalysisDataConfiguration dataConfiguration;

  final QuicksightAnalysisLabelConfiguration? labelConfiguration;

  final QuicksightAnalysisStyleConfiguration? styleConfiguration;

  Map<String, Object?> encode() => {
    'status': ?status?.toTfJson(),
    'data_configuration': dataConfiguration.encode(),
    'label_configuration': ?labelConfiguration?.encode(),
    'style_configuration': ?styleConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDataConfiguration {
  const QuicksightAnalysisDataConfiguration({
    this.axisBinding,
    this.dynamicConfiguration,
    this.staticConfiguration,
  });

  final TfArg<String>? axisBinding;

  final QuicksightAnalysisDynamicConfiguration? dynamicConfiguration;

  final QuicksightAnalysisStaticConfiguration? staticConfiguration;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'dynamic_configuration': ?dynamicConfiguration?.encode(),
    'static_configuration': ?staticConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.dynamic_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDynamicConfiguration {
  const QuicksightAnalysisDynamicConfiguration({
    required this.calculation,
    required this.column,
    required this.measureAggregationFunction,
  });

  final QuicksightAnalysisNumericalAggregationFunction calculation;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisAggregationFunction measureAggregationFunction;

  Map<String, Object?> encode() => {
    'calculation': calculation.encode(),
    'column': column.encode(),
    'measure_aggregation_function': measureAggregationFunction.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.static_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisStaticConfiguration {
  const QuicksightAnalysisStaticConfiguration({required this.value});

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLabelConfiguration {
  const QuicksightAnalysisLabelConfiguration({
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

  final QuicksightAnalysisCustomLabelConfiguration? customLabelConfiguration;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

  final QuicksightAnalysisValueLabelConfiguration? valueLabelConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCustomLabelConfiguration {
  const QuicksightAnalysisCustomLabelConfiguration({required this.customLabel});

  final TfArg<String> customLabel;

  Map<String, Object?> encode() => {'custom_label': customLabel.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.value_label_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisValueLabelConfiguration {
  const QuicksightAnalysisValueLabelConfiguration({
    this.relativePosition,
    this.formatConfiguration,
  });

  final TfArg<String>? relativePosition;

  final QuicksightAnalysisNumericFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'relative_position': ?relativePosition?.toTfJson(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.style_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisStyleConfiguration {
  const QuicksightAnalysisStyleConfiguration({this.color, this.pattern});

  final TfArg<String>? color;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSmallMultiplesOptions {
  const QuicksightAnalysisSmallMultiplesOptions({
    this.maxVisibleColumns,
    this.maxVisibleRows,
    this.panelConfiguration,
  });

  final TfArg<num>? maxVisibleColumns;

  final TfArg<num>? maxVisibleRows;

  final QuicksightAnalysisPanelConfiguration? panelConfiguration;

  Map<String, Object?> encode() => {
    'max_visible_columns': ?maxVisibleColumns?.toTfJson(),
    'max_visible_rows': ?maxVisibleRows?.toTfJson(),
    'panel_configuration': ?panelConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPanelConfiguration {
  const QuicksightAnalysisPanelConfiguration({
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

  final QuicksightAnalysisTitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTitle {
  const QuicksightAnalysisTitle({
    this.horizontalTextAlignment,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'horizontal_text_alignment': ?horizontalTextAlignment?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBarChartVisualSortConfiguration {
  const QuicksightAnalysisBarChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightAnalysisCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  final QuicksightAnalysisCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightAnalysisCategorySort>? colorSort;

  final QuicksightAnalysisCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategoryItemsLimit {
  const QuicksightAnalysisCategoryItemsLimit({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCategorySort {
  const QuicksightAnalysisCategorySort({this.columnSort, this.fieldSort});

  final QuicksightAnalysisColumnSort? columnSort;

  final QuicksightAnalysisFieldSort? fieldSort;

  Map<String, Object?> encode() => {
    'column_sort': ?columnSort?.encode(),
    'field_sort': ?fieldSort?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.column_sort` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumnSort {
  const QuicksightAnalysisColumnSort({
    required this.direction,
    this.aggregationFunction,
    required this.sortBy,
  });

  final TfArg<String> direction;

  final QuicksightAnalysisAggregationFunction? aggregationFunction;

  final QuicksightAnalysisColumn sortBy;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.field_sort` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFieldSort {
  const QuicksightAnalysisFieldSort({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTooltip {
  const QuicksightAnalysisTooltip({
    this.selectedTooltipType,
    this.tooltipVisibility,
    this.fieldBaseTooltip,
  });

  final TfArg<String>? selectedTooltipType;

  final TfArg<String>? tooltipVisibility;

  final QuicksightAnalysisFieldBaseTooltip? fieldBaseTooltip;

  Map<String, Object?> encode() => {
    'selected_tooltip_type': ?selectedTooltipType?.toTfJson(),
    'tooltip_visibility': ?tooltipVisibility?.toTfJson(),
    'field_base_tooltip': ?fieldBaseTooltip?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFieldBaseTooltip {
  const QuicksightAnalysisFieldBaseTooltip({
    this.aggregationVisibility,
    this.tooltipTitleType,
    this.tooltipFields,
  });

  final TfArg<String>? aggregationVisibility;

  final TfArg<String>? tooltipTitleType;

  final List<QuicksightAnalysisTooltipFields>? tooltipFields;

  Map<String, Object?> encode() => {
    'aggregation_visibility': ?aggregationVisibility?.toTfJson(),
    'tooltip_title_type': ?tooltipTitleType?.toTfJson(),
    if (tooltipFields != null)
      'tooltip_fields': [for (final e in tooltipFields!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTooltipFields {
  const QuicksightAnalysisTooltipFields({
    this.columnTooltipItem,
    this.fieldTooltipItem,
  });

  final QuicksightAnalysisColumnTooltipItem? columnTooltipItem;

  final QuicksightAnalysisFieldTooltipItem? fieldTooltipItem;

  Map<String, Object?> encode() => {
    'column_tooltip_item': ?columnTooltipItem?.encode(),
    'field_tooltip_item': ?fieldTooltipItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.column_tooltip_item` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumnTooltipItem {
  const QuicksightAnalysisColumnTooltipItem({
    this.label,
    this.visibility,
    this.aggregation,
    required this.column,
  });

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  final QuicksightAnalysisAggregationFunction? aggregation;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'aggregation': ?aggregation?.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.field_tooltip_item` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFieldTooltipItem {
  const QuicksightAnalysisFieldTooltipItem({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisVisualPalette {
  const QuicksightAnalysisVisualPalette({this.chartColor, this.colorMap});

  final TfArg<String>? chartColor;

  final List<QuicksightAnalysisColorMap>? colorMap;

  Map<String, Object?> encode() => {
    'chart_color': ?chartColor?.toTfJson(),
    if (colorMap != null) 'color_map': [for (final e in colorMap!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColorMap {
  const QuicksightAnalysisColorMap({
    required this.color,
    this.timeGranularity,
    required this.element,
  });

  final TfArg<String> color;

  final TfArg<String>? timeGranularity;

  final QuicksightAnalysisElement element;

  Map<String, Object?> encode() => {
    'color': color.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'element': element.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map.element` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisElement {
  const QuicksightAnalysisElement({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumnHierarchies {
  const QuicksightAnalysisColumnHierarchies({
    this.dateTimeHierarchy,
    this.explicitHierarchy,
    this.predefinedHierarchy,
  });

  final QuicksightAnalysisDateTimeHierarchy? dateTimeHierarchy;

  final QuicksightAnalysisExplicitHierarchy? explicitHierarchy;

  final QuicksightAnalysisExplicitHierarchy? predefinedHierarchy;

  Map<String, Object?> encode() => {
    'date_time_hierarchy': ?dateTimeHierarchy?.encode(),
    'explicit_hierarchy': ?explicitHierarchy?.encode(),
    'predefined_hierarchy': ?predefinedHierarchy?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateTimeHierarchy {
  const QuicksightAnalysisDateTimeHierarchy({
    required this.hierarchyId,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightAnalysisDrillDownFilters>? drillDownFilters;

  Map<String, Object?> encode() => {
    'hierarchy_id': hierarchyId.toTfJson(),
    if (drillDownFilters != null)
      'drill_down_filters': [for (final e in drillDownFilters!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDrillDownFilters {
  const QuicksightAnalysisDrillDownFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.timeRangeFilter,
  });

  final QuicksightAnalysisDrillDownFiltersCategoryFilter? categoryFilter;

  final QuicksightAnalysisDrillDownFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightAnalysisDrillDownFiltersTimeRangeFilter? timeRangeFilter;

  Map<String, Object?> encode() => {
    'category_filter': ?categoryFilter?.encode(),
    'numeric_equality_filter': ?numericEqualityFilter?.encode(),
    'time_range_filter': ?timeRangeFilter?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.category_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDrillDownFiltersCategoryFilter {
  const QuicksightAnalysisDrillDownFiltersCategoryFilter({
    required this.categoryValues,
    required this.column,
  });

  final TfArg<List<String>> categoryValues;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'category_values': categoryValues.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.numeric_equality_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDrillDownFiltersNumericEqualityFilter {
  const QuicksightAnalysisDrillDownFiltersNumericEqualityFilter({
    required this.value,
    required this.column,
  });

  final TfArg<num> value;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.time_range_filter` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDrillDownFiltersTimeRangeFilter {
  const QuicksightAnalysisDrillDownFiltersTimeRangeFilter({
    required this.rangeMaximum,
    required this.rangeMinimum,
    required this.timeGranularity,
    required this.column,
  });

  final TfArg<String> rangeMaximum;

  final TfArg<String> rangeMinimum;

  final TfArg<String> timeGranularity;

  final QuicksightAnalysisColumn column;

  Map<String, Object?> encode() => {
    'range_maximum': rangeMaximum.toTfJson(),
    'range_minimum': rangeMinimum.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.explicit_hierarchy` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisExplicitHierarchy {
  const QuicksightAnalysisExplicitHierarchy({
    required this.hierarchyId,
    required this.columns,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightAnalysisColumn> columns;

  final List<QuicksightAnalysisDrillDownFilters>? drillDownFilters;

  Map<String, Object?> encode() => {
    'hierarchy_id': hierarchyId.toTfJson(),
    'columns': [for (final e in columns) e.encode()],
    if (drillDownFilters != null)
      'drill_down_filters': [for (final e in drillDownFilters!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSubtitle {
  const QuicksightAnalysisSubtitle({this.visibility, this.formatText});

  final TfArg<String>? visibility;

  final QuicksightAnalysisFormatText? formatText;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'format_text': ?formatText?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle.format_text` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFormatText {
  const QuicksightAnalysisFormatText({this.plainText, this.richText});

  final TfArg<String>? plainText;

  final TfArg<String>? richText;

  Map<String, Object?> encode() => {
    'plain_text': ?plainText?.toTfJson(),
    'rich_text': ?richText?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotVisual {
  const QuicksightAnalysisBoxPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisBoxPlotVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotVisualChartConfiguration {
  const QuicksightAnalysisBoxPlotVisualChartConfiguration({
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

  final QuicksightAnalysisBoxPlotOptions? boxPlotOptions;

  final QuicksightAnalysisCategoryAxis? categoryAxis;

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisBoxPlotVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightAnalysisReferenceLines>? referenceLines;

  final QuicksightAnalysisBoxPlotVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotOptions {
  const QuicksightAnalysisBoxPlotOptions({
    this.allDataPointsVisibility,
    this.outlierVisibility,
    this.styleOptions,
  });

  final TfArg<String>? allDataPointsVisibility;

  final TfArg<String>? outlierVisibility;

  final QuicksightAnalysisStyleOptions? styleOptions;

  Map<String, Object?> encode() => {
    'all_data_points_visibility': ?allDataPointsVisibility?.toTfJson(),
    'outlier_visibility': ?outlierVisibility?.toTfJson(),
    'style_options': ?styleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options.style_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisStyleOptions {
  const QuicksightAnalysisStyleOptions({this.fillStyle});

  final TfArg<String>? fillStyle;

  Map<String, Object?> encode() => {'fill_style': ?fillStyle?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotVisualFieldWells {
  const QuicksightAnalysisBoxPlotVisualFieldWells({
    this.boxPlotAggregatedFieldWells,
  });

  final QuicksightAnalysisBoxPlotAggregatedFieldWells?
  boxPlotAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'box_plot_aggregated_field_wells': ?boxPlotAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells.box_plot_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotAggregatedFieldWells {
  const QuicksightAnalysisBoxPlotAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final QuicksightAnalysisTrendGroups? groupBy;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    'group_by': ?groupBy?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBoxPlotVisualSortConfiguration {
  const QuicksightAnalysisBoxPlotVisualSortConfiguration({
    this.categorySort,
    this.paginationConfiguration,
  });

  final List<QuicksightAnalysisCategorySort>? categorySort;

  final QuicksightAnalysisPaginationConfiguration? paginationConfiguration;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'pagination_configuration': ?paginationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration.pagination_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPaginationConfiguration {
  const QuicksightAnalysisPaginationConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisComboChartVisual {
  const QuicksightAnalysisComboChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisComboChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisComboChartVisualChartConfiguration {
  const QuicksightAnalysisComboChartVisualChartConfiguration({
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

  final QuicksightAnalysisDataLabels? barDataLabels;

  final QuicksightAnalysisCategoryAxis? categoryAxis;

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisCategoryLabelOptions? colorLabelOptions;

  final QuicksightAnalysisComboChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisDataLabels? lineDataLabels;

  final QuicksightAnalysisCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightAnalysisReferenceLines>? referenceLines;

  final QuicksightAnalysisCategoryAxis? secondaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? secondaryYAxisLabelOptions;

  final QuicksightAnalysisComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisComboChartVisualFieldWells {
  const QuicksightAnalysisComboChartVisualFieldWells({
    this.comboChartAggregatedFieldWells,
  });

  final QuicksightAnalysisComboChartAggregatedFieldWells?
  comboChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'combo_chart_aggregated_field_wells': ?comboChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells.combo_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisComboChartAggregatedFieldWells {
  const QuicksightAnalysisComboChartAggregatedFieldWells({
    this.barValues,
    this.category,
    this.colors,
    this.lineValues,
  });

  final List<QuicksightAnalysisTargetValues>? barValues;

  final List<QuicksightAnalysisTrendGroups>? category;

  final List<QuicksightAnalysisTrendGroups>? colors;

  final List<QuicksightAnalysisTargetValues>? lineValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisComboChartVisualSortConfiguration {
  const QuicksightAnalysisComboChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
  });

  final QuicksightAnalysisCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  final QuicksightAnalysisCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightAnalysisCategorySort>? colorSort;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomContentVisual {
  const QuicksightAnalysisCustomContentVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisCustomContentVisualChartConfiguration?
  chartConfiguration;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomContentVisualChartConfiguration {
  const QuicksightAnalysisCustomContentVisualChartConfiguration({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisEmptyVisual {
  const QuicksightAnalysisEmptyVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisual {
  const QuicksightAnalysisFilledMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisFilledMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisFilledMapVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisualChartConfiguration {
  const QuicksightAnalysisFilledMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.sortConfiguration,
    this.tooltip,
    this.windowOptions,
  });

  final QuicksightAnalysisFilledMapVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisMapStyleOptions? mapStyleOptions;

  final QuicksightAnalysisFilledMapVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisWindowOptions? windowOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisualFieldWells {
  const QuicksightAnalysisFilledMapVisualFieldWells({
    this.filledMapAggregatedFieldWells,
  });

  final QuicksightAnalysisFilledMapAggregatedFieldWells?
  filledMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'filled_map_aggregated_field_wells': ?filledMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells.filled_map_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapAggregatedFieldWells {
  const QuicksightAnalysisFilledMapAggregatedFieldWells({
    this.geospatial,
    this.values,
  });

  final QuicksightAnalysisTrendGroups? geospatial;

  final QuicksightAnalysisTargetValues? values;

  Map<String, Object?> encode() => {
    'geospatial': ?geospatial?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.map_style_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisMapStyleOptions {
  const QuicksightAnalysisMapStyleOptions({this.baseMapStyle});

  final TfArg<String>? baseMapStyle;

  Map<String, Object?> encode() => {
    'base_map_style': ?baseMapStyle?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisualSortConfiguration {
  const QuicksightAnalysisFilledMapVisualSortConfiguration({this.categorySort});

  final List<QuicksightAnalysisCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisWindowOptions {
  const QuicksightAnalysisWindowOptions({this.mapZoomMode, this.bounds});

  final TfArg<String>? mapZoomMode;

  final QuicksightAnalysisBounds? bounds;

  Map<String, Object?> encode() => {
    'map_zoom_mode': ?mapZoomMode?.toTfJson(),
    'bounds': ?bounds?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options.bounds` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisBounds {
  const QuicksightAnalysisBounds({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisualConditionalFormatting {
  const QuicksightAnalysisFilledMapVisualConditionalFormatting({
    required this.conditionalFormattingOptions,
  });

  final List<QuicksightAnalysisFilledMapVisualConditionalFormattingOptions>
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    'conditional_formatting_options': [
      for (final e in conditionalFormattingOptions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFilledMapVisualConditionalFormattingOptions {
  const QuicksightAnalysisFilledMapVisualConditionalFormattingOptions({
    required this.shape,
  });

  final QuicksightAnalysisShape shape;

  Map<String, Object?> encode() => {'shape': shape.encode()};
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisShape {
  const QuicksightAnalysisShape({required this.fieldId, this.format});

  final TfArg<String> fieldId;

  final QuicksightAnalysisFormat? format;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'format': ?format?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape.format` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFormat {
  const QuicksightAnalysisFormat({required this.backgroundColor});

  final QuicksightAnalysisForegroundColor backgroundColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisForegroundColor {
  const QuicksightAnalysisForegroundColor({this.gradient, this.solid});

  final QuicksightAnalysisGradient? gradient;

  final QuicksightAnalysisSolid? solid;

  Map<String, Object?> encode() => {
    'gradient': ?gradient?.encode(),
    'solid': ?solid?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisGradient {
  const QuicksightAnalysisGradient({
    required this.expression,
    required this.color,
  });

  final TfArg<String> expression;

  final QuicksightAnalysisColor color;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'color': color.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColor {
  const QuicksightAnalysisColor({this.stops});

  final List<QuicksightAnalysisStops>? stops;

  Map<String, Object?> encode() => {
    if (stops != null) 'stops': [for (final e in stops!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color.stops` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisStops {
  const QuicksightAnalysisStops({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSolid {
  const QuicksightAnalysisSolid({this.color, required this.expression});

  final TfArg<String>? color;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFunnelChartVisual {
  const QuicksightAnalysisFunnelChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisFunnelChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFunnelChartVisualChartConfiguration {
  const QuicksightAnalysisFunnelChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.dataLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisDataLabelOptions? dataLabelOptions;

  final QuicksightAnalysisFunnelChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisFunnelChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisCategoryLabelOptions? valueLabelOptions;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataLabelOptions {
  const QuicksightAnalysisDataLabelOptions({
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

  final QuicksightAnalysisFontConfiguration? labelFontConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFunnelChartVisualFieldWells {
  const QuicksightAnalysisFunnelChartVisualFieldWells({
    this.funnelChartAggregatedFieldWells,
  });

  final QuicksightAnalysisFunnelChartAggregatedFieldWells?
  funnelChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'funnel_chart_aggregated_field_wells': ?funnelChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells.funnel_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFunnelChartAggregatedFieldWells {
  const QuicksightAnalysisFunnelChartAggregatedFieldWells({
    this.category,
    this.values,
  });

  final QuicksightAnalysisTrendGroups? category;

  final QuicksightAnalysisTargetValues? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFunnelChartVisualSortConfiguration {
  const QuicksightAnalysisFunnelChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
  });

  final QuicksightAnalysisCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartVisual {
  const QuicksightAnalysisGaugeChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisGaugeChartVisualChartConfiguration?
  chartConfiguration;

  final QuicksightAnalysisGaugeChartVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartVisualChartConfiguration {
  const QuicksightAnalysisGaugeChartVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.gaugeChartOptions,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisGaugeChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisGaugeChartOptions? gaugeChartOptions;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'gauge_chart_options': ?gaugeChartOptions?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartVisualFieldWells {
  const QuicksightAnalysisGaugeChartVisualFieldWells({
    this.targetValues,
    this.values,
  });

  final List<QuicksightAnalysisTargetValues>? targetValues;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartOptions {
  const QuicksightAnalysisGaugeChartOptions({
    this.primaryValueDisplayType,
    this.arc,
    this.arcAxis,
    this.comparison,
    this.primaryValueFontConfiguration,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightAnalysisGaugeChartOptionsArc? arc;

  final QuicksightAnalysisArcAxis? arcAxis;

  final QuicksightAnalysisComparison? comparison;

  final QuicksightAnalysisFontConfiguration? primaryValueFontConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartOptionsArc {
  const QuicksightAnalysisGaugeChartOptionsArc({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisArcAxis {
  const QuicksightAnalysisArcAxis({this.reserveRange, this.range});

  final TfArg<num>? reserveRange;

  final QuicksightAnalysisRange? range;

  Map<String, Object?> encode() => {
    'reserve_range': ?reserveRange?.toTfJson(),
    'range': ?range?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis.range` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRange {
  const QuicksightAnalysisRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisComparison {
  const QuicksightAnalysisComparison({
    this.comparisonMethod,
    this.comparisonFormat,
  });

  final TfArg<String>? comparisonMethod;

  final QuicksightAnalysisComparisonFormat? comparisonFormat;

  Map<String, Object?> encode() => {
    'comparison_method': ?comparisonMethod?.toTfJson(),
    'comparison_format': ?comparisonFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison.comparison_format` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisComparisonFormat {
  const QuicksightAnalysisComparisonFormat({
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightAnalysisNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightAnalysisPercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    'number_display_format_configuration': ?numberDisplayFormatConfiguration
        ?.encode(),
    'percentage_display_format_configuration':
        ?percentageDisplayFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartVisualConditionalFormatting {
  const QuicksightAnalysisGaugeChartVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightAnalysisGaugeChartVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGaugeChartVisualConditionalFormattingOptions {
  const QuicksightAnalysisGaugeChartVisualConditionalFormattingOptions({
    this.arc,
    this.primaryValue,
  });

  final QuicksightAnalysisConditionalFormattingOptionsArc? arc;

  final QuicksightAnalysisPrimaryValue? primaryValue;

  Map<String, Object?> encode() => {
    'arc': ?arc?.encode(),
    'primary_value': ?primaryValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisConditionalFormattingOptionsArc {
  const QuicksightAnalysisConditionalFormattingOptionsArc({
    required this.foregroundColor,
  });

  final QuicksightAnalysisForegroundColor foregroundColor;

  Map<String, Object?> encode() => {
    'foreground_color': foregroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPrimaryValue {
  const QuicksightAnalysisPrimaryValue({this.icon, required this.textColor});

  final QuicksightAnalysisIcon? icon;

  final QuicksightAnalysisForegroundColor textColor;

  Map<String, Object?> encode() => {
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisIcon {
  const QuicksightAnalysisIcon({this.customCondition, this.iconSet});

  final QuicksightAnalysisCustomCondition? customCondition;

  final QuicksightAnalysisIconSet? iconSet;

  Map<String, Object?> encode() => {
    'custom_condition': ?customCondition?.encode(),
    'icon_set': ?iconSet?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCustomCondition {
  const QuicksightAnalysisCustomCondition({
    this.color,
    required this.expression,
    this.displayConfiguration,
    required this.iconOptions,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  final QuicksightAnalysisDisplayConfiguration? displayConfiguration;

  final QuicksightAnalysisIconOptions iconOptions;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
    'display_configuration': ?displayConfiguration?.encode(),
    'icon_options': iconOptions.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.display_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDisplayConfiguration {
  const QuicksightAnalysisDisplayConfiguration({this.iconDisplayOption});

  final TfArg<String>? iconDisplayOption;

  Map<String, Object?> encode() => {
    'icon_display_option': ?iconDisplayOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.icon_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisIconOptions {
  const QuicksightAnalysisIconOptions({this.icon, this.unicodeIcon});

  final TfArg<String>? icon;

  final TfArg<String>? unicodeIcon;

  Map<String, Object?> encode() => {
    'icon': ?icon?.toTfJson(),
    'unicode_icon': ?unicodeIcon?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.icon_set` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisIconSet {
  const QuicksightAnalysisIconSet({required this.expression, this.iconSetType});

  final TfArg<String> expression;

  final TfArg<String>? iconSetType;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'icon_set_type': ?iconSetType?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGeospatialMapVisual {
  const QuicksightAnalysisGeospatialMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisGeospatialMapVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGeospatialMapVisualChartConfiguration {
  const QuicksightAnalysisGeospatialMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.pointStyleOptions,
    this.tooltip,
    this.visualPalette,
    this.windowOptions,
  });

  final QuicksightAnalysisGeospatialMapVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisMapStyleOptions? mapStyleOptions;

  final QuicksightAnalysisPointStyleOptions? pointStyleOptions;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

  final QuicksightAnalysisWindowOptions? windowOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGeospatialMapVisualFieldWells {
  const QuicksightAnalysisGeospatialMapVisualFieldWells({
    this.geospatialMapAggregatedFieldWells,
  });

  final QuicksightAnalysisGeospatialMapAggregatedFieldWells?
  geospatialMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'geospatial_map_aggregated_field_wells': ?geospatialMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells.geospatial_map_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGeospatialMapAggregatedFieldWells {
  const QuicksightAnalysisGeospatialMapAggregatedFieldWells({
    this.colors,
    this.geospatial,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? colors;

  final List<QuicksightAnalysisTrendGroups>? geospatial;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    if (geospatial != null)
      'geospatial': [for (final e in geospatial!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPointStyleOptions {
  const QuicksightAnalysisPointStyleOptions({
    this.selectedPointStyle,
    this.clusterMarkerConfiguration,
  });

  final TfArg<String>? selectedPointStyle;

  final QuicksightAnalysisClusterMarkerConfiguration?
  clusterMarkerConfiguration;

  Map<String, Object?> encode() => {
    'selected_point_style': ?selectedPointStyle?.toTfJson(),
    'cluster_marker_configuration': ?clusterMarkerConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisClusterMarkerConfiguration {
  const QuicksightAnalysisClusterMarkerConfiguration({this.clusterMarker});

  final QuicksightAnalysisClusterMarker? clusterMarker;

  Map<String, Object?> encode() => {'cluster_marker': ?clusterMarker?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisClusterMarker {
  const QuicksightAnalysisClusterMarker({this.simpleClusterMarker});

  final QuicksightAnalysisSimpleClusterMarker? simpleClusterMarker;

  Map<String, Object?> encode() => {
    'simple_cluster_marker': ?simpleClusterMarker?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker.simple_cluster_marker` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSimpleClusterMarker {
  const QuicksightAnalysisSimpleClusterMarker({this.color});

  final TfArg<String>? color;

  Map<String, Object?> encode() => {'color': ?color?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHeatMapVisual {
  const QuicksightAnalysisHeatMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisHeatMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHeatMapVisualChartConfiguration {
  const QuicksightAnalysisHeatMapVisualChartConfiguration({
    this.colorScale,
    this.columnLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.rowLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightAnalysisColorScale? colorScale;

  final QuicksightAnalysisCategoryLabelOptions? columnLabelOptions;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisHeatMapVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisCategoryLabelOptions? rowLabelOptions;

  final QuicksightAnalysisHeatMapVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColorScale {
  const QuicksightAnalysisColorScale({
    required this.colorFillType,
    required this.colors,
    this.nullValueColor,
  });

  final TfArg<String> colorFillType;

  final List<QuicksightAnalysisColors> colors;

  final QuicksightAnalysisColors? nullValueColor;

  Map<String, Object?> encode() => {
    'color_fill_type': colorFillType.toTfJson(),
    'colors': [for (final e in colors) e.encode()],
    'null_value_color': ?nullValueColor?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale.colors` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColors {
  const QuicksightAnalysisColors({this.color, this.dataValue});

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'data_value': ?dataValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHeatMapVisualFieldWells {
  const QuicksightAnalysisHeatMapVisualFieldWells({
    this.heatMapAggregatedFieldWells,
  });

  final QuicksightAnalysisHeatMapAggregatedFieldWells?
  heatMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'heat_map_aggregated_field_wells': ?heatMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells.heat_map_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHeatMapAggregatedFieldWells {
  const QuicksightAnalysisHeatMapAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final QuicksightAnalysisTrendGroups? columns;

  final QuicksightAnalysisTrendGroups? rows;

  final QuicksightAnalysisTargetValues? values;

  Map<String, Object?> encode() => {
    'columns': ?columns?.encode(),
    'rows': ?rows?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHeatMapVisualSortConfiguration {
  const QuicksightAnalysisHeatMapVisualSortConfiguration({
    this.heatMapColumnItemsLimitConfiguration,
    this.heatMapColumnSort,
    this.heatMapRowItemsLimitConfiguration,
    this.heatMapRowSort,
  });

  final QuicksightAnalysisCategoryItemsLimit?
  heatMapColumnItemsLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? heatMapColumnSort;

  final QuicksightAnalysisCategoryItemsLimit? heatMapRowItemsLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? heatMapRowSort;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHistogramVisual {
  const QuicksightAnalysisHistogramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisHistogramVisualChartConfiguration? chartConfiguration;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHistogramVisualChartConfiguration {
  const QuicksightAnalysisHistogramVisualChartConfiguration({
    this.binOptions,
    this.dataLabels,
    this.fieldWells,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
  });

  final QuicksightAnalysisBinOptions? binOptions;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisHistogramVisualFieldWells? fieldWells;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

  final QuicksightAnalysisCategoryAxis? xAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightAnalysisCategoryAxis? yAxisDisplayOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBinOptions {
  const QuicksightAnalysisBinOptions({
    this.selectedBinType,
    this.startValue,
    this.binCount,
    this.binWidth,
  });

  final TfArg<String>? selectedBinType;

  final TfArg<num>? startValue;

  final QuicksightAnalysisBinCount? binCount;

  final QuicksightAnalysisBinWidth? binWidth;

  Map<String, Object?> encode() => {
    'selected_bin_type': ?selectedBinType?.toTfJson(),
    'start_value': ?startValue?.toTfJson(),
    'bin_count': ?binCount?.encode(),
    'bin_width': ?binWidth?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_count` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBinCount {
  const QuicksightAnalysisBinCount({this.value});

  final TfArg<num>? value;

  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_width` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBinWidth {
  const QuicksightAnalysisBinWidth({this.binCountLimit, this.value});

  final TfArg<num>? binCountLimit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'bin_count_limit': ?binCountLimit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHistogramVisualFieldWells {
  const QuicksightAnalysisHistogramVisualFieldWells({
    this.histogramAggregatedFieldWells,
  });

  final QuicksightAnalysisHistogramAggregatedFieldWells?
  histogramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'histogram_aggregated_field_wells': ?histogramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells.histogram_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisHistogramAggregatedFieldWells {
  const QuicksightAnalysisHistogramAggregatedFieldWells({this.values});

  final QuicksightAnalysisTargetValues? values;

  Map<String, Object?> encode() => {'values': ?values?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.insight_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisInsightVisual {
  const QuicksightAnalysisInsightVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.insightConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisInsightConfiguration? insightConfiguration;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisInsightConfiguration {
  const QuicksightAnalysisInsightConfiguration({
    this.computation,
    this.customNarrative,
  });

  final List<QuicksightAnalysisComputation>? computation;

  final QuicksightAnalysisCustomNarrative? customNarrative;

  Map<String, Object?> encode() => {
    if (computation != null)
      'computation': [for (final e in computation!) e.encode()],
    'custom_narrative': ?customNarrative?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisComputation {
  const QuicksightAnalysisComputation({
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

  final QuicksightAnalysisForecast? forecast;

  final QuicksightAnalysisGrowthRate? growthRate;

  final QuicksightAnalysisMaximumMinimum? maximumMinimum;

  final QuicksightAnalysisMetricComparison? metricComparison;

  final QuicksightAnalysisPeriodOverPeriod? periodOverPeriod;

  final QuicksightAnalysisPeriodToDate? periodToDate;

  final QuicksightAnalysisTopBottomMovers? topBottomMovers;

  final QuicksightAnalysisTopBottomRanked? topBottomRanked;

  final QuicksightAnalysisTotalAggregation? totalAggregation;

  final QuicksightAnalysisUniqueValues? uniqueValues;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisForecast {
  const QuicksightAnalysisForecast({
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

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisGrowthRate {
  const QuicksightAnalysisGrowthRate({
    required this.computationId,
    this.name,
    this.periodSize,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? periodSize;

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_size': ?periodSize?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.maximum_minimum` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisMaximumMinimum {
  const QuicksightAnalysisMaximumMinimum({
    required this.computationId,
    this.name,
    required this.type,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> type;

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'type': type.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.metric_comparison` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisMetricComparison {
  const QuicksightAnalysisMetricComparison({
    required this.computationId,
    this.name,
    this.fromValue,
    this.targetValue,
    this.time,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightAnalysisTargetValues? fromValue;

  final QuicksightAnalysisTargetValues? targetValue;

  final QuicksightAnalysisTrendGroups? time;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'from_value': ?fromValue?.encode(),
    'target_value': ?targetValue?.encode(),
    'time': ?time?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_over_period` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPeriodOverPeriod {
  const QuicksightAnalysisPeriodOverPeriod({
    required this.computationId,
    this.name,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_to_date` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPeriodToDate {
  const QuicksightAnalysisPeriodToDate({
    required this.computationId,
    this.name,
    required this.periodTimeGranularity,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> periodTimeGranularity;

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_time_granularity': periodTimeGranularity.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_movers` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTopBottomMovers {
  const QuicksightAnalysisTopBottomMovers({
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

  final QuicksightAnalysisTrendGroups? category;

  final QuicksightAnalysisTrendGroups? time;

  final QuicksightAnalysisTargetValues? value;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTopBottomRanked {
  const QuicksightAnalysisTopBottomRanked({
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

  final QuicksightAnalysisTrendGroups? category;

  final QuicksightAnalysisTargetValues? value;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTotalAggregation {
  const QuicksightAnalysisTotalAggregation({
    required this.computationId,
    this.name,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightAnalysisTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.unique_values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisUniqueValues {
  const QuicksightAnalysisUniqueValues({
    required this.computationId,
    this.name,
    this.category,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightAnalysisTrendGroups? category;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'category': ?category?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.custom_narrative` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomNarrative {
  const QuicksightAnalysisCustomNarrative({required this.narrative});

  final TfArg<String> narrative;

  Map<String, Object?> encode() => {'narrative': narrative.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisual {
  const QuicksightAnalysisKpiVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisKpiVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisKpiVisualConditionalFormatting? conditionalFormatting;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisualChartConfiguration {
  const QuicksightAnalysisKpiVisualChartConfiguration({
    this.fieldWells,
    this.kpiOptions,
    this.sortConfiguration,
  });

  final QuicksightAnalysisKpiVisualFieldWells? fieldWells;

  final QuicksightAnalysisKpiOptions? kpiOptions;

  final QuicksightAnalysisKpiVisualSortConfiguration? sortConfiguration;

  Map<String, Object?> encode() => {
    'field_wells': ?fieldWells?.encode(),
    'kpi_options': ?kpiOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisualFieldWells {
  const QuicksightAnalysisKpiVisualFieldWells({
    this.targetValues,
    this.trendGroups,
    this.values,
  });

  final List<QuicksightAnalysisTargetValues>? targetValues;

  final List<QuicksightAnalysisTrendGroups>? trendGroups;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (trendGroups != null)
      'trend_groups': [for (final e in trendGroups!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiOptions {
  const QuicksightAnalysisKpiOptions({
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

  final QuicksightAnalysisComparison? comparison;

  final QuicksightAnalysisFontConfiguration? primaryValueFontConfiguration;

  final QuicksightAnalysisSelectAllOptions? progressBar;

  final QuicksightAnalysisSelectAllOptions? secondaryValue;

  final QuicksightAnalysisFontConfiguration? secondaryValueFontConfiguration;

  final QuicksightAnalysisSparkline? sparkline;

  final QuicksightAnalysisSelectAllOptions? trendArrows;

  final QuicksightAnalysisVisualLayoutOptions? visualLayoutOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSparkline {
  const QuicksightAnalysisSparkline({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisVisualLayoutOptions {
  const QuicksightAnalysisVisualLayoutOptions({this.standardLayout});

  final QuicksightAnalysisStandardLayout? standardLayout;

  Map<String, Object?> encode() => {
    'standard_layout': ?standardLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options.standard_layout` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisStandardLayout {
  const QuicksightAnalysisStandardLayout({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisualSortConfiguration {
  const QuicksightAnalysisKpiVisualSortConfiguration({this.trendGroupSort});

  final List<QuicksightAnalysisCategorySort>? trendGroupSort;

  Map<String, Object?> encode() => {
    if (trendGroupSort != null)
      'trend_group_sort': [for (final e in trendGroupSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisualConditionalFormatting {
  const QuicksightAnalysisKpiVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightAnalysisKpiVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisKpiVisualConditionalFormattingOptions {
  const QuicksightAnalysisKpiVisualConditionalFormattingOptions({
    this.actualValue,
    this.comparisonValue,
    this.primaryValue,
    this.progressBar,
  });

  final QuicksightAnalysisPrimaryValue? actualValue;

  final QuicksightAnalysisPrimaryValue? comparisonValue;

  final QuicksightAnalysisPrimaryValue? primaryValue;

  final QuicksightAnalysisConditionalFormattingOptionsArc? progressBar;

  Map<String, Object?> encode() => {
    'actual_value': ?actualValue?.encode(),
    'comparison_value': ?comparisonValue?.encode(),
    'primary_value': ?primaryValue?.encode(),
    'progress_bar': ?progressBar?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLineChartVisual {
  const QuicksightAnalysisLineChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisLineChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLineChartVisualChartConfiguration {
  const QuicksightAnalysisLineChartVisualChartConfiguration({
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

  final List<QuicksightAnalysisContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisDefaultSeriesSettings? defaultSeriesSettings;

  final QuicksightAnalysisLineChartVisualFieldWells? fieldWells;

  final List<QuicksightAnalysisForecastConfigurations>? forecastConfigurations;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisPrimaryYAxisDisplayOptions?
  primaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightAnalysisReferenceLines>? referenceLines;

  final QuicksightAnalysisPrimaryYAxisDisplayOptions?
  secondaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? secondaryYAxisLabelOptions;

  final List<QuicksightAnalysisSeries>? series;

  final QuicksightAnalysisSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightAnalysisLineChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

  final QuicksightAnalysisCategoryAxis? xAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? xAxisLabelOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDefaultSeriesSettings {
  const QuicksightAnalysisDefaultSeriesSettings({
    this.axisBinding,
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final TfArg<String>? axisBinding;

  final QuicksightAnalysisLineStyleSettings? lineStyleSettings;

  final QuicksightAnalysisMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.line_style_settings` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisLineStyleSettings {
  const QuicksightAnalysisLineStyleSettings({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisMarkerStyleSettings {
  const QuicksightAnalysisMarkerStyleSettings({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLineChartVisualFieldWells {
  const QuicksightAnalysisLineChartVisualFieldWells({
    this.lineChartAggregatedFieldWells,
  });

  final QuicksightAnalysisBarChartAggregatedFieldWells?
  lineChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'line_chart_aggregated_field_wells': ?lineChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisForecastConfigurations {
  const QuicksightAnalysisForecastConfigurations({
    this.forecastProperties,
    this.scenario,
  });

  final QuicksightAnalysisForecastProperties? forecastProperties;

  final QuicksightAnalysisScenario? scenario;

  Map<String, Object?> encode() => {
    'forecast_properties': ?forecastProperties?.encode(),
    'scenario': ?scenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.forecast_properties` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisForecastProperties {
  const QuicksightAnalysisForecastProperties({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScenario {
  const QuicksightAnalysisScenario({
    this.whatIfPointScenario,
    this.whatIfRangeScenario,
  });

  final QuicksightAnalysisWhatIfPointScenario? whatIfPointScenario;

  final QuicksightAnalysisWhatIfRangeScenario? whatIfRangeScenario;

  Map<String, Object?> encode() => {
    'what_if_point_scenario': ?whatIfPointScenario?.encode(),
    'what_if_range_scenario': ?whatIfRangeScenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_point_scenario` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWhatIfPointScenario {
  const QuicksightAnalysisWhatIfPointScenario({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWhatIfRangeScenario {
  const QuicksightAnalysisWhatIfRangeScenario({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPrimaryYAxisDisplayOptions {
  const QuicksightAnalysisPrimaryYAxisDisplayOptions({
    this.axisOptions,
    this.missingDataConfiguration,
  });

  final QuicksightAnalysisCategoryAxis? axisOptions;

  final List<QuicksightAnalysisMissingDataConfiguration>?
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisMissingDataConfiguration {
  const QuicksightAnalysisMissingDataConfiguration({this.treatmentOption});

  final TfArg<String>? treatmentOption;

  Map<String, Object?> encode() => {
    'treatment_option': ?treatmentOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSeries {
  const QuicksightAnalysisSeries({
    this.dataFieldSeriesItem,
    this.fieldSeriesItem,
  });

  final QuicksightAnalysisDataFieldSeriesItem? dataFieldSeriesItem;

  final QuicksightAnalysisFieldSeriesItem? fieldSeriesItem;

  Map<String, Object?> encode() => {
    'data_field_series_item': ?dataFieldSeriesItem?.encode(),
    'field_series_item': ?fieldSeriesItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataFieldSeriesItem {
  const QuicksightAnalysisDataFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.fieldValue,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final TfArg<String>? fieldValue;

  final QuicksightAnalysisSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'field_value': ?fieldValue?.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item.settings` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSettings {
  const QuicksightAnalysisSettings({
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final QuicksightAnalysisLineStyleSettings? lineStyleSettings;

  final QuicksightAnalysisMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.field_series_item` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFieldSeriesItem {
  const QuicksightAnalysisFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final QuicksightAnalysisSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLineChartVisualSortConfiguration {
  const QuicksightAnalysisLineChartVisualSortConfiguration({
    this.categoryItemsLimitConfiguration,
    this.categorySort,
    this.colorItemsLimitConfiguration,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightAnalysisCategoryItemsLimit? categoryItemsLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  final QuicksightAnalysisCategoryItemsLimit? colorItemsLimitConfiguration;

  final QuicksightAnalysisCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPieChartVisual {
  const QuicksightAnalysisPieChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisPieChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPieChartVisualChartConfiguration {
  const QuicksightAnalysisPieChartVisualChartConfiguration({
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

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final List<QuicksightAnalysisContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisDonutOptions? donutOptions;

  final QuicksightAnalysisPieChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightAnalysisPieChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisCategoryLabelOptions? valueLabelOptions;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDonutOptions {
  const QuicksightAnalysisDonutOptions({
    this.arcOptions,
    this.donutCenterOptions,
  });

  final QuicksightAnalysisArcOptions? arcOptions;

  final QuicksightAnalysisDonutCenterOptions? donutCenterOptions;

  Map<String, Object?> encode() => {
    'arc_options': ?arcOptions?.encode(),
    'donut_center_options': ?donutCenterOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.arc_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisArcOptions {
  const QuicksightAnalysisArcOptions({this.arcThickness});

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {'arc_thickness': ?arcThickness?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.donut_center_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDonutCenterOptions {
  const QuicksightAnalysisDonutCenterOptions({this.labelVisibility});

  final TfArg<String>? labelVisibility;

  Map<String, Object?> encode() => {
    'label_visibility': ?labelVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPieChartVisualFieldWells {
  const QuicksightAnalysisPieChartVisualFieldWells({
    this.pieChartAggregatedFieldWells,
  });

  final QuicksightAnalysisPieChartAggregatedFieldWells?
  pieChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pie_chart_aggregated_field_wells': ?pieChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells.pie_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPieChartAggregatedFieldWells {
  const QuicksightAnalysisPieChartAggregatedFieldWells({
    this.category,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? category;

  final QuicksightAnalysisTrendGroups? smallMultiples;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPieChartVisualSortConfiguration {
  const QuicksightAnalysisPieChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightAnalysisCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  final QuicksightAnalysisCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisual {
  const QuicksightAnalysisPivotTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisPivotTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightAnalysisPivotTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualChartConfiguration {
  const QuicksightAnalysisPivotTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightAnalysisPivotTableVisualFieldOptions? fieldOptions;

  final QuicksightAnalysisPivotTableVisualFieldWells? fieldWells;

  final QuicksightAnalysisPaginatedReportOptions? paginatedReportOptions;

  final QuicksightAnalysisPivotTableVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisPivotTableVisualTableOptions? tableOptions;

  final QuicksightAnalysisPivotTableVisualTotalOptions? totalOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualFieldOptions {
  const QuicksightAnalysisPivotTableVisualFieldOptions({
    this.dataPathOptions,
    this.selectedFieldOptions,
  });

  final List<QuicksightAnalysisDataPathOptions>? dataPathOptions;

  final List<QuicksightAnalysisPivotTableVisualSelectedFieldOptions>?
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataPathOptions {
  const QuicksightAnalysisDataPathOptions({
    this.width,
    required this.dataPathList,
  });

  final TfArg<String>? width;

  final List<QuicksightAnalysisElement> dataPathList;

  Map<String, Object?> encode() => {
    'width': ?width?.toTfJson(),
    'data_path_list': [for (final e in dataPathList) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualSelectedFieldOptions {
  const QuicksightAnalysisPivotTableVisualSelectedFieldOptions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualFieldWells {
  const QuicksightAnalysisPivotTableVisualFieldWells({
    this.pivotTableAggregatedFieldWells,
  });

  final QuicksightAnalysisPivotTableAggregatedFieldWells?
  pivotTableAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pivot_table_aggregated_field_wells': ?pivotTableAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells.pivot_table_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableAggregatedFieldWells {
  const QuicksightAnalysisPivotTableAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? columns;

  final List<QuicksightAnalysisTrendGroups>? rows;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    if (rows != null) 'rows': [for (final e in rows!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.paginated_report_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisPaginatedReportOptions {
  const QuicksightAnalysisPaginatedReportOptions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualSortConfiguration {
  const QuicksightAnalysisPivotTableVisualSortConfiguration({
    this.fieldSortOptions,
  });

  final List<QuicksightAnalysisFieldSortOptions>? fieldSortOptions;

  Map<String, Object?> encode() => {
    if (fieldSortOptions != null)
      'field_sort_options': [for (final e in fieldSortOptions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisFieldSortOptions {
  const QuicksightAnalysisFieldSortOptions({
    required this.fieldId,
    required this.sortBy,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisSortBy sortBy;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSortBy {
  const QuicksightAnalysisSortBy({this.column, this.dataPath, this.field});

  final QuicksightAnalysisColumnSort? column;

  final QuicksightAnalysisDataPath? dataPath;

  final QuicksightAnalysisFieldSort? field;

  Map<String, Object?> encode() => {
    'column': ?column?.encode(),
    'data_path': ?dataPath?.encode(),
    'field': ?field?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by.data_path` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataPath {
  const QuicksightAnalysisDataPath({
    required this.direction,
    required this.sortPaths,
  });

  final TfArg<String> direction;

  final List<QuicksightAnalysisElement> sortPaths;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'sort_paths': [for (final e in sortPaths) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualTableOptions {
  const QuicksightAnalysisPivotTableVisualTableOptions({
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

  final QuicksightAnalysisCellStyle? cellStyle;

  final QuicksightAnalysisCellStyle? columnHeaderStyle;

  final QuicksightAnalysisRowAlternateColorOptions? rowAlternateColorOptions;

  final QuicksightAnalysisCellStyle? rowFieldNamesStyle;

  final QuicksightAnalysisCellStyle? rowHeaderStyle;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisCellStyle {
  const QuicksightAnalysisCellStyle({
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

  final QuicksightAnalysisBorder? border;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisBorder {
  const QuicksightAnalysisBorder({
    this.sideSpecificBorder,
    required this.uniformBorder,
  });

  final QuicksightAnalysisSideSpecificBorder? sideSpecificBorder;

  final QuicksightAnalysisUniformBorder uniformBorder;

  Map<String, Object?> encode() => {
    'side_specific_border': ?sideSpecificBorder?.encode(),
    'uniform_border': uniformBorder.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.side_specific_border` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisSideSpecificBorder {
  const QuicksightAnalysisSideSpecificBorder({
    required this.bottom,
    required this.innerHorizontal,
    required this.innerVertical,
    required this.left,
    required this.right,
    required this.top,
  });

  final QuicksightAnalysisUniformBorder bottom;

  final QuicksightAnalysisUniformBorder innerHorizontal;

  final QuicksightAnalysisUniformBorder innerVertical;

  final QuicksightAnalysisUniformBorder left;

  final QuicksightAnalysisUniformBorder right;

  final QuicksightAnalysisUniformBorder top;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisUniformBorder {
  const QuicksightAnalysisUniformBorder({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisRowAlternateColorOptions {
  const QuicksightAnalysisRowAlternateColorOptions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualTotalOptions {
  const QuicksightAnalysisPivotTableVisualTotalOptions({
    this.columnSubtotalOptions,
    this.columnTotalOptions,
    this.rowSubtotalOptions,
    this.rowTotalOptions,
  });

  final QuicksightAnalysisColumnSubtotalOptions? columnSubtotalOptions;

  final QuicksightAnalysisColumnTotalOptions? columnTotalOptions;

  final QuicksightAnalysisColumnSubtotalOptions? rowSubtotalOptions;

  final QuicksightAnalysisColumnTotalOptions? rowTotalOptions;

  Map<String, Object?> encode() => {
    'column_subtotal_options': ?columnSubtotalOptions?.encode(),
    'column_total_options': ?columnTotalOptions?.encode(),
    'row_subtotal_options': ?rowSubtotalOptions?.encode(),
    'row_total_options': ?rowTotalOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumnSubtotalOptions {
  const QuicksightAnalysisColumnSubtotalOptions({
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

  final List<QuicksightAnalysisFieldLevelOptions>? fieldLevelOptions;

  final QuicksightAnalysisCellStyle? metricHeaderCellStyle;

  final QuicksightAnalysisCellStyle? totalCellStyle;

  final QuicksightAnalysisCellStyle? valueCellStyle;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisFieldLevelOptions {
  const QuicksightAnalysisFieldLevelOptions({this.fieldId});

  final TfArg<String>? fieldId;

  Map<String, Object?> encode() => {'field_id': ?fieldId?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_total_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisColumnTotalOptions {
  const QuicksightAnalysisColumnTotalOptions({
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

  final QuicksightAnalysisCellStyle? metricHeaderCellStyle;

  final QuicksightAnalysisCellStyle? totalCellStyle;

  final QuicksightAnalysisCellStyle? valueCellStyle;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualConditionalFormatting {
  const QuicksightAnalysisPivotTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightAnalysisPivotTableVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualConditionalFormattingOptions {
  const QuicksightAnalysisPivotTableVisualConditionalFormattingOptions({
    this.cell,
  });

  final QuicksightAnalysisPivotTableVisualCell? cell;

  Map<String, Object?> encode() => {'cell': ?cell?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPivotTableVisualCell {
  const QuicksightAnalysisPivotTableVisualCell({
    required this.fieldId,
    this.scope,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisScope? scope;

  final QuicksightAnalysisTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'scope': ?scope?.encode(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.scope` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScope {
  const QuicksightAnalysisScope({this.role});

  final TfArg<String>? role;

  Map<String, Object?> encode() => {'role': ?role?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.text_format` block of
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisTextFormat {
  const QuicksightAnalysisTextFormat({
    required this.backgroundColor,
    this.icon,
    required this.textColor,
  });

  final QuicksightAnalysisForegroundColor backgroundColor;

  final QuicksightAnalysisIcon? icon;

  final QuicksightAnalysisForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRadarChartVisual {
  const QuicksightAnalysisRadarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisRadarChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRadarChartVisualChartConfiguration {
  const QuicksightAnalysisRadarChartVisualChartConfiguration({
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

  final QuicksightAnalysisBaseSeriesSettings? baseSeriesSettings;

  final QuicksightAnalysisCategoryAxis? categoryAxis;

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisCategoryAxis? colorAxis;

  final QuicksightAnalysisCategoryLabelOptions? colorLabelOptions;

  final QuicksightAnalysisRadarChartVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisVisualPalette? visualPalette;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisBaseSeriesSettings {
  const QuicksightAnalysisBaseSeriesSettings({this.areaStyleSettings});

  final QuicksightAnalysisSelectAllOptions? areaStyleSettings;

  Map<String, Object?> encode() => {
    'area_style_settings': ?areaStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRadarChartVisualFieldWells {
  const QuicksightAnalysisRadarChartVisualFieldWells({
    this.radarChartAggregatedFieldWells,
  });

  final QuicksightAnalysisRadarChartAggregatedFieldWells?
  radarChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'radar_chart_aggregated_field_wells': ?radarChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells.radar_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRadarChartAggregatedFieldWells {
  const QuicksightAnalysisRadarChartAggregatedFieldWells({
    this.category,
    this.color,
    this.values,
  });

  final QuicksightAnalysisTrendGroups? category;

  final QuicksightAnalysisTrendGroups? color;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'color': ?color?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSankeyDiagramVisual {
  const QuicksightAnalysisSankeyDiagramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisSankeyDiagramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSankeyDiagramVisualChartConfiguration {
  const QuicksightAnalysisSankeyDiagramVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.sortConfiguration,
  });

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisSankeyDiagramVisualFieldWells? fieldWells;

  final QuicksightAnalysisSankeyDiagramVisualSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSankeyDiagramVisualFieldWells {
  const QuicksightAnalysisSankeyDiagramVisualFieldWells({
    this.sankeyDiagramAggregatedFieldWells,
  });

  final QuicksightAnalysisSankeyDiagramAggregatedFieldWells?
  sankeyDiagramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'sankey_diagram_aggregated_field_wells': ?sankeyDiagramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells.sankey_diagram_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSankeyDiagramAggregatedFieldWells {
  const QuicksightAnalysisSankeyDiagramAggregatedFieldWells({
    this.destination,
    this.source,
    this.weight,
  });

  final List<QuicksightAnalysisTrendGroups>? destination;

  final List<QuicksightAnalysisTrendGroups>? source;

  final List<QuicksightAnalysisTargetValues>? weight;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
    if (weight != null) 'weight': [for (final e in weight!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSankeyDiagramVisualSortConfiguration {
  const QuicksightAnalysisSankeyDiagramVisualSortConfiguration({
    this.destinationItemsLimit,
    this.sourceItemsLimit,
    this.weightSort,
  });

  final QuicksightAnalysisCategoryItemsLimit? destinationItemsLimit;

  final QuicksightAnalysisCategoryItemsLimit? sourceItemsLimit;

  final List<QuicksightAnalysisCategorySort>? weightSort;

  Map<String, Object?> encode() => {
    'destination_items_limit': ?destinationItemsLimit?.encode(),
    'source_items_limit': ?sourceItemsLimit?.encode(),
    if (weightSort != null)
      'weight_sort': [for (final e in weightSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScatterPlotVisual {
  const QuicksightAnalysisScatterPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisScatterPlotVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScatterPlotVisualChartConfiguration {
  const QuicksightAnalysisScatterPlotVisualChartConfiguration({
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

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisScatterPlotVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisTooltip? tooltip;

  final QuicksightAnalysisVisualPalette? visualPalette;

  final QuicksightAnalysisCategoryAxis? xAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightAnalysisCategoryAxis? yAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? yAxisLabelOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScatterPlotVisualFieldWells {
  const QuicksightAnalysisScatterPlotVisualFieldWells({
    this.scatterPlotCategoricallyAggregatedFieldWells,
    this.scatterPlotUnaggregatedFieldWells,
  });

  final QuicksightAnalysisScatterPlotCategoricallyAggregatedFieldWells?
  scatterPlotCategoricallyAggregatedFieldWells;

  final QuicksightAnalysisScatterPlotUnaggregatedFieldWells?
  scatterPlotUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'scatter_plot_categorically_aggregated_field_wells':
        ?scatterPlotCategoricallyAggregatedFieldWells?.encode(),
    'scatter_plot_unaggregated_field_wells': ?scatterPlotUnaggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_categorically_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScatterPlotCategoricallyAggregatedFieldWells {
  const QuicksightAnalysisScatterPlotCategoricallyAggregatedFieldWells({
    this.category,
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightAnalysisTrendGroups>? category;

  final List<QuicksightAnalysisTargetValues>? size;

  final List<QuicksightAnalysisTargetValues>? xAxis;

  final List<QuicksightAnalysisTargetValues>? yAxis;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_unaggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisScatterPlotUnaggregatedFieldWells {
  const QuicksightAnalysisScatterPlotUnaggregatedFieldWells({
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightAnalysisTargetValues>? size;

  final List<QuicksightAnalysisTrendGroups>? xAxis;

  final List<QuicksightAnalysisTrendGroups>? yAxis;

  Map<String, Object?> encode() => {
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisual {
  const QuicksightAnalysisTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisTableVisualChartConfiguration? chartConfiguration;

  final QuicksightAnalysisTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualChartConfiguration {
  const QuicksightAnalysisTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableInlineVisualizations,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightAnalysisTableVisualFieldOptions? fieldOptions;

  final QuicksightAnalysisTableVisualFieldWells? fieldWells;

  final QuicksightAnalysisPaginatedReportOptions? paginatedReportOptions;

  final QuicksightAnalysisTableVisualSortConfiguration? sortConfiguration;

  final List<QuicksightAnalysisTableInlineVisualizations>?
  tableInlineVisualizations;

  final QuicksightAnalysisTableVisualTableOptions? tableOptions;

  final QuicksightAnalysisTableVisualTotalOptions? totalOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualFieldOptions {
  const QuicksightAnalysisTableVisualFieldOptions({
    this.order,
    this.selectedFieldOptions,
  });

  final TfArg<List<String>>? order;

  final List<QuicksightAnalysisTableVisualSelectedFieldOptions>?
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualSelectedFieldOptions {
  const QuicksightAnalysisTableVisualSelectedFieldOptions({
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

  final QuicksightAnalysisUrlStyling? urlStyling;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'url_styling': ?urlStyling?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisUrlStyling {
  const QuicksightAnalysisUrlStyling({
    this.imageConfiguration,
    this.linkConfiguration,
  });

  final QuicksightAnalysisImageConfiguration? imageConfiguration;

  final QuicksightAnalysisLinkConfiguration? linkConfiguration;

  Map<String, Object?> encode() => {
    'image_configuration': ?imageConfiguration?.encode(),
    'link_configuration': ?linkConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisImageConfiguration {
  const QuicksightAnalysisImageConfiguration({this.sizingOptions});

  final QuicksightAnalysisSizingOptions? sizingOptions;

  Map<String, Object?> encode() => {'sizing_options': ?sizingOptions?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration.sizing_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSizingOptions {
  const QuicksightAnalysisSizingOptions({
    this.tableCellImageScalingConfiguration,
  });

  final TfArg<String>? tableCellImageScalingConfiguration;

  Map<String, Object?> encode() => {
    'table_cell_image_scaling_configuration':
        ?tableCellImageScalingConfiguration?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLinkConfiguration {
  const QuicksightAnalysisLinkConfiguration({this.target, this.content});

  final TfArg<String>? target;

  final QuicksightAnalysisLinkConfigurationContent? content;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'content': ?content?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisLinkConfigurationContent {
  const QuicksightAnalysisLinkConfigurationContent({
    this.customIconContent,
    this.customTextContent,
  });

  final QuicksightAnalysisCustomIconContent? customIconContent;

  final QuicksightAnalysisCustomTextContent? customTextContent;

  Map<String, Object?> encode() => {
    'custom_icon_content': ?customIconContent?.encode(),
    'custom_text_content': ?customTextContent?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_icon_content` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomIconContent {
  const QuicksightAnalysisCustomIconContent({this.icon});

  final TfArg<String>? icon;

  Map<String, Object?> encode() => {'icon': ?icon?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_text_content` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisCustomTextContent {
  const QuicksightAnalysisCustomTextContent({
    this.value,
    this.fontConfiguration,
  });

  final TfArg<String>? value;

  final QuicksightAnalysisFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'value': ?value?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualFieldWells {
  const QuicksightAnalysisTableVisualFieldWells({
    this.tableAggregatedFieldWells,
    this.tableUnaggregatedFieldWells,
  });

  final QuicksightAnalysisTableAggregatedFieldWells? tableAggregatedFieldWells;

  final QuicksightAnalysisTableUnaggregatedFieldWells?
  tableUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'table_aggregated_field_wells': ?tableAggregatedFieldWells?.encode(),
    'table_unaggregated_field_wells': ?tableUnaggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableAggregatedFieldWells {
  const QuicksightAnalysisTableAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? groupBy;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableUnaggregatedFieldWells {
  const QuicksightAnalysisTableUnaggregatedFieldWells({this.values});

  final List<QuicksightAnalysisValues>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells.values` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisValues {
  const QuicksightAnalysisValues({
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisColumn column;

  final QuicksightAnalysisFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualSortConfiguration {
  const QuicksightAnalysisTableVisualSortConfiguration({
    this.paginationConfiguration,
    this.rowSort,
  });

  final QuicksightAnalysisPaginationConfiguration? paginationConfiguration;

  final List<QuicksightAnalysisCategorySort>? rowSort;

  Map<String, Object?> encode() => {
    'pagination_configuration': ?paginationConfiguration?.encode(),
    if (rowSort != null) 'row_sort': [for (final e in rowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableInlineVisualizations {
  const QuicksightAnalysisTableInlineVisualizations({this.dataBars});

  final QuicksightAnalysisDataBars? dataBars;

  Map<String, Object?> encode() => {'data_bars': ?dataBars?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations.data_bars` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataBars {
  const QuicksightAnalysisDataBars({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualTableOptions {
  const QuicksightAnalysisTableVisualTableOptions({
    this.orientation,
    this.cellStyle,
    this.headerStyle,
    this.rowAlternateColorOptions,
  });

  final TfArg<String>? orientation;

  final QuicksightAnalysisCellStyle? cellStyle;

  final QuicksightAnalysisCellStyle? headerStyle;

  final QuicksightAnalysisRowAlternateColorOptions? rowAlternateColorOptions;

  Map<String, Object?> encode() => {
    'orientation': ?orientation?.toTfJson(),
    'cell_style': ?cellStyle?.encode(),
    'header_style': ?headerStyle?.encode(),
    'row_alternate_color_options': ?rowAlternateColorOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualTotalOptions {
  const QuicksightAnalysisTableVisualTotalOptions({
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

  final QuicksightAnalysisCellStyle? totalCellStyle;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'placement': ?placement?.toTfJson(),
    'scroll_status': ?scrollStatus?.toTfJson(),
    'totals_visibility': ?totalsVisibility?.toTfJson(),
    'total_cell_style': ?totalCellStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualConditionalFormatting {
  const QuicksightAnalysisTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightAnalysisTableVisualConditionalFormattingOptions>?
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    if (conditionalFormattingOptions != null)
      'conditional_formatting_options': [
        for (final e in conditionalFormattingOptions!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualConditionalFormattingOptions {
  const QuicksightAnalysisTableVisualConditionalFormattingOptions({
    this.cell,
    this.row,
  });

  final QuicksightAnalysisTableVisualCell? cell;

  final QuicksightAnalysisRow? row;

  Map<String, Object?> encode() => {
    'cell': ?cell?.encode(),
    'row': ?row?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTableVisualCell {
  const QuicksightAnalysisTableVisualCell({
    required this.fieldId,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightAnalysisTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.row` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisRow {
  const QuicksightAnalysisRow({
    required this.backgroundColor,
    required this.textColor,
  });

  final QuicksightAnalysisForegroundColor backgroundColor;

  final QuicksightAnalysisForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTreeMapVisual {
  const QuicksightAnalysisTreeMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisTreeMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTreeMapVisualChartConfiguration {
  const QuicksightAnalysisTreeMapVisualChartConfiguration({
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

  final QuicksightAnalysisCategoryLabelOptions? colorLabelOptions;

  final QuicksightAnalysisColorScale? colorScale;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisTreeMapVisualFieldWells? fieldWells;

  final QuicksightAnalysisCategoryLabelOptions? groupLabelOptions;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisCategoryLabelOptions? sizeLabelOptions;

  final QuicksightAnalysisTreeMapVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisTooltip? tooltip;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTreeMapVisualFieldWells {
  const QuicksightAnalysisTreeMapVisualFieldWells({
    this.treeMapAggregatedFieldWells,
  });

  final QuicksightAnalysisTreeMapAggregatedFieldWells?
  treeMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'tree_map_aggregated_field_wells': ?treeMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells.tree_map_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTreeMapAggregatedFieldWells {
  const QuicksightAnalysisTreeMapAggregatedFieldWells({
    this.colors,
    this.groups,
    this.sizes,
  });

  final QuicksightAnalysisTargetValues? colors;

  final QuicksightAnalysisTrendGroups? groups;

  final QuicksightAnalysisTargetValues? sizes;

  Map<String, Object?> encode() => {
    'colors': ?colors?.encode(),
    'groups': ?groups?.encode(),
    'sizes': ?sizes?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisTreeMapVisualSortConfiguration {
  const QuicksightAnalysisTreeMapVisualSortConfiguration({
    this.treeMapGroupItemsLimitConfiguration,
    this.treeMapSort,
  });

  final QuicksightAnalysisCategoryItemsLimit?
  treeMapGroupItemsLimitConfiguration;

  final List<QuicksightAnalysisCategorySort>? treeMapSort;

  Map<String, Object?> encode() => {
    'tree_map_group_items_limit_configuration':
        ?treeMapGroupItemsLimitConfiguration?.encode(),
    if (treeMapSort != null)
      'tree_map_sort': [for (final e in treeMapSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallVisual {
  const QuicksightAnalysisWaterfallVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisWaterfallVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallVisualChartConfiguration {
  const QuicksightAnalysisWaterfallVisualChartConfiguration({
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

  final QuicksightAnalysisCategoryAxis? categoryAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? categoryAxisLabelOptions;

  final QuicksightAnalysisDataLabels? dataLabels;

  final QuicksightAnalysisWaterfallVisualFieldWells? fieldWells;

  final QuicksightAnalysisLegend? legend;

  final QuicksightAnalysisCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightAnalysisCategoryLabelOptions? primaryYAxisLabelOptions;

  final QuicksightAnalysisWaterfallVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisVisualPalette? visualPalette;

  final QuicksightAnalysisWaterfallChartOptions? waterfallChartOptions;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallVisualFieldWells {
  const QuicksightAnalysisWaterfallVisualFieldWells({
    this.waterfallChartAggregatedFieldWells,
  });

  final QuicksightAnalysisWaterfallChartAggregatedFieldWells?
  waterfallChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'waterfall_chart_aggregated_field_wells':
        ?waterfallChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells.waterfall_chart_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallChartAggregatedFieldWells {
  const QuicksightAnalysisWaterfallChartAggregatedFieldWells({
    this.breakdowns,
    this.categories,
    this.values,
  });

  final List<QuicksightAnalysisTrendGroups>? breakdowns;

  final List<QuicksightAnalysisTrendGroups>? categories;

  final List<QuicksightAnalysisTargetValues>? values;

  Map<String, Object?> encode() => {
    if (breakdowns != null)
      'breakdowns': [for (final e in breakdowns!) e.encode()],
    if (categories != null)
      'categories': [for (final e in categories!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallVisualSortConfiguration {
  const QuicksightAnalysisWaterfallVisualSortConfiguration({
    this.breakdownItemsLimit,
    this.categorySort,
  });

  final QuicksightAnalysisCategoryItemsLimit? breakdownItemsLimit;

  final List<QuicksightAnalysisCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'breakdown_items_limit': ?breakdownItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.waterfall_chart_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWaterfallChartOptions {
  const QuicksightAnalysisWaterfallChartOptions({this.totalBarLabel});

  final TfArg<String>? totalBarLabel;

  Map<String, Object?> encode() => {
    'total_bar_label': ?totalBarLabel?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWordCloudVisual {
  const QuicksightAnalysisWordCloudVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightAnalysisActions>? actions;

  final QuicksightAnalysisWordCloudVisualChartConfiguration? chartConfiguration;

  final List<QuicksightAnalysisColumnHierarchies>? columnHierarchies;

  final QuicksightAnalysisSubtitle? subtitle;

  final QuicksightAnalysisSubtitle? title;

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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWordCloudVisualChartConfiguration {
  const QuicksightAnalysisWordCloudVisualChartConfiguration({
    this.categoryLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.wordCloudOptions,
  });

  final QuicksightAnalysisCategoryLabelOptions? categoryLabelOptions;

  final QuicksightAnalysisWordCloudVisualFieldWells? fieldWells;

  final QuicksightAnalysisFunnelChartVisualSortConfiguration? sortConfiguration;

  final QuicksightAnalysisWordCloudOptions? wordCloudOptions;

  Map<String, Object?> encode() => {
    'category_label_options': ?categoryLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'word_cloud_options': ?wordCloudOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWordCloudVisualFieldWells {
  const QuicksightAnalysisWordCloudVisualFieldWells({
    this.wordCloudAggregatedFieldWells,
  });

  final QuicksightAnalysisWordCloudAggregatedFieldWells?
  wordCloudAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'word_cloud_aggregated_field_wells': ?wordCloudAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells.word_cloud_aggregated_field_wells` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWordCloudAggregatedFieldWells {
  const QuicksightAnalysisWordCloudAggregatedFieldWells({
    this.groupBy,
    this.size,
  });

  final List<QuicksightAnalysisTrendGroups>? groupBy;

  final QuicksightAnalysisTargetValues? size;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    'size': ?size?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.word_cloud_options` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisWordCloudOptions {
  const QuicksightAnalysisWordCloudOptions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisParameters {
  const QuicksightAnalysisParameters({
    this.dateTimeParameters,
    this.decimalParameters,
    this.integerParameters,
    this.stringParameters,
  });

  final List<QuicksightAnalysisDateTimeParameters>? dateTimeParameters;

  final List<QuicksightAnalysisDecimalParameters>? decimalParameters;

  final List<QuicksightAnalysisDecimalParameters>? integerParameters;

  final List<QuicksightAnalysisDateTimeParameters>? stringParameters;

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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDateTimeParameters {
  const QuicksightAnalysisDateTimeParameters({
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
/// `aws_quicksight_analysis` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightAnalysisDecimalParameters {
  const QuicksightAnalysisDecimalParameters({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisPermissions {
  const QuicksightAnalysisPermissions({
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
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSourceEntity {
  const QuicksightAnalysisSourceEntity({this.sourceTemplate});

  final QuicksightAnalysisSourceTemplate? sourceTemplate;

  Map<String, Object?> encode() => {
    'source_template': ?sourceTemplate?.encode(),
  };
}

/// Typed helper for the `source_entity.source_template` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisSourceTemplate {
  const QuicksightAnalysisSourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  final TfArg<String> arn;

  final List<QuicksightAnalysisDataSetReferences> dataSetReferences;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'data_set_references': [for (final e in dataSetReferences) e.encode()],
  };
}

/// Typed helper for the `source_entity.source_template.data_set_references` block of
/// `aws_quicksight_analysis` (derived from provider schema).
@immutable
final class QuicksightAnalysisDataSetReferences {
  const QuicksightAnalysisDataSetReferences({
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

/// Factory wrapper for `aws_quicksight_analysis`.
final class AwsQuicksightAnalysis extends Resource {
  static const String tfType = 'aws_quicksight_analysis';

  AwsQuicksightAnalysis(
    super.localName, {
    required TfArg<String> analysisId,
    TfArg<String>? awsAccountId,
    required TfArg<String> name,
    TfArg<num>? recoveryWindowInDays,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? themeArn,
    QuicksightAnalysisDefinition? definition,
    QuicksightAnalysisParameters? parameters,
    List<QuicksightAnalysisPermissions>? permissions,
    QuicksightAnalysisSourceEntity? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analysis_id': analysisId,
           'aws_account_id': ?awsAccountId,
           'name': name,
           'recovery_window_in_days': ?recoveryWindowInDays,
           'region': ?region,
           'tags': ?tags,
           'theme_arn': ?themeArn,
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
  Set<String> get sensitiveFields => _awsQuicksightAnalysisSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightAnalysis>`.
  RefTo<AwsQuicksightAnalysis> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `analysis_id` attribute.
  TfRef<String> get analysisId => TfRef.attribute<String>(this, 'analysis_id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `recovery_window_in_days` attribute.
  TfRef<num> get recoveryWindowInDays =>
      TfRef.attribute<num>(this, 'recovery_window_in_days');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `theme_arn` attribute.
  TfRef<String> get themeArn => TfRef.attribute<String>(this, 'theme_arn');
}
