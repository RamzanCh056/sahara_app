//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   late GoogleMapController mapController;
//   List
//   <LatLng> polylineCoordinates = [];
//
//   // Define coordinates for all points
//   LatLng meeqat = LatLng(21.4270, 39.9179); // Coordinates for Meeqat, Saudi Arabia
//   LatLng alMasjidHaram = LatLng(21.4225, 39.8262); // Coordinates for Al-Masjid al-Haram, Saudi Arabia
//   LatLng mina = LatLng(21.3891, 39.8634); // Coordinates for Mina, Saudi Arabia
//   LatLng plainsOfArafat = LatLng(21.3333, 39.9833); // Coordinates for Plains of Arafat, Saudi Arabia
//   LatLng muzdalifah = LatLng(21.39, 39.95); // Coordinates for Muzdalifah, Saudi Arabia
//
//   // Add markers for each point
//   Set<Marker> markers = {
//     Marker(
//       markerId: MarkerId('meeqat'),
//       position:  LatLng(21.4270, 39.9179),
//       infoWindow: InfoWindow(title: 'Meeqat'),
//     ),
//     Marker(
//       markerId: MarkerId('al_masjid_haram'),
//       position:  LatLng(21.4225, 39.8262),
//       infoWindow: InfoWindow(title: 'Al-Masjid al-Haram (12Km away)'),
//     ),
//     Marker(
//       markerId: MarkerId('mina'),
//       position: LatLng(21.3891, 39.8634),
//   infoWindow: InfoWindow(title: 'Mina'),
//     ),
//     Marker(
//       markerId: MarkerId('plains_of_arafat'),
//       position:  LatLng(21.3333, 39.9833),
//       infoWindow: InfoWindow(title: 'Plains of Arafat'),
//     ),
//     Marker(
//       markerId: MarkerId('muzdalifah'),
//       position: LatLng(21.39, 39.95),
//       infoWindow: InfoWindow(title: 'Muzdalifah'),
//     ),
//   };
//
//   @override
//   void initState() {
//     super.initState();
//     _addPolyline();
//   }
//
//   void _addPolyline() {
//     // Add points to the polylineCoordinates list
//     polylineCoordinates.add(meeqat);
//     polylineCoordinates.add(alMasjidHaram);
//     polylineCoordinates.add(mina);
//     polylineCoordinates.add(plainsOfArafat);
//     polylineCoordinates.add(muzdalifah);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             GoogleMap(
//               mapType: MapType.normal,
//               onMapCreated: (GoogleMapController controller) {
//                 mapController = controller;
//               },
//               initialCameraPosition: CameraPosition(
//                 target: alMasjidHaram, // Initial camera position set to Al-Masjid al-Haram
//                 zoom: 10, // Adjust the zoom level as needed
//               ),
//               markers: markers,
//               polylines: {
//
//                 Polyline(
//                   polylineId: PolylineId('meeqat_to_muzdalifah'),
//                   color: Colors.black,
//                   width: 10,
//                   points: polylineCoordinates,
//                 ),
//               },
//             ),
//             Positioned(
//               top: 10,
//               left: 10,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(Icons.arrow_back),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:math' show cos, sqrt, asin;

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  List
  <LatLng> polylineCoordinates = [];

  // Define coordinates for all points
  LatLng meeqat = LatLng(21.4270, 39.9179); // Coordinates for Meeqat, Saudi Arabia
  LatLng alMasjidHaram = LatLng(21.4225, 39.8262); // Coordinates for Al-Masjid al-Haram, Saudi Arabia
  LatLng mina = LatLng(21.3891, 39.8634); // Coordinates for Mina, Saudi Arabia
  LatLng plainsOfArafat = LatLng(21.3333, 39.9833); // Coordinates for Plains of Arafat, Saudi Arabia
  LatLng muzdalifah = LatLng(21.39, 39.95); // Coordinates for Muzdalifah, Saudi Arabia

  // Add markers for each point
  Set
  <Marker> markers = {};

  @override
  void initState() {

    super.initState();
    _addMarkers();
    _addPolyline();
  }

  void _addMarkers() {
    markers.add(
      Marker(
        markerId: MarkerId('meeqat'),
        position: meeqat,
        infoWindow: InfoWindow(title: 'Meeqat'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('al_masjid_haram'),
        position: alMasjidHaram,
        infoWindow: InfoWindow(title: 'Al-Masjid al-Haram'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('mina'),
        position: mina,
        infoWindow: InfoWindow(title: 'Mina'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('plains_of_arafat'),
        position: plainsOfArafat,
        infoWindow: InfoWindow(title: 'Plains of Arafat'),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId('muzdalifah'),
        position: muzdalifah,
        infoWindow: InfoWindow(title: 'Muzdalifah'),
      ),
    );
  }

  void _addPolyline() {
    // Add points to the polylineCoordinates list
    polylineCoordinates.add(meeqat);
    polylineCoordinates.add(alMasjidHaram);
    polylineCoordinates.add(mina);
    polylineCoordinates.add(plainsOfArafat);
    polylineCoordinates.add(muzdalifah);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
              initialCameraPosition: CameraPosition(
                target: alMasjidHaram, // Initial camera position set to Al-Masjid al-Haram
                zoom: 10, // Adjust the zoom level as needed
              ),
              markers: markers,
              polylines: {
                Polyline(
                  polylineId: PolylineId('meeqat_to_muzdalifah'),
                  color: Colors.black,
                  width: 10,
                  points: polylineCoordinates,
                ),
              },
            ),
            Positioned(
              top: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
