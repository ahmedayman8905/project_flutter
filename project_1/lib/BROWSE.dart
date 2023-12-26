import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/Cubit/home_view_move_cubit.dart';
import 'package:project_1/Cubit/home_view_move_state.dart';
import 'package:project_1/ItemBrowse.dart';
import 'package:project_1/model/TowBrowseResponse.dart';

class Browse extends StatelessWidget {
  static const String routeName = 'Browse';
  List<Genres> GenresList = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeViewMoveCubit()..getTwoBrowse(),
      child: BlocConsumer<HomeViewMoveCubit, HomeViewMoveState>(
        listener: (context, state) {
          if (state is TwoBrowseSucees) {
            GenresList.addAll(
                state.twobrowseResponse.genres as Iterable<Genres>);
          }
        },
        builder: (context, state) {
          var cubit = HomeViewMoveCubit.get(context);
          if (state is TwoBrowseSucees) {
            return Scaffold(
              backgroundColor: Color(0xFF121312),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Container(
                      child: Text(
                        'Browse Category',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.45,
                          mainAxisSpacing: 0,
                        ),
                        itemBuilder: (context, index) {
                          return ItemBrowse(genres: GenresList[index]);
                        },
                        itemCount: GenresList.length,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is TwoBrowseLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Color(0xFF7785DB),
                title: Text(
                  'Current Requests',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Check your internet connection.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF7785DB),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle retry button press
                        },
                        child: Text(
                          'Try Again',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
