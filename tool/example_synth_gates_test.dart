// ignore_for_file: avoid_print
import 'example_synth_gates.dart';
import 'terraform_api_requirements.dart';

void main() {
  _testRequiredApi();
  _testApiEnablementGraph();
  _testIamAdjunctDebt();
  _testAwaitingExampleDebt();
  print('example_synth_gates_test: OK');
}

void _testRequiredApi() {
  assert(
    requiredApiForTerraformType('google_gke_backup_backup_plan') ==
        'gkebackup.googleapis.com',
  );
  assert(requiredApiForTerraformType('google_project_service') == null);
  assert(
    requiredApiForTerraformType('google_gke_backup_backup_plan_iam_member') ==
        null,
  );
  assert(
    requiredApiForTerraformType(
          'google_document_ai_processor_default_version',
        ) ==
        'documentai.googleapis.com',
  );
}

void _testApiEnablementGraph() {
  final root = {
    'resource': {
      'google_project_service': {
        'api_gkebackup': {'service': 'gkebackup.googleapis.com'},
      },
      'google_gke_backup_backup_plan': {
        'main': {
          'depends_on': ['google_project_service.api_gkebackup'],
        },
      },
    },
  };
  final errors = <String>[];
  checkApiEnablement('fixture', root, errors);
  assert(errors.isEmpty);

  final bad = {
    'resource': {
      'google_project_service': {
        'api_gkebackup': {'service': 'gkebackup.googleapis.com'},
      },
      'google_gke_backup_backup_plan': {
        'main': {'name': 'x'},
      },
    },
  };
  final badErrors = <String>[];
  checkApiEnablement('fixture', bad, badErrors);
  assert(badErrors.isNotEmpty);

  // Mandate ratchet: enabling SOME APIs while an API-gated resource's own
  // API is absent must fail (the Wave 32 secretmanager gap).
  final partial = {
    'resource': {
      'google_project_service': {
        'api_run': {'service': 'run.googleapis.com'},
      },
      'google_secret_manager_secret': {
        'db': {'secret_id': 'db'},
      },
    },
  };
  final partialErrors = <String>[];
  checkApiEnablement('fixture', partial, partialErrors);
  assert(
    partialErrors.any(
      (e) =>
          e.contains('requires secretmanager.googleapis.com') &&
          e.contains('does not'),
    ),
  );

  // The same gap is suppressed by a tool/example_api_debt.yaml entry.
  final debtErrors = <String>[];
  checkApiEnablement(
    'fixture',
    partial,
    debtErrors,
    apiDebt: {'fixture:secretmanager.googleapis.com': 'documented manual'},
  );
  assert(debtErrors.isEmpty);

  // Examples that enable nothing stay exempt (manual-enablement mode).
  final manual = {
    'resource': {
      'google_secret_manager_secret': {
        'db': {'secret_id': 'db'},
      },
    },
  };
  final manualErrors = <String>[];
  checkApiEnablement('fixture', manual, manualErrors);
  assert(manualErrors.isEmpty);
}

void _testIamAdjunctDebt() {
  const catalog = {
    'GoogleFooIamMember',
    'GoogleFooIamBinding',
    'GoogleFooIamPolicy',
    'GoogleBar',
  };
  const classToTf = {
    'GoogleFooIamMember': 'google_foo_iam_member',
    'GoogleFooIamBinding': 'google_foo_iam_binding',
    'GoogleFooIamPolicy': 'google_foo_iam_policy',
    'GoogleBar': 'google_bar',
  };
  const synthWithMember = {'google_foo_iam_member'};

  // Happy path: binding + policy with sibling member in synth.
  final ok = <String>[];
  checkIamAdjunctDebtEntry(
    className: 'GoogleFooIamBinding',
    reason: 'iam-adjunct-debt: sibling member in foo_quickstart',
    catalogClasses: catalog,
    classToTfType: classToTf,
    synthTfTypes: synthWithMember,
    errors: ok,
  );
  checkIamAdjunctDebtEntry(
    className: 'GoogleFooIamPolicy',
    reason: 'iam-adjunct-debt: sibling member in foo_quickstart',
    catalogClasses: catalog,
    classToTfType: classToTf,
    synthTfTypes: synthWithMember,
    errors: ok,
  );
  assert(ok.isEmpty);

  // Token ignored when absent.
  final ignored = <String>[];
  checkIamAdjunctDebtEntry(
    className: 'GoogleBar',
    reason: 'org-only; needs folder',
    catalogClasses: catalog,
    classToTfType: classToTf,
    synthTfTypes: synthWithMember,
    errors: ignored,
  );
  assert(ignored.isEmpty);

  // Wrong class with token.
  final wrongClass = <String>[];
  checkIamAdjunctDebtEntry(
    className: 'GoogleBar',
    reason: 'iam-adjunct-debt: misuse',
    catalogClasses: catalog,
    classToTfType: classToTf,
    synthTfTypes: synthWithMember,
    errors: wrongClass,
  );
  assert(wrongClass.any((e) => e.contains('not *IamBinding/*IamPolicy')));

  // Sibling not in catalog.
  final noSibling = <String>[];
  checkIamAdjunctDebtEntry(
    className: 'GoogleFooIamBinding',
    reason: 'iam-adjunct-debt: missing member',
    catalogClasses: {'GoogleFooIamBinding'},
    classToTfType: classToTf,
    synthTfTypes: synthWithMember,
    errors: noSibling,
  );
  assert(noSibling.any((e) => e.contains('not in the catalog')));

  // Sibling curated but not in synth.
  final notInSynth = <String>[];
  checkIamAdjunctDebtEntry(
    className: 'GoogleFooIamBinding',
    reason: 'iam-adjunct-debt: member not exercised',
    catalogClasses: catalog,
    classToTfType: classToTf,
    synthTfTypes: const {},
    errors: notInSynth,
  );
  assert(notInSynth.any((e) => e.contains('not in any quickstart synth')));
}

void _testAwaitingExampleDebt() {
  final backlog = backlogKeys('''
entries:
  - resource: google_new
    detected_at: 2026-10-04
    provider_version: 7.47.0
  - data_source: aws_new
    detected_at: 2026-10-05
    provider_version: 6.67.0
''');
  assert(backlog.containsAll({'resource:google_new', 'dataSource:aws_new'}));

  final ok = <String>[];
  checkAwaitingExampleEntry(
    className: 'GoogleNew',
    reason: 'awaiting-example: google_new added in hashicorp/google 7.47.0',
    catalogKey: 'resource:google_new',
    backlogTypes: backlog,
    errors: ok,
  );
  // Other reasons are not tied to the backlog.
  checkAwaitingExampleEntry(
    className: 'GoogleOld',
    reason: 'org-only; needs folder',
    catalogKey: 'resource:google_old',
    backlogTypes: backlog,
    errors: ok,
  );
  assert(ok.isEmpty);

  // The kind must match: a resource line does not borrow a data source's
  // backlog entry.
  final missing = <String>[];
  checkAwaitingExampleEntry(
    className: 'AwsNew',
    reason: 'awaiting-example: aws_new added in hashicorp/aws 6.67.0',
    catalogKey: 'resource:aws_new',
    backlogTypes: backlog,
    errors: missing,
  );
  assert(missing.single.contains('aws_new has no tool/curation_backlog.yaml'));
}
