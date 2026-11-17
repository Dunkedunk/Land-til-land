
int shortestRoute(String start, String end) {
  String[] currentNeighbors1 = new String[0];
  String[] currentNeighbors2 = new String[0];
  boolean routeFound = false;
  int routeLength = 0;
  for (int i = 0; i < landeListe.size(); i++) {
    JSONObject test = landeListe.getJSONObject(i);
    if (test.getString("name").equals(start) == true) {
      currentNeighbors1 = test.getJSONArray("neighbors").toStringArray();
    }
    if (test.getString("name").equals(end) == true) {
      currentNeighbors2 = test.getJSONArray("neighbors").toStringArray();
    }
  }
  while (routeFound == false) {
    for (int i = 0; i < currentNeighbors1.length; i++) {
      for (int k = 0; k < currentNeighbors2.length; k++) {
        if (currentNeighbors1[i].equals(currentNeighbors2[k])) {
          routeFound = true;
          return routeLength;
        }
      }
    }
    routeLength++;
  }
  println(currentNeighbors1);
  println(currentNeighbors2);
  return 0;
}
