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

  final QuicksightTemplateAnalysisDefaults? analysisDefaults;

  final List<QuicksightTemplateCalculatedFields>? calculatedFields;

  final List<QuicksightTemplateColumnConfigurations>? columnConfigurations;

  final List<QuicksightTemplateDataSetConfiguration> dataSetConfiguration;

  final List<QuicksightTemplateFilterGroups>? filterGroups;

  final List<QuicksightTemplateParametersDeclarations>? parametersDeclarations;

  final List<QuicksightTemplateSheets>? sheets;

  Map<String, Object?> encode() => {
    'analysis_defaults': ?analysisDefaults?.encode(),
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
final class QuicksightTemplateAnalysisDefaults {
  const QuicksightTemplateAnalysisDefaults({
    required this.defaultNewSheetConfiguration,
  });

  final QuicksightTemplateDefaultNewSheetConfiguration
  defaultNewSheetConfiguration;

  Map<String, Object?> encode() => {
    'default_new_sheet_configuration': defaultNewSheetConfiguration.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefaultNewSheetConfiguration {
  const QuicksightTemplateDefaultNewSheetConfiguration({
    this.sheetContentType,
    this.interactiveLayoutConfiguration,
    this.paginatedLayoutConfiguration,
  });

  final TfArg<String>? sheetContentType;

  final QuicksightTemplateInteractiveLayoutConfiguration?
  interactiveLayoutConfiguration;

  final QuicksightTemplatePaginatedLayoutConfiguration?
  paginatedLayoutConfiguration;

  Map<String, Object?> encode() => {
    'sheet_content_type': ?sheetContentType?.toTfJson(),
    'interactive_layout_configuration': ?interactiveLayoutConfiguration
        ?.encode(),
    'paginated_layout_configuration': ?paginatedLayoutConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateInteractiveLayoutConfiguration {
  const QuicksightTemplateInteractiveLayoutConfiguration({
    this.freeForm,
    this.grid,
  });

  final QuicksightTemplateFreeForm? freeForm;

  final QuicksightTemplateGrid? grid;

  Map<String, Object?> encode() => {
    'free_form': ?freeForm?.encode(),
    'grid': ?grid?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFreeForm {
  const QuicksightTemplateFreeForm({required this.canvasSizeOptions});

  final QuicksightTemplateFreeFormCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFreeFormCanvasSizeOptions {
  const QuicksightTemplateFreeFormCanvasSizeOptions({
    this.screenCanvasSizeOptions,
  });

  final QuicksightTemplateFreeFormScreenCanvasSizeOptions?
  screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.free_form.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFreeFormScreenCanvasSizeOptions {
  const QuicksightTemplateFreeFormScreenCanvasSizeOptions({
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
final class QuicksightTemplateGrid {
  const QuicksightTemplateGrid({required this.canvasSizeOptions});

  final QuicksightTemplateGridCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateGridCanvasSizeOptions {
  const QuicksightTemplateGridCanvasSizeOptions({this.screenCanvasSizeOptions});

  final QuicksightTemplateGridScreenCanvasSizeOptions? screenCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'screen_canvas_size_options': ?screenCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.interactive_layout_configuration.grid.canvas_size_options.screen_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateGridScreenCanvasSizeOptions {
  const QuicksightTemplateGridScreenCanvasSizeOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePaginatedLayoutConfiguration {
  const QuicksightTemplatePaginatedLayoutConfiguration({this.sectionBased});

  final QuicksightTemplateSectionBased? sectionBased;

  Map<String, Object?> encode() => {'section_based': ?sectionBased?.encode()};
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSectionBased {
  const QuicksightTemplateSectionBased({required this.canvasSizeOptions});

  final QuicksightTemplateSectionBasedCanvasSizeOptions canvasSizeOptions;

  Map<String, Object?> encode() => {
    'canvas_size_options': canvasSizeOptions.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSectionBasedCanvasSizeOptions {
  const QuicksightTemplateSectionBasedCanvasSizeOptions({
    this.paperCanvasSizeOptions,
  });

  final QuicksightTemplatePaperCanvasSizeOptions? paperCanvasSizeOptions;

  Map<String, Object?> encode() => {
    'paper_canvas_size_options': ?paperCanvasSizeOptions?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePaperCanvasSizeOptions {
  const QuicksightTemplatePaperCanvasSizeOptions({
    this.paperOrientation,
    this.paperSize,
    this.paperMargin,
  });

  final TfArg<String>? paperOrientation;

  final TfArg<String>? paperSize;

  final QuicksightTemplatePaperMargin? paperMargin;

  Map<String, Object?> encode() => {
    'paper_orientation': ?paperOrientation?.toTfJson(),
    'paper_size': ?paperSize?.toTfJson(),
    'paper_margin': ?paperMargin?.encode(),
  };
}

/// Typed helper for the `definition.analysis_defaults.default_new_sheet_configuration.paginated_layout_configuration.section_based.canvas_size_options.paper_canvas_size_options.paper_margin` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePaperMargin {
  const QuicksightTemplatePaperMargin({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCalculatedFields {
  const QuicksightTemplateCalculatedFields({
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
final class QuicksightTemplateColumnConfigurations {
  const QuicksightTemplateColumnConfigurations({
    this.role,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? role;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.column` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColumn {
  const QuicksightTemplateColumn({
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
final class QuicksightTemplateFormatConfiguration {
  const QuicksightTemplateFormatConfiguration({
    this.dateTimeFormatConfiguration,
    this.numberFormatConfiguration,
    this.stringFormatConfiguration,
  });

  final QuicksightTemplateDateTimeFormatConfiguration?
  dateTimeFormatConfiguration;

  final QuicksightTemplateNumberFormatConfiguration? numberFormatConfiguration;

  final QuicksightTemplateStringFormatConfiguration? stringFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format_configuration': ?dateTimeFormatConfiguration?.encode(),
    'number_format_configuration': ?numberFormatConfiguration?.encode(),
    'string_format_configuration': ?stringFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateTimeFormatConfiguration {
  const QuicksightTemplateDateTimeFormatConfiguration({
    this.dateTimeFormat,
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightTemplateNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.null_value_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNullValueFormatConfiguration {
  const QuicksightTemplateNullValueFormatConfiguration({
    required this.nullString,
  });

  final TfArg<String> nullString;

  Map<String, Object?> encode() => {'null_string': nullString.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericFormatConfiguration {
  const QuicksightTemplateNumericFormatConfiguration({
    this.currencyDisplayFormatConfiguration,
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightTemplateCurrencyDisplayFormatConfiguration?
  currencyDisplayFormatConfiguration;

  final QuicksightTemplateNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightTemplatePercentageDisplayFormatConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCurrencyDisplayFormatConfiguration {
  const QuicksightTemplateCurrencyDisplayFormatConfiguration({
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

  final QuicksightTemplateDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDecimalPlacesConfiguration {
  const QuicksightTemplateDecimalPlacesConfiguration({
    required this.decimalPlaces,
  });

  final TfArg<num> decimalPlaces;

  Map<String, Object?> encode() => {'decimal_places': decimalPlaces.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.negative_value_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNegativeValueConfiguration {
  const QuicksightTemplateNegativeValueConfiguration({
    required this.displayMode,
  });

  final TfArg<String> displayMode;

  Map<String, Object?> encode() => {'display_mode': displayMode.toTfJson()};
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSeparatorConfiguration {
  const QuicksightTemplateSeparatorConfiguration({
    this.decimalSeparator,
    this.thousandsSeparator,
  });

  final TfArg<String>? decimalSeparator;

  final QuicksightTemplateThousandsSeparator? thousandsSeparator;

  Map<String, Object?> encode() => {
    'decimal_separator': ?decimalSeparator?.toTfJson(),
    'thousands_separator': ?thousandsSeparator?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.currency_display_format_configuration.separator_configuration.thousands_separator` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateThousandsSeparator {
  const QuicksightTemplateThousandsSeparator({this.symbol, this.visibility});

  final TfArg<String>? symbol;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'symbol': ?symbol?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.date_time_format_configuration.numeric_format_configuration.number_display_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumberDisplayFormatConfiguration {
  const QuicksightTemplateNumberDisplayFormatConfiguration({
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

  final QuicksightTemplateDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePercentageDisplayFormatConfiguration {
  const QuicksightTemplatePercentageDisplayFormatConfiguration({
    this.prefix,
    this.suffix,
    this.decimalPlacesConfiguration,
    this.negativeValueConfiguration,
    this.nullValueFormatConfiguration,
    this.separatorConfiguration,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  final QuicksightTemplateDecimalPlacesConfiguration?
  decimalPlacesConfiguration;

  final QuicksightTemplateNegativeValueConfiguration?
  negativeValueConfiguration;

  final QuicksightTemplateNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateSeparatorConfiguration? separatorConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumberFormatConfiguration {
  const QuicksightTemplateNumberFormatConfiguration({
    this.numericFormatConfiguration,
  });

  final QuicksightTemplateNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.column_configurations.format_configuration.string_format_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateStringFormatConfiguration {
  const QuicksightTemplateStringFormatConfiguration({
    this.nullValueFormatConfiguration,
    this.numericFormatConfiguration,
  });

  final QuicksightTemplateNullValueFormatConfiguration?
  nullValueFormatConfiguration;

  final QuicksightTemplateNumericFormatConfiguration?
  numericFormatConfiguration;

  Map<String, Object?> encode() => {
    'null_value_format_configuration': ?nullValueFormatConfiguration?.encode(),
    'numeric_format_configuration': ?numericFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.data_set_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataSetConfiguration {
  const QuicksightTemplateDataSetConfiguration({
    this.placeholder,
    this.columnGroupSchemaList,
    this.dataSetSchema,
  });

  final TfArg<String>? placeholder;

  final List<QuicksightTemplateColumnGroupSchemaList>? columnGroupSchemaList;

  final QuicksightTemplateDataSetSchema? dataSetSchema;

  Map<String, Object?> encode() => {
    'placeholder': ?placeholder?.toTfJson(),
    if (columnGroupSchemaList != null)
      'column_group_schema_list': [
        for (final e in columnGroupSchemaList!) e.encode(),
      ],
    'data_set_schema': ?dataSetSchema?.encode(),
  };
}

/// Typed helper for the `definition.data_set_configuration.column_group_schema_list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateColumnGroupSchemaList {
  const QuicksightTemplateColumnGroupSchemaList({
    this.name,
    this.columnGroupColumnSchemaList,
  });

  final TfArg<String>? name;

  final List<QuicksightTemplateColumnGroupColumnSchemaList>?
  columnGroupColumnSchemaList;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
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
final class QuicksightTemplateColumnGroupColumnSchemaList {
  const QuicksightTemplateColumnGroupColumnSchemaList({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `definition.data_set_configuration.data_set_schema` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataSetSchema {
  const QuicksightTemplateDataSetSchema({this.columnSchemaList});

  final List<QuicksightTemplateColumnSchemaList>? columnSchemaList;

  Map<String, Object?> encode() => {
    if (columnSchemaList != null)
      'column_schema_list': [for (final e in columnSchemaList!) e.encode()],
  };
}

/// Typed helper for the `definition.data_set_configuration.data_set_schema.column_schema_list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateColumnSchemaList {
  const QuicksightTemplateColumnSchemaList({
    this.dataType,
    this.geographicRole,
    this.name,
  });

  final TfArg<String>? dataType;

  final TfArg<String>? geographicRole;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'data_type': ?dataType?.toTfJson(),
    'geographic_role': ?geographicRole?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterGroups {
  const QuicksightTemplateFilterGroups({
    required this.crossDataset,
    required this.filterGroupId,
    this.status,
    required this.filters,
    required this.scopeConfiguration,
  });

  final TfArg<String> crossDataset;

  final TfArg<String> filterGroupId;

  final TfArg<String>? status;

  final List<QuicksightTemplateFilters> filters;

  final QuicksightTemplateScopeConfiguration scopeConfiguration;

  Map<String, Object?> encode() => {
    'cross_dataset': crossDataset.toTfJson(),
    'filter_group_id': filterGroupId.toTfJson(),
    'status': ?status?.toTfJson(),
    'filters': [for (final e in filters) e.encode()],
    'scope_configuration': scopeConfiguration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilters {
  const QuicksightTemplateFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.numericRangeFilter,
    this.relativeDatesFilter,
    this.timeEqualityFilter,
    this.timeRangeFilter,
    this.topBottomFilter,
  });

  final QuicksightTemplateCategoryFilter? categoryFilter;

  final QuicksightTemplateNumericEqualityFilter? numericEqualityFilter;

  final QuicksightTemplateNumericRangeFilter? numericRangeFilter;

  final QuicksightTemplateRelativeDatesFilter? relativeDatesFilter;

  final QuicksightTemplateTimeEqualityFilter? timeEqualityFilter;

  final QuicksightTemplateTimeRangeFilter? timeRangeFilter;

  final QuicksightTemplateTopBottomFilter? topBottomFilter;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCategoryFilter {
  const QuicksightTemplateCategoryFilter({
    required this.filterId,
    required this.column,
    required this.configuration,
  });

  final TfArg<String> filterId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateCategoryFilterConfiguration configuration;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'column': column.encode(),
    'configuration': configuration.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCategoryFilterConfiguration {
  const QuicksightTemplateCategoryFilterConfiguration({
    this.customFilterConfiguration,
    this.customFilterListConfiguration,
    this.filterListConfiguration,
  });

  final QuicksightTemplateCustomFilterConfiguration? customFilterConfiguration;

  final QuicksightTemplateCustomFilterListConfiguration?
  customFilterListConfiguration;

  final QuicksightTemplateFilterListConfiguration? filterListConfiguration;

  Map<String, Object?> encode() => {
    'custom_filter_configuration': ?customFilterConfiguration?.encode(),
    'custom_filter_list_configuration': ?customFilterListConfiguration
        ?.encode(),
    'filter_list_configuration': ?filterListConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.category_filter.configuration.custom_filter_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomFilterConfiguration {
  const QuicksightTemplateCustomFilterConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomFilterListConfiguration {
  const QuicksightTemplateCustomFilterListConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterListConfiguration {
  const QuicksightTemplateFilterListConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateNumericEqualityFilter {
  const QuicksightTemplateNumericEqualityFilter({
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

  final QuicksightTemplateAggregationFunction? aggregationFunction;

  final QuicksightTemplateColumn column;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateAggregationFunction {
  const QuicksightTemplateAggregationFunction({
    this.categoricalAggregationFunction,
    this.dateAggregationFunction,
    this.numericalAggregationFunction,
  });

  final TfArg<String>? categoricalAggregationFunction;

  final TfArg<String>? dateAggregationFunction;

  final QuicksightTemplateNumericalAggregationFunction?
  numericalAggregationFunction;

  Map<String, Object?> encode() => {
    'categorical_aggregation_function': ?categoricalAggregationFunction
        ?.toTfJson(),
    'date_aggregation_function': ?dateAggregationFunction?.toTfJson(),
    'numerical_aggregation_function': ?numericalAggregationFunction?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericalAggregationFunction {
  const QuicksightTemplateNumericalAggregationFunction({
    this.simpleNumericalAggregation,
    this.percentileAggregation,
  });

  final TfArg<String>? simpleNumericalAggregation;

  final QuicksightTemplatePercentileAggregation? percentileAggregation;

  Map<String, Object?> encode() => {
    'simple_numerical_aggregation': ?simpleNumericalAggregation?.toTfJson(),
    'percentile_aggregation': ?percentileAggregation?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_equality_filter.aggregation_function.numerical_aggregation_function.percentile_aggregation` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePercentileAggregation {
  const QuicksightTemplatePercentileAggregation({this.percentileValue});

  final TfArg<num>? percentileValue;

  Map<String, Object?> encode() => {
    'percentile_value': ?percentileValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.numeric_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateNumericRangeFilter {
  const QuicksightTemplateNumericRangeFilter({
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

  final QuicksightTemplateAggregationFunction? aggregationFunction;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateRangeMaximum? rangeMaximum;

  final QuicksightTemplateRangeMaximum? rangeMinimum;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateRangeMaximum {
  const QuicksightTemplateRangeMaximum({this.parameter, this.staticValue});

  final TfArg<String>? parameter;

  final TfArg<num>? staticValue;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.relative_dates_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRelativeDatesFilter {
  const QuicksightTemplateRelativeDatesFilter({
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

  final QuicksightTemplateAnchorDateConfiguration anchorDateConfiguration;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateExcludePeriodConfiguration?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateAnchorDateConfiguration {
  const QuicksightTemplateAnchorDateConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateExcludePeriodConfiguration {
  const QuicksightTemplateExcludePeriodConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTimeEqualityFilter {
  const QuicksightTemplateTimeEqualityFilter({
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

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'filter_id': filterId.toTfJson(),
    'parameter_name': ?parameterName?.toTfJson(),
    'time_granularity': timeGranularity.toTfJson(),
    'value': ?value?.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.filters.time_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTimeRangeFilter {
  const QuicksightTemplateTimeRangeFilter({
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

  final QuicksightTemplateColumn column;

  final QuicksightTemplateExcludePeriodConfiguration?
  excludePeriodConfiguration;

  final QuicksightTemplateRangeMaximumValue? rangeMaximumValue;

  final QuicksightTemplateRangeMaximumValue? rangeMinimumValue;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateRangeMaximumValue {
  const QuicksightTemplateRangeMaximumValue({
    this.parameter,
    this.staticValue,
    this.rollingDate,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? staticValue;

  final QuicksightTemplateRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values.rolling_date` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateRollingDate {
  const QuicksightTemplateRollingDate({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTopBottomFilter {
  const QuicksightTemplateTopBottomFilter({
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

  final List<QuicksightTemplateAggregationSortConfiguration>
  aggregationSortConfiguration;

  final QuicksightTemplateColumn column;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateAggregationSortConfiguration {
  const QuicksightTemplateAggregationSortConfiguration({
    required this.sortDirection,
    required this.aggregationFunction,
    required this.column,
  });

  final TfArg<String> sortDirection;

  final QuicksightTemplateAggregationFunction aggregationFunction;

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'sort_direction': sortDirection.toTfJson(),
    'aggregation_function': aggregationFunction.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScopeConfiguration {
  const QuicksightTemplateScopeConfiguration({this.selectedSheets});

  final QuicksightTemplateSelectedSheets? selectedSheets;

  Map<String, Object?> encode() => {
    'selected_sheets': ?selectedSheets?.encode(),
  };
}

/// Typed helper for the `definition.filter_groups.scope_configuration.selected_sheets` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSelectedSheets {
  const QuicksightTemplateSelectedSheets({
    this.sheetVisualScopingConfigurations,
  });

  final List<QuicksightTemplateSheetVisualScopingConfigurations>?
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
final class QuicksightTemplateSheetVisualScopingConfigurations {
  const QuicksightTemplateSheetVisualScopingConfigurations({
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

/// Typed helper for the `definition.parameters_declarations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParametersDeclarations {
  const QuicksightTemplateParametersDeclarations({
    this.dateTimeParameterDeclaration,
    this.decimalParameterDeclaration,
    this.integerParameterDeclaration,
    this.stringParameterDeclaration,
  });

  final QuicksightTemplateDateTimeParameterDeclaration?
  dateTimeParameterDeclaration;

  final QuicksightTemplateDecimalParameterDeclaration?
  decimalParameterDeclaration;

  final QuicksightTemplateDecimalParameterDeclaration?
  integerParameterDeclaration;

  final QuicksightTemplateStringParameterDeclaration?
  stringParameterDeclaration;

  Map<String, Object?> encode() => {
    'date_time_parameter_declaration': ?dateTimeParameterDeclaration?.encode(),
    'decimal_parameter_declaration': ?decimalParameterDeclaration?.encode(),
    'integer_parameter_declaration': ?integerParameterDeclaration?.encode(),
    'string_parameter_declaration': ?stringParameterDeclaration?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDateTimeParameterDeclaration {
  const QuicksightTemplateDateTimeParameterDeclaration({
    required this.name,
    this.timeGranularity,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String>? timeGranularity;

  final QuicksightTemplateDateTimeParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDateTimeParameterDeclarationDefaultValues {
  const QuicksightTemplateDateTimeParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
    this.rollingDate,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightTemplateDynamicValue? dynamicValue;

  final QuicksightTemplateRollingDate? rollingDate;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
    'rolling_date': ?rollingDate?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.default_values.dynamic_value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDynamicValue {
  const QuicksightTemplateDynamicValue({
    required this.defaultValueColumn,
    this.groupNameColumn,
    this.userNameColumn,
  });

  final QuicksightTemplateColumn defaultValueColumn;

  final QuicksightTemplateColumn? groupNameColumn;

  final QuicksightTemplateColumn? userNameColumn;

  Map<String, Object?> encode() => {
    'default_value_column': defaultValueColumn.encode(),
    'group_name_column': ?groupNameColumn?.encode(),
    'user_name_column': ?userNameColumn?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.date_time_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateTimeParameterDeclarationValuesWhenUnset {
  const QuicksightTemplateDateTimeParameterDeclarationValuesWhenUnset({
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

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDecimalParameterDeclaration {
  const QuicksightTemplateDecimalParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightTemplateDecimalParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDecimalParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration.default_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDecimalParameterDeclarationDefaultValues {
  const QuicksightTemplateDecimalParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<num>>? staticValues;

  final QuicksightTemplateDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.decimal_parameter_declaration.values_when_unset` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDecimalParameterDeclarationValuesWhenUnset {
  const QuicksightTemplateDecimalParameterDeclarationValuesWhenUnset({
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

/// Typed helper for the `definition.parameters_declarations.string_parameter_declaration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateStringParameterDeclaration {
  const QuicksightTemplateStringParameterDeclaration({
    required this.name,
    required this.parameterValueType,
    this.defaultValues,
    this.valuesWhenUnset,
  });

  final TfArg<String> name;

  final TfArg<String> parameterValueType;

  final QuicksightTemplateStringParameterDeclarationDefaultValues?
  defaultValues;

  final QuicksightTemplateDateTimeParameterDeclarationValuesWhenUnset?
  valuesWhenUnset;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value_type': parameterValueType.toTfJson(),
    'default_values': ?defaultValues?.encode(),
    'values_when_unset': ?valuesWhenUnset?.encode(),
  };
}

/// Typed helper for the `definition.parameters_declarations.string_parameter_declaration.default_values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateStringParameterDeclarationDefaultValues {
  const QuicksightTemplateStringParameterDeclarationDefaultValues({
    this.staticValues,
    this.dynamicValue,
  });

  final TfArg<List<String>>? staticValues;

  final QuicksightTemplateDynamicValue? dynamicValue;

  Map<String, Object?> encode() => {
    'static_values': ?staticValues?.toTfJson(),
    'dynamic_value': ?dynamicValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSheets {
  const QuicksightTemplateSheets({
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

  final List<QuicksightTemplateFilterControls>? filterControls;

  final QuicksightTemplateLayouts? layouts;

  final List<QuicksightTemplateParameterControls>? parameterControls;

  final QuicksightTemplateSheetControlLayouts? sheetControlLayouts;

  final List<QuicksightTemplateTextBoxes>? textBoxes;

  final List<QuicksightTemplateVisuals>? visuals;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControls {
  const QuicksightTemplateFilterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.relativeDateTime,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightTemplateFilterControlsDateTimePicker? dateTimePicker;

  final QuicksightTemplateFilterControlsDropdown? dropdown;

  final QuicksightTemplateFilterControlsList? list;

  final QuicksightTemplateRelativeDateTime? relativeDateTime;

  final QuicksightTemplateFilterControlsSlider? slider;

  final QuicksightTemplateFilterControlsTextArea? textArea;

  final QuicksightTemplateFilterControlsTextField? textField;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsDateTimePicker {
  const QuicksightTemplateFilterControlsDateTimePicker({
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

  final QuicksightTemplateDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'type': ?type?.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateTimePickerDisplayOptions {
  const QuicksightTemplateDateTimePickerDisplayOptions({
    this.dateTimeFormat,
    this.titleOptions,
  });

  final TfArg<String>? dateTimeFormat;

  final QuicksightTemplateTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'date_time_format': ?dateTimeFormat?.toTfJson(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTitleOptions {
  const QuicksightTemplateTitleOptions({
    this.customLabel,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final TfArg<String>? visibility;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFontConfiguration {
  const QuicksightTemplateFontConfiguration({
    this.fontColor,
    this.fontDecoration,
    this.fontStyle,
    this.fontSize,
    this.fontWeight,
  });

  final TfArg<String>? fontColor;

  final TfArg<String>? fontDecoration;

  final TfArg<String>? fontStyle;

  final QuicksightTemplateFontSize? fontSize;

  final QuicksightTemplateColumnGroupColumnSchemaList? fontWeight;

  Map<String, Object?> encode() => {
    'font_color': ?fontColor?.toTfJson(),
    'font_decoration': ?fontDecoration?.toTfJson(),
    'font_style': ?fontStyle?.toTfJson(),
    'font_size': ?fontSize?.encode(),
    'font_weight': ?fontWeight?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.date_time_picker.display_options.title_options.font_configuration.font_size` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFontSize {
  const QuicksightTemplateFontSize({this.relative});

  final TfArg<String>? relative;

  Map<String, Object?> encode() => {'relative': ?relative?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsDropdown {
  const QuicksightTemplateFilterControlsDropdown({
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

  final QuicksightTemplateCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDropdownDisplayOptions? displayOptions;

  final QuicksightTemplateFilterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCascadingControlConfiguration {
  const QuicksightTemplateCascadingControlConfiguration({this.sourceControls});

  final List<QuicksightTemplateSourceControls>? sourceControls;

  Map<String, Object?> encode() => {
    if (sourceControls != null)
      'source_controls': [for (final e in sourceControls!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.cascading_control_configuration.source_controls` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSourceControls {
  const QuicksightTemplateSourceControls({
    this.sourceSheetControlId,
    required this.columnToMatch,
  });

  final TfArg<String>? sourceSheetControlId;

  final QuicksightTemplateColumn columnToMatch;

  Map<String, Object?> encode() => {
    'source_sheet_control_id': ?sourceSheetControlId?.toTfJson(),
    'column_to_match': columnToMatch.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDropdownDisplayOptions {
  const QuicksightTemplateDropdownDisplayOptions({
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightTemplateSelectAllOptions? selectAllOptions;

  final QuicksightTemplateTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.display_options.select_all_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSelectAllOptions {
  const QuicksightTemplateSelectAllOptions({this.visibility});

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {'visibility': ?visibility?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.dropdown.selectable_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFilterControlsSelectableValues {
  const QuicksightTemplateFilterControlsSelectableValues({this.values});

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {'values': ?values?.toTfJson()};
}

/// Typed helper for the `definition.sheets.filter_controls.list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsList {
  const QuicksightTemplateFilterControlsList({
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

  final QuicksightTemplateCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateListDisplayOptions? displayOptions;

  final QuicksightTemplateFilterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateListDisplayOptions {
  const QuicksightTemplateListDisplayOptions({
    this.searchOptions,
    this.selectAllOptions,
    this.titleOptions,
  });

  final QuicksightTemplateSelectAllOptions? searchOptions;

  final QuicksightTemplateSelectAllOptions? selectAllOptions;

  final QuicksightTemplateTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'search_options': ?searchOptions?.encode(),
    'select_all_options': ?selectAllOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.relative_date_time` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRelativeDateTime {
  const QuicksightTemplateRelativeDateTime({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightTemplateDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.slider` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsSlider {
  const QuicksightTemplateFilterControlsSlider({
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

  final QuicksightTemplateSliderDisplayOptions? displayOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSliderDisplayOptions {
  const QuicksightTemplateSliderDisplayOptions({this.titleOptions});

  final QuicksightTemplateTitleOptions? titleOptions;

  Map<String, Object?> encode() => {'title_options': ?titleOptions?.encode()};
}

/// Typed helper for the `definition.sheets.filter_controls.text_area` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsTextArea {
  const QuicksightTemplateFilterControlsTextArea({
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

  final QuicksightTemplateTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_area.display_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTextAreaDisplayOptions {
  const QuicksightTemplateTextAreaDisplayOptions({
    this.placeholderOptions,
    this.titleOptions,
  });

  final QuicksightTemplateSelectAllOptions? placeholderOptions;

  final QuicksightTemplateTitleOptions? titleOptions;

  Map<String, Object?> encode() => {
    'placeholder_options': ?placeholderOptions?.encode(),
    'title_options': ?titleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.filter_controls.text_field` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilterControlsTextField {
  const QuicksightTemplateFilterControlsTextField({
    required this.filterControlId,
    required this.sourceFilterId,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> filterControlId;

  final TfArg<String> sourceFilterId;

  final TfArg<String> title;

  final QuicksightTemplateTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'filter_control_id': filterControlId.toTfJson(),
    'source_filter_id': sourceFilterId.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLayouts {
  const QuicksightTemplateLayouts({required this.configuration});

  final QuicksightTemplateLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLayoutsConfiguration {
  const QuicksightTemplateLayoutsConfiguration({
    this.freeFormLayout,
    this.gridLayout,
    this.sectionBasedLayout,
  });

  final QuicksightTemplateFreeFormLayout? freeFormLayout;

  final QuicksightTemplateGridLayout? gridLayout;

  final QuicksightTemplateSectionBasedLayout? sectionBasedLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': ?freeFormLayout?.encode(),
    'grid_layout': ?gridLayout?.encode(),
    'section_based_layout': ?sectionBasedLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFreeFormLayout {
  const QuicksightTemplateFreeFormLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightTemplateFreeFormCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightTemplateFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFreeFormLayoutElements {
  const QuicksightTemplateFreeFormLayoutElements({
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

  final QuicksightTemplateBackgroundStyle? backgroundStyle;

  final QuicksightTemplateBackgroundStyle? borderStyle;

  final QuicksightTemplateSelectAllOptions? loadingAnimation;

  final List<QuicksightTemplateRenderingRules>? renderingRules;

  final QuicksightTemplateBackgroundStyle? selectedBorderStyle;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateBackgroundStyle {
  const QuicksightTemplateBackgroundStyle({this.color, this.visibility});

  final TfArg<String>? color;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.free_form_layout.elements.rendering_rules` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateRenderingRules {
  const QuicksightTemplateRenderingRules({
    required this.expression,
    required this.configurationOverrides,
  });

  final TfArg<String> expression;

  final QuicksightTemplateSelectAllOptions configurationOverrides;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'configuration_overrides': configurationOverrides.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateGridLayout {
  const QuicksightTemplateGridLayout({
    this.canvasSizeOptions,
    required this.elements,
  });

  final QuicksightTemplateGridCanvasSizeOptions? canvasSizeOptions;

  final List<QuicksightTemplateGridLayoutElements> elements;

  Map<String, Object?> encode() => {
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.grid_layout.elements` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateGridLayoutElements {
  const QuicksightTemplateGridLayoutElements({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSectionBasedLayout {
  const QuicksightTemplateSectionBasedLayout({
    required this.bodySections,
    this.canvasSizeOptions,
    required this.footerSections,
    required this.headerSections,
  });

  final List<QuicksightTemplateBodySections> bodySections;

  final QuicksightTemplateSectionBasedCanvasSizeOptions? canvasSizeOptions;

  final QuicksightTemplateFooterSections footerSections;

  final QuicksightTemplateFooterSections headerSections;

  Map<String, Object?> encode() => {
    'body_sections': [for (final e in bodySections) e.encode()],
    'canvas_size_options': ?canvasSizeOptions?.encode(),
    'footer_sections': footerSections.encode(),
    'header_sections': headerSections.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBodySections {
  const QuicksightTemplateBodySections({
    required this.sectionId,
    required this.content,
    this.pageBreakConfiguration,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightTemplateContent content;

  final QuicksightTemplatePageBreakConfiguration? pageBreakConfiguration;

  final QuicksightTemplateStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'content': content.encode(),
    'page_break_configuration': ?pageBreakConfiguration?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateContent {
  const QuicksightTemplateContent({this.layout});

  final QuicksightTemplateLayout? layout;

  Map<String, Object?> encode() => {'layout': ?layout?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLayout {
  const QuicksightTemplateLayout({required this.freeFormLayout});

  final QuicksightTemplateLayoutFreeFormLayout freeFormLayout;

  Map<String, Object?> encode() => {
    'free_form_layout': freeFormLayout.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections.layout.free_form_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLayoutFreeFormLayout {
  const QuicksightTemplateLayoutFreeFormLayout({required this.elements});

  final List<QuicksightTemplateFreeFormLayoutElements> elements;

  Map<String, Object?> encode() => {
    'elements': [for (final e in elements) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePageBreakConfiguration {
  const QuicksightTemplatePageBreakConfiguration({this.after});

  final QuicksightTemplateAfter? after;

  Map<String, Object?> encode() => {'after': ?after?.encode()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.page_break_configuration.after` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateAfter {
  const QuicksightTemplateAfter({this.status});

  final TfArg<String>? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.body_sections.style` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateStyle {
  const QuicksightTemplateStyle({this.height, this.padding});

  final TfArg<String>? height;

  final QuicksightTemplatePaperMargin? padding;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'padding': ?padding?.encode(),
  };
}

/// Typed helper for the `definition.sheets.layouts.configuration.section_based_layout.footer_sections` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFooterSections {
  const QuicksightTemplateFooterSections({
    required this.sectionId,
    this.layout,
    this.style,
  });

  final TfArg<String> sectionId;

  final QuicksightTemplateLayout? layout;

  final QuicksightTemplateStyle? style;

  Map<String, Object?> encode() => {
    'section_id': sectionId.toTfJson(),
    'layout': ?layout?.encode(),
    'style': ?style?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControls {
  const QuicksightTemplateParameterControls({
    this.dateTimePicker,
    this.dropdown,
    this.list,
    this.slider,
    this.textArea,
    this.textField,
  });

  final QuicksightTemplateParameterControlsDateTimePicker? dateTimePicker;

  final QuicksightTemplateParameterControlsDropdown? dropdown;

  final QuicksightTemplateParameterControlsList? list;

  final QuicksightTemplateParameterControlsSlider? slider;

  final QuicksightTemplateParameterControlsTextArea? textArea;

  final QuicksightTemplateParameterControlsTextField? textField;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsDateTimePicker {
  const QuicksightTemplateParameterControlsDateTimePicker({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightTemplateDateTimePickerDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.dropdown` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsDropdown {
  const QuicksightTemplateParameterControlsDropdown({
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

  final QuicksightTemplateCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateDropdownDisplayOptions? displayOptions;

  final QuicksightTemplateParameterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateParameterControlsSelectableValues {
  const QuicksightTemplateParameterControlsSelectableValues({
    this.values,
    this.linkToDataSetColumn,
  });

  final TfArg<List<String>>? values;

  final QuicksightTemplateColumn? linkToDataSetColumn;

  Map<String, Object?> encode() => {
    'values': ?values?.toTfJson(),
    'link_to_data_set_column': ?linkToDataSetColumn?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.list` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsList {
  const QuicksightTemplateParameterControlsList({
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

  final QuicksightTemplateCascadingControlConfiguration?
  cascadingControlConfiguration;

  final QuicksightTemplateListDisplayOptions? displayOptions;

  final QuicksightTemplateParameterControlsSelectableValues? selectableValues;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsSlider {
  const QuicksightTemplateParameterControlsSlider({
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

  final QuicksightTemplateSliderDisplayOptions? displayOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsTextArea {
  const QuicksightTemplateParameterControlsTextArea({
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

  final QuicksightTemplateTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.parameter_controls.text_field` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateParameterControlsTextField {
  const QuicksightTemplateParameterControlsTextField({
    required this.parameterControlId,
    required this.sourceParameterName,
    required this.title,
    this.displayOptions,
  });

  final TfArg<String> parameterControlId;

  final TfArg<String> sourceParameterName;

  final TfArg<String> title;

  final QuicksightTemplateTextAreaDisplayOptions? displayOptions;

  Map<String, Object?> encode() => {
    'parameter_control_id': parameterControlId.toTfJson(),
    'source_parameter_name': sourceParameterName.toTfJson(),
    'title': title.toTfJson(),
    'display_options': ?displayOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.sheet_control_layouts` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSheetControlLayouts {
  const QuicksightTemplateSheetControlLayouts({required this.configuration});

  final QuicksightTemplateSheetControlLayoutsConfiguration configuration;

  Map<String, Object?> encode() => {'configuration': configuration.encode()};
}

/// Typed helper for the `definition.sheets.sheet_control_layouts.configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSheetControlLayoutsConfiguration {
  const QuicksightTemplateSheetControlLayoutsConfiguration({this.gridLayout});

  final QuicksightTemplateGridLayout? gridLayout;

  Map<String, Object?> encode() => {'grid_layout': ?gridLayout?.encode()};
}

/// Typed helper for the `definition.sheets.text_boxes` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTextBoxes {
  const QuicksightTemplateTextBoxes({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateVisuals {
  const QuicksightTemplateVisuals({
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

  final QuicksightTemplateBarChartVisual? barChartVisual;

  final QuicksightTemplateBoxPlotVisual? boxPlotVisual;

  final QuicksightTemplateComboChartVisual? comboChartVisual;

  final QuicksightTemplateCustomContentVisual? customContentVisual;

  final QuicksightTemplateEmptyVisual? emptyVisual;

  final QuicksightTemplateFilledMapVisual? filledMapVisual;

  final QuicksightTemplateFunnelChartVisual? funnelChartVisual;

  final QuicksightTemplateGaugeChartVisual? gaugeChartVisual;

  final QuicksightTemplateGeospatialMapVisual? geospatialMapVisual;

  final QuicksightTemplateHeatMapVisual? heatMapVisual;

  final QuicksightTemplateHistogramVisual? histogramVisual;

  final QuicksightTemplateInsightVisual? insightVisual;

  final QuicksightTemplateKpiVisual? kpiVisual;

  final QuicksightTemplateLineChartVisual? lineChartVisual;

  final QuicksightTemplatePieChartVisual? pieChartVisual;

  final QuicksightTemplatePivotTableVisual? pivotTableVisual;

  final QuicksightTemplateRadarChartVisual? radarChartVisual;

  final QuicksightTemplateSankeyDiagramVisual? sankeyDiagramVisual;

  final QuicksightTemplateScatterPlotVisual? scatterPlotVisual;

  final QuicksightTemplateTableVisual? tableVisual;

  final QuicksightTemplateTreeMapVisual? treeMapVisual;

  final QuicksightTemplateWaterfallVisual? waterfallVisual;

  final QuicksightTemplateWordCloudVisual? wordCloudVisual;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBarChartVisual {
  const QuicksightTemplateBarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateBarChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateActions {
  const QuicksightTemplateActions({
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

  final List<QuicksightTemplateActionOperations> actionOperations;

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
final class QuicksightTemplateActionOperations {
  const QuicksightTemplateActionOperations({
    this.filterOperation,
    this.navigationOperation,
    this.setParametersOperation,
    this.urlOperation,
  });

  final QuicksightTemplateFilterOperation? filterOperation;

  final QuicksightTemplateNavigationOperation? navigationOperation;

  final QuicksightTemplateSetParametersOperation? setParametersOperation;

  final QuicksightTemplateUrlOperation? urlOperation;

  Map<String, Object?> encode() => {
    'filter_operation': ?filterOperation?.encode(),
    'navigation_operation': ?navigationOperation?.encode(),
    'set_parameters_operation': ?setParametersOperation?.encode(),
    'url_operation': ?urlOperation?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFilterOperation {
  const QuicksightTemplateFilterOperation({
    required this.selectedFieldsConfiguration,
    required this.targetVisualsConfiguration,
  });

  final QuicksightTemplateSelectedFieldsConfiguration
  selectedFieldsConfiguration;

  final QuicksightTemplateTargetVisualsConfiguration targetVisualsConfiguration;

  Map<String, Object?> encode() => {
    'selected_fields_configuration': selectedFieldsConfiguration.encode(),
    'target_visuals_configuration': targetVisualsConfiguration.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.selected_fields_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSelectedFieldsConfiguration {
  const QuicksightTemplateSelectedFieldsConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTargetVisualsConfiguration {
  const QuicksightTemplateTargetVisualsConfiguration({
    this.sameSheetTargetVisualConfiguration,
  });

  final QuicksightTemplateSameSheetTargetVisualConfiguration?
  sameSheetTargetVisualConfiguration;

  Map<String, Object?> encode() => {
    'same_sheet_target_visual_configuration':
        ?sameSheetTargetVisualConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.filter_operation.target_visuals_configuration.same_sheet_target_visual_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSameSheetTargetVisualConfiguration {
  const QuicksightTemplateSameSheetTargetVisualConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNavigationOperation {
  const QuicksightTemplateNavigationOperation({
    this.localNavigationConfiguration,
  });

  final QuicksightTemplateLocalNavigationConfiguration?
  localNavigationConfiguration;

  Map<String, Object?> encode() => {
    'local_navigation_configuration': ?localNavigationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.navigation_operation.local_navigation_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLocalNavigationConfiguration {
  const QuicksightTemplateLocalNavigationConfiguration({
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
final class QuicksightTemplateSetParametersOperation {
  const QuicksightTemplateSetParametersOperation({
    required this.parameterValueConfigurations,
  });

  final List<QuicksightTemplateParameterValueConfigurations>
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
final class QuicksightTemplateParameterValueConfigurations {
  const QuicksightTemplateParameterValueConfigurations({
    required this.destinationParameterName,
    required this.value,
  });

  final TfArg<String> destinationParameterName;

  final QuicksightTemplateValue value;

  Map<String, Object?> encode() => {
    'destination_parameter_name': destinationParameterName.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateValue {
  const QuicksightTemplateValue({
    this.selectAllValueOptions,
    this.sourceField,
    this.sourceParameterName,
    this.customValuesConfiguration,
  });

  final TfArg<String>? selectAllValueOptions;

  final TfArg<String>? sourceField;

  final TfArg<String>? sourceParameterName;

  final QuicksightTemplateCustomValuesConfiguration? customValuesConfiguration;

  Map<String, Object?> encode() => {
    'select_all_value_options': ?selectAllValueOptions?.toTfJson(),
    'source_field': ?sourceField?.toTfJson(),
    'source_parameter_name': ?sourceParameterName?.toTfJson(),
    'custom_values_configuration': ?customValuesConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCustomValuesConfiguration {
  const QuicksightTemplateCustomValuesConfiguration({
    this.includeNullValue,
    required this.customValues,
  });

  final TfArg<bool>? includeNullValue;

  final QuicksightTemplateCustomValues customValues;

  Map<String, Object?> encode() => {
    'include_null_value': ?includeNullValue?.toTfJson(),
    'custom_values': customValues.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.actions.action_operations.set_parameters_operation.parameter_value_configurations.value.custom_values_configuration.custom_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCustomValues {
  const QuicksightTemplateCustomValues({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateUrlOperation {
  const QuicksightTemplateUrlOperation({
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
final class QuicksightTemplateBarChartVisualChartConfiguration {
  const QuicksightTemplateBarChartVisualChartConfiguration({
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

  final QuicksightTemplateCategoryAxis? categoryAxis;

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateCategoryLabelOptions? colorLabelOptions;

  final List<QuicksightTemplateContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateBarChartVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final List<QuicksightTemplateReferenceLines>? referenceLines;

  final QuicksightTemplateSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightTemplateBarChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateCategoryAxis? valueAxis;

  final QuicksightTemplateCategoryLabelOptions? valueLabelOptions;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCategoryAxis {
  const QuicksightTemplateCategoryAxis({
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

  final QuicksightTemplateDataOptions? dataOptions;

  final QuicksightTemplateScrollbarOptions? scrollbarOptions;

  final QuicksightTemplateTickLabelOptions? tickLabelOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDataOptions {
  const QuicksightTemplateDataOptions({
    this.dateAxisOptions,
    this.numericAxisOptions,
  });

  final QuicksightTemplateDateAxisOptions? dateAxisOptions;

  final QuicksightTemplateNumericAxisOptions? numericAxisOptions;

  Map<String, Object?> encode() => {
    'date_axis_options': ?dateAxisOptions?.encode(),
    'numeric_axis_options': ?numericAxisOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.date_axis_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateAxisOptions {
  const QuicksightTemplateDateAxisOptions({this.missingDateVisibility});

  final TfArg<String>? missingDateVisibility;

  Map<String, Object?> encode() => {
    'missing_date_visibility': ?missingDateVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericAxisOptions {
  const QuicksightTemplateNumericAxisOptions({this.range, this.scale});

  final QuicksightTemplateNumericAxisOptionsRange? range;

  final QuicksightTemplateScale? scale;

  Map<String, Object?> encode() => {
    'range': ?range?.encode(),
    'scale': ?scale?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericAxisOptionsRange {
  const QuicksightTemplateNumericAxisOptionsRange({
    this.dataDriven,
    this.minMax,
  });

  final QuicksightTemplateDataDriven? dataDriven;

  final QuicksightTemplateMinMax? minMax;

  Map<String, Object?> encode() => {
    'data_driven': ?dataDriven?.encode(),
    'min_max': ?minMax?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.data_driven` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDataDriven {
  const QuicksightTemplateDataDriven();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.range.min_max` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateMinMax {
  const QuicksightTemplateMinMax({this.maximum, this.minimum});

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  Map<String, Object?> encode() => {
    'maximum': ?maximum?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateScale {
  const QuicksightTemplateScale({this.linear, this.logarithmic});

  final QuicksightTemplateLinear? linear;

  final QuicksightTemplateLogarithmic? logarithmic;

  Map<String, Object?> encode() => {
    'linear': ?linear?.encode(),
    'logarithmic': ?logarithmic?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.linear` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLinear {
  const QuicksightTemplateLinear({this.stepCount, this.stepSize});

  final TfArg<num>? stepCount;

  final TfArg<num>? stepSize;

  Map<String, Object?> encode() => {
    'step_count': ?stepCount?.toTfJson(),
    'step_size': ?stepSize?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.data_options.numeric_axis_options.scale.logarithmic` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLogarithmic {
  const QuicksightTemplateLogarithmic({this.base});

  final TfArg<num>? base;

  Map<String, Object?> encode() => {'base': ?base?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateScrollbarOptions {
  const QuicksightTemplateScrollbarOptions({
    this.visibility,
    this.visibleRange,
  });

  final TfArg<String>? visibility;

  final QuicksightTemplateVisibleRange? visibleRange;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'visible_range': ?visibleRange?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateVisibleRange {
  const QuicksightTemplateVisibleRange({this.percentRange});

  final QuicksightTemplatePercentRange? percentRange;

  Map<String, Object?> encode() => {'percent_range': ?percentRange?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.scrollbar_options.visible_range.percent_range` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePercentRange {
  const QuicksightTemplatePercentRange({this.from, this.to});

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_axis.tick_label_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTickLabelOptions {
  const QuicksightTemplateTickLabelOptions({
    this.rotationAngle,
    this.labelOptions,
  });

  final TfArg<num>? rotationAngle;

  final QuicksightTemplateTitleOptions? labelOptions;

  Map<String, Object?> encode() => {
    'rotation_angle': ?rotationAngle?.toTfJson(),
    'label_options': ?labelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCategoryLabelOptions {
  const QuicksightTemplateCategoryLabelOptions({
    this.sortIconVisibility,
    this.visibility,
    this.axisLabelOptions,
  });

  final TfArg<String>? sortIconVisibility;

  final TfArg<String>? visibility;

  final QuicksightTemplateAxisLabelOptions? axisLabelOptions;

  Map<String, Object?> encode() => {
    'sort_icon_visibility': ?sortIconVisibility?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'axis_label_options': ?axisLabelOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateAxisLabelOptions {
  const QuicksightTemplateAxisLabelOptions({
    this.customLabel,
    this.applyTo,
    this.fontConfiguration,
  });

  final TfArg<String>? customLabel;

  final QuicksightTemplateApplyTo? applyTo;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'apply_to': ?applyTo?.encode(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.category_label_options.axis_label_options.apply_to` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateApplyTo {
  const QuicksightTemplateApplyTo({
    required this.fieldId,
    required this.column,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.contribution_analysis_defaults` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateContributionAnalysisDefaults {
  const QuicksightTemplateContributionAnalysisDefaults({
    required this.measureFieldId,
    required this.contributorDimensions,
  });

  final TfArg<String> measureFieldId;

  final List<QuicksightTemplateColumn> contributorDimensions;

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
final class QuicksightTemplateDataLabels {
  const QuicksightTemplateDataLabels({
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

  final List<QuicksightTemplateDataLabelTypes>? dataLabelTypes;

  final QuicksightTemplateFontConfiguration? labelFontConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDataLabelTypes {
  const QuicksightTemplateDataLabelTypes({
    this.dataPathLabelType,
    this.fieldLabelType,
    this.maximumLabelType,
    this.minimumLabelType,
    this.rangeEndsLabelType,
  });

  final QuicksightTemplateDataPathLabelType? dataPathLabelType;

  final QuicksightTemplateFieldLabelType? fieldLabelType;

  final QuicksightTemplateSelectAllOptions? maximumLabelType;

  final QuicksightTemplateSelectAllOptions? minimumLabelType;

  final QuicksightTemplateSelectAllOptions? rangeEndsLabelType;

  Map<String, Object?> encode() => {
    'data_path_label_type': ?dataPathLabelType?.encode(),
    'field_label_type': ?fieldLabelType?.encode(),
    'maximum_label_type': ?maximumLabelType?.encode(),
    'minimum_label_type': ?minimumLabelType?.encode(),
    'range_ends_label_type': ?rangeEndsLabelType?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.data_labels.data_label_types.data_path_label_type` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDataPathLabelType {
  const QuicksightTemplateDataPathLabelType({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFieldLabelType {
  const QuicksightTemplateFieldLabelType({this.fieldId, this.visibility});

  final TfArg<String>? fieldId;

  final TfArg<String>? visibility;

  Map<String, Object?> encode() => {
    'field_id': ?fieldId?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBarChartVisualFieldWells {
  const QuicksightTemplateBarChartVisualFieldWells({
    this.barChartAggregatedFieldWells,
  });

  final QuicksightTemplateBarChartAggregatedFieldWells?
  barChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'bar_chart_aggregated_field_wells': ?barChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.field_wells.bar_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateBarChartAggregatedFieldWells {
  const QuicksightTemplateBarChartAggregatedFieldWells({
    this.category,
    this.colors,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? category;

  final List<QuicksightTemplateTrendGroups>? colors;

  final QuicksightTemplateTrendGroups? smallMultiples;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    if (colors != null) 'colors': [for (final e in colors!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTrendGroups {
  const QuicksightTemplateTrendGroups({
    this.categoricalDimensionField,
    this.dateDimensionField,
    this.numericalDimensionField,
  });

  final QuicksightTemplateCategoricalDimensionField? categoricalDimensionField;

  final QuicksightTemplateDateDimensionField? dateDimensionField;

  final QuicksightTemplateNumericalDimensionField? numericalDimensionField;

  Map<String, Object?> encode() => {
    'categorical_dimension_field': ?categoricalDimensionField?.encode(),
    'date_dimension_field': ?dateDimensionField?.encode(),
    'numerical_dimension_field': ?numericalDimensionField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.categorical_dimension_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCategoricalDimensionField {
  const QuicksightTemplateCategoricalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.date_dimension_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateDimensionField {
  const QuicksightTemplateDateDimensionField({
    this.dateGranularity,
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? dateGranularity;

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'date_granularity': ?dateGranularity?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells.trend_groups.numerical_dimension_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericalDimensionField {
  const QuicksightTemplateNumericalDimensionField({
    required this.fieldId,
    this.hierarchyId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final TfArg<String>? hierarchyId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'hierarchy_id': ?hierarchyId?.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTargetValues {
  const QuicksightTemplateTargetValues({
    this.calculatedMeasureField,
    this.categoricalMeasureField,
    this.dateMeasureField,
    this.numericalMeasureField,
  });

  final QuicksightTemplateCalculatedMeasureField? calculatedMeasureField;

  final QuicksightTemplateCategoricalMeasureField? categoricalMeasureField;

  final QuicksightTemplateDateMeasureField? dateMeasureField;

  final QuicksightTemplateNumericalMeasureField? numericalMeasureField;

  Map<String, Object?> encode() => {
    'calculated_measure_field': ?calculatedMeasureField?.encode(),
    'categorical_measure_field': ?categoricalMeasureField?.encode(),
    'date_measure_field': ?dateMeasureField?.encode(),
    'numerical_measure_field': ?numericalMeasureField?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.calculated_measure_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCalculatedMeasureField {
  const QuicksightTemplateCalculatedMeasureField({
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
final class QuicksightTemplateCategoricalMeasureField {
  const QuicksightTemplateCategoricalMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateStringFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.date_measure_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateMeasureField {
  const QuicksightTemplateDateMeasureField({
    this.aggregationFunction,
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String>? aggregationFunction;

  final TfArg<String> fieldId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateDateTimeFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'aggregation_function': ?aggregationFunction?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells.target_values.numerical_measure_field` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateNumericalMeasureField {
  const QuicksightTemplateNumericalMeasureField({
    required this.fieldId,
    this.aggregationFunction,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateNumericalAggregationFunction? aggregationFunction;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateNumberFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.legend` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLegend {
  const QuicksightTemplateLegend({
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

  final QuicksightTemplateTitleOptions? title;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'position': ?position?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateReferenceLines {
  const QuicksightTemplateReferenceLines({
    this.status,
    required this.dataConfiguration,
    this.labelConfiguration,
    this.styleConfiguration,
  });

  final TfArg<String>? status;

  final QuicksightTemplateDataConfiguration dataConfiguration;

  final QuicksightTemplateLabelConfiguration? labelConfiguration;

  final QuicksightTemplateStyleConfiguration? styleConfiguration;

  Map<String, Object?> encode() => {
    'status': ?status?.toTfJson(),
    'data_configuration': dataConfiguration.encode(),
    'label_configuration': ?labelConfiguration?.encode(),
    'style_configuration': ?styleConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDataConfiguration {
  const QuicksightTemplateDataConfiguration({
    this.axisBinding,
    this.dynamicConfiguration,
    this.staticConfiguration,
  });

  final TfArg<String>? axisBinding;

  final QuicksightTemplateDynamicConfiguration? dynamicConfiguration;

  final QuicksightTemplateStaticConfiguration? staticConfiguration;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'dynamic_configuration': ?dynamicConfiguration?.encode(),
    'static_configuration': ?staticConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.data_configuration.dynamic_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDynamicConfiguration {
  const QuicksightTemplateDynamicConfiguration({
    required this.calculation,
    required this.column,
    required this.measureAggregationFunction,
  });

  final QuicksightTemplateNumericalAggregationFunction calculation;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateAggregationFunction measureAggregationFunction;

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
final class QuicksightTemplateStaticConfiguration {
  const QuicksightTemplateStaticConfiguration({required this.value});

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLabelConfiguration {
  const QuicksightTemplateLabelConfiguration({
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

  final QuicksightTemplateCustomLabelConfiguration? customLabelConfiguration;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

  final QuicksightTemplateValueLabelConfiguration? valueLabelConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCustomLabelConfiguration {
  const QuicksightTemplateCustomLabelConfiguration({required this.customLabel});

  final TfArg<String> customLabel;

  Map<String, Object?> encode() => {'custom_label': customLabel.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.label_configuration.value_label_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateValueLabelConfiguration {
  const QuicksightTemplateValueLabelConfiguration({
    this.relativePosition,
    this.formatConfiguration,
  });

  final TfArg<String>? relativePosition;

  final QuicksightTemplateNumericFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'relative_position': ?relativePosition?.toTfJson(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.reference_lines.style_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateStyleConfiguration {
  const QuicksightTemplateStyleConfiguration({this.color, this.pattern});

  final TfArg<String>? color;

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSmallMultiplesOptions {
  const QuicksightTemplateSmallMultiplesOptions({
    this.maxVisibleColumns,
    this.maxVisibleRows,
    this.panelConfiguration,
  });

  final TfArg<num>? maxVisibleColumns;

  final TfArg<num>? maxVisibleRows;

  final QuicksightTemplatePanelConfiguration? panelConfiguration;

  Map<String, Object?> encode() => {
    'max_visible_columns': ?maxVisibleColumns?.toTfJson(),
    'max_visible_rows': ?maxVisibleRows?.toTfJson(),
    'panel_configuration': ?panelConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.small_multiples_options.panel_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePanelConfiguration {
  const QuicksightTemplatePanelConfiguration({
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

  final QuicksightTemplateTitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTitle {
  const QuicksightTemplateTitle({
    this.horizontalTextAlignment,
    this.visibility,
    this.fontConfiguration,
  });

  final TfArg<String>? horizontalTextAlignment;

  final TfArg<String>? visibility;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'horizontal_text_alignment': ?horizontalTextAlignment?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBarChartVisualSortConfiguration {
  const QuicksightTemplateBarChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightTemplateCategorySort>? categorySort;

  final QuicksightTemplateCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightTemplateCategorySort>? colorSort;

  final QuicksightTemplateCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCategoryItemsLimit {
  const QuicksightTemplateCategoryItemsLimit({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCategorySort {
  const QuicksightTemplateCategorySort({this.columnSort, this.fieldSort});

  final QuicksightTemplateColumnSort? columnSort;

  final QuicksightTemplateFieldSort? fieldSort;

  Map<String, Object?> encode() => {
    'column_sort': ?columnSort?.encode(),
    'field_sort': ?fieldSort?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.column_sort` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColumnSort {
  const QuicksightTemplateColumnSort({
    required this.direction,
    this.aggregationFunction,
    required this.sortBy,
  });

  final TfArg<String> direction;

  final QuicksightTemplateAggregationFunction? aggregationFunction;

  final QuicksightTemplateColumn sortBy;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'aggregation_function': ?aggregationFunction?.encode(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.sort_configuration.category_sort.field_sort` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFieldSort {
  const QuicksightTemplateFieldSort({
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
final class QuicksightTemplateTooltip {
  const QuicksightTemplateTooltip({
    this.selectedTooltipType,
    this.tooltipVisibility,
    this.fieldBaseTooltip,
  });

  final TfArg<String>? selectedTooltipType;

  final TfArg<String>? tooltipVisibility;

  final QuicksightTemplateFieldBaseTooltip? fieldBaseTooltip;

  Map<String, Object?> encode() => {
    'selected_tooltip_type': ?selectedTooltipType?.toTfJson(),
    'tooltip_visibility': ?tooltipVisibility?.toTfJson(),
    'field_base_tooltip': ?fieldBaseTooltip?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFieldBaseTooltip {
  const QuicksightTemplateFieldBaseTooltip({
    this.aggregationVisibility,
    this.tooltipTitleType,
    this.tooltipFields,
  });

  final TfArg<String>? aggregationVisibility;

  final TfArg<String>? tooltipTitleType;

  final List<QuicksightTemplateTooltipFields>? tooltipFields;

  Map<String, Object?> encode() => {
    'aggregation_visibility': ?aggregationVisibility?.toTfJson(),
    'tooltip_title_type': ?tooltipTitleType?.toTfJson(),
    if (tooltipFields != null)
      'tooltip_fields': [for (final e in tooltipFields!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTooltipFields {
  const QuicksightTemplateTooltipFields({
    this.columnTooltipItem,
    this.fieldTooltipItem,
  });

  final QuicksightTemplateColumnTooltipItem? columnTooltipItem;

  final QuicksightTemplateFieldTooltipItem? fieldTooltipItem;

  Map<String, Object?> encode() => {
    'column_tooltip_item': ?columnTooltipItem?.encode(),
    'field_tooltip_item': ?fieldTooltipItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.column_tooltip_item` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColumnTooltipItem {
  const QuicksightTemplateColumnTooltipItem({
    this.label,
    this.visibility,
    this.aggregation,
    required this.column,
  });

  final TfArg<String>? label;

  final TfArg<String>? visibility;

  final QuicksightTemplateAggregationFunction? aggregation;

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'aggregation': ?aggregation?.encode(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.tooltip.field_base_tooltip.tooltip_fields.field_tooltip_item` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFieldTooltipItem {
  const QuicksightTemplateFieldTooltipItem({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateVisualPalette {
  const QuicksightTemplateVisualPalette({this.chartColor, this.colorMap});

  final TfArg<String>? chartColor;

  final List<QuicksightTemplateColorMap>? colorMap;

  Map<String, Object?> encode() => {
    'chart_color': ?chartColor?.toTfJson(),
    if (colorMap != null) 'color_map': [for (final e in colorMap!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColorMap {
  const QuicksightTemplateColorMap({
    required this.color,
    this.timeGranularity,
    required this.element,
  });

  final TfArg<String> color;

  final TfArg<String>? timeGranularity;

  final QuicksightTemplateElement element;

  Map<String, Object?> encode() => {
    'color': color.toTfJson(),
    'time_granularity': ?timeGranularity?.toTfJson(),
    'element': element.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.chart_configuration.visual_palette.color_map.element` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateElement {
  const QuicksightTemplateElement({
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
final class QuicksightTemplateColumnHierarchies {
  const QuicksightTemplateColumnHierarchies({
    this.dateTimeHierarchy,
    this.explicitHierarchy,
    this.predefinedHierarchy,
  });

  final QuicksightTemplateDateTimeHierarchy? dateTimeHierarchy;

  final QuicksightTemplateExplicitHierarchy? explicitHierarchy;

  final QuicksightTemplateExplicitHierarchy? predefinedHierarchy;

  Map<String, Object?> encode() => {
    'date_time_hierarchy': ?dateTimeHierarchy?.encode(),
    'explicit_hierarchy': ?explicitHierarchy?.encode(),
    'predefined_hierarchy': ?predefinedHierarchy?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDateTimeHierarchy {
  const QuicksightTemplateDateTimeHierarchy({
    required this.hierarchyId,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightTemplateDrillDownFilters>? drillDownFilters;

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
final class QuicksightTemplateDrillDownFilters {
  const QuicksightTemplateDrillDownFilters({
    this.categoryFilter,
    this.numericEqualityFilter,
    this.timeRangeFilter,
  });

  final QuicksightTemplateDrillDownFiltersCategoryFilter? categoryFilter;

  final QuicksightTemplateDrillDownFiltersNumericEqualityFilter?
  numericEqualityFilter;

  final QuicksightTemplateDrillDownFiltersTimeRangeFilter? timeRangeFilter;

  Map<String, Object?> encode() => {
    'category_filter': ?categoryFilter?.encode(),
    'numeric_equality_filter': ?numericEqualityFilter?.encode(),
    'time_range_filter': ?timeRangeFilter?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.category_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDrillDownFiltersCategoryFilter {
  const QuicksightTemplateDrillDownFiltersCategoryFilter({
    required this.categoryValues,
    required this.column,
  });

  final TfArg<List<String>> categoryValues;

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'category_values': categoryValues.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.numeric_equality_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDrillDownFiltersNumericEqualityFilter {
  const QuicksightTemplateDrillDownFiltersNumericEqualityFilter({
    required this.value,
    required this.column,
  });

  final TfArg<num> value;

  final QuicksightTemplateColumn column;

  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    'column': column.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.column_hierarchies.date_time_hierarchy.drill_down_filters.time_range_filter` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDrillDownFiltersTimeRangeFilter {
  const QuicksightTemplateDrillDownFiltersTimeRangeFilter({
    required this.rangeMaximum,
    required this.rangeMinimum,
    required this.timeGranularity,
    required this.column,
  });

  final TfArg<String> rangeMaximum;

  final TfArg<String> rangeMinimum;

  final TfArg<String> timeGranularity;

  final QuicksightTemplateColumn column;

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
final class QuicksightTemplateExplicitHierarchy {
  const QuicksightTemplateExplicitHierarchy({
    required this.hierarchyId,
    required this.columns,
    this.drillDownFilters,
  });

  final TfArg<String> hierarchyId;

  final List<QuicksightTemplateColumn> columns;

  final List<QuicksightTemplateDrillDownFilters>? drillDownFilters;

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
final class QuicksightTemplateSubtitle {
  const QuicksightTemplateSubtitle({this.visibility, this.formatText});

  final TfArg<String>? visibility;

  final QuicksightTemplateFormatText? formatText;

  Map<String, Object?> encode() => {
    'visibility': ?visibility?.toTfJson(),
    'format_text': ?formatText?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.bar_chart_visual.subtitle.format_text` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFormatText {
  const QuicksightTemplateFormatText({this.plainText, this.richText});

  final TfArg<String>? plainText;

  final TfArg<String>? richText;

  Map<String, Object?> encode() => {
    'plain_text': ?plainText?.toTfJson(),
    'rich_text': ?richText?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotVisual {
  const QuicksightTemplateBoxPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateBoxPlotVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotVisualChartConfiguration {
  const QuicksightTemplateBoxPlotVisualChartConfiguration({
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

  final QuicksightTemplateBoxPlotOptions? boxPlotOptions;

  final QuicksightTemplateCategoryAxis? categoryAxis;

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateBoxPlotVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightTemplateReferenceLines>? referenceLines;

  final QuicksightTemplateBoxPlotVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotOptions {
  const QuicksightTemplateBoxPlotOptions({
    this.allDataPointsVisibility,
    this.outlierVisibility,
    this.styleOptions,
  });

  final TfArg<String>? allDataPointsVisibility;

  final TfArg<String>? outlierVisibility;

  final QuicksightTemplateStyleOptions? styleOptions;

  Map<String, Object?> encode() => {
    'all_data_points_visibility': ?allDataPointsVisibility?.toTfJson(),
    'outlier_visibility': ?outlierVisibility?.toTfJson(),
    'style_options': ?styleOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.box_plot_options.style_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateStyleOptions {
  const QuicksightTemplateStyleOptions({this.fillStyle});

  final TfArg<String>? fillStyle;

  Map<String, Object?> encode() => {'fill_style': ?fillStyle?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotVisualFieldWells {
  const QuicksightTemplateBoxPlotVisualFieldWells({
    this.boxPlotAggregatedFieldWells,
  });

  final QuicksightTemplateBoxPlotAggregatedFieldWells?
  boxPlotAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'box_plot_aggregated_field_wells': ?boxPlotAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.field_wells.box_plot_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotAggregatedFieldWells {
  const QuicksightTemplateBoxPlotAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final QuicksightTemplateTrendGroups? groupBy;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    'group_by': ?groupBy?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBoxPlotVisualSortConfiguration {
  const QuicksightTemplateBoxPlotVisualSortConfiguration({
    this.categorySort,
    this.paginationConfiguration,
  });

  final List<QuicksightTemplateCategorySort>? categorySort;

  final QuicksightTemplatePaginationConfiguration? paginationConfiguration;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
    'pagination_configuration': ?paginationConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.box_plot_visual.chart_configuration.sort_configuration.pagination_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePaginationConfiguration {
  const QuicksightTemplatePaginationConfiguration({
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
final class QuicksightTemplateComboChartVisual {
  const QuicksightTemplateComboChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateComboChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateComboChartVisualChartConfiguration {
  const QuicksightTemplateComboChartVisualChartConfiguration({
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

  final QuicksightTemplateDataLabels? barDataLabels;

  final QuicksightTemplateCategoryAxis? categoryAxis;

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateCategoryLabelOptions? colorLabelOptions;

  final QuicksightTemplateComboChartVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateDataLabels? lineDataLabels;

  final QuicksightTemplateCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightTemplateReferenceLines>? referenceLines;

  final QuicksightTemplateCategoryAxis? secondaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? secondaryYAxisLabelOptions;

  final QuicksightTemplateComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateComboChartVisualFieldWells {
  const QuicksightTemplateComboChartVisualFieldWells({
    this.comboChartAggregatedFieldWells,
  });

  final QuicksightTemplateComboChartAggregatedFieldWells?
  comboChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'combo_chart_aggregated_field_wells': ?comboChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.combo_chart_visual.chart_configuration.field_wells.combo_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateComboChartAggregatedFieldWells {
  const QuicksightTemplateComboChartAggregatedFieldWells({
    this.barValues,
    this.category,
    this.colors,
    this.lineValues,
  });

  final List<QuicksightTemplateTargetValues>? barValues;

  final List<QuicksightTemplateTrendGroups>? category;

  final List<QuicksightTemplateTrendGroups>? colors;

  final List<QuicksightTemplateTargetValues>? lineValues;

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
final class QuicksightTemplateComboChartVisualSortConfiguration {
  const QuicksightTemplateComboChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.colorItemsLimit,
    this.colorSort,
  });

  final QuicksightTemplateCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightTemplateCategorySort>? categorySort;

  final QuicksightTemplateCategoryItemsLimit? colorItemsLimit;

  final List<QuicksightTemplateCategorySort>? colorSort;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomContentVisual {
  const QuicksightTemplateCustomContentVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateCustomContentVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomContentVisualChartConfiguration {
  const QuicksightTemplateCustomContentVisualChartConfiguration({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateEmptyVisual {
  const QuicksightTemplateEmptyVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  Map<String, Object?> encode() => {
    'data_set_identifier': dataSetIdentifier.toTfJson(),
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilledMapVisual {
  const QuicksightTemplateFilledMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateFilledMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateFilledMapVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilledMapVisualChartConfiguration {
  const QuicksightTemplateFilledMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.sortConfiguration,
    this.tooltip,
    this.windowOptions,
  });

  final QuicksightTemplateFilledMapVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateMapStyleOptions? mapStyleOptions;

  final QuicksightTemplateFilledMapVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateWindowOptions? windowOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilledMapVisualFieldWells {
  const QuicksightTemplateFilledMapVisualFieldWells({
    this.filledMapAggregatedFieldWells,
  });

  final QuicksightTemplateFilledMapAggregatedFieldWells?
  filledMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'filled_map_aggregated_field_wells': ?filledMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.field_wells.filled_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilledMapAggregatedFieldWells {
  const QuicksightTemplateFilledMapAggregatedFieldWells({
    this.geospatial,
    this.values,
  });

  final QuicksightTemplateTrendGroups? geospatial;

  final QuicksightTemplateTargetValues? values;

  Map<String, Object?> encode() => {
    'geospatial': ?geospatial?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.map_style_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateMapStyleOptions {
  const QuicksightTemplateMapStyleOptions({this.baseMapStyle});

  final TfArg<String>? baseMapStyle;

  Map<String, Object?> encode() => {
    'base_map_style': ?baseMapStyle?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFilledMapVisualSortConfiguration {
  const QuicksightTemplateFilledMapVisualSortConfiguration({this.categorySort});

  final List<QuicksightTemplateCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateWindowOptions {
  const QuicksightTemplateWindowOptions({this.mapZoomMode, this.bounds});

  final TfArg<String>? mapZoomMode;

  final QuicksightTemplateBounds? bounds;

  Map<String, Object?> encode() => {
    'map_zoom_mode': ?mapZoomMode?.toTfJson(),
    'bounds': ?bounds?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.chart_configuration.window_options.bounds` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateBounds {
  const QuicksightTemplateBounds({
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
final class QuicksightTemplateFilledMapVisualConditionalFormatting {
  const QuicksightTemplateFilledMapVisualConditionalFormatting({
    required this.conditionalFormattingOptions,
  });

  final List<QuicksightTemplateFilledMapVisualConditionalFormattingOptions>
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
final class QuicksightTemplateFilledMapVisualConditionalFormattingOptions {
  const QuicksightTemplateFilledMapVisualConditionalFormattingOptions({
    required this.shape,
  });

  final QuicksightTemplateShape shape;

  Map<String, Object?> encode() => {'shape': shape.encode()};
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateShape {
  const QuicksightTemplateShape({required this.fieldId, this.format});

  final TfArg<String> fieldId;

  final QuicksightTemplateFormat? format;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'format': ?format?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.filled_map_visual.conditional_formatting.conditional_formatting_options.shape.format` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFormat {
  const QuicksightTemplateFormat({required this.backgroundColor});

  final QuicksightTemplateForegroundColor backgroundColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateForegroundColor {
  const QuicksightTemplateForegroundColor({this.gradient, this.solid});

  final QuicksightTemplateGradient? gradient;

  final QuicksightTemplateSolid? solid;

  Map<String, Object?> encode() => {
    'gradient': ?gradient?.encode(),
    'solid': ?solid?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateGradient {
  const QuicksightTemplateGradient({
    required this.expression,
    required this.color,
  });

  final TfArg<String> expression;

  final QuicksightTemplateColor color;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'color': color.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColor {
  const QuicksightTemplateColor({this.stops});

  final List<QuicksightTemplateStops>? stops;

  Map<String, Object?> encode() => {
    if (stops != null) 'stops': [for (final e in stops!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc.foreground_color.gradient.color.stops` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateStops {
  const QuicksightTemplateStops({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSolid {
  const QuicksightTemplateSolid({this.color, required this.expression});

  final TfArg<String>? color;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFunnelChartVisual {
  const QuicksightTemplateFunnelChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateFunnelChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFunnelChartVisualChartConfiguration {
  const QuicksightTemplateFunnelChartVisualChartConfiguration({
    this.categoryLabelOptions,
    this.dataLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.tooltip,
    this.valueLabelOptions,
    this.visualPalette,
  });

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateDataLabelOptions? dataLabelOptions;

  final QuicksightTemplateFunnelChartVisualFieldWells? fieldWells;

  final QuicksightTemplateFunnelChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateCategoryLabelOptions? valueLabelOptions;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataLabelOptions {
  const QuicksightTemplateDataLabelOptions({
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

  final QuicksightTemplateFontConfiguration? labelFontConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFunnelChartVisualFieldWells {
  const QuicksightTemplateFunnelChartVisualFieldWells({
    this.funnelChartAggregatedFieldWells,
  });

  final QuicksightTemplateFunnelChartAggregatedFieldWells?
  funnelChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'funnel_chart_aggregated_field_wells': ?funnelChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.field_wells.funnel_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFunnelChartAggregatedFieldWells {
  const QuicksightTemplateFunnelChartAggregatedFieldWells({
    this.category,
    this.values,
  });

  final QuicksightTemplateTrendGroups? category;

  final QuicksightTemplateTargetValues? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.funnel_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFunnelChartVisualSortConfiguration {
  const QuicksightTemplateFunnelChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
  });

  final QuicksightTemplateCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightTemplateCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'category_items_limit': ?categoryItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartVisual {
  const QuicksightTemplateGaugeChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateGaugeChartVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateGaugeChartVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartVisualChartConfiguration {
  const QuicksightTemplateGaugeChartVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.gaugeChartOptions,
    this.tooltip,
    this.visualPalette,
  });

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateGaugeChartVisualFieldWells? fieldWells;

  final QuicksightTemplateGaugeChartOptions? gaugeChartOptions;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'gauge_chart_options': ?gaugeChartOptions?.encode(),
    'tooltip': ?tooltip?.encode(),
    'visual_palette': ?visualPalette?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartVisualFieldWells {
  const QuicksightTemplateGaugeChartVisualFieldWells({
    this.targetValues,
    this.values,
  });

  final List<QuicksightTemplateTargetValues>? targetValues;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    if (targetValues != null)
      'target_values': [for (final e in targetValues!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartOptions {
  const QuicksightTemplateGaugeChartOptions({
    this.primaryValueDisplayType,
    this.arc,
    this.arcAxis,
    this.comparison,
    this.primaryValueFontConfiguration,
  });

  final TfArg<String>? primaryValueDisplayType;

  final QuicksightTemplateGaugeChartOptionsArc? arc;

  final QuicksightTemplateArcAxis? arcAxis;

  final QuicksightTemplateComparison? comparison;

  final QuicksightTemplateFontConfiguration? primaryValueFontConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartOptionsArc {
  const QuicksightTemplateGaugeChartOptionsArc({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateArcAxis {
  const QuicksightTemplateArcAxis({this.reserveRange, this.range});

  final TfArg<num>? reserveRange;

  final QuicksightTemplateRange? range;

  Map<String, Object?> encode() => {
    'reserve_range': ?reserveRange?.toTfJson(),
    'range': ?range?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.arc_axis.range` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRange {
  const QuicksightTemplateRange({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateComparison {
  const QuicksightTemplateComparison({
    this.comparisonMethod,
    this.comparisonFormat,
  });

  final TfArg<String>? comparisonMethod;

  final QuicksightTemplateComparisonFormat? comparisonFormat;

  Map<String, Object?> encode() => {
    'comparison_method': ?comparisonMethod?.toTfJson(),
    'comparison_format': ?comparisonFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.chart_configuration.gauge_chart_options.comparison.comparison_format` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateComparisonFormat {
  const QuicksightTemplateComparisonFormat({
    this.numberDisplayFormatConfiguration,
    this.percentageDisplayFormatConfiguration,
  });

  final QuicksightTemplateNumberDisplayFormatConfiguration?
  numberDisplayFormatConfiguration;

  final QuicksightTemplatePercentageDisplayFormatConfiguration?
  percentageDisplayFormatConfiguration;

  Map<String, Object?> encode() => {
    'number_display_format_configuration': ?numberDisplayFormatConfiguration
        ?.encode(),
    'percentage_display_format_configuration':
        ?percentageDisplayFormatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGaugeChartVisualConditionalFormatting {
  const QuicksightTemplateGaugeChartVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightTemplateGaugeChartVisualConditionalFormattingOptions>?
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
final class QuicksightTemplateGaugeChartVisualConditionalFormattingOptions {
  const QuicksightTemplateGaugeChartVisualConditionalFormattingOptions({
    this.arc,
    this.primaryValue,
  });

  final QuicksightTemplateConditionalFormattingOptionsArc? arc;

  final QuicksightTemplatePrimaryValue? primaryValue;

  Map<String, Object?> encode() => {
    'arc': ?arc?.encode(),
    'primary_value': ?primaryValue?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.arc` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateConditionalFormattingOptionsArc {
  const QuicksightTemplateConditionalFormattingOptionsArc({
    required this.foregroundColor,
  });

  final QuicksightTemplateForegroundColor foregroundColor;

  Map<String, Object?> encode() => {
    'foreground_color': foregroundColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplatePrimaryValue {
  const QuicksightTemplatePrimaryValue({this.icon, required this.textColor});

  final QuicksightTemplateIcon? icon;

  final QuicksightTemplateForegroundColor textColor;

  Map<String, Object?> encode() => {
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateIcon {
  const QuicksightTemplateIcon({this.customCondition, this.iconSet});

  final QuicksightTemplateCustomCondition? customCondition;

  final QuicksightTemplateIconSet? iconSet;

  Map<String, Object?> encode() => {
    'custom_condition': ?customCondition?.encode(),
    'icon_set': ?iconSet?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCustomCondition {
  const QuicksightTemplateCustomCondition({
    this.color,
    required this.expression,
    this.displayConfiguration,
    required this.iconOptions,
  });

  final TfArg<String>? color;

  final TfArg<String> expression;

  final QuicksightTemplateDisplayConfiguration? displayConfiguration;

  final QuicksightTemplateIconOptions iconOptions;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'expression': expression.toTfJson(),
    'display_configuration': ?displayConfiguration?.encode(),
    'icon_options': iconOptions.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.display_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateDisplayConfiguration {
  const QuicksightTemplateDisplayConfiguration({this.iconDisplayOption});

  final TfArg<String>? iconDisplayOption;

  Map<String, Object?> encode() => {
    'icon_display_option': ?iconDisplayOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.custom_condition.icon_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateIconOptions {
  const QuicksightTemplateIconOptions({this.icon, this.unicodeIcon});

  final TfArg<String>? icon;

  final TfArg<String>? unicodeIcon;

  Map<String, Object?> encode() => {
    'icon': ?icon?.toTfJson(),
    'unicode_icon': ?unicodeIcon?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.gauge_chart_visual.conditional_formatting.conditional_formatting_options.primary_value.icon.icon_set` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateIconSet {
  const QuicksightTemplateIconSet({required this.expression, this.iconSetType});

  final TfArg<String> expression;

  final TfArg<String>? iconSetType;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'icon_set_type': ?iconSetType?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGeospatialMapVisual {
  const QuicksightTemplateGeospatialMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateGeospatialMapVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGeospatialMapVisualChartConfiguration {
  const QuicksightTemplateGeospatialMapVisualChartConfiguration({
    this.fieldWells,
    this.legend,
    this.mapStyleOptions,
    this.pointStyleOptions,
    this.tooltip,
    this.visualPalette,
    this.windowOptions,
  });

  final QuicksightTemplateGeospatialMapVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateMapStyleOptions? mapStyleOptions;

  final QuicksightTemplatePointStyleOptions? pointStyleOptions;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

  final QuicksightTemplateWindowOptions? windowOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGeospatialMapVisualFieldWells {
  const QuicksightTemplateGeospatialMapVisualFieldWells({
    this.geospatialMapAggregatedFieldWells,
  });

  final QuicksightTemplateGeospatialMapAggregatedFieldWells?
  geospatialMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'geospatial_map_aggregated_field_wells': ?geospatialMapAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.field_wells.geospatial_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGeospatialMapAggregatedFieldWells {
  const QuicksightTemplateGeospatialMapAggregatedFieldWells({
    this.colors,
    this.geospatial,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? colors;

  final List<QuicksightTemplateTrendGroups>? geospatial;

  final List<QuicksightTemplateTargetValues>? values;

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
final class QuicksightTemplatePointStyleOptions {
  const QuicksightTemplatePointStyleOptions({
    this.selectedPointStyle,
    this.clusterMarkerConfiguration,
  });

  final TfArg<String>? selectedPointStyle;

  final QuicksightTemplateClusterMarkerConfiguration?
  clusterMarkerConfiguration;

  Map<String, Object?> encode() => {
    'selected_point_style': ?selectedPointStyle?.toTfJson(),
    'cluster_marker_configuration': ?clusterMarkerConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateClusterMarkerConfiguration {
  const QuicksightTemplateClusterMarkerConfiguration({this.clusterMarker});

  final QuicksightTemplateClusterMarker? clusterMarker;

  Map<String, Object?> encode() => {'cluster_marker': ?clusterMarker?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateClusterMarker {
  const QuicksightTemplateClusterMarker({this.simpleClusterMarker});

  final QuicksightTemplateSimpleClusterMarker? simpleClusterMarker;

  Map<String, Object?> encode() => {
    'simple_cluster_marker': ?simpleClusterMarker?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.geospatial_map_visual.chart_configuration.point_style_options.cluster_marker_configuration.cluster_marker.simple_cluster_marker` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSimpleClusterMarker {
  const QuicksightTemplateSimpleClusterMarker({this.color});

  final TfArg<String>? color;

  Map<String, Object?> encode() => {'color': ?color?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHeatMapVisual {
  const QuicksightTemplateHeatMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateHeatMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHeatMapVisualChartConfiguration {
  const QuicksightTemplateHeatMapVisualChartConfiguration({
    this.colorScale,
    this.columnLabelOptions,
    this.dataLabels,
    this.fieldWells,
    this.legend,
    this.rowLabelOptions,
    this.sortConfiguration,
    this.tooltip,
  });

  final QuicksightTemplateColorScale? colorScale;

  final QuicksightTemplateCategoryLabelOptions? columnLabelOptions;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateHeatMapVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateCategoryLabelOptions? rowLabelOptions;

  final QuicksightTemplateHeatMapVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColorScale {
  const QuicksightTemplateColorScale({
    required this.colorFillType,
    required this.colors,
    this.nullValueColor,
  });

  final TfArg<String> colorFillType;

  final List<QuicksightTemplateColors> colors;

  final QuicksightTemplateColors? nullValueColor;

  Map<String, Object?> encode() => {
    'color_fill_type': colorFillType.toTfJson(),
    'colors': [for (final e in colors) e.encode()],
    'null_value_color': ?nullValueColor?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.color_scale.colors` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColors {
  const QuicksightTemplateColors({this.color, this.dataValue});

  final TfArg<String>? color;

  final TfArg<num>? dataValue;

  Map<String, Object?> encode() => {
    'color': ?color?.toTfJson(),
    'data_value': ?dataValue?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHeatMapVisualFieldWells {
  const QuicksightTemplateHeatMapVisualFieldWells({
    this.heatMapAggregatedFieldWells,
  });

  final QuicksightTemplateHeatMapAggregatedFieldWells?
  heatMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'heat_map_aggregated_field_wells': ?heatMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.field_wells.heat_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHeatMapAggregatedFieldWells {
  const QuicksightTemplateHeatMapAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final QuicksightTemplateTrendGroups? columns;

  final QuicksightTemplateTrendGroups? rows;

  final QuicksightTemplateTargetValues? values;

  Map<String, Object?> encode() => {
    'columns': ?columns?.encode(),
    'rows': ?rows?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.heat_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHeatMapVisualSortConfiguration {
  const QuicksightTemplateHeatMapVisualSortConfiguration({
    this.heatMapColumnItemsLimitConfiguration,
    this.heatMapColumnSort,
    this.heatMapRowItemsLimitConfiguration,
    this.heatMapRowSort,
  });

  final QuicksightTemplateCategoryItemsLimit?
  heatMapColumnItemsLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? heatMapColumnSort;

  final QuicksightTemplateCategoryItemsLimit? heatMapRowItemsLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? heatMapRowSort;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHistogramVisual {
  const QuicksightTemplateHistogramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateHistogramVisualChartConfiguration? chartConfiguration;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHistogramVisualChartConfiguration {
  const QuicksightTemplateHistogramVisualChartConfiguration({
    this.binOptions,
    this.dataLabels,
    this.fieldWells,
    this.tooltip,
    this.visualPalette,
    this.xAxisDisplayOptions,
    this.xAxisLabelOptions,
    this.yAxisDisplayOptions,
  });

  final QuicksightTemplateBinOptions? binOptions;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateHistogramVisualFieldWells? fieldWells;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

  final QuicksightTemplateCategoryAxis? xAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightTemplateCategoryAxis? yAxisDisplayOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBinOptions {
  const QuicksightTemplateBinOptions({
    this.selectedBinType,
    this.startValue,
    this.binCount,
    this.binWidth,
  });

  final TfArg<String>? selectedBinType;

  final TfArg<num>? startValue;

  final QuicksightTemplateBinCount? binCount;

  final QuicksightTemplateBinWidth? binWidth;

  Map<String, Object?> encode() => {
    'selected_bin_type': ?selectedBinType?.toTfJson(),
    'start_value': ?startValue?.toTfJson(),
    'bin_count': ?binCount?.encode(),
    'bin_width': ?binWidth?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_count` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBinCount {
  const QuicksightTemplateBinCount({this.value});

  final TfArg<num>? value;

  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.bin_options.bin_width` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBinWidth {
  const QuicksightTemplateBinWidth({this.binCountLimit, this.value});

  final TfArg<num>? binCountLimit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'bin_count_limit': ?binCountLimit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHistogramVisualFieldWells {
  const QuicksightTemplateHistogramVisualFieldWells({
    this.histogramAggregatedFieldWells,
  });

  final QuicksightTemplateHistogramAggregatedFieldWells?
  histogramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'histogram_aggregated_field_wells': ?histogramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.histogram_visual.chart_configuration.field_wells.histogram_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateHistogramAggregatedFieldWells {
  const QuicksightTemplateHistogramAggregatedFieldWells({this.values});

  final QuicksightTemplateTargetValues? values;

  Map<String, Object?> encode() => {'values': ?values?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.insight_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateInsightVisual {
  const QuicksightTemplateInsightVisual({
    required this.dataSetIdentifier,
    required this.visualId,
    this.actions,
    this.insightConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> dataSetIdentifier;

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateInsightConfiguration? insightConfiguration;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateInsightConfiguration {
  const QuicksightTemplateInsightConfiguration({
    this.computation,
    this.customNarrative,
  });

  final List<QuicksightTemplateComputation>? computation;

  final QuicksightTemplateCustomNarrative? customNarrative;

  Map<String, Object?> encode() => {
    if (computation != null)
      'computation': [for (final e in computation!) e.encode()],
    'custom_narrative': ?customNarrative?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateComputation {
  const QuicksightTemplateComputation({
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

  final QuicksightTemplateForecast? forecast;

  final QuicksightTemplateGrowthRate? growthRate;

  final QuicksightTemplateMaximumMinimum? maximumMinimum;

  final QuicksightTemplateMetricComparison? metricComparison;

  final QuicksightTemplatePeriodOverPeriod? periodOverPeriod;

  final QuicksightTemplatePeriodToDate? periodToDate;

  final QuicksightTemplateTopBottomMovers? topBottomMovers;

  final QuicksightTemplateTopBottomRanked? topBottomRanked;

  final QuicksightTemplateTotalAggregation? totalAggregation;

  final QuicksightTemplateUniqueValues? uniqueValues;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateForecast {
  const QuicksightTemplateForecast({
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

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateGrowthRate {
  const QuicksightTemplateGrowthRate({
    required this.computationId,
    this.name,
    this.periodSize,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<num>? periodSize;

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_size': ?periodSize?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.maximum_minimum` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateMaximumMinimum {
  const QuicksightTemplateMaximumMinimum({
    required this.computationId,
    this.name,
    required this.type,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> type;

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'type': type.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.metric_comparison` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateMetricComparison {
  const QuicksightTemplateMetricComparison({
    required this.computationId,
    this.name,
    this.fromValue,
    this.targetValue,
    this.time,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateTargetValues? fromValue;

  final QuicksightTemplateTargetValues? targetValue;

  final QuicksightTemplateTrendGroups? time;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'from_value': ?fromValue?.encode(),
    'target_value': ?targetValue?.encode(),
    'time': ?time?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_over_period` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePeriodOverPeriod {
  const QuicksightTemplatePeriodOverPeriod({
    required this.computationId,
    this.name,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.period_to_date` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePeriodToDate {
  const QuicksightTemplatePeriodToDate({
    required this.computationId,
    this.name,
    required this.periodTimeGranularity,
    this.time,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final TfArg<String> periodTimeGranularity;

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'period_time_granularity': periodTimeGranularity.toTfJson(),
    'time': ?time?.encode(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.top_bottom_movers` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTopBottomMovers {
  const QuicksightTemplateTopBottomMovers({
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

  final QuicksightTemplateTrendGroups? category;

  final QuicksightTemplateTrendGroups? time;

  final QuicksightTemplateTargetValues? value;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTopBottomRanked {
  const QuicksightTemplateTopBottomRanked({
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

  final QuicksightTemplateTrendGroups? category;

  final QuicksightTemplateTargetValues? value;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTotalAggregation {
  const QuicksightTemplateTotalAggregation({
    required this.computationId,
    this.name,
    this.value,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateTargetValues? value;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.computation.unique_values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateUniqueValues {
  const QuicksightTemplateUniqueValues({
    required this.computationId,
    this.name,
    this.category,
  });

  final TfArg<String> computationId;

  final TfArg<String>? name;

  final QuicksightTemplateTrendGroups? category;

  Map<String, Object?> encode() => {
    'computation_id': computationId.toTfJson(),
    'name': ?name?.toTfJson(),
    'category': ?category?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.insight_visual.insight_configuration.custom_narrative` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomNarrative {
  const QuicksightTemplateCustomNarrative({required this.narrative});

  final TfArg<String> narrative;

  Map<String, Object?> encode() => {'narrative': narrative.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateKpiVisual {
  const QuicksightTemplateKpiVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateKpiVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateKpiVisualConditionalFormatting? conditionalFormatting;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateKpiVisualChartConfiguration {
  const QuicksightTemplateKpiVisualChartConfiguration({
    this.fieldWells,
    this.kpiOptions,
    this.sortConfiguration,
  });

  final QuicksightTemplateKpiVisualFieldWells? fieldWells;

  final QuicksightTemplateKpiOptions? kpiOptions;

  final QuicksightTemplateKpiVisualSortConfiguration? sortConfiguration;

  Map<String, Object?> encode() => {
    'field_wells': ?fieldWells?.encode(),
    'kpi_options': ?kpiOptions?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateKpiVisualFieldWells {
  const QuicksightTemplateKpiVisualFieldWells({
    this.targetValues,
    this.trendGroups,
    this.values,
  });

  final List<QuicksightTemplateTargetValues>? targetValues;

  final List<QuicksightTemplateTrendGroups>? trendGroups;

  final List<QuicksightTemplateTargetValues>? values;

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
final class QuicksightTemplateKpiOptions {
  const QuicksightTemplateKpiOptions({
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

  final QuicksightTemplateComparison? comparison;

  final QuicksightTemplateFontConfiguration? primaryValueFontConfiguration;

  final QuicksightTemplateSelectAllOptions? progressBar;

  final QuicksightTemplateSelectAllOptions? secondaryValue;

  final QuicksightTemplateFontConfiguration? secondaryValueFontConfiguration;

  final QuicksightTemplateSparkline? sparkline;

  final QuicksightTemplateSelectAllOptions? trendArrows;

  final QuicksightTemplateVisualLayoutOptions? visualLayoutOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSparkline {
  const QuicksightTemplateSparkline({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateVisualLayoutOptions {
  const QuicksightTemplateVisualLayoutOptions({this.standardLayout});

  final QuicksightTemplateStandardLayout? standardLayout;

  Map<String, Object?> encode() => {
    'standard_layout': ?standardLayout?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.kpi_options.visual_layout_options.standard_layout` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateStandardLayout {
  const QuicksightTemplateStandardLayout({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateKpiVisualSortConfiguration {
  const QuicksightTemplateKpiVisualSortConfiguration({this.trendGroupSort});

  final List<QuicksightTemplateCategorySort>? trendGroupSort;

  Map<String, Object?> encode() => {
    if (trendGroupSort != null)
      'trend_group_sort': [for (final e in trendGroupSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.kpi_visual.conditional_formatting` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateKpiVisualConditionalFormatting {
  const QuicksightTemplateKpiVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightTemplateKpiVisualConditionalFormattingOptions>?
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
final class QuicksightTemplateKpiVisualConditionalFormattingOptions {
  const QuicksightTemplateKpiVisualConditionalFormattingOptions({
    this.actualValue,
    this.comparisonValue,
    this.primaryValue,
    this.progressBar,
  });

  final QuicksightTemplatePrimaryValue? actualValue;

  final QuicksightTemplatePrimaryValue? comparisonValue;

  final QuicksightTemplatePrimaryValue? primaryValue;

  final QuicksightTemplateConditionalFormattingOptionsArc? progressBar;

  Map<String, Object?> encode() => {
    'actual_value': ?actualValue?.encode(),
    'comparison_value': ?comparisonValue?.encode(),
    'primary_value': ?primaryValue?.encode(),
    'progress_bar': ?progressBar?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLineChartVisual {
  const QuicksightTemplateLineChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateLineChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLineChartVisualChartConfiguration {
  const QuicksightTemplateLineChartVisualChartConfiguration({
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

  final List<QuicksightTemplateContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateDefaultSeriesSettings? defaultSeriesSettings;

  final QuicksightTemplateLineChartVisualFieldWells? fieldWells;

  final List<QuicksightTemplateForecastConfigurations>? forecastConfigurations;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplatePrimaryYAxisDisplayOptions?
  primaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? primaryYAxisLabelOptions;

  final List<QuicksightTemplateReferenceLines>? referenceLines;

  final QuicksightTemplatePrimaryYAxisDisplayOptions?
  secondaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? secondaryYAxisLabelOptions;

  final List<QuicksightTemplateSeries>? series;

  final QuicksightTemplateSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightTemplateLineChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

  final QuicksightTemplateCategoryAxis? xAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? xAxisLabelOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDefaultSeriesSettings {
  const QuicksightTemplateDefaultSeriesSettings({
    this.axisBinding,
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final TfArg<String>? axisBinding;

  final QuicksightTemplateLineStyleSettings? lineStyleSettings;

  final QuicksightTemplateMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'axis_binding': ?axisBinding?.toTfJson(),
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.default_series_settings.line_style_settings` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateLineStyleSettings {
  const QuicksightTemplateLineStyleSettings({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateMarkerStyleSettings {
  const QuicksightTemplateMarkerStyleSettings({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLineChartVisualFieldWells {
  const QuicksightTemplateLineChartVisualFieldWells({
    this.lineChartAggregatedFieldWells,
  });

  final QuicksightTemplateBarChartAggregatedFieldWells?
  lineChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'line_chart_aggregated_field_wells': ?lineChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateForecastConfigurations {
  const QuicksightTemplateForecastConfigurations({
    this.forecastProperties,
    this.scenario,
  });

  final QuicksightTemplateForecastProperties? forecastProperties;

  final QuicksightTemplateScenario? scenario;

  Map<String, Object?> encode() => {
    'forecast_properties': ?forecastProperties?.encode(),
    'scenario': ?scenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.forecast_properties` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateForecastProperties {
  const QuicksightTemplateForecastProperties({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScenario {
  const QuicksightTemplateScenario({
    this.whatIfPointScenario,
    this.whatIfRangeScenario,
  });

  final QuicksightTemplateWhatIfPointScenario? whatIfPointScenario;

  final QuicksightTemplateWhatIfRangeScenario? whatIfRangeScenario;

  Map<String, Object?> encode() => {
    'what_if_point_scenario': ?whatIfPointScenario?.encode(),
    'what_if_range_scenario': ?whatIfRangeScenario?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.forecast_configurations.scenario.what_if_point_scenario` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWhatIfPointScenario {
  const QuicksightTemplateWhatIfPointScenario({
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
final class QuicksightTemplateWhatIfRangeScenario {
  const QuicksightTemplateWhatIfRangeScenario({
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
final class QuicksightTemplatePrimaryYAxisDisplayOptions {
  const QuicksightTemplatePrimaryYAxisDisplayOptions({
    this.axisOptions,
    this.missingDataConfiguration,
  });

  final QuicksightTemplateCategoryAxis? axisOptions;

  final List<QuicksightTemplateMissingDataConfiguration>?
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateMissingDataConfiguration {
  const QuicksightTemplateMissingDataConfiguration({this.treatmentOption});

  final TfArg<String>? treatmentOption;

  Map<String, Object?> encode() => {
    'treatment_option': ?treatmentOption?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSeries {
  const QuicksightTemplateSeries({
    this.dataFieldSeriesItem,
    this.fieldSeriesItem,
  });

  final QuicksightTemplateDataFieldSeriesItem? dataFieldSeriesItem;

  final QuicksightTemplateFieldSeriesItem? fieldSeriesItem;

  Map<String, Object?> encode() => {
    'data_field_series_item': ?dataFieldSeriesItem?.encode(),
    'field_series_item': ?fieldSeriesItem?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataFieldSeriesItem {
  const QuicksightTemplateDataFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.fieldValue,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final TfArg<String>? fieldValue;

  final QuicksightTemplateSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'field_value': ?fieldValue?.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.data_field_series_item.settings` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSettings {
  const QuicksightTemplateSettings({
    this.lineStyleSettings,
    this.markerStyleSettings,
  });

  final QuicksightTemplateLineStyleSettings? lineStyleSettings;

  final QuicksightTemplateMarkerStyleSettings? markerStyleSettings;

  Map<String, Object?> encode() => {
    'line_style_settings': ?lineStyleSettings?.encode(),
    'marker_style_settings': ?markerStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.series.field_series_item` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFieldSeriesItem {
  const QuicksightTemplateFieldSeriesItem({
    required this.axisBinding,
    required this.fieldId,
    this.settings,
  });

  final TfArg<String> axisBinding;

  final TfArg<String> fieldId;

  final QuicksightTemplateSettings? settings;

  Map<String, Object?> encode() => {
    'axis_binding': axisBinding.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.line_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLineChartVisualSortConfiguration {
  const QuicksightTemplateLineChartVisualSortConfiguration({
    this.categoryItemsLimitConfiguration,
    this.categorySort,
    this.colorItemsLimitConfiguration,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateCategoryItemsLimit? categoryItemsLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? categorySort;

  final QuicksightTemplateCategoryItemsLimit? colorItemsLimitConfiguration;

  final QuicksightTemplateCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePieChartVisual {
  const QuicksightTemplatePieChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplatePieChartVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePieChartVisualChartConfiguration {
  const QuicksightTemplatePieChartVisualChartConfiguration({
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

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final List<QuicksightTemplateContributionAnalysisDefaults>?
  contributionAnalysisDefaults;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateDonutOptions? donutOptions;

  final QuicksightTemplatePieChartVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateSmallMultiplesOptions? smallMultiplesOptions;

  final QuicksightTemplatePieChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateCategoryLabelOptions? valueLabelOptions;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDonutOptions {
  const QuicksightTemplateDonutOptions({
    this.arcOptions,
    this.donutCenterOptions,
  });

  final QuicksightTemplateArcOptions? arcOptions;

  final QuicksightTemplateDonutCenterOptions? donutCenterOptions;

  Map<String, Object?> encode() => {
    'arc_options': ?arcOptions?.encode(),
    'donut_center_options': ?donutCenterOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.arc_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateArcOptions {
  const QuicksightTemplateArcOptions({this.arcThickness});

  final TfArg<String>? arcThickness;

  Map<String, Object?> encode() => {'arc_thickness': ?arcThickness?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.donut_options.donut_center_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDonutCenterOptions {
  const QuicksightTemplateDonutCenterOptions({this.labelVisibility});

  final TfArg<String>? labelVisibility;

  Map<String, Object?> encode() => {
    'label_visibility': ?labelVisibility?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePieChartVisualFieldWells {
  const QuicksightTemplatePieChartVisualFieldWells({
    this.pieChartAggregatedFieldWells,
  });

  final QuicksightTemplatePieChartAggregatedFieldWells?
  pieChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pie_chart_aggregated_field_wells': ?pieChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.field_wells.pie_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePieChartAggregatedFieldWells {
  const QuicksightTemplatePieChartAggregatedFieldWells({
    this.category,
    this.smallMultiples,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? category;

  final QuicksightTemplateTrendGroups? smallMultiples;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    if (category != null) 'category': [for (final e in category!) e.encode()],
    'small_multiples': ?smallMultiples?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pie_chart_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePieChartVisualSortConfiguration {
  const QuicksightTemplatePieChartVisualSortConfiguration({
    this.categoryItemsLimit,
    this.categorySort,
    this.smallMultiplesLimitConfiguration,
    this.smallMultiplesSort,
  });

  final QuicksightTemplateCategoryItemsLimit? categoryItemsLimit;

  final List<QuicksightTemplateCategorySort>? categorySort;

  final QuicksightTemplateCategoryItemsLimit? smallMultiplesLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? smallMultiplesSort;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisual {
  const QuicksightTemplatePivotTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplatePivotTableVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplatePivotTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualChartConfiguration {
  const QuicksightTemplatePivotTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightTemplatePivotTableVisualFieldOptions? fieldOptions;

  final QuicksightTemplatePivotTableVisualFieldWells? fieldWells;

  final QuicksightTemplatePaginatedReportOptions? paginatedReportOptions;

  final QuicksightTemplatePivotTableVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplatePivotTableVisualTableOptions? tableOptions;

  final QuicksightTemplatePivotTableVisualTotalOptions? totalOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualFieldOptions {
  const QuicksightTemplatePivotTableVisualFieldOptions({
    this.dataPathOptions,
    this.selectedFieldOptions,
  });

  final List<QuicksightTemplateDataPathOptions>? dataPathOptions;

  final List<QuicksightTemplatePivotTableVisualSelectedFieldOptions>?
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
final class QuicksightTemplateDataPathOptions {
  const QuicksightTemplateDataPathOptions({
    this.width,
    required this.dataPathList,
  });

  final TfArg<String>? width;

  final List<QuicksightTemplateElement> dataPathList;

  Map<String, Object?> encode() => {
    'width': ?width?.toTfJson(),
    'data_path_list': [for (final e in dataPathList) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_options.selected_field_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualSelectedFieldOptions {
  const QuicksightTemplatePivotTableVisualSelectedFieldOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualFieldWells {
  const QuicksightTemplatePivotTableVisualFieldWells({
    this.pivotTableAggregatedFieldWells,
  });

  final QuicksightTemplatePivotTableAggregatedFieldWells?
  pivotTableAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'pivot_table_aggregated_field_wells': ?pivotTableAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.field_wells.pivot_table_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableAggregatedFieldWells {
  const QuicksightTemplatePivotTableAggregatedFieldWells({
    this.columns,
    this.rows,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? columns;

  final List<QuicksightTemplateTrendGroups>? rows;

  final List<QuicksightTemplateTargetValues>? values;

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
final class QuicksightTemplatePaginatedReportOptions {
  const QuicksightTemplatePaginatedReportOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualSortConfiguration {
  const QuicksightTemplatePivotTableVisualSortConfiguration({
    this.fieldSortOptions,
  });

  final List<QuicksightTemplateFieldSortOptions>? fieldSortOptions;

  Map<String, Object?> encode() => {
    if (fieldSortOptions != null)
      'field_sort_options': [for (final e in fieldSortOptions!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateFieldSortOptions {
  const QuicksightTemplateFieldSortOptions({
    required this.fieldId,
    required this.sortBy,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateSortBy sortBy;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'sort_by': sortBy.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSortBy {
  const QuicksightTemplateSortBy({this.column, this.dataPath, this.field});

  final QuicksightTemplateColumnSort? column;

  final QuicksightTemplateDataPath? dataPath;

  final QuicksightTemplateFieldSort? field;

  Map<String, Object?> encode() => {
    'column': ?column?.encode(),
    'data_path': ?dataPath?.encode(),
    'field': ?field?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.sort_configuration.field_sort_options.sort_by.data_path` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataPath {
  const QuicksightTemplateDataPath({
    required this.direction,
    required this.sortPaths,
  });

  final TfArg<String> direction;

  final List<QuicksightTemplateElement> sortPaths;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'sort_paths': [for (final e in sortPaths) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualTableOptions {
  const QuicksightTemplatePivotTableVisualTableOptions({
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

  final QuicksightTemplateCellStyle? cellStyle;

  final QuicksightTemplateCellStyle? columnHeaderStyle;

  final QuicksightTemplateRowAlternateColorOptions? rowAlternateColorOptions;

  final QuicksightTemplateCellStyle? rowFieldNamesStyle;

  final QuicksightTemplateCellStyle? rowHeaderStyle;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateCellStyle {
  const QuicksightTemplateCellStyle({
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

  final QuicksightTemplateBorder? border;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateBorder {
  const QuicksightTemplateBorder({
    this.sideSpecificBorder,
    required this.uniformBorder,
  });

  final QuicksightTemplateSideSpecificBorder? sideSpecificBorder;

  final QuicksightTemplateUniformBorder uniformBorder;

  Map<String, Object?> encode() => {
    'side_specific_border': ?sideSpecificBorder?.encode(),
    'uniform_border': uniformBorder.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.table_options.cell_style.border.side_specific_border` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateSideSpecificBorder {
  const QuicksightTemplateSideSpecificBorder({
    required this.bottom,
    required this.innerHorizontal,
    required this.innerVertical,
    required this.left,
    required this.right,
    required this.top,
  });

  final QuicksightTemplateUniformBorder bottom;

  final QuicksightTemplateUniformBorder innerHorizontal;

  final QuicksightTemplateUniformBorder innerVertical;

  final QuicksightTemplateUniformBorder left;

  final QuicksightTemplateUniformBorder right;

  final QuicksightTemplateUniformBorder top;

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
final class QuicksightTemplateUniformBorder {
  const QuicksightTemplateUniformBorder({
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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateRowAlternateColorOptions {
  const QuicksightTemplateRowAlternateColorOptions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualTotalOptions {
  const QuicksightTemplatePivotTableVisualTotalOptions({
    this.columnSubtotalOptions,
    this.columnTotalOptions,
    this.rowSubtotalOptions,
    this.rowTotalOptions,
  });

  final QuicksightTemplateColumnSubtotalOptions? columnSubtotalOptions;

  final QuicksightTemplateColumnTotalOptions? columnTotalOptions;

  final QuicksightTemplateColumnSubtotalOptions? rowSubtotalOptions;

  final QuicksightTemplateColumnTotalOptions? rowTotalOptions;

  Map<String, Object?> encode() => {
    'column_subtotal_options': ?columnSubtotalOptions?.encode(),
    'column_total_options': ?columnTotalOptions?.encode(),
    'row_subtotal_options': ?rowSubtotalOptions?.encode(),
    'row_total_options': ?rowTotalOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_subtotal_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColumnSubtotalOptions {
  const QuicksightTemplateColumnSubtotalOptions({
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

  final List<QuicksightTemplateFieldLevelOptions>? fieldLevelOptions;

  final QuicksightTemplateCellStyle? metricHeaderCellStyle;

  final QuicksightTemplateCellStyle? totalCellStyle;

  final QuicksightTemplateCellStyle? valueCellStyle;

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
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateFieldLevelOptions {
  const QuicksightTemplateFieldLevelOptions({this.fieldId});

  final TfArg<String>? fieldId;

  Map<String, Object?> encode() => {'field_id': ?fieldId?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.chart_configuration.total_options.column_total_options` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateColumnTotalOptions {
  const QuicksightTemplateColumnTotalOptions({
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

  final QuicksightTemplateCellStyle? metricHeaderCellStyle;

  final QuicksightTemplateCellStyle? totalCellStyle;

  final QuicksightTemplateCellStyle? valueCellStyle;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualConditionalFormatting {
  const QuicksightTemplatePivotTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightTemplatePivotTableVisualConditionalFormattingOptions>?
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
final class QuicksightTemplatePivotTableVisualConditionalFormattingOptions {
  const QuicksightTemplatePivotTableVisualConditionalFormattingOptions({
    this.cell,
  });

  final QuicksightTemplatePivotTableVisualCell? cell;

  Map<String, Object?> encode() => {'cell': ?cell?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePivotTableVisualCell {
  const QuicksightTemplatePivotTableVisualCell({
    required this.fieldId,
    this.scope,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateScope? scope;

  final QuicksightTemplateTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'scope': ?scope?.encode(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.scope` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScope {
  const QuicksightTemplateScope({this.role});

  final TfArg<String>? role;

  Map<String, Object?> encode() => {'role': ?role?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.pivot_table_visual.conditional_formatting.conditional_formatting_options.cell.text_format` block of
/// `aws_quicksight_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class QuicksightTemplateTextFormat {
  const QuicksightTemplateTextFormat({
    required this.backgroundColor,
    this.icon,
    required this.textColor,
  });

  final QuicksightTemplateForegroundColor backgroundColor;

  final QuicksightTemplateIcon? icon;

  final QuicksightTemplateForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'icon': ?icon?.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRadarChartVisual {
  const QuicksightTemplateRadarChartVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateRadarChartVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRadarChartVisualChartConfiguration {
  const QuicksightTemplateRadarChartVisualChartConfiguration({
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

  final QuicksightTemplateBaseSeriesSettings? baseSeriesSettings;

  final QuicksightTemplateCategoryAxis? categoryAxis;

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateCategoryAxis? colorAxis;

  final QuicksightTemplateCategoryLabelOptions? colorLabelOptions;

  final QuicksightTemplateRadarChartVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateComboChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateVisualPalette? visualPalette;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateBaseSeriesSettings {
  const QuicksightTemplateBaseSeriesSettings({this.areaStyleSettings});

  final QuicksightTemplateSelectAllOptions? areaStyleSettings;

  Map<String, Object?> encode() => {
    'area_style_settings': ?areaStyleSettings?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRadarChartVisualFieldWells {
  const QuicksightTemplateRadarChartVisualFieldWells({
    this.radarChartAggregatedFieldWells,
  });

  final QuicksightTemplateRadarChartAggregatedFieldWells?
  radarChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'radar_chart_aggregated_field_wells': ?radarChartAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.radar_chart_visual.chart_configuration.field_wells.radar_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRadarChartAggregatedFieldWells {
  const QuicksightTemplateRadarChartAggregatedFieldWells({
    this.category,
    this.color,
    this.values,
  });

  final QuicksightTemplateTrendGroups? category;

  final QuicksightTemplateTrendGroups? color;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    'category': ?category?.encode(),
    'color': ?color?.encode(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSankeyDiagramVisual {
  const QuicksightTemplateSankeyDiagramVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateSankeyDiagramVisualChartConfiguration?
  chartConfiguration;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

  Map<String, Object?> encode() => {
    'visual_id': visualId.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
    'chart_configuration': ?chartConfiguration?.encode(),
    'subtitle': ?subtitle?.encode(),
    'title': ?title?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSankeyDiagramVisualChartConfiguration {
  const QuicksightTemplateSankeyDiagramVisualChartConfiguration({
    this.dataLabels,
    this.fieldWells,
    this.sortConfiguration,
  });

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateSankeyDiagramVisualFieldWells? fieldWells;

  final QuicksightTemplateSankeyDiagramVisualSortConfiguration?
  sortConfiguration;

  Map<String, Object?> encode() => {
    'data_labels': ?dataLabels?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSankeyDiagramVisualFieldWells {
  const QuicksightTemplateSankeyDiagramVisualFieldWells({
    this.sankeyDiagramAggregatedFieldWells,
  });

  final QuicksightTemplateSankeyDiagramAggregatedFieldWells?
  sankeyDiagramAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'sankey_diagram_aggregated_field_wells': ?sankeyDiagramAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.sankey_diagram_visual.chart_configuration.field_wells.sankey_diagram_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSankeyDiagramAggregatedFieldWells {
  const QuicksightTemplateSankeyDiagramAggregatedFieldWells({
    this.destination,
    this.source,
    this.weight,
  });

  final List<QuicksightTemplateTrendGroups>? destination;

  final List<QuicksightTemplateTrendGroups>? source;

  final List<QuicksightTemplateTargetValues>? weight;

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
final class QuicksightTemplateSankeyDiagramVisualSortConfiguration {
  const QuicksightTemplateSankeyDiagramVisualSortConfiguration({
    this.destinationItemsLimit,
    this.sourceItemsLimit,
    this.weightSort,
  });

  final QuicksightTemplateCategoryItemsLimit? destinationItemsLimit;

  final QuicksightTemplateCategoryItemsLimit? sourceItemsLimit;

  final List<QuicksightTemplateCategorySort>? weightSort;

  Map<String, Object?> encode() => {
    'destination_items_limit': ?destinationItemsLimit?.encode(),
    'source_items_limit': ?sourceItemsLimit?.encode(),
    if (weightSort != null)
      'weight_sort': [for (final e in weightSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScatterPlotVisual {
  const QuicksightTemplateScatterPlotVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateScatterPlotVisualChartConfiguration?
  chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScatterPlotVisualChartConfiguration {
  const QuicksightTemplateScatterPlotVisualChartConfiguration({
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

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateScatterPlotVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateTooltip? tooltip;

  final QuicksightTemplateVisualPalette? visualPalette;

  final QuicksightTemplateCategoryAxis? xAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? xAxisLabelOptions;

  final QuicksightTemplateCategoryAxis? yAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? yAxisLabelOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScatterPlotVisualFieldWells {
  const QuicksightTemplateScatterPlotVisualFieldWells({
    this.scatterPlotCategoricallyAggregatedFieldWells,
    this.scatterPlotUnaggregatedFieldWells,
  });

  final QuicksightTemplateScatterPlotCategoricallyAggregatedFieldWells?
  scatterPlotCategoricallyAggregatedFieldWells;

  final QuicksightTemplateScatterPlotUnaggregatedFieldWells?
  scatterPlotUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'scatter_plot_categorically_aggregated_field_wells':
        ?scatterPlotCategoricallyAggregatedFieldWells?.encode(),
    'scatter_plot_unaggregated_field_wells': ?scatterPlotUnaggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.scatter_plot_visual.chart_configuration.field_wells.scatter_plot_categorically_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateScatterPlotCategoricallyAggregatedFieldWells {
  const QuicksightTemplateScatterPlotCategoricallyAggregatedFieldWells({
    this.category,
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightTemplateTrendGroups>? category;

  final List<QuicksightTemplateTargetValues>? size;

  final List<QuicksightTemplateTargetValues>? xAxis;

  final List<QuicksightTemplateTargetValues>? yAxis;

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
final class QuicksightTemplateScatterPlotUnaggregatedFieldWells {
  const QuicksightTemplateScatterPlotUnaggregatedFieldWells({
    this.size,
    this.xAxis,
    this.yAxis,
  });

  final List<QuicksightTemplateTargetValues>? size;

  final List<QuicksightTemplateTrendGroups>? xAxis;

  final List<QuicksightTemplateTrendGroups>? yAxis;

  Map<String, Object?> encode() => {
    if (size != null) 'size': [for (final e in size!) e.encode()],
    if (xAxis != null) 'x_axis': [for (final e in xAxis!) e.encode()],
    if (yAxis != null) 'y_axis': [for (final e in yAxis!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisual {
  const QuicksightTemplateTableVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.conditionalFormatting,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateTableVisualChartConfiguration? chartConfiguration;

  final QuicksightTemplateTableVisualConditionalFormatting?
  conditionalFormatting;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualChartConfiguration {
  const QuicksightTemplateTableVisualChartConfiguration({
    this.fieldOptions,
    this.fieldWells,
    this.paginatedReportOptions,
    this.sortConfiguration,
    this.tableInlineVisualizations,
    this.tableOptions,
    this.totalOptions,
  });

  final QuicksightTemplateTableVisualFieldOptions? fieldOptions;

  final QuicksightTemplateTableVisualFieldWells? fieldWells;

  final QuicksightTemplatePaginatedReportOptions? paginatedReportOptions;

  final QuicksightTemplateTableVisualSortConfiguration? sortConfiguration;

  final List<QuicksightTemplateTableInlineVisualizations>?
  tableInlineVisualizations;

  final QuicksightTemplateTableVisualTableOptions? tableOptions;

  final QuicksightTemplateTableVisualTotalOptions? totalOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualFieldOptions {
  const QuicksightTemplateTableVisualFieldOptions({
    this.order,
    this.selectedFieldOptions,
  });

  final TfArg<List<String>>? order;

  final List<QuicksightTemplateTableVisualSelectedFieldOptions>?
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualSelectedFieldOptions {
  const QuicksightTemplateTableVisualSelectedFieldOptions({
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

  final QuicksightTemplateUrlStyling? urlStyling;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'field_id': fieldId.toTfJson(),
    'visibility': ?visibility?.toTfJson(),
    'width': ?width?.toTfJson(),
    'url_styling': ?urlStyling?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateUrlStyling {
  const QuicksightTemplateUrlStyling({
    this.imageConfiguration,
    this.linkConfiguration,
  });

  final QuicksightTemplateImageConfiguration? imageConfiguration;

  final QuicksightTemplateLinkConfiguration? linkConfiguration;

  Map<String, Object?> encode() => {
    'image_configuration': ?imageConfiguration?.encode(),
    'link_configuration': ?linkConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateImageConfiguration {
  const QuicksightTemplateImageConfiguration({this.sizingOptions});

  final QuicksightTemplateSizingOptions? sizingOptions;

  Map<String, Object?> encode() => {'sizing_options': ?sizingOptions?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.image_configuration.sizing_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSizingOptions {
  const QuicksightTemplateSizingOptions({
    this.tableCellImageScalingConfiguration,
  });

  final TfArg<String>? tableCellImageScalingConfiguration;

  Map<String, Object?> encode() => {
    'table_cell_image_scaling_configuration':
        ?tableCellImageScalingConfiguration?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLinkConfiguration {
  const QuicksightTemplateLinkConfiguration({this.target, this.content});

  final TfArg<String>? target;

  final QuicksightTemplateLinkConfigurationContent? content;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'content': ?content?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateLinkConfigurationContent {
  const QuicksightTemplateLinkConfigurationContent({
    this.customIconContent,
    this.customTextContent,
  });

  final QuicksightTemplateCustomIconContent? customIconContent;

  final QuicksightTemplateCustomTextContent? customTextContent;

  Map<String, Object?> encode() => {
    'custom_icon_content': ?customIconContent?.encode(),
    'custom_text_content': ?customTextContent?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_icon_content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomIconContent {
  const QuicksightTemplateCustomIconContent({this.icon});

  final TfArg<String>? icon;

  Map<String, Object?> encode() => {'icon': ?icon?.toTfJson()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_options.selected_field_options.url_styling.link_configuration.content.custom_text_content` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateCustomTextContent {
  const QuicksightTemplateCustomTextContent({
    this.value,
    this.fontConfiguration,
  });

  final TfArg<String>? value;

  final QuicksightTemplateFontConfiguration? fontConfiguration;

  Map<String, Object?> encode() => {
    'value': ?value?.toTfJson(),
    'font_configuration': ?fontConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualFieldWells {
  const QuicksightTemplateTableVisualFieldWells({
    this.tableAggregatedFieldWells,
    this.tableUnaggregatedFieldWells,
  });

  final QuicksightTemplateTableAggregatedFieldWells? tableAggregatedFieldWells;

  final QuicksightTemplateTableUnaggregatedFieldWells?
  tableUnaggregatedFieldWells;

  Map<String, Object?> encode() => {
    'table_aggregated_field_wells': ?tableAggregatedFieldWells?.encode(),
    'table_unaggregated_field_wells': ?tableUnaggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableAggregatedFieldWells {
  const QuicksightTemplateTableAggregatedFieldWells({
    this.groupBy,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? groupBy;

  final List<QuicksightTemplateTargetValues>? values;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableUnaggregatedFieldWells {
  const QuicksightTemplateTableUnaggregatedFieldWells({this.values});

  final List<QuicksightTemplateValues>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.field_wells.table_unaggregated_field_wells.values` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateValues {
  const QuicksightTemplateValues({
    required this.fieldId,
    required this.column,
    this.formatConfiguration,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateColumn column;

  final QuicksightTemplateFormatConfiguration? formatConfiguration;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'column': column.encode(),
    'format_configuration': ?formatConfiguration?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualSortConfiguration {
  const QuicksightTemplateTableVisualSortConfiguration({
    this.paginationConfiguration,
    this.rowSort,
  });

  final QuicksightTemplatePaginationConfiguration? paginationConfiguration;

  final List<QuicksightTemplateCategorySort>? rowSort;

  Map<String, Object?> encode() => {
    'pagination_configuration': ?paginationConfiguration?.encode(),
    if (rowSort != null) 'row_sort': [for (final e in rowSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableInlineVisualizations {
  const QuicksightTemplateTableInlineVisualizations({this.dataBars});

  final QuicksightTemplateDataBars? dataBars;

  Map<String, Object?> encode() => {'data_bars': ?dataBars?.encode()};
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.table_inline_visualizations.data_bars` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataBars {
  const QuicksightTemplateDataBars({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualTableOptions {
  const QuicksightTemplateTableVisualTableOptions({
    this.orientation,
    this.cellStyle,
    this.headerStyle,
    this.rowAlternateColorOptions,
  });

  final TfArg<String>? orientation;

  final QuicksightTemplateCellStyle? cellStyle;

  final QuicksightTemplateCellStyle? headerStyle;

  final QuicksightTemplateRowAlternateColorOptions? rowAlternateColorOptions;

  Map<String, Object?> encode() => {
    'orientation': ?orientation?.toTfJson(),
    'cell_style': ?cellStyle?.encode(),
    'header_style': ?headerStyle?.encode(),
    'row_alternate_color_options': ?rowAlternateColorOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.chart_configuration.total_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualTotalOptions {
  const QuicksightTemplateTableVisualTotalOptions({
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

  final QuicksightTemplateCellStyle? totalCellStyle;

  Map<String, Object?> encode() => {
    'custom_label': ?customLabel?.toTfJson(),
    'placement': ?placement?.toTfJson(),
    'scroll_status': ?scrollStatus?.toTfJson(),
    'totals_visibility': ?totalsVisibility?.toTfJson(),
    'total_cell_style': ?totalCellStyle?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualConditionalFormatting {
  const QuicksightTemplateTableVisualConditionalFormatting({
    this.conditionalFormattingOptions,
  });

  final List<QuicksightTemplateTableVisualConditionalFormattingOptions>?
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
final class QuicksightTemplateTableVisualConditionalFormattingOptions {
  const QuicksightTemplateTableVisualConditionalFormattingOptions({
    this.cell,
    this.row,
  });

  final QuicksightTemplateTableVisualCell? cell;

  final QuicksightTemplateRow? row;

  Map<String, Object?> encode() => {
    'cell': ?cell?.encode(),
    'row': ?row?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.cell` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTableVisualCell {
  const QuicksightTemplateTableVisualCell({
    required this.fieldId,
    this.textFormat,
  });

  final TfArg<String> fieldId;

  final QuicksightTemplateTextFormat? textFormat;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'text_format': ?textFormat?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.table_visual.conditional_formatting.conditional_formatting_options.row` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateRow {
  const QuicksightTemplateRow({
    required this.backgroundColor,
    required this.textColor,
  });

  final QuicksightTemplateForegroundColor backgroundColor;

  final QuicksightTemplateForegroundColor textColor;

  Map<String, Object?> encode() => {
    'background_color': backgroundColor.encode(),
    'text_color': textColor.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTreeMapVisual {
  const QuicksightTemplateTreeMapVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateTreeMapVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTreeMapVisualChartConfiguration {
  const QuicksightTemplateTreeMapVisualChartConfiguration({
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

  final QuicksightTemplateCategoryLabelOptions? colorLabelOptions;

  final QuicksightTemplateColorScale? colorScale;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateTreeMapVisualFieldWells? fieldWells;

  final QuicksightTemplateCategoryLabelOptions? groupLabelOptions;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateCategoryLabelOptions? sizeLabelOptions;

  final QuicksightTemplateTreeMapVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateTooltip? tooltip;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTreeMapVisualFieldWells {
  const QuicksightTemplateTreeMapVisualFieldWells({
    this.treeMapAggregatedFieldWells,
  });

  final QuicksightTemplateTreeMapAggregatedFieldWells?
  treeMapAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'tree_map_aggregated_field_wells': ?treeMapAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.field_wells.tree_map_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTreeMapAggregatedFieldWells {
  const QuicksightTemplateTreeMapAggregatedFieldWells({
    this.colors,
    this.groups,
    this.sizes,
  });

  final QuicksightTemplateTargetValues? colors;

  final QuicksightTemplateTrendGroups? groups;

  final QuicksightTemplateTargetValues? sizes;

  Map<String, Object?> encode() => {
    'colors': ?colors?.encode(),
    'groups': ?groups?.encode(),
    'sizes': ?sizes?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.tree_map_visual.chart_configuration.sort_configuration` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateTreeMapVisualSortConfiguration {
  const QuicksightTemplateTreeMapVisualSortConfiguration({
    this.treeMapGroupItemsLimitConfiguration,
    this.treeMapSort,
  });

  final QuicksightTemplateCategoryItemsLimit?
  treeMapGroupItemsLimitConfiguration;

  final List<QuicksightTemplateCategorySort>? treeMapSort;

  Map<String, Object?> encode() => {
    'tree_map_group_items_limit_configuration':
        ?treeMapGroupItemsLimitConfiguration?.encode(),
    if (treeMapSort != null)
      'tree_map_sort': [for (final e in treeMapSort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWaterfallVisual {
  const QuicksightTemplateWaterfallVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateWaterfallVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWaterfallVisualChartConfiguration {
  const QuicksightTemplateWaterfallVisualChartConfiguration({
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

  final QuicksightTemplateCategoryAxis? categoryAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? categoryAxisLabelOptions;

  final QuicksightTemplateDataLabels? dataLabels;

  final QuicksightTemplateWaterfallVisualFieldWells? fieldWells;

  final QuicksightTemplateLegend? legend;

  final QuicksightTemplateCategoryAxis? primaryYAxisDisplayOptions;

  final QuicksightTemplateCategoryLabelOptions? primaryYAxisLabelOptions;

  final QuicksightTemplateWaterfallVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateVisualPalette? visualPalette;

  final QuicksightTemplateWaterfallChartOptions? waterfallChartOptions;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWaterfallVisualFieldWells {
  const QuicksightTemplateWaterfallVisualFieldWells({
    this.waterfallChartAggregatedFieldWells,
  });

  final QuicksightTemplateWaterfallChartAggregatedFieldWells?
  waterfallChartAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'waterfall_chart_aggregated_field_wells':
        ?waterfallChartAggregatedFieldWells?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.field_wells.waterfall_chart_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWaterfallChartAggregatedFieldWells {
  const QuicksightTemplateWaterfallChartAggregatedFieldWells({
    this.breakdowns,
    this.categories,
    this.values,
  });

  final List<QuicksightTemplateTrendGroups>? breakdowns;

  final List<QuicksightTemplateTrendGroups>? categories;

  final List<QuicksightTemplateTargetValues>? values;

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
final class QuicksightTemplateWaterfallVisualSortConfiguration {
  const QuicksightTemplateWaterfallVisualSortConfiguration({
    this.breakdownItemsLimit,
    this.categorySort,
  });

  final QuicksightTemplateCategoryItemsLimit? breakdownItemsLimit;

  final List<QuicksightTemplateCategorySort>? categorySort;

  Map<String, Object?> encode() => {
    'breakdown_items_limit': ?breakdownItemsLimit?.encode(),
    if (categorySort != null)
      'category_sort': [for (final e in categorySort!) e.encode()],
  };
}

/// Typed helper for the `definition.sheets.visuals.waterfall_visual.chart_configuration.waterfall_chart_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWaterfallChartOptions {
  const QuicksightTemplateWaterfallChartOptions({this.totalBarLabel});

  final TfArg<String>? totalBarLabel;

  Map<String, Object?> encode() => {
    'total_bar_label': ?totalBarLabel?.toTfJson(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWordCloudVisual {
  const QuicksightTemplateWordCloudVisual({
    required this.visualId,
    this.actions,
    this.chartConfiguration,
    this.columnHierarchies,
    this.subtitle,
    this.title,
  });

  final TfArg<String> visualId;

  final List<QuicksightTemplateActions>? actions;

  final QuicksightTemplateWordCloudVisualChartConfiguration? chartConfiguration;

  final List<QuicksightTemplateColumnHierarchies>? columnHierarchies;

  final QuicksightTemplateSubtitle? subtitle;

  final QuicksightTemplateSubtitle? title;

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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWordCloudVisualChartConfiguration {
  const QuicksightTemplateWordCloudVisualChartConfiguration({
    this.categoryLabelOptions,
    this.fieldWells,
    this.sortConfiguration,
    this.wordCloudOptions,
  });

  final QuicksightTemplateCategoryLabelOptions? categoryLabelOptions;

  final QuicksightTemplateWordCloudVisualFieldWells? fieldWells;

  final QuicksightTemplateFunnelChartVisualSortConfiguration? sortConfiguration;

  final QuicksightTemplateWordCloudOptions? wordCloudOptions;

  Map<String, Object?> encode() => {
    'category_label_options': ?categoryLabelOptions?.encode(),
    'field_wells': ?fieldWells?.encode(),
    'sort_configuration': ?sortConfiguration?.encode(),
    'word_cloud_options': ?wordCloudOptions?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWordCloudVisualFieldWells {
  const QuicksightTemplateWordCloudVisualFieldWells({
    this.wordCloudAggregatedFieldWells,
  });

  final QuicksightTemplateWordCloudAggregatedFieldWells?
  wordCloudAggregatedFieldWells;

  Map<String, Object?> encode() => {
    'word_cloud_aggregated_field_wells': ?wordCloudAggregatedFieldWells
        ?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.field_wells.word_cloud_aggregated_field_wells` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWordCloudAggregatedFieldWells {
  const QuicksightTemplateWordCloudAggregatedFieldWells({
    this.groupBy,
    this.size,
  });

  final List<QuicksightTemplateTrendGroups>? groupBy;

  final QuicksightTemplateTargetValues? size;

  Map<String, Object?> encode() => {
    if (groupBy != null) 'group_by': [for (final e in groupBy!) e.encode()],
    'size': ?size?.encode(),
  };
}

/// Typed helper for the `definition.sheets.visuals.word_cloud_visual.chart_configuration.word_cloud_options` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateWordCloudOptions {
  const QuicksightTemplateWordCloudOptions({
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

/// Typed helper for the `permissions` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplatePermissions {
  const QuicksightTemplatePermissions({
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
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceEntity {
  const QuicksightTemplateSourceEntity({
    this.sourceAnalysis,
    this.sourceTemplate,
  });

  final QuicksightTemplateSourceAnalysis? sourceAnalysis;

  final QuicksightTemplateSourceTemplate? sourceTemplate;

  Map<String, Object?> encode() => {
    'source_analysis': ?sourceAnalysis?.encode(),
    'source_template': ?sourceTemplate?.encode(),
  };
}

/// Typed helper for the `source_entity.source_analysis` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateSourceAnalysis {
  const QuicksightTemplateSourceAnalysis({
    required this.arn,
    required this.dataSetReferences,
  });

  final TfArg<String> arn;

  final List<QuicksightTemplateDataSetReferences> dataSetReferences;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'data_set_references': [for (final e in dataSetReferences) e.encode()],
  };
}

/// Typed helper for the `source_entity.source_analysis.data_set_references` block of
/// `aws_quicksight_template` (derived from provider schema).
@immutable
final class QuicksightTemplateDataSetReferences {
  const QuicksightTemplateDataSetReferences({
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
final class QuicksightTemplateSourceTemplate {
  const QuicksightTemplateSourceTemplate({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Factory wrapper for `aws_quicksight_template`.
final class AwsQuicksightTemplate extends Resource {
  static const String tfType = 'aws_quicksight_template';

  AwsQuicksightTemplate(
    super.localName, {
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
           'aws_account_id': ?awsAccountId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightTemplate>`.
  RefTo<AwsQuicksightTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');
}
