import 'package:app/menu/components/menu_drawer/component/location/widgets/google_map.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/title.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorSourceApp.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const TextTitleDonuts(),
                  const Spacer(),
                ],
              ),
            ),
            Container(height: 350, width: 400, child: GoogleMapWidget()),
          ],
        ),
      ),
    );
  }
}
