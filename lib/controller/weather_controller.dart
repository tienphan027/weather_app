import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../widget/popup.dart';

class WeatherController extends BaseController {
  String apiKey = '904e8ed04ea1b7526e90421c5be31799';
  String cityDefault = 'Hồ Chí Minh';
  final cityController = TextEditingController();
  String city = '';
  var temperature = ''.obs;
  var description = ''.obs;
  final snackbarController = Get.put(SnackbarController);

  @override
  void onInit() {
    super.onInit();
    cityController.addListener(() {
      city = cityController.value.text;
    });
  }

// You can build a class network here and add to the security!
// In this test! I will not build up all the folder and class
  void fetchWeather() async {
    if (city.isNotEmpty) {
      try {
        final response = await http.get(Uri.parse(
            'https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=$apiKey'));

        if (response.statusCode == 200) {
          Map<String, dynamic> data = json.decode(response.body);
          temperature.value =
              (data['main']['temp'] - 273.15).toStringAsFixed(1);
          description.value = data['weather'][0]['description'];
        }
      } catch (e) {
        Popup.showInformation(message: e.toString());
      }
    } else {
      Popup.showInformation(message: 'Errorrr');
    }
  }
}
