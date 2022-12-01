
// import 'package:dio/dio.dart';
// import 'package:exhange_rates_flutter/core/constants/url_const.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../models/currency_model.dart';
// import 'home_state.dart';

// class HomeCubit extends Cubit<HomeState> {
//   HomeCubit() : super(HomeInitial());

//   Future getData() async {
//     emit(HomeLoading());
//     try {
//       Response res = await Dio().get(UrlConst.urlApi,);
//       List<CurrencyModel> currencyModel =
//           (res.data as List).map((e) => CurrencyModel.fromJson(e)).toList();
//       emit(HomeLoaded(currencyModel));
//     } catch (e) {
//       emit(HomeError(e.toString()));
//     }
//   }
// }
