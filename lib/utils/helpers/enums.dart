enum AuthType { login, register }

enum VerificationType { login, register, forgetPassword }
enum DeleteCaller {
  fromProjectsScreen,
  fromHomeScreen,
}

enum UserRoles {
  //pm(1, "PM"),
  user(2, "User"),
  admin(3, "Admin");

  final int value;
  final String label;

  const UserRoles(this.value, this.label);
}

enum WorkSpacePrivacyType {
  public(1, "Public"),
  specificUsersAndTeams(3, "Specific Users And Teams");

  final int value;
  final String label;

  const WorkSpacePrivacyType(this.value, this.label);
}

enum BoardPrivacy {
  public(1, "Public"),
  workspace(2, "Workspace"),
  specificUsersAndTeams(3, "Specific Users And Teams");

  final int value;
  final String label;

  const BoardPrivacy(this.value, this.label);
}

enum ProjectOperation {
  create,
  edit,
  view,
}

enum TenantFlowStep {
  tenants,
  tenantsWorkspaces,
}

enum ProjectStatus {
  notStarted,
  inProgress,
  completed,
  onHold,
  cancelled,
}
