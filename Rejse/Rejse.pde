import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.InputStreamReader;
final String API_KEY = "";

String currentCountry, startingCountry, finalCountry;
String countryName;
String resultText = "0";
JSONArray landeListe;
boolean guessSent = false;


void setup() {
  size(1000, 700);
  landeListe = loadJSONArray("landenettet.json");
  startingCountry = "Denmark";
  currentCountry = startingCountry;
  finalCountry = "France";
}

void draw() {
  background(240);
  fill(20);
  text(resultText, 25, 35, width - 50, height - 50);
}

void mousePressed() {
  
}
