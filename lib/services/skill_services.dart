import 'package:tasirrahman_portfolio/models/skill_model.dart';
import 'package:tasirrahman_portfolio/repositories/skill_repository.dart';

class SkillService {
  final SkillRepository repository;

  const SkillService(this.repository);

  List<Skill> fetchSkills() {
    return repository.getSkills();
  }
}
