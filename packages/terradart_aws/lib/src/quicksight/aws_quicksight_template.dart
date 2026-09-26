// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_template`.
const Set<String> _awsQuicksightTemplateSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinition {
  const QuicksightTemplateDefinition({
    this.analysisDefaults,
    this.calculatedFields,
    this.columnConfigurations,
    required this.dataSetConfiguration,
    this.filterGroups,
    this.parametersDeclarations,
    this.sheets,
  });

  final QuicksightTemplateDefinitionAnalysisDefaults? analysisDefaults;

  final List<QuicksightTemplateDefinitionCalculatedFields>? calculatedFields;

  final List<QuicksightTemplateDefinitionColumnConfigurations>?
  columnConfigurations;

  final List<QuicksightTemplateDefinitionDataSetConfiguration>
  dataSetConfiguration;

  final List<QuicksightTemplateDefinitionFilterGroups>? filterGroups;

  final List<QuicksightTemplateDefinitionParametersDeclarations>?
  parametersDeclarations;

  final List<QuicksightTemplateDefinitionSheets>? sheets;

  Map<String, Object?> encode() => {
    if (analysisDefaults != null)
      'analysis_defaults': analysisDefaults!.encode(),
    if (calculatedFields != null)
      'calculated_fields': [for (final e in calculatedFields!) e.encode()],
    if (columnConfigurations != null)
      'column_configurations': [
        for (final e in columnConfigurations!) e.encode(),
      ],
    'data_set_configuration': [
      for (final e in dataSetConfiguration) e.encode(),
    ],
    if (filterGroups != null)
      'filter_groups': [for (final e in filterGroups!) e.encode()],
    if (parametersDeclarations != null)
      'parameters_declarations': [
        for (final e in parametersDeclarations!) e.encode(),
      ],
    if (sheets != null) 'sheets': [for (final e in sheets!) e.encode()],
  };
}

