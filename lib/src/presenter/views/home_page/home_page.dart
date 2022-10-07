import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/local_provider.dart';
import 'components/header_components/components/search_bar.dart';
import 'components/header_components/components/cep_info_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoogleMapController mapController;
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalProvider>(
      builder: (context, localProvider, child) => Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(0, 0),
                    zoom: 18,
                  ),
                  zoomControlsEnabled: false,
                  mapType: MapType.hybrid,
                  myLocationButtonEnabled: true,
                  onMapCreated: (GoogleMapController controller) {
                    mapController = controller;
                  },
                  markers: (localProvider.localEntity != null)
                      ? {
                          Marker(
                            markerId: MarkerId(localProvider.localEntity!.cep),
                            position: LatLng(
                              localProvider.localEntity!.latitude,
                              localProvider.localEntity!.longitude,
                            ),
                            infoWindow: InfoWindow(
                              title: localProvider.localEntity!.adress,
                            ),
                          ),
                        }
                      : <Marker>{}.toSet(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: AnimatedCrossFade(
                  crossFadeState: localProvider.isLoading
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 500),
                  firstChild: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.white,
                    ),
                    width: 320,
                    child: Column(
                      children: const [
                        LinearProgressIndicator(
                          color: Colors.blue,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Pesquisando...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  secondChild: SearchBar(
                    controller: _searchController,
                    onPressed: () async {
                      await localProvider.getLocal(_searchController.text);
                      mapController.animateCamera(
                        CameraUpdate.newCameraPosition(
                          CameraPosition(
                            target: LatLng(
                              localProvider.localEntity!.latitude,
                              localProvider.localEntity!.longitude,
                            ),
                            zoom: 18,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                child: CEPInfoCard(
                  local: localProvider.localEntity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
