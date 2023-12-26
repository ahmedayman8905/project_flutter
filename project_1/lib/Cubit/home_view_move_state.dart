import 'package:project_1/model/BrowseResponse.dart';
import 'package:project_1/model/TowBrowseResponse.dart';

abstract class HomeViewMoveState {}

class BrowseInitial extends HomeViewMoveState {}

class BrowseLoading extends HomeViewMoveState {}

class BrowseSucees extends HomeViewMoveState {
  final BrowseResponse browseResponse;

  BrowseSucees(this.browseResponse);
}

class BrowseError extends HomeViewMoveState {}

class TwoBrowseInitial extends HomeViewMoveState {}

class TwoBrowseLoading extends HomeViewMoveState {}

class TwoBrowseSucees extends HomeViewMoveState {
  final TowBrowseResponse twobrowseResponse;
  TwoBrowseSucees(this.twobrowseResponse);
}

class TwoBrowseError extends HomeViewMoveState {}
