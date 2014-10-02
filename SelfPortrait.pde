import de.fhpotsdam.unfolding.mapdisplay.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.tiles.*;
import de.fhpotsdam.unfolding.interactions.*;
import de.fhpotsdam.unfolding.ui.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.core.*;
import de.fhpotsdam.unfolding.mapdisplay.shaders.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.texture.*;
import de.fhpotsdam.unfolding.events.*;
import de.fhpotsdam.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;

UnfoldingMap map;

Location location1 = new Location(37.950795, -91.711944);
Location location2 = new Location(33.986865, -118.47361);
Location location3 = new Location(33.712451, -118.291236);
Location location4 = new Location(34.020379, -118.284674);
Location location5 = new Location(34.022311, -118.284031);
Location location6 = new Location(34.018744, -118.281505);
Location location7 = new Location(34.019752, -118.281476);
Location location8 = new Location(34.062311, -118.307816);
Location location9 = new Location(34.022352, -118.285117);
Location location10 = new Location(34.019726, -118.281493);
Location location11 = new Location(34.027433, -118.288354);
Location location12 = new Location(36.112783, -112.693234);
Location location13 = new Location(36.255218, -112.698047);
Location location14 = new Location(36.049998, -112.12047);
Location location15 = new Location(37.19814, -112.986497);
Location location16 = new Location(33.710562, -118.287544);
Location location17 = new Location(34.020379, -118.284674);
Location location18 = new Location(34.019066, -118.2819);
Location location19 = new Location(34.018152, -118.281293);
Location location20 = new Location(38.652083, -90.29592);

Location [] locations = new Location[20];




boolean move = false;
int locationToDisplay = 0;
int zoomLevel = 10;

void setup () {
  size(800, 600, P2D);
  map = new UnfoldingMap(this);
  MapUtils.createDefaultEventDispatcher(this, map);

  map.zoomAndPanTo(location1, zoomLevel);
  float maxPanningDistance = 10000; // in km
  map.setPanningRestriction(location1, maxPanningDistance);

  locations[0] = location1;
  locations[1] = location2;
  locations[2] = location3;
  locations[3] = location4;
  locations[4] = location5;
  locations[5] = location6;
  locations[6] = location7;
  locations[7] = location8;
  locations[8] = location9;
  locations[9] = location10;
  locations[10] = location11;
  locations[11] = location12;
  locations[12] = location13;
  locations[13] = location14;
  locations[14] = location15;
  locations[15] = location16;
  locations[16] = location17;
  locations[17] = location18;
  locations[18] = location19;
  locations[19] = location20;
}

void draw () {
  map.draw();
  // Create point markers for locations
  SimplePointMarker marker1 = new SimplePointMarker(location1);
  SimplePointMarker marker2 = new SimplePointMarker(location2);
  SimplePointMarker marker3 = new SimplePointMarker(location3);
  SimplePointMarker marker4 = new SimplePointMarker(location4);
  SimplePointMarker marker5 = new SimplePointMarker(location5);
  SimplePointMarker marker6 = new SimplePointMarker(location6);
  SimplePointMarker marker7 = new SimplePointMarker(location7);
  SimplePointMarker marker8 = new SimplePointMarker(location8);
  SimplePointMarker marker9 = new SimplePointMarker(location9);
  SimplePointMarker marker10 = new SimplePointMarker(location10);
  SimplePointMarker marker11 = new SimplePointMarker(location11);
  SimplePointMarker marker12 = new SimplePointMarker(location12);
  SimplePointMarker marker13 = new SimplePointMarker(location13);
  SimplePointMarker marker14 = new SimplePointMarker(location14);
  SimplePointMarker marker15 = new SimplePointMarker(location15);
  SimplePointMarker marker16 = new SimplePointMarker(location16);
  SimplePointMarker marker17 = new SimplePointMarker(location17);
  SimplePointMarker marker18 = new SimplePointMarker(location18);
  SimplePointMarker marker19 = new SimplePointMarker(location19);
  SimplePointMarker marker20 = new SimplePointMarker(location20);


  map.addMarkers(marker1, marker2, marker3, marker4, marker5, marker6, marker7, marker8, marker9, marker10, marker11, marker12, marker13, marker14, marker14, marker15, marker16, marker17, marker18, marker19, marker20);
}

void mousePressed() {
  zoomToNewLocation();
}

void zoomToNewLocation () {
  if (locationToDisplay < (locations.length-1)) {
    locationToDisplay++;
  } else {
    locationToDisplay = 0;
  }

  map.zoomAndPanTo(locations[locationToDisplay], zoomLevel);
  println("zoomed to location: " + locations[locationToDisplay]);
}

