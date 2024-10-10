int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calculate points for team A
  int pointsA = (teamA['Free throws'] ?? 0) * 1 +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;

  // Calculate points for team B
  int pointsB = (teamB['Free throws'] ?? 0) * 1 +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;

  // Determine the winning team
  if (pointsA > pointsB) {
    return 1; // Team A wins
  } else if (pointsA < pointsB) {
    return 2; // Team B wins
  } else {
    return 0; // Tie
  }
}

void main() {
  var teamA = {'Free throws': 23, '2 pointers': 32, '3 pointers': 16};
  var teamB = {'Free throws': 31, '2 pointers': 27, '3 pointers': 13};

  print(whoWins(teamA, teamB)); // Output: 1
}
