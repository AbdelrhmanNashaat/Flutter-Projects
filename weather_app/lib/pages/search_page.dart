import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  String? cityName;
  SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search A city'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: TextField(
            onSubmitted: (data) async {
              cityName = data;
              BlocProvider.of<WeatherCubit>(context)
                  .getWeather(cityName: cityName!);
                  BlocProvider.of<WeatherCubit>(context).cityName=cityName;
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              label: Text('Search'),
              border: OutlineInputBorder(),
              hintText: 'Search A City',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
