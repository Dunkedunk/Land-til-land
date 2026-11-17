import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.InputStreamReader;
final String API_KEY = "";

String currentCountry, startingCountry, finalCountry;
String countryName;
String resultText = "";
int guesses = 0;
int shortestRoute;
JSONArray landeListe;
boolean guessSent = false;


void setup() {
  size(1000, 700);
  landeListe = loadJSONArray("landenettet_alle_lande.json");
  startingCountry = "Tyskland";
  currentCountry = startingCountry;
  finalCountry = "Frankrig";
  shortestRoute(startingCountry, finalCountry);
}

void draw() {
  background(240);
  fill(20);
  drawGuessTile();
  drawJourney();
}

void mousePressed() {
}

void keyPressed() {
  if (Character.isLetter(key) || key == ' ') resultText = resultText+key;
  else if (keyCode == BACKSPACE) {
    if (resultText.length() > 0) {
      resultText = resultText.substring(0, resultText.length() - 1);
    }
  }
}
