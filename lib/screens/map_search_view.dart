import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/item_map_sheet.dart';

class MapsSearchView extends StatefulWidget {
  @override
  _MapsSearchViewState createState() => _MapsSearchViewState();
}

class _MapsSearchViewState extends State<MapsSearchView> {
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    // _setPinMarkerImage();
  }

  Future<void> _setPinMarkerImage() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.5),
      'assets/img/marker.png',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.42796133580664, -122.085749655962),
            zoom: 14.4746,
          ),
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          markers: _markers,
          onMapCreated: (controller) {
            _controller.complete(controller);

            setState(() {
              _markers.add(
                Marker(
                  markerId: MarkerId('1'),
                  position: LatLng(37.42796133580664, -122.085749655962),
                  icon: pinLocationIcon,
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      context: context,
                      builder: (ctx) => ItemMapSheet(),
                    );
                  },
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
