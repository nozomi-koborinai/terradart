import 'example_synth_gates.dart';
import 'terraform_api_requirements.dart';

void main() {
  _testRequiredApi();
  _testApiEnablementGraph();
  print('example_synth_gates_test: OK');
}

void _testRequiredApi() {
  assert(requiredApiForTerraformType('google_gke_backup_backup_plan') ==
      'gkebackup.googleapis.com');
  assert(requiredApiForTerraformType('google_project_service') == null);
  assert(
      requiredApiForTerraformType('google_gke_backup_backup_plan_iam_member') ==
          null);
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
}
