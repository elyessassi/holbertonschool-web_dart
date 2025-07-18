int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  int TotalA = (teamA["Free throws"] ?? 0) + ((teamA["2 pointers"] ?? 0) * 2) + ((teamA["3 pointers"] ?? 0) * 3);
  int TotalB = (teamB["Free throws"] ?? 0) + ((teamB["2 pointers"] ?? 0) * 2) + ((teamB["3 pointers"] ?? 0) * 3);

  if (TotalA > TotalB){
    return(1);
  }
  else if (TotalA < TotalB){
    return(2);
  }
  else{
    return(0);
  }
}
