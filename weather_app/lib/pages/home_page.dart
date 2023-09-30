import 'package:flutter/material.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/weather_cubit/weather_cubit.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (BuildContext context, state) {
          if (state is WeatherLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is WeatherSuccess) {
            return SuccessWidget(weatherData: state.weatherModel);
          } else if (state is WeatherFailure) {
            return const Center(
              child: Text(
                'Something went wrong!',
                style: TextStyle(fontSize: 34),
              ),
            );
          } else {
            return const DefaultBody();
          }
        },
      ),
    );
  }
}

class DefaultBody extends StatelessWidget {
  const DefaultBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            weatherData!.getColorTheme(),
            weatherData!.getColorTheme()[300]!,
            weatherData!.getColorTheme()[100]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          const Text(
            'Weather ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            weatherData!.date,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(weatherData!.getImage()),
              Text(
                '${weatherData!.temp.toInt()}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    'min:${weatherData!.minTemp.toInt()}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'max:${weatherData!.maxTemp.toInt()}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            weatherData!.weatherStateName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
