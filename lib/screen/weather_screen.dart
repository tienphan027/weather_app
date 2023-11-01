import 'package:app_weather/styles/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base_page.dart';
import '../controller/weather_controller.dart';
import '../widget/button_border.dart';
import '../widget/location_input.dart';

class WeatherScreen extends BaseViewController<WeatherController> {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WeatherController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: Container(
          padding: AppDimens.kMarginAll,
          child: Column(
            children: <Widget>[
              LocationInput(
                controller: controller.cityController,
                labelText: "Enter City",
              ),
              const SizedBox(height: AppDimens.size12),
              ButtonApp(
                height: AppDimens.btnH48,
                buttonText: 'Get Weather', // add text in local here
                onPressed: () {
                  controller.fetchWeather();
                },
              ),
              const SizedBox(height: AppDimens.size12),
              Obx(
                () => Text('Temperature: ${controller.temperature}°C'),
              ),
              const SizedBox(height: AppDimens.size12),
              Obx(
                () => Text('Weather: ${controller.description}°C'),
              ),
            ],
          ),
        ));
  }
}
