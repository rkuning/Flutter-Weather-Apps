import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wthrapp/repositories/geolocation/geolocation_repository.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepository _geolocationRepository;
  StreamSubscription? _geolocationSubscribtion;

  GeolocationBloc({required GeolocationRepository geolocationRepository})
      : _geolocationRepository = geolocationRepository,
        super(GeolocationLoading()) {
    on<LoadGeolocation>(_onLoadGeolocation);
    on<UpdateGeolocation>(_onUpdateGeolocation);
    ;
  }

  void _onLoadGeolocation(
      LoadGeolocation event, Emitter<GeolocationState> emit) {
    _geolocationSubscribtion?.cancel();
    // final Position position = emit(_geolocationRepository.getCurrentLocation());
    // add(UpdateGeolocation(position: position));
  }

  void _onUpdateGeolocation(
      UpdateGeolocation event, Emitter<GeolocationState> emit) {}

  // @override
  // Stream<GeolocationState> mapEventToState(
  //   GeolocationEvent event,
  // ) async* {
  //   if (event is LoadGeolocation) {
  //     yield* _mapGeolocationToState();
  //   } else if (event is UpdateGeolocation) {
  //     yield* _mapUpdateGeolocationToState(event);
  //   }
  // }

  // Stream<GeolocationState> _mapGeolocationToState() async* {
  //   _geolocationSubscribtion?.cancel();
  //   final Position position = await _geolocationRepository.getCurrentLocation();

  //   add(UpdateGeolocation(position: position));
  // }

  // Stream<GeolocationState> _mapUpdateGeolocationToState(
  //     UpdateGeolocation event) async* {
  //   yield GeolocationLoaded(position: event.position);
  // }

  // @override
  // Future<void> Close() {
  //   _geolocationSubscribtion?.cancel();
  //   return super.close();
  // }
}