/// Typed helper for the `definition.analysis_defaults` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaults {
  const QuicksightTemplateDefinitionAnalysisDefaults({
    required this.defaultNewSheetConfiguration,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfiguration
  defaultNewSheetConfiguration;

  Map<String, Object?> encode() => {
    'default_new_sheet_configuration': defaultNewSheetConfiguration.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfiguration {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfiguration({
    this.sheetContentType,
    this.interactiveLayoutConfiguration,
    this.paginatedLayoutConfiguration,
  });

  final TfArg<String>? sheetContentType;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration?
  interactiveLayoutConfiguration;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfiguration({
    this.freeForm,
    this.grid,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm?
  freeForm;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid?
  grid;

  Map<String, Object?> encode() => {
    if (freeForm != null) 'free_form': freeForm!.encode(),
    if (grid != null) 'grid': grid!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeForm({
    required this.canvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (screenCanvasSizeOptions != null)
      'screen_canvas_size_options': screenCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptionsScreenCanvasSizeOptions({
    required this.optimizedViewPortWidth,
  });

  final TfArg<String> optimizedViewPortWidth;

  Map<String, Object?> encode() => {
    'optimized_view_port_width': optimizedViewPortWidth.toTfJson(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGrid({
    required this.canvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (screenCanvasSizeOptions != null)
      'screen_canvas_size_options': screenCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptionsScreenCanvasSizeOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfiguration({
    this.sectionBased,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased?
  sectionBased;

  Map<String, Object?> encode() => {
    if (sectionBased != null) 'section_based': sectionBased!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBased({
    required this.canvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions
  canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions({
    this.paperCanvasSizeOptions,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions?
  paperCanvasSizeOptions;

  Map<String, Object?> encode() => {
    if (paperCanvasSizeOptions != null)
      'paper_canvas_size_options': paperCanvasSizeOptions!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptions({
    this.paperOrientation,
    this.paperSize,
    this.paperMargin,
  });

  final TfArg<String>? paperOrientation;

  final TfArg<String>? paperSize;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin?
  paperMargin;

  Map<String, Object?> encode() => {
    if (paperOrientation != null)
      'paper_orientation': paperOrientation!.toTfJson(),
    if (paperSize != null) 'paper_size': paperSize!.toTfJson(),
    if (paperMargin != null) 'paper_margin': paperMargin!.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options.paper_margin` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin {
  const QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionCalculatedFields {
  const QuicksightTemplateDefinitionCalculatedFields({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionColumnConfigurations {
  const QuicksightTemplateDefinitionColumnConfigurations({
    this.role,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? role;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (role != null) 'role': role!.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.column` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsColumn {
  const QuicksightTemplateDefinitionColumnConfigurationsColumn({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfiguration({
    this.dateTimeFormatConfiguration,
    this.numberFormatConfiguration,
    this.stringFormatConfiguration,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
  dateTimeFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
  numberFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration({
    this.dateTimeFormat,
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration({
    required this.nullString,
  });

  final TfArg<String> nullString;

  Map<String, Object?> encode() => {'null_string': nullString.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration({
    this.currencyDisplayFormatConfiguration,
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration?
  currencyDisplayFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfiguration({
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

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration({
    required this.decimalPlaces,
  });

  final TfArg<num> decimalPlaces;

  Map<String, Object?> encode() => {'decimal_places': decimalPlaces.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.negative_value_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration({
    required this.displayMode,
  });

  final TfArg<String> displayMode;

  Map<String, Object?> encode() => {'display_mode': displayMode.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration({
    this.decimalSeparator,
    this.thousandsSeparator,
  });

  final TfArg<String>? decimalSeparator;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator?
  thousandsSeparator;

  Map<String, Object?> encode() => {
    if (decimalSeparator != null)
      'decimal_separator': decimalSeparator!.toTfJson(),
    if (thousandsSeparator != null)
      'thousands_separator': thousandsSeparator!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration.thousands_separator` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfigurationThousandsSeparator({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration({
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

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration({
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationCurrencyDisplayFormatConfigurationSeparatorConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration({
    this.numericFormatConfiguration,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    if (numericFormatConfiguration != null)
      'numeric_format_configuration': numericFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.string_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration {
  const QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration({
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    if (nullValueFormatConfiguration != null)
      'null_value_format_configuration': nullValueFormatConfiguration!.encode(),
    if (numericFormatConfiguration != null)
      'numeric_format_configuration': numericFormatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.data_set_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionDataSetConfiguration {
  const QuicksightTemplateDefinitionDataSetConfiguration({
    this.placeholder,
    this.columnGroupSchemaList,
    this.dataSetSchema,
  });

  final TfArg<String>? placeholder;

  final List<
    QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaList
  >?
  columnGroupSchemaList;

  final QuicksightTemplateDefinitionDataSetConfigurationDataSetSchema?
  dataSetSchema;

  Map<String, Object?> encode() => {
    if (placeholder != null) 'placeholder': placeholder!.toTfJson(),
    if (columnGroupSchemaList != null)
      'column_group_schema_list': [
        for (final e in columnGroupSchemaList!) e.encode(),
      ],
    if (dataSetSchema != null) 'data_set_schema': dataSetSchema!.encode(),
  };
}

/// Typed helper for the `definition.data_set_configuration.column_group_schema_list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaList {
  const QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaList({
    this.name,
    this.columnGroupColumnSchemaList,
  });

  final TfArg<String>? name;

  final List<
    QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaListColumnGroupColumnSchemaList
  >?
  columnGroupColumnSchemaList;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (columnGroupColumnSchemaList != null)
      'column_group_column_schema_list': [
        for (final e in columnGroupColumnSchemaList!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.data_set_configuration.column_group_schema_list.column_group_column_schema_list` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaListColumnGroupColumnSchemaList {
  const QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaListColumnGroupColumnSchemaList({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `definition.data_set_configuration.data_set_schema` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionDataSetConfigurationDataSetSchema {
  const QuicksightTemplateDefinitionDataSetConfigurationDataSetSchema({
    this.columnSchemaList,
  });

  final List<
    QuicksightTemplateDefinitionDataSetConfigurationDataSetSchemaColumnSchemaList
  >?
  columnSchemaList;

  Map<String, Object?> encode() => {
    if (columnSchemaList != null)
      'column_schema_list': [for (final e in columnSchemaList!) e.encode()],
  };
}

/// Typed helper for the `definition.data_set_configuration.data_set_schema.column_schema_list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionDataSetConfigurationDataSetSchemaColumnSchemaList {
  const QuicksightTemplateDefinitionDataSetConfigurationDataSetSchemaColumnSchemaList({
    this.dataType,
    this.geographicRole,
    this.name,
  });

  final TfArg<String>? dataType;

  final TfArg<String>? geographicRole;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (geographicRole != null) 'geographic_role': geographicRole!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroups {
  const QuicksightTemplateDefinitionFilterGroups({
    required this.crossDataset,
    required this.filterGroupId,
    this.status,
    required this.filters,
    required this.scopeConfiguration,
  });

  final TfArg<String> crossDataset;

  final TfArg<String> filterGroupId;

  final TfArg<String>? status;

  final List<QuicksightTemplateDefinitionFilterGroupsFilters> filters;

  final QuicksightTemplateDefinitionFilterGroupsScopeConfiguration
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFilters {
  const QuicksightTemplateDefinitionFilterGroupsFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.numericRangeFilter,
    this.relativeDatesFilter,
    this.timeEqualityFilter,
    this.timeRangeFilter,
    this.topBottomFilter,
  });

  final QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilter?
  categoryFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilter?
  numericRangeFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilter?
  relativeDatesFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersTimeEqualityFilter?
  timeEqualityFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilter?
  timeRangeFilter;

  final QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilter?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilter({
    required this.filterId,
    required this.column,
    required this.configuration,
  });

  final TfArg<String> filterId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfiguration
  configuration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'column': column.encode(),
    'configuration': configuration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfiguration({
    this.customFilterConfiguration,
    this.customFilterListConfiguration,
    this.filterListConfiguration,
  });

  final QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration?
  customFilterConfiguration;

  final QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration?
  customFilterListConfiguration;

  final QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationCustomFilterListConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersCategoryFilterConfigurationFilterListConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilter({
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

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction({
    this.categoricalAggregationFunction,
    this.dateAggregationFunction,
    this.numericalAggregationFunction,
  });

  final TfArg<String>? categoricalAggregationFunction;

  final TfArg<String>? dateAggregationFunction;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction({
    this.simpleNumericalAggregation,
    this.percentileAggregation,
  });

  final TfArg<String>? simpleNumericalAggregation;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation?
  percentileAggregation;

  Map<String, Object?> encode() => {
    if (simpleNumericalAggregation != null)
      'simple_numerical_aggregation': simpleNumericalAggregation!.toTfJson(),
    if (percentileAggregation != null)
      'percentile_aggregation': percentileAggregation!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function.percentile_aggregation` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunctionPercentileAggregation({
    this.percentileValue,
  });

  final TfArg<num>? percentileValue;

  Map<String, Object?> encode() => {
    if (percentileValue != null)
      'percentile_value': percentileValue!.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilter({
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

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum?
  rangeMaximum;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum {
  const QuicksightTemplateDefinitionFilterGroupsFiltersNumericRangeFilterRangeMaximum({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilter({
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

  final QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration
  anchorDateConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterAnchorDateConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersTimeEqualityFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersTimeEqualityFilter({
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

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    if (parameterName != null) 'parameter_name': parameterName!.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilter({
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

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionFilterGroupsFiltersRelativeDatesFilterExcludePeriodConfiguration?
  excludePeriodConfiguration;

  final QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue?
  rangeMaximumValue;

  final QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue {
  const QuicksightTemplateDefinitionFilterGroupsFiltersTimeRangeFilterRangeMaximumValue({
    this.parameter,
    this.staticValue,
    this.rollingDate,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? staticValue;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate?
  rollingDate;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (staticValue != null) 'static_value': staticValue!.toTfJson(),
    if (rollingDate != null) 'rolling_date': rollingDate!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values.rolling_date` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate {
  const QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilter {
  const QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilter({
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
    QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration
  >
  aggregationSortConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsFiltersTopBottomFilterAggregationSortConfiguration({
    required this.sortDirection,
    required this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> sortDirection;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction
  aggregationFunction;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'sort_direction': sortDirection.toTfJson(),
    'aggregation_function': aggregationFunction.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsScopeConfiguration {
  const QuicksightTemplateDefinitionFilterGroupsScopeConfiguration({
    this.selectedSheets,
  });

  final QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheets?
  selectedSheets;

  Map<String, Object?> encode() => {
    if (selectedSheets != null) 'selected_sheets': selectedSheets!.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheets {
  const QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheets({
    this.sheetVisualScopingConfigurations,
  });

  final List<
    QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations {
  const QuicksightTemplateDefinitionFilterGroupsScopeConfigurationSelectedSheetsSheetVisualScopingConfigurations({
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

/// Typed helper for the `definition.parameters_declarations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionParametersDeclarations {
  const QuicksightTemplateDefinitionParametersDeclarations({
    this.dateTimeParameterDeclaration,
    this.decimalParameterDeclaration,
    this.integerParameterDeclaration,
    this.stringParameterDeclaration,
  });

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclaration?
  dateTimeParameterDeclaration;

  final QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclaration?
  decimalParameterDeclaration;

  final QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclaration?
  integerParameterDeclaration;

  final QuicksightTemplateDefinitionParametersDeclarationsStringParameterDeclaration?
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

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclaration {
  const QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclaration({
    required this.name,
    this.timeGranularity,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String>? timeGranularity;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (timeGranularity != null)
      'time_granularity': timeGranularity!.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValues {
  const QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
    this.rollingDate,
  });

  final TfArg<List<Object?>>? staticValues;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue?
  dynamicValue;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesRollingDate?
  rollingDate;

  Map<String, Object?> encode() => {
    if (staticValues != null) 'static_values': staticValues!.toTfJson(),
    if (dynamicValue != null) 'dynamic_value': dynamicValue!.encode(),
    if (rollingDate != null) 'rolling_date': rollingDate!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values.dynamic_value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue {
  const QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue({
    required this.defaultValueColumn,
    this.groupNameColumn,
    this.userNameColumn,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsColumn
  defaultValueColumn;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn? groupNameColumn;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn? userNameColumn;

  Map<String, Object?> encode() => {
    'default_value_column': defaultValueColumn.encode(),
    if (groupNameColumn != null) 'group_name_column': groupNameColumn!.encode(),
    if (userNameColumn != null) 'user_name_column': userNameColumn!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationValuesWhenUnset {
  const QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationValuesWhenUnset({
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

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclaration {
  const QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration.default_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationDefaultValues {
  const QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<Object?>>? staticValues;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationDefaultValuesDynamicValue?
  dynamicValue;

  Map<String, Object?> encode() => {
    if (staticValues != null) 'static_values': staticValues!.toTfJson(),
    if (dynamicValue != null) 'dynamic_value': dynamicValue!.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationValuesWhenUnset {
  const QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationValuesWhenUnset({
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

/// Typed helper for the `definition.parameters_declarations.string_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionParametersDeclarationsStringParameterDeclaration {
  const QuicksightTemplateDefinitionParametersDeclarationsStringParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightTemplateDefinitionParametersDeclarationsDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDefinitionParametersDeclarationsDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    if (defaultValues != null) 'default_values': defaultValues!.encode(),
    if (valuesWhenUnset != null) 'values_when_unset': valuesWhenUnset!.encode(),
  };
}

/// Typed helper for the `definition.sheets` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheets {
  const QuicksightTemplateDefinitionSheets({
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

  final List<QuicksightTemplateDefinitionSheetsFilterControls>? filterControls;

  final QuicksightTemplateDefinitionSheetsLayouts? layouts;

  final List<QuicksightTemplateDefinitionSheetsParameterControls>?
  parameterControls;

  final QuicksightTemplateDefinitionSheetsSheetControlLayouts?
  sheetControlLayouts;

  final List<QuicksightTemplateDefinitionSheetsTextBoxes>? textBoxes;

  final List<QuicksightTemplateDefinitionSheetsVisuals>? visuals;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControls {
  const QuicksightTemplateDefinitionSheetsFilterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.relativeDateTime,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePicker?
  dateTimePicker;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdown? dropdown;

  final QuicksightTemplateDefinitionSheetsFilterControlsList? list;

  final QuicksightTemplateDefinitionSheetsFilterControlsRelativeDateTime?
  relativeDateTime;

  final QuicksightTemplateDefinitionSheetsFilterControlsSlider? slider;

  final QuicksightTemplateDefinitionSheetsFilterControlsTextArea? textArea;

  final QuicksightTemplateDefinitionSheetsFilterControlsTextField? textField;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDateTimePicker {
  const QuicksightTemplateDefinitionSheetsFilterControlsDateTimePicker({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptions({
    this.dateTimeFormat,
    this.titleOptions,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (dateTimeFormat != null) 'date_time_format': dateTimeFormat!.toTfJson(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions({
    this.customLabel,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration {
  const QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration({
    this.fontColor,
    this.fontDecoration,
    this.fontStyle,
    this.fontSize,
    this.fontWeight,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? fontDecoration;

  final TfArg<String>? fontStyle;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize?
  fontSize;

  final QuicksightTemplateDefinitionDataSetConfigurationColumnGroupSchemaListColumnGroupColumnSchemaList?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize {
  const QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfigurationFontSize({
    this.relative,
  });

  final TfArg<String>? relative;

  Map<String, Object?> encode() => {
    if (relative != null) 'relative': relative!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdown {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdown({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptions?
  displayOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownSelectableValues?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration({
    this.sourceControls,
  });

  final List<
    QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls
  >?
  sourceControls;

  Map<String, Object?> encode() => {
    if (sourceControls != null)
      'source_controls': [for (final e in sourceControls!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration.source_controls` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfigurationSourceControls({
    this.sourceSheetControlId,
    required this.columnToMatch,
  });

  final TfArg<String>? sourceSheetControlId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn columnToMatch;

  Map<String, Object?> encode() => {
    if (sourceSheetControlId != null)
      'source_sheet_control_id': sourceSheetControlId!.toTfJson(),
    'column_to_match': columnToMatch.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptions({
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  selectAllOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options.select_all_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions({
    this.visibility,
  });

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsDropdownSelectableValues {
  const QuicksightTemplateDefinitionSheetsFilterControlsDropdownSelectableValues({
    this.values,
  });

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsList {
  const QuicksightTemplateDefinitionSheetsFilterControlsList({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsListDisplayOptions?
  displayOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownSelectableValues?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsListDisplayOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsListDisplayOptions({
    this.searchOptions,
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  searchOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  selectAllOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (searchOptions != null) 'search_options': searchOptions!.encode(),
    if (selectAllOptions != null)
      'select_all_options': selectAllOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.relative_date_time` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsRelativeDateTime {
  const QuicksightTemplateDefinitionSheetsFilterControlsRelativeDateTime({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsSlider {
  const QuicksightTemplateDefinitionSheetsFilterControlsSlider({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsSliderDisplayOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsSliderDisplayOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsSliderDisplayOptions({
    this.titleOptions,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsTextArea {
  const QuicksightTemplateDefinitionSheetsFilterControlsTextArea({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions {
  const QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions({
    this.placeholderOptions,
    this.titleOptions,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  placeholderOptions;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  titleOptions;

  Map<String, Object?> encode() => {
    if (placeholderOptions != null)
      'placeholder_options': placeholderOptions!.encode(),
    if (titleOptions != null) 'title_options': titleOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_field` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsFilterControlsTextField {
  const QuicksightTemplateDefinitionSheetsFilterControlsTextField({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayouts {
  const QuicksightTemplateDefinitionSheetsLayouts({
    required this.configuration,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfiguration {
  const QuicksightTemplateDefinitionSheetsLayoutsConfiguration({
    this.freeFormLayout,
    this.gridLayout,
    this.sectionBasedLayout,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayout?
  freeFormLayout;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayout?
  gridLayout;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayout?
  sectionBasedLayout;

  Map<String, Object?> encode() => {
    if (freeFormLayout != null) 'free_form_layout': freeFormLayout!.encode(),
    if (gridLayout != null) 'grid_layout': gridLayout!.encode(),
    if (sectionBasedLayout != null)
      'section_based_layout': sectionBasedLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayout {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationFreeFormCanvasSizeOptions?
  canvasSizeOptions;

  final List<
    QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    if (canvasSizeOptions != null)
      'canvas_size_options': canvasSizeOptions!.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements({
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

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
  backgroundStyle;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
  borderStyle;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  loadingAnimation;

  final List<
    QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules
  >?
  renderingRules;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsBackgroundStyle({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElementsRenderingRules({
    required this.expression,
    required this.configurationOverrides,
  });

  final TfArg<String> expression;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions
  configurationOverrides;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'configuration_overrides': configurationOverrides.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayout {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationInteractiveLayoutConfigurationGridCanvasSizeOptions?
  canvasSizeOptions;

  final List<
    QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    if (canvasSizeOptions != null)
      'canvas_size_options': canvasSizeOptions!.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout.elements` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayoutElements {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayoutElements({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayout {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayout({
    required this.bodySections,
    this.canvasSizeOptions,
    required this.footerSections,
    required this.headerSections,
  });

  final List<
    QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections
  >
  bodySections;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptions?
  canvasSizeOptions;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections
  footerSections;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySections({
    required this.sectionId,
    required this.content,
    this.pageBreakConfiguration,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent
  content;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration?
  pageBreakConfiguration;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsContent({
    this.layout,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout?
  layout;

  Map<String, Object?> encode() => {
    if (layout != null) 'layout': layout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout({
    required this.freeFormLayout,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout
  freeFormLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': freeFormLayout.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout.free_form_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayoutFreeFormLayout({
    required this.elements,
  });

  final List<
    QuicksightTemplateDefinitionSheetsLayoutsConfigurationFreeFormLayoutElements
  >
  elements;

  Map<String, Object?> encode() => {
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfiguration({
    this.after,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter?
  after;

  Map<String, Object?> encode() => {
    if (after != null) 'after': after!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration.after` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsPageBreakConfigurationAfter({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.style` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle({
    this.height,
    this.padding,
  });

  final TfArg<String>? height;

  final QuicksightTemplateDefinitionAnalysisDefaultsDefaultNewSheetConfigurationPaginatedLayoutConfigurationSectionBasedCanvasSizeOptionsPaperCanvasSizeOptionsPaperMargin?
  padding;

  Map<String, Object?> encode() => {
    if (height != null) 'height': height!.toTfJson(),
    if (padding != null) 'padding': padding!.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections {
  const QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSections({
    required this.sectionId,
    this.layout,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutFooterSectionsLayout?
  layout;

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationSectionBasedLayoutBodySectionsStyle?
  style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    if (layout != null) 'layout': layout!.encode(),
    if (style != null) 'style': style!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControls {
  const QuicksightTemplateDefinitionSheetsParameterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightTemplateDefinitionSheetsParameterControlsDateTimePicker?
  dateTimePicker;

  final QuicksightTemplateDefinitionSheetsParameterControlsDropdown? dropdown;

  final QuicksightTemplateDefinitionSheetsParameterControlsList? list;

  final QuicksightTemplateDefinitionSheetsParameterControlsSlider? slider;

  final QuicksightTemplateDefinitionSheetsParameterControlsTextArea? textArea;

  final QuicksightTemplateDefinitionSheetsParameterControlsTextField? textField;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsDateTimePicker {
  const QuicksightTemplateDefinitionSheetsParameterControlsDateTimePicker({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsDropdown {
  const QuicksightTemplateDefinitionSheetsParameterControlsDropdown({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptions?
  displayOptions;

  final QuicksightTemplateDefinitionSheetsParameterControlsDropdownSelectableValues?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsDropdownSelectableValues {
  const QuicksightTemplateDefinitionSheetsParameterControlsDropdownSelectableValues({
    this.values,
    this.linkToDataSetColumn,
  });

  final TfArg<List<Object?>>? values;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn?
  linkToDataSetColumn;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.toTfJson(),
    if (linkToDataSetColumn != null)
      'link_to_data_set_column': linkToDataSetColumn!.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsList {
  const QuicksightTemplateDefinitionSheetsParameterControlsList({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsListDisplayOptions?
  displayOptions;

  final QuicksightTemplateDefinitionSheetsParameterControlsDropdownSelectableValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsSlider {
  const QuicksightTemplateDefinitionSheetsParameterControlsSlider({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsSliderDisplayOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsTextArea {
  const QuicksightTemplateDefinitionSheetsParameterControlsTextArea({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsParameterControlsTextField {
  const QuicksightTemplateDefinitionSheetsParameterControlsTextField({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightTemplateDefinitionSheetsFilterControlsTextAreaDisplayOptions?
  displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    if (displayOptions != null) 'display_options': displayOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.sheet_control_layouts` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsSheetControlLayouts {
  const QuicksightTemplateDefinitionSheetsSheetControlLayouts({
    required this.configuration,
  });

  final QuicksightTemplateDefinitionSheetsSheetControlLayoutsConfiguration
  configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.sheet_control_layouts.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsSheetControlLayoutsConfiguration {
  const QuicksightTemplateDefinitionSheetsSheetControlLayoutsConfiguration({
    this.gridLayout,
  });

  final QuicksightTemplateDefinitionSheetsLayoutsConfigurationGridLayout?
  gridLayout;

  Map<String, Object?> encode() => {
    if (gridLayout != null) 'grid_layout': gridLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.text_boxes` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsTextBoxes {
  const QuicksightTemplateDefinitionSheetsTextBoxes({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisuals {
  const QuicksightTemplateDefinitionSheetsVisuals({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisual? barChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisual? boxPlotVisual;

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisual?
  comboChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsCustomContentVisual?
  customContentVisual;

  final QuicksightTemplateDefinitionSheetsVisualsEmptyVisual? emptyVisual;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisual?
  filledMapVisual;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisual?
  funnelChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisual?
  gaugeChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisual?
  geospatialMapVisual;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisual? heatMapVisual;

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisual?
  histogramVisual;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisual? insightVisual;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisual? kpiVisual;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisual?
  lineChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisual? pieChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisual?
  pivotTableVisual;

  final QuicksightTemplateDefinitionSheetsVisualsRadarChartVisual?
  radarChartVisual;

  final QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisual?
  sankeyDiagramVisual;

  final QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisual?
  scatterPlotVisual;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisual? tableVisual;

  final QuicksightTemplateDefinitionSheetsVisualsTreeMapVisual? treeMapVisual;

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisual?
  waterfallVisual;

  final QuicksightTemplateDefinitionSheetsVisualsWordCloudVisual?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions({
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
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperations
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperations {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperations({
    this.filterOperation,
    this.navigationOperation,
    this.setParametersOperation,
    this.urlOperation,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation?
  filterOperation;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation?
  navigationOperation;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation?
  setParametersOperation;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperation({
    required this.selectedFieldsConfiguration,
    required this.targetVisualsConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration
  selectedFieldsConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration
  targetVisualsConfiguration;

  Map<String, Object?> encode() => {
    'selected_fields_configuration': selectedFieldsConfiguration.encode(),
    'target_visuals_configuration': targetVisualsConfiguration.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.selected_fields_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationSelectedFieldsConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfiguration({
    this.sameSheetTargetVisualConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration?
  sameSheetTargetVisualConfiguration;

  Map<String, Object?> encode() => {
    if (sameSheetTargetVisualConfiguration != null)
      'same_sheet_target_visual_configuration':
          sameSheetTargetVisualConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration.same_sheet_target_visual_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsFilterOperationTargetVisualsConfigurationSameSheetTargetVisualConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperation({
    this.localNavigationConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration?
  localNavigationConfiguration;

  Map<String, Object?> encode() => {
    if (localNavigationConfiguration != null)
      'local_navigation_configuration': localNavigationConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation.local_navigation_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsNavigationOperationLocalNavigationConfiguration({
    required this.targetSheetId,
  });

  final TfArg<String> targetSheetId;

  Map<String, Object?> encode() => {
    'target_sheet_id': targetSheetId.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperation({
    required this.parameterValueConfigurations,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations
  >
  parameterValueConfigurations;

  Map<String, Object?> encode() => {
    'parameter_value_configurations': [
      for (final e in parameterValueConfigurations) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurations({
    required this.destinationParameterName,
    required this.value,
  });

  final TfArg<String> destinationParameterName;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue
  value;

  Map<String, Object?> encode() => {
    'destination_parameter_name': destinationParameterName.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValue({
    this.selectAllValueOptions,
    this.sourceField,
    this.sourceParameterName,
    this.customValuesConfiguration,
  });

  final TfArg<String>? selectAllValueOptions;

  final TfArg<String>? sourceField;

  final TfArg<String>? sourceParameterName;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfiguration({
    this.includeNullValue,
    required this.customValues,
  });

  final TfArg<bool>? includeNullValue;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues
  customValues;

  Map<String, Object?> encode() => {
    if (includeNullValue != null)
      'include_null_value': includeNullValue!.toTfJson(),
    'custom_values': customValues.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration.custom_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsSetParametersOperationParameterValueConfigurationsValueCustomValuesConfigurationCustomValues({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActionsActionOperationsUrlOperation({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  valueAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions?
  dataOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions?
  scrollbarOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptions({
    this.dateAxisOptions,
    this.numericAxisOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions?
  dateAxisOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions?
  numericAxisOptions;

  Map<String, Object?> encode() => {
    if (dateAxisOptions != null) 'date_axis_options': dateAxisOptions!.encode(),
    if (numericAxisOptions != null)
      'numeric_axis_options': numericAxisOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.date_axis_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsDateAxisOptions({
    this.missingDateVisibility,
  });

  final TfArg<String>? missingDateVisibility;

  Map<String, Object?> encode() => {
    if (missingDateVisibility != null)
      'missing_date_visibility': missingDateVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptions({
    this.range,
    this.scale,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange?
  range;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale?
  scale;

  Map<String, Object?> encode() => {
    if (range != null) 'range': range!.encode(),
    if (scale != null) 'scale': scale!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRange({
    this.dataDriven,
    this.minMax,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven?
  dataDriven;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax?
  minMax;

  Map<String, Object?> encode() => {
    if (dataDriven != null) 'data_driven': dataDriven!.encode(),
    if (minMax != null) 'min_max': minMax!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.data_driven` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeDataDriven();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.min_max` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsRangeMinMax({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScale({
    this.linear,
    this.logarithmic,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear?
  linear;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic?
  logarithmic;

  Map<String, Object?> encode() => {
    if (linear != null) 'linear': linear!.encode(),
    if (logarithmic != null) 'logarithmic': logarithmic!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.linear` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLinear({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisDataOptionsNumericAxisOptionsScaleLogarithmic({
    this.base,
  });

  final TfArg<num>? base;

  Map<String, Object?> encode() => {if (base != null) 'base': base!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptions({
    this.visibility,
    this.visibleRange,
  });

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange?
  visibleRange;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (visibleRange != null) 'visible_range': visibleRange!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRange({
    this.percentRange,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange?
  percentRange;

  Map<String, Object?> encode() => {
    if (percentRange != null) 'percent_range': percentRange!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range.percent_range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisScrollbarOptionsVisibleRangePercentRange({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxisTickLabelOptions({
    this.rotationAngle,
    this.labelOptions,
  });

  final TfArg<num>? rotationAngle;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
  labelOptions;

  Map<String, Object?> encode() => {
    if (rotationAngle != null) 'rotation_angle': rotationAngle!.toTfJson(),
    if (labelOptions != null) 'label_options': labelOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions({
    this.sortIconVisibility,
    this.visibility,
    this.axisLabelOptions,
  });

  final TfArg<String>? sortIconVisibility;

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptions({
    this.customLabel,
    this.applyTo,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo?
  applyTo;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (customLabel != null) 'custom_label': customLabel!.toTfJson(),
    if (applyTo != null) 'apply_to': applyTo!.encode(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options.apply_to` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptionsAxisLabelOptionsApplyTo({
    required this.fieldId,
    required this.column,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.contribution_analysis_defaults` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults({
    required this.measureFieldId,
    required this.contributorDimensions,
  });

  final TfArg<String> measureFieldId;

  final List<QuicksightTemplateDefinitionColumnConfigurationsColumn>
  contributorDimensions;

  Map<String, Object?> encode() => {
    'measure_field_id': measureFieldId.toTfJson(),
    'contributor_dimensions': [
      for (final e in contributorDimensions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels({
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
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes
  >?
  dataLabelTypes;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypes({
    this.dataPathLabelType,
    this.fieldLabelType,
    this.maximumLabelType,
    this.minimumLabelType,
    this.rangeEndsLabelType,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType?
  dataPathLabelType;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType?
  fieldLabelType;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  maximumLabelType;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  minimumLabelType;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesDataPathLabelType({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabelsDataLabelTypesFieldLabelType({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWells({
    this.barChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells?
  barChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (barChartAggregatedFieldWells != null)
      'bar_chart_aggregated_field_wells': barChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells.bar_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells({
    this.category,
    this.colors,
    this.smallMultiples,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  smallMultiples;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups({
    this.categoricalDimensionField,
    this.dateDimensionField,
    this.numericalDimensionField,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField?
  categoricalDimensionField;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField?
  dateDimensionField;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsCategoricalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsDateDimensionField({
    this.dateGranularity,
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? dateGranularity;

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroupsNumericalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues({
    this.calculatedMeasureField,
    this.categoricalMeasureField,
    this.dateMeasureField,
    this.numericalMeasureField,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField?
  calculatedMeasureField;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField?
  categoricalMeasureField;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField?
  dateMeasureField;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCalculatedMeasureField({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesCategoricalMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationStringFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesDateMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValuesNumericalMeasureField({
    required this.fieldId,
    this.aggregationFunction,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction?
  aggregationFunction;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationNumberFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines({
    this.status,
    required this.dataConfiguration,
    this.labelConfiguration,
    this.styleConfiguration,
  });

  final TfArg<String>? status;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration
  dataConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration?
  labelConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfiguration({
    this.axisBinding,
    this.dynamicConfiguration,
    this.staticConfiguration,
  });

  final TfArg<String>? axisBinding;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration?
  dynamicConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationDynamicConfiguration({
    required this.calculation,
    required this.column,
    required this.measureAggregationFunction,
  });

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunctionNumericalAggregationFunction
  calculation;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction
  measureAggregationFunction;

  Map<String, Object?> encode() => {
    'calculation': calculation.encode(),
    'column': column.encode(),
    'measure_aggregation_function': measureAggregationFunction.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.static_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesDataConfigurationStaticConfiguration({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration?
  customLabelConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationCustomLabelConfiguration({
    required this.customLabel,
  });

  final TfArg<String> customLabel;

  Map<String, Object?> encode() => {'custom_label': customLabel.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.value_label_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesLabelConfigurationValueLabelConfiguration({
    this.relativePosition,
    this.formatConfiguration,
  });

  final TfArg<String>? relativePosition;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    if (relativePosition != null)
      'relative_position': relativePosition!.toTfJson(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.style_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLinesStyleConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions({
    this.maxVisibleColumns,
    this.maxVisibleRows,
    this.panelConfiguration,
  });

  final TfArg<num>? maxVisibleColumns;

  final TfArg<num>? maxVisibleRows;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptionsPanelConfigurationTitle({
    this.horizontalTextAlignment,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  colorSort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort({
    this.columnSort,
    this.fieldSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort?
  columnSort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort?
  fieldSort;

  Map<String, Object?> encode() => {
    if (columnSort != null) 'column_sort': columnSort!.encode(),
    if (fieldSort != null) 'field_sort': fieldSort!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.column_sort` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort({
    required this.direction,
    this.aggregationFunction,
    required this.sortBy,
  });

  final TfArg<String> direction;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregationFunction;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn sortBy;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    if (aggregationFunction != null)
      'aggregation_function': aggregationFunction!.encode(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.field_sort` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip({
    this.selectedTooltipType,
    this.tooltipVisibility,
    this.fieldBaseTooltip,
  });

  final TfArg<String>? selectedTooltipType;

  final TfArg<String>? tooltipVisibility;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltip({
    this.aggregationVisibility,
    this.tooltipTitleType,
    this.tooltipFields,
  });

  final TfArg<String>? aggregationVisibility;

  final TfArg<String>? tooltipTitleType;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFields({
    this.columnTooltipItem,
    this.fieldTooltipItem,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem?
  columnTooltipItem;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem?
  fieldTooltipItem;

  Map<String, Object?> encode() => {
    if (columnTooltipItem != null)
      'column_tooltip_item': columnTooltipItem!.encode(),
    if (fieldTooltipItem != null)
      'field_tooltip_item': fieldTooltipItem!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.column_tooltip_item` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsColumnTooltipItem({
    this.label,
    this.visibility,
    this.aggregation,
    required this.column,
  });

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionFilterGroupsFiltersNumericEqualityFilterAggregationFunction?
  aggregation;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (aggregation != null) 'aggregation': aggregation!.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.field_tooltip_item` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltipFieldBaseTooltipTooltipFieldsFieldTooltipItem({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette({
    this.chartColor,
    this.colorMap,
  });

  final TfArg<String>? chartColor;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap
  >?
  colorMap;

  Map<String, Object?> encode() => {
    if (chartColor != null) 'chart_color': chartColor!.toTfJson(),
    if (colorMap != null) 'color_map': [for (final e in colorMap!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMap({
    required this.color,
    this.timeGranularity,
    required this.element,
  });

  final TfArg<String> color;

  final TfArg<String>? timeGranularity;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  element;

  Map<String, Object?> encode() => {
    'color': color.toTfJson(),
    if (timeGranularity != null)
      'time_granularity': timeGranularity!.toTfJson(),
    'element': element.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map.element` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies({
    this.dateTimeHierarchy,
    this.explicitHierarchy,
    this.predefinedHierarchy,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy?
  dateTimeHierarchy;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy?
  explicitHierarchy;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchy({
    required this.hierarchyId,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters
  >?
  drillDownFilters;

  Map<String, Object?> encode() => {
    'hierarchy_id': hierarchyId.toTfJson(),
    if (drillDownFilters != null)
      'drill_down_filters': [for (final e in drillDownFilters!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.timeRangeFilter,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter?
  categoryFilter;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter?
  timeRangeFilter;

  Map<String, Object?> encode() => {
    if (categoryFilter != null) 'category_filter': categoryFilter!.encode(),
    if (numericEqualityFilter != null)
      'numeric_equality_filter': numericEqualityFilter!.encode(),
    if (timeRangeFilter != null) 'time_range_filter': timeRangeFilter!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.category_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersCategoryFilter({
    required this.categoryValues,
    required this.column,
  });

  final TfArg<List<Object?>> categoryValues;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'category_values': categoryValues.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.numeric_equality_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersNumericEqualityFilter({
    required this.value,
    required this.column,
  });

  final TfArg<num> value;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.time_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFiltersTimeRangeFilter({
    required this.rangeMaximum,
    required this.rangeMinimum,
    required this.timeGranularity,
    required this.column,
  });

  final TfArg<String> rangeMaximum;

  final TfArg<String> rangeMinimum;

  final TfArg<String> timeGranularity;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  Map<String, Object?> encode() => {
    'range_maximum': rangeMaximum.toTfJson(),
    'range_minimum': rangeMinimum.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.explicit_hierarchy` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesExplicitHierarchy({
    required this.hierarchyId,
    required this.columns,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightTemplateDefinitionColumnConfigurationsColumn> columns;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchiesDateTimeHierarchyDrillDownFilters
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle({
    this.visibility,
    this.formatText,
  });

  final TfArg<String>? visibility;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitleFormatText?
  formatText;

  Map<String, Object?> encode() => {
    if (visibility != null) 'visibility': visibility!.toTfJson(),
    if (formatText != null) 'format_text': formatText!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle.format_text` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitleFormatText {
  const QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitleFormatText({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisual {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions?
  boxPlotOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptions({
    this.allDataPointsVisibility,
    this.outlierVisibility,
    this.styleOptions,
  });

  final TfArg<String>? allDataPointsVisibility;

  final TfArg<String>? outlierVisibility;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationBoxPlotOptionsStyleOptions({
    this.fillStyle,
  });

  final TfArg<String>? fillStyle;

  Map<String, Object?> encode() => {
    if (fillStyle != null) 'fill_style': fillStyle!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWells({
    this.boxPlotAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells?
  boxPlotAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (boxPlotAggregatedFieldWells != null)
      'box_plot_aggregated_field_wells': boxPlotAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells.box_plot_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationFieldWellsBoxPlotAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  groupBy;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': groupBy!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfiguration({
    this.categorySort,
    this.paginationConfiguration,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration?
  paginationConfiguration;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    if (paginationConfiguration != null)
      'pagination_configuration': paginationConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration.pagination_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsComboChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsComboChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  barDataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  lineDataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  secondaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  secondaryYAxisLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWells({
    this.comboChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells?
  comboChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (comboChartAggregatedFieldWells != null)
      'combo_chart_aggregated_field_wells': comboChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells.combo_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationFieldWellsComboChartAggregatedFieldWells({
    this.barValues,
    this.category,
    this.colors,
    this.lineValues,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  barValues;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsCustomContentVisual {
  const QuicksightTemplateDefinitionSheetsVisualsCustomContentVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsCustomContentVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsCustomContentVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsCustomContentVisualChartConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsEmptyVisual {
  const QuicksightTemplateDefinitionSheetsVisualsEmptyVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisual {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.sortConfiguration,
    this.tooltip,
    this.windowOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions?
  mapStyleOptions;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWells({
    this.filledMapAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells?
  filledMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (filledMapAggregatedFieldWells != null)
      'filled_map_aggregated_field_wells': filledMapAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells.filled_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationFieldWellsFilledMapAggregatedFieldWells({
    this.geospatial,
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  geospatial;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (geospatial != null) 'geospatial': geospatial!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.map_style_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions({
    this.baseMapStyle,
  });

  final TfArg<String>? baseMapStyle;

  Map<String, Object?> encode() => {
    if (baseMapStyle != null) 'base_map_style': baseMapStyle!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationSortConfiguration({
    this.categorySort,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions({
    this.mapZoomMode,
    this.bounds,
  });

  final TfArg<String>? mapZoomMode;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds?
  bounds;

  Map<String, Object?> encode() => {
    if (mapZoomMode != null) 'map_zoom_mode': mapZoomMode!.toTfJson(),
    if (bounds != null) 'bounds': bounds!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options.bounds` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptionsBounds({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormatting {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormatting({
    required this.conditionalFormattingOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions
  >
  conditionalFormattingOptions;

  Map<String, Object?> encode() => {
    'conditional_formatting_options': [
      for (final e in conditionalFormattingOptions) e.encode(),
    ],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptions({
    required this.shape,
  });

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape
  shape;

  Map<String, Object?> encode() => {'shape': shape.encode()};
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShape({
    required this.fieldId,
    this.format,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat?
  format;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape.format` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat {
  const QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualConditionalFormattingConditionalFormattingOptionsShapeFormat({
    required this.backgroundColor,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor({
    this.gradient,
    this.solid,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient?
  gradient;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid?
  solid;

  Map<String, Object?> encode() => {
    if (gradient != null) 'gradient': gradient!.encode(),
    if (solid != null) 'solid': solid!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradient({
    required this.expression,
    required this.color,
  });

  final TfArg<String> expression;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor
  color;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'color': color.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColor({
    this.stops,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops
  >?
  stops;

  Map<String, Object?> encode() => {
    if (stops != null) 'stops': [for (final e in stops!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color.stops` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorGradientColorStops({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColorSolid({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.dataLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions?
  dataLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationDataLabelOptions({
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

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWells({
    this.funnelChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells?
  funnelChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (funnelChartAggregatedFieldWells != null)
      'funnel_chart_aggregated_field_wells': funnelChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells.funnel_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationFieldWellsFunnelChartAggregatedFieldWells({
    this.category,
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.gaugeChartOptions,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions?
  gaugeChartOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWells({
    this.targetValues,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  targetValues;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptions({
    this.primaryValueDisplayType,
    this.arc,
    this.arcAxis,
    this.comparison,
    this.primaryValueFontConfiguration,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc?
  arc;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis?
  arcAxis;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison?
  comparison;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArc({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxis({
    this.reserveRange,
    this.range,
  });

  final TfArg<num>? reserveRange;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange?
  range;

  Map<String, Object?> encode() => {
    if (reserveRange != null) 'reserve_range': reserveRange!.toTfJson(),
    if (range != null) 'range': range!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis.range` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsArcAxisRange({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison({
    this.comparisonMethod,
    this.comparisonFormat,
  });

  final TfArg<String>? comparisonMethod;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat?
  comparisonFormat;

  Map<String, Object?> encode() => {
    if (comparisonMethod != null)
      'comparison_method': comparisonMethod!.toTfJson(),
    if (comparisonFormat != null)
      'comparison_format': comparisonFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison.comparison_format` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparisonComparisonFormat({
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfigurationDateTimeFormatConfigurationNumericFormatConfigurationPercentageDisplayFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptions({
    this.arc,
    this.primaryValue,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc?
  arc;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  primaryValue;

  Map<String, Object?> encode() => {
    if (arc != null) 'arc': arc!.encode(),
    if (primaryValue != null) 'primary_value': primaryValue!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc({
    required this.foregroundColor,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  foregroundColor;

  Map<String, Object?> encode() => {
    'foreground_color': foregroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue({
    this.icon,
    required this.textColor,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon?
  icon;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    if (icon != null) 'icon': icon!.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon({
    this.customCondition,
    this.iconSet,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition?
  customCondition;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet?
  iconSet;

  Map<String, Object?> encode() => {
    if (customCondition != null) 'custom_condition': customCondition!.encode(),
    if (iconSet != null) 'icon_set': iconSet!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomCondition({
    this.color,
    required this.expression,
    this.displayConfiguration,
    required this.iconOptions,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration?
  displayConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionDisplayConfiguration({
    this.iconDisplayOption,
  });

  final TfArg<String>? iconDisplayOption;

  Map<String, Object?> encode() => {
    if (iconDisplayOption != null)
      'icon_display_option': iconDisplayOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.icon_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconCustomConditionIconOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet {
  const QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIconIconSet({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisual {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.pointStyleOptions,
    this.tooltip,
    this.visualPalette,
    this.windowOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationMapStyleOptions?
  mapStyleOptions;

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions?
  pointStyleOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightTemplateDefinitionSheetsVisualsFilledMapVisualChartConfigurationWindowOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWells({
    this.geospatialMapAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells?
  geospatialMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (geospatialMapAggregatedFieldWells != null)
      'geospatial_map_aggregated_field_wells':
          geospatialMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells.geospatial_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationFieldWellsGeospatialMapAggregatedFieldWells({
    this.colors,
    this.geospatial,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  colors;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  geospatial;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptions({
    this.selectedPointStyle,
    this.clusterMarkerConfiguration,
  });

  final TfArg<String>? selectedPointStyle;

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration?
  clusterMarkerConfiguration;

  Map<String, Object?> encode() => {
    if (selectedPointStyle != null)
      'selected_point_style': selectedPointStyle!.toTfJson(),
    if (clusterMarkerConfiguration != null)
      'cluster_marker_configuration': clusterMarkerConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfiguration({
    this.clusterMarker,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker?
  clusterMarker;

  Map<String, Object?> encode() => {
    if (clusterMarker != null) 'cluster_marker': clusterMarker!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarker({
    this.simpleClusterMarker,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker?
  simpleClusterMarker;

  Map<String, Object?> encode() => {
    if (simpleClusterMarker != null)
      'simple_cluster_marker': simpleClusterMarker!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker.simple_cluster_marker` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker {
  const QuicksightTemplateDefinitionSheetsVisualsGeospatialMapVisualChartConfigurationPointStyleOptionsClusterMarkerConfigurationClusterMarkerSimpleClusterMarker({
    this.color,
  });

  final TfArg<String>? color;

  Map<String, Object?> encode() => {
    if (color != null) 'color': color!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisual {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfiguration({
    this.colorScale,
    this.columnLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.rowLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale?
  colorScale;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  columnLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  rowLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale({
    required this.colorFillType,
    required this.colors,
    this.nullValueColor,
  });

  final TfArg<String> colorFillType;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors
  >
  colors;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors?
  nullValueColor;

  Map<String, Object?> encode() => {
    'color_fill_type': colorFillType.toTfJson(),
    'colors': [for (final e in colors) e.encode()],
    if (nullValueColor != null) 'null_value_color': nullValueColor!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale.colors` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScaleColors({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWells({
    this.heatMapAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells?
  heatMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (heatMapAggregatedFieldWells != null)
      'heat_map_aggregated_field_wells': heatMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells.heat_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationFieldWellsHeatMapAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  columns;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  rows;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': columns!.encode(),
    if (rows != null) 'rows': rows!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationSortConfiguration({
    this.heatMapColumnItemsLimitConfiguration,
    this.heatMapColumnSort,
    this.heatMapRowItemsLimitConfiguration,
    this.heatMapRowSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  heatMapColumnItemsLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  heatMapColumnSort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  heatMapRowItemsLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisual {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfiguration({
    this.binOptions,
    this.dataLabels,
    this.fieldWells,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions?
  binOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  xAxisLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptions({
    this.selectedBinType,
    this.startValue,
    this.binCount,
    this.binWidth,
  });

  final TfArg<String>? selectedBinType;

  final TfArg<num>? startValue;

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount?
  binCount;

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinCount({
    this.value,
  });

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_width` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationBinOptionsBinWidth({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWells({
    this.histogramAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells?
  histogramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (histogramAggregatedFieldWells != null)
      'histogram_aggregated_field_wells': histogramAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells.histogram_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsHistogramVisualChartConfigurationFieldWellsHistogramAggregatedFieldWells({
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisual {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.insightConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfiguration?
  insightConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfiguration({
    this.computation,
    this.customNarrative,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation
  >?
  computation;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative?
  customNarrative;

  Map<String, Object?> encode() => {
    if (computation != null)
      'computation': [for (final e in computation!) e.encode()],
    if (customNarrative != null) 'custom_narrative': customNarrative!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputation({
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

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast?
  forecast;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate?
  growthRate;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum?
  maximumMinimum;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison?
  metricComparison;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod?
  periodOverPeriod;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate?
  periodToDate;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers?
  topBottomMovers;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked?
  topBottomRanked;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation?
  totalAggregation;

  final QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationForecast({
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

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationGrowthRate({
    required this.computationId,
    this.name,
    this.periodSize,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? periodSize;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMaximumMinimum({
    required this.computationId,
    this.name,
    required this.type,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> type;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationMetricComparison({
    required this.computationId,
    this.name,
    this.fromValue,
    this.targetValue,
    this.time,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  fromValue;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  targetValue;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodOverPeriod({
    required this.computationId,
    this.name,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (time != null) 'time': time!.encode(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_to_date` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationPeriodToDate({
    required this.computationId,
    this.name,
    required this.periodTimeGranularity,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> periodTimeGranularity;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomMovers({
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

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  time;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTopBottomRanked({
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

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationTotalAggregation({
    required this.computationId,
    this.name,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.unique_values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationComputationUniqueValues({
    required this.computationId,
    this.name,
    this.category,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (category != null) 'category': category!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.custom_narrative` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative {
  const QuicksightTemplateDefinitionSheetsVisualsInsightVisualInsightConfigurationCustomNarrative({
    required this.narrative,
  });

  final TfArg<String> narrative;

  Map<String, Object?> encode() => {'narrative': narrative.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisual {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfiguration({
    this.fieldWells,
    this.kpiOptions,
    this.sortConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions?
  kpiOptions;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (kpiOptions != null) 'kpi_options': kpiOptions!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWells({
    this.targetValues,
    this.trendGroups,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  targetValues;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  trendGroups;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptions({
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

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationGaugeChartOptionsComparison?
  comparison;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  primaryValueFontConfiguration;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  progressBar;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  secondaryValue;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  secondaryValueFontConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline?
  sparkline;

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  trendArrows;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsSparkline({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptions({
    this.standardLayout,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout?
  standardLayout;

  Map<String, Object?> encode() => {
    if (standardLayout != null) 'standard_layout': standardLayout!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options.standard_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationKpiOptionsVisualLayoutOptionsStandardLayout({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationSortConfiguration({
    this.trendGroupSort,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  trendGroupSort;

  Map<String, Object?> encode() => {
    if (trendGroupSort != null)
      'trend_group_sort': [for (final e in trendGroupSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormatting {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsKpiVisualConditionalFormattingConditionalFormattingOptions({
    this.actualValue,
    this.comparisonValue,
    this.primaryValue,
    this.progressBar,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  actualValue;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  comparisonValue;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValue?
  primaryValue;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArc?
  progressBar;

  Map<String, Object?> encode() => {
    if (actualValue != null) 'actual_value': actualValue!.encode(),
    if (comparisonValue != null) 'comparison_value': comparisonValue!.encode(),
    if (primaryValue != null) 'primary_value': primaryValue!.encode(),
    if (progressBar != null) 'progress_bar': progressBar!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfiguration({
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
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings?
  defaultSeriesSettings;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells?
  fieldWells;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations
  >?
  forecastConfigurations;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions?
  primaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationReferenceLines
  >?
  referenceLines;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions?
  secondaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  secondaryYAxisLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries
  >?
  series;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettings({
    this.axisBinding,
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final TfArg<String>? axisBinding;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings?
  lineStyleSettings;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationFieldWells({
    this.lineChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationFieldWellsBarChartAggregatedFieldWells?
  lineChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (lineChartAggregatedFieldWells != null)
      'line_chart_aggregated_field_wells': lineChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurations({
    this.forecastProperties,
    this.scenario,
  });

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties?
  forecastProperties;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario?
  scenario;

  Map<String, Object?> encode() => {
    if (forecastProperties != null)
      'forecast_properties': forecastProperties!.encode(),
    if (scenario != null) 'scenario': scenario!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.forecast_properties` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsForecastProperties({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenario({
    this.whatIfPointScenario,
    this.whatIfRangeScenario,
  });

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario?
  whatIfPointScenario;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario?
  whatIfRangeScenario;

  Map<String, Object?> encode() => {
    if (whatIfPointScenario != null)
      'what_if_point_scenario': whatIfPointScenario!.encode(),
    if (whatIfRangeScenario != null)
      'what_if_range_scenario': whatIfRangeScenario!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_point_scenario` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfPointScenario({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationForecastConfigurationsScenarioWhatIfRangeScenario({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptions({
    this.axisOptions,
    this.missingDataConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  axisOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationPrimaryYAxisDisplayOptionsMissingDataConfiguration({
    this.treatmentOption,
  });

  final TfArg<String>? treatmentOption;

  Map<String, Object?> encode() => {
    if (treatmentOption != null)
      'treatment_option': treatmentOption!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeries({
    this.dataFieldSeriesItem,
    this.fieldSeriesItem,
  });

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem?
  dataFieldSeriesItem;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem?
  fieldSeriesItem;

  Map<String, Object?> encode() => {
    if (dataFieldSeriesItem != null)
      'data_field_series_item': dataFieldSeriesItem!.encode(),
    if (fieldSeriesItem != null) 'field_series_item': fieldSeriesItem!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.fieldValue,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final TfArg<String>? fieldValue;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings?
  settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (fieldValue != null) 'field_value': fieldValue!.toTfJson(),
    if (settings != null) 'settings': settings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item.settings` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings({
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsLineStyleSettings?
  lineStyleSettings;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationDefaultSeriesSettingsMarkerStyleSettings?
  markerStyleSettings;

  Map<String, Object?> encode() => {
    if (lineStyleSettings != null)
      'line_style_settings': lineStyleSettings!.encode(),
    if (markerStyleSettings != null)
      'marker_style_settings': markerStyleSettings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.field_series_item` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSeriesDataFieldSeriesItemSettings?
  settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    if (settings != null) 'settings': settings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsLineChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimitConfiguration,
    this.categorySort,
    this.colorItemsLimitConfiguration,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  colorItemsLimitConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationContributionAnalysisDefaults
  >?
  contributionAnalysisDefaults;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions?
  donutOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSmallMultiplesOptions?
  smallMultiplesOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  valueLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptions({
    this.arcOptions,
    this.donutCenterOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions?
  arcOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions?
  donutCenterOptions;

  Map<String, Object?> encode() => {
    if (arcOptions != null) 'arc_options': arcOptions!.encode(),
    if (donutCenterOptions != null)
      'donut_center_options': donutCenterOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.arc_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsArcOptions({
    this.arcThickness,
  });

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {
    if (arcThickness != null) 'arc_thickness': arcThickness!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.donut_center_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationDonutOptionsDonutCenterOptions({
    this.labelVisibility,
  });

  final TfArg<String>? labelVisibility;

  Map<String, Object?> encode() => {
    if (labelVisibility != null)
      'label_visibility': labelVisibility!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWells({
    this.pieChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells?
  pieChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (pieChartAggregatedFieldWells != null)
      'pie_chart_aggregated_field_wells': pieChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells.pie_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationFieldWellsPieChartAggregatedFieldWells({
    this.category,
    this.smallMultiples,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  smallMultiples;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (smallMultiples != null) 'small_multiples': smallMultiples!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsPieChartVisualChartConfigurationSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  categoryItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  categorySort;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  smallMultiplesLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisual {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions?
  fieldOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions?
  paginatedReportOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions?
  tableOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptions({
    this.dataPathOptions,
    this.selectedFieldOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions
  >?
  dataPathOptions;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsDataPathOptions({
    this.width,
    required this.dataPathList,
  });

  final TfArg<String>? width;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  >
  dataPathList;

  Map<String, Object?> encode() => {
    if (width != null) 'width': width!.toTfJson(),
    'data_path_list': [for (final e in dataPathList) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldOptionsSelectedFieldOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWells({
    this.pivotTableAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells?
  pivotTableAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (pivotTableAggregatedFieldWells != null)
      'pivot_table_aggregated_field_wells': pivotTableAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells.pivot_table_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationFieldWellsPivotTableAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  columns;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  rows;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    if (rows != null) 'rows': [for (final e in rows!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.paginated_report_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfiguration({
    this.fieldSortOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions
  >?
  fieldSortOptions;

  Map<String, Object?> encode() => {
    if (fieldSortOptions != null)
      'field_sort_options': [for (final e in fieldSortOptions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptions({
    required this.fieldId,
    required this.sortBy,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy
  sortBy;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortBy({
    this.column,
    this.dataPath,
    this.field,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortColumnSort?
  column;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath?
  dataPath;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySortFieldSort?
  field;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.encode(),
    if (dataPath != null) 'data_path': dataPath!.encode(),
    if (field != null) 'field': field!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by.data_path` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationSortConfigurationFieldSortOptionsSortByDataPath({
    required this.direction,
    required this.sortPaths,
  });

  final TfArg<String> direction;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPaletteColorMapElement
  >
  sortPaths;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'sort_paths': [for (final e in sortPaths) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptions({
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

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  cellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  columnHeaderStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions?
  rowAlternateColorOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  rowFieldNamesStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle({
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

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder?
  border;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorder({
    this.sideSpecificBorder,
    required this.uniformBorder,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder?
  sideSpecificBorder;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  uniformBorder;

  Map<String, Object?> encode() => {
    if (sideSpecificBorder != null)
      'side_specific_border': sideSpecificBorder!.encode(),
    'uniform_border': uniformBorder.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.side_specific_border` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderSideSpecificBorder({
    required this.bottom,
    required this.innerHorizontal,
    required this.innerVertical,
    required this.left,
    required this.right,
    required this.top,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  bottom;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  innerHorizontal;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  innerVertical;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  left;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
  right;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyleBorderUniformBorder({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptions({
    this.columnSubtotalOptions,
    this.columnTotalOptions,
    this.rowSubtotalOptions,
    this.rowTotalOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions?
  columnSubtotalOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions?
  columnTotalOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions?
  rowSubtotalOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptions({
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
    QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions
  >?
  fieldLevelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  metricHeaderCellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  totalCellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnSubtotalOptionsFieldLevelOptions({
    this.fieldId,
  });

  final TfArg<String>? fieldId;

  Map<String, Object?> encode() => {
    if (fieldId != null) 'field_id': fieldId!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_total_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTotalOptionsColumnTotalOptions({
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

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  metricHeaderCellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  totalCellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormatting {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptions({
    this.cell,
  });

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell?
  cell;

  Map<String, Object?> encode() => {if (cell != null) 'cell': cell!.encode()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCell({
    required this.fieldId,
    this.scope,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope?
  scope;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat?
  textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (scope != null) 'scope': scope!.encode(),
    if (textFormat != null) 'text_format': textFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.scope` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellScope({
    this.role,
  });

  final TfArg<String>? role;

  Map<String, Object?> encode() => {if (role != null) 'role': role!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.text_format` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat {
  const QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat({
    required this.backgroundColor,
    this.icon,
    required this.textColor,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsPrimaryValueIcon?
  icon;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    if (icon != null) 'icon': icon!.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsRadarChartVisual {
  const QuicksightTemplateDefinitionSheetsVisualsRadarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings?
  baseSeriesSettings;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  colorAxis;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsComboChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings {
  const QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationBaseSeriesSettings({
    this.areaStyleSettings,
  });

  final QuicksightTemplateDefinitionSheetsFilterControlsDropdownDisplayOptionsSelectAllOptions?
  areaStyleSettings;

  Map<String, Object?> encode() => {
    if (areaStyleSettings != null)
      'area_style_settings': areaStyleSettings!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWells({
    this.radarChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells?
  radarChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (radarChartAggregatedFieldWells != null)
      'radar_chart_aggregated_field_wells': radarChartAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells.radar_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsRadarChartVisualChartConfigurationFieldWellsRadarChartAggregatedFieldWells({
    this.category,
    this.color,
    this.values,
  });

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  category;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  color;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.encode(),
    if (color != null) 'color': color!.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisual {
  const QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.sortConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    if (dataLabels != null) 'data_labels': dataLabels!.encode(),
    if (fieldWells != null) 'field_wells': fieldWells!.encode(),
    if (sortConfiguration != null)
      'sort_configuration': sortConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWells({
    this.sankeyDiagramAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells?
  sankeyDiagramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (sankeyDiagramAggregatedFieldWells != null)
      'sankey_diagram_aggregated_field_wells':
          sankeyDiagramAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells.sankey_diagram_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationFieldWellsSankeyDiagramAggregatedFieldWells({
    this.destination,
    this.source,
    this.weight,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  destination;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  source;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsSankeyDiagramVisualChartConfigurationSortConfiguration({
    this.destinationItemsLimit,
    this.sourceItemsLimit,
    this.weightSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  destinationItemsLimit;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  sourceItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisual {
  const QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
  tooltip;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  xAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  xAxisLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  yAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWells({
    this.scatterPlotCategoricallyAggregatedFieldWells,
    this.scatterPlotUnaggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells?
  scatterPlotCategoricallyAggregatedFieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotCategoricallyAggregatedFieldWells({
    this.category,
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  category;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  size;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  xAxis;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsScatterPlotVisualChartConfigurationFieldWellsScatterPlotUnaggregatedFieldWells({
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  size;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  xAxis;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  yAxis;

  Map<String, Object?> encode() => {
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisual {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableInlineVisualizations,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions?
  fieldOptions;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationPaginatedReportOptions?
  paginatedReportOptions;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations
  >?
  tableInlineVisualizations;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions?
  tableOptions;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptions({
    this.order,
    this.selectedFieldOptions,
  });

  final TfArg<List<Object?>>? order;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptions({
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

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStyling({
    this.imageConfiguration,
    this.linkConfiguration,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration?
  imageConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration?
  linkConfiguration;

  Map<String, Object?> encode() => {
    if (imageConfiguration != null)
      'image_configuration': imageConfiguration!.encode(),
    if (linkConfiguration != null)
      'link_configuration': linkConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfiguration({
    this.sizingOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions?
  sizingOptions;

  Map<String, Object?> encode() => {
    if (sizingOptions != null) 'sizing_options': sizingOptions!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration.sizing_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingImageConfigurationSizingOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfiguration({
    this.target,
    this.content,
  });

  final TfArg<String>? target;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent?
  content;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (content != null) 'content': content!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContent({
    this.customIconContent,
    this.customTextContent,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent?
  customIconContent;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent?
  customTextContent;

  Map<String, Object?> encode() => {
    if (customIconContent != null)
      'custom_icon_content': customIconContent!.encode(),
    if (customTextContent != null)
      'custom_text_content': customTextContent!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_icon_content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomIconContent({
    this.icon,
  });

  final TfArg<String>? icon;

  Map<String, Object?> encode() => {if (icon != null) 'icon': icon!.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_text_content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldOptionsSelectedFieldOptionsUrlStylingLinkConfigurationContentCustomTextContent({
    this.value,
    this.fontConfiguration,
  });

  final TfArg<String>? value;

  final QuicksightTemplateDefinitionSheetsFilterControlsDateTimePickerDisplayOptionsTitleOptionsFontConfiguration?
  fontConfiguration;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
    if (fontConfiguration != null)
      'font_configuration': fontConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWells({
    this.tableAggregatedFieldWells,
    this.tableUnaggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells?
  tableAggregatedFieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells?
  tableUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (tableAggregatedFieldWells != null)
      'table_aggregated_field_wells': tableAggregatedFieldWells!.encode(),
    if (tableUnaggregatedFieldWells != null)
      'table_unaggregated_field_wells': tableUnaggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  groupBy;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWells({
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues
  >?
  values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells.values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationFieldWellsTableUnaggregatedFieldWellsValues({
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionColumnConfigurationsColumn column;

  final QuicksightTemplateDefinitionColumnConfigurationsFormatConfiguration?
  formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    if (formatConfiguration != null)
      'format_configuration': formatConfiguration!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationSortConfiguration({
    this.paginationConfiguration,
    this.rowSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBoxPlotVisualChartConfigurationSortConfigurationPaginationConfiguration?
  paginationConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
  >?
  rowSort;

  Map<String, Object?> encode() => {
    if (paginationConfiguration != null)
      'pagination_configuration': paginationConfiguration!.encode(),
    if (rowSort != null) 'row_sort': [for (final e in rowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizations({
    this.dataBars,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars?
  dataBars;

  Map<String, Object?> encode() => {
    if (dataBars != null) 'data_bars': dataBars!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations.data_bars` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableInlineVisualizationsDataBars({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTableOptions({
    this.orientation,
    this.cellStyle,
    this.headerStyle,
    this.rowAlternateColorOptions,
  });

  final TfArg<String>? orientation;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  cellStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
  headerStyle;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsRowAlternateColorOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualChartConfigurationTotalOptions({
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

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualChartConfigurationTableOptionsCellStyle?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormatting {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptions({
    this.cell,
    this.row,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell?
  cell;

  final QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow?
  row;

  Map<String, Object?> encode() => {
    if (cell != null) 'cell': cell!.encode(),
    if (row != null) 'row': row!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsCell({
    required this.fieldId,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateDefinitionSheetsVisualsPivotTableVisualConditionalFormattingConditionalFormattingOptionsCellTextFormat?
  textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    if (textFormat != null) 'text_format': textFormat!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.row` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow {
  const QuicksightTemplateDefinitionSheetsVisualsTableVisualConditionalFormattingConditionalFormattingOptionsRow({
    required this.backgroundColor,
    required this.textColor,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  backgroundColor;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualConditionalFormattingConditionalFormattingOptionsArcForegroundColor
  textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTreeMapVisual {
  const QuicksightTemplateDefinitionSheetsVisualsTreeMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  colorLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsHeatMapVisualChartConfigurationColorScale?
  colorScale;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  groupLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  sizeLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationTooltip?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWells({
    this.treeMapAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells?
  treeMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (treeMapAggregatedFieldWells != null)
      'tree_map_aggregated_field_wells': treeMapAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells.tree_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationFieldWellsTreeMapAggregatedFieldWells({
    this.colors,
    this.groups,
    this.sizes,
  });

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  colors;

  final QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups?
  groups;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  sizes;

  Map<String, Object?> encode() => {
    if (colors != null) 'colors': colors!.encode(),
    if (groups != null) 'groups': groups!.encode(),
    if (sizes != null) 'sizes': sizes!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsTreeMapVisualChartConfigurationSortConfiguration({
    this.treeMapGroupItemsLimitConfiguration,
    this.treeMapSort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  treeMapGroupItemsLimitConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisual {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfiguration({
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

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  categoryAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryAxisLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationDataLabels?
  dataLabels;

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationLegend?
  legend;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryAxis?
  primaryYAxisDisplayOptions;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  primaryYAxisLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationVisualPalette?
  visualPalette;

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWells({
    this.waterfallChartAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells?
  waterfallChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (waterfallChartAggregatedFieldWells != null)
      'waterfall_chart_aggregated_field_wells':
          waterfallChartAggregatedFieldWells!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells.waterfall_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationFieldWellsWaterfallChartAggregatedFieldWells({
    this.breakdowns,
    this.categories,
    this.values,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  breakdowns;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  categories;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationSortConfiguration({
    this.breakdownItemsLimit,
    this.categorySort,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategoryItemsLimit?
  breakdownItemsLimit;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationSortConfigurationCategorySort
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions {
  const QuicksightTemplateDefinitionSheetsVisualsWaterfallVisualChartConfigurationWaterfallChartOptions({
    this.totalBarLabel,
  });

  final TfArg<String>? totalBarLabel;

  Map<String, Object?> encode() => {
    if (totalBarLabel != null) 'total_bar_label': totalBarLabel!.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWordCloudVisual {
  const QuicksightTemplateDefinitionSheetsVisualsWordCloudVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateDefinitionSheetsVisualsBarChartVisualActions>?
  actions;

  final QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfiguration?
  chartConfiguration;

  final List<
    QuicksightTemplateDefinitionSheetsVisualsBarChartVisualColumnHierarchies
  >?
  columnHierarchies;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle?
  subtitle;

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfiguration {
  const QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfiguration({
    this.categoryLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.wordCloudOptions,
  });

  final QuicksightTemplateDefinitionSheetsVisualsBarChartVisualChartConfigurationCategoryLabelOptions?
  categoryLabelOptions;

  final QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells?
  fieldWells;

  final QuicksightTemplateDefinitionSheetsVisualsFunnelChartVisualChartConfigurationSortConfiguration?
  sortConfiguration;

  final QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWells({
    this.wordCloudAggregatedFieldWells,
  });

  final QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells?
  wordCloudAggregatedFieldWells;

  Map<String, Object?> encode() => {
    if (wordCloudAggregatedFieldWells != null)
      'word_cloud_aggregated_field_wells': wordCloudAggregatedFieldWells!
          .encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells.word_cloud_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells {
  const QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationFieldWellsWordCloudAggregatedFieldWells({
    this.groupBy,
    this.size,
  });

  final List<
    QuicksightTemplateDefinitionSheetsVisualsKpiVisualChartConfigurationFieldWellsTrendGroups
  >?
  groupBy;

  final QuicksightTemplateDefinitionSheetsVisualsGaugeChartVisualChartConfigurationFieldWellsTargetValues?
  size;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (size != null) 'size': size!.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.word_cloud_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions {
  const QuicksightTemplateDefinitionSheetsVisualsWordCloudVisualChartConfigurationWordCloudOptions({
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

/// Typed helper for the `permissions` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePermissions {
  const QuicksightTemplatePermissions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceEntity {
  const QuicksightTemplateSourceEntity({
    this.sourceAnalysis,
    this.sourceTemplate,
  });

  final QuicksightTemplateSourceEntitySourceAnalysis? sourceAnalysis;

  final QuicksightTemplateSourceEntitySourceTemplate? sourceTemplate;

  Map<String, Object?> encode() => {
    if (sourceAnalysis != null) 'source_analysis': sourceAnalysis!.encode(),
    if (sourceTemplate != null) 'source_template': sourceTemplate!.encode(),
  };
}

/// Typed helper for the `source_entity.source_analysis` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceEntitySourceAnalysis {
  const QuicksightTemplateSourceEntitySourceAnalysis({
    required this.arn,
    required this.dataSetReferences,
  });

  final TfArg<String> arn;

  final List<QuicksightTemplateSourceEntitySourceAnalysisDataSetReferences>
  dataSetReferences;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'data_set_references': [for (final e in dataSetReferences) e.encode()],
  };
}

/// Typed helper for the `source_entity.source_analysis.data_set_references` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceEntitySourceAnalysisDataSetReferences {
  const QuicksightTemplateSourceEntitySourceAnalysisDataSetReferences({
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

/// Typed helper for the `source_entity.source_template` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceEntitySourceTemplate {
  const QuicksightTemplateSourceEntitySourceTemplate({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Factory wrapper for `aws_quicksight_template`.
final class AwsQuicksightTemplate extends Resource {
  static const String tfType = 'aws_quicksight_template';

  AwsQuicksightTemplate({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateId,
    required TfArg<String> versionDescription,
    QuicksightTemplateDefinition? definition,
    List<QuicksightTemplatePermissions>? permissions,
    QuicksightTemplateSourceEntity? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'template_id': templateId,
           'version_description': versionDescription,
           if (definition != null)
             'definition': TfArg.literal(definition.encode()),
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
           if (sourceEntity != null)
             'source_entity': TfArg.literal(sourceEntity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

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
