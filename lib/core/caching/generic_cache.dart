import 'dart:convert';
import 'dart:developer';

import 'package:expense_tracker_lite/core/caching/app_response_cache_service.dart';
import 'package:expense_tracker_lite/utils/helpers/constants.dart';

import '../error/error_handler.dart';
import '../error/failure.dart';

AppResponseCacheService cacheService =
    AppResponseCacheService.getInstance(GenericCache);

abstract class CacheDataSource {
  _getDataFromCache<T>(
      String cacheKey, int interval, Function fromJson, bool isConnected);
}

class GenericCache implements CacheDataSource {
  GenericCache();

  GenericCache._() {}
  static final GenericCache instance = GenericCache._();

  Future<bool> deleteRecoredByKey<T>(String? key) async {
    try {
      String keyForCacheKey = "general-$key";
      AppResponseCacheData? akCache = AppResponseCacheData();
      List<String>? additionalKeys = [];
      akCache = await cacheService.getDataFromCache<List<String>>(
          keyForCacheKey, false, 1000000);
      log("key >>>>> $key");
      log("keyForCacheKey >>>>> $keyForCacheKey");
      if (akCache != null) {
        for (int i = 0;
            i < json.decode(json.encode(akCache.responseData)).length;
            i++) {
          log("delete akCache====> ${akCache.responseData[i].toString()}");
          additionalKeys.add(akCache.responseData[i].toString());
        }
        for (var element in additionalKeys) {
          log("element1 $element");
          log("element2 $keyForCacheKey $element");
          log("element3 $key - $element");
          await cacheService.deleteRecoredByKey<T>(element);
        }
        await cacheService.deleteRecoredByKey<List<String>>(keyForCacheKey);
      }
      return await cacheService.deleteRecoredByKey<T>(key);
    } catch (e) {
      log("cacheService errror >>> $e");
    }
    return false;
  }

  Future<T?> getCacheResultCore<T>(
      Function() remote, String cacheKey, Function fromJson, bool isConnected,
      {int? cacheTimeInterval, String? additionalFilter}) async {
    String fullCacheKey = "$cacheKey - ${additionalFilter ?? ''}";
    try {
      // get response from cache
      final response = await _getDataFromCache<T>(
          fullCacheKey,
          cacheTimeInterval ?? Constants.CACHE_TIME_INTERVAL,
          fromJson,
          isConnected);
      log("getDataFromCache..... $fullCacheKey");
      return response;
    } catch (cacheError) {
      try {
        dynamic response = await remote.call();

        dynamic data;
        log('Response OF CACHE ${response.data.totalCount}');
        if (response != null) {
          if (response is List) {
            response.map((e) {
              data = e.data.toJson();
              data = e.data.toJson();
              // use decode / encode to convert data to json to can save data in local data base
              data = json.decode(json.encode(e.data));
              log("fullDATA >>>>>>> $data");
            });
          } else {
            data = response.data.toJson();
            data = response.data.toJson();
            // use decode / encode to convert data to json to can save data in local data base
            data = json.decode(json.encode(response.data));
            log("fullDATA >>>>>>> $data");
          }

          //saveDataToCache
          try {
            log("fullCacheKey >>>>>>> $fullCacheKey");
            await cacheService.saveDataToRunTimeCache(response, fullCacheKey);
            await cacheService.createARC<T>(AppResponseCacheData(
              key: fullCacheKey,
              createdAt: DateTime.now(),
              responseData: data,
            ));

            //
            String keyForCacheKey = "general-$cacheKey";
            List<String> additionalKeys = [];
            AppResponseCacheData? akCache = AppResponseCacheData();
            akCache = await cacheService.getDataFromCache<List<String>>(
                keyForCacheKey, isConnected, cacheTimeInterval ?? 0);

            if (akCache == null) {
              log('JSONENCODE ${json.encode(additionalKeys)}');
              log('ADDITIONALKEY $additionalKeys');
              log('keyForCacheKey $keyForCacheKey');
              log("no akCache >>>> $keyForCacheKey $additionalFilter");
              additionalKeys.add(fullCacheKey);
              await cacheService.createARC<List<String>>(AppResponseCacheData(
                key: keyForCacheKey,
                createdAt: DateTime.now(),
                responseData: additionalKeys,
              ));
            } else {
              for (int i = 0; i < akCache.responseData.length; i++) {
                additionalKeys.add(akCache.responseData[i].toString());
              }
              bool isNewAdditionalKey = additionalKeys
                      .where((element) => element == keyForCacheKey)
                      .toList()
                      .isEmpty
                  ? true
                  : false;
              if (isNewAdditionalKey) {
                log("fullCacheKey $fullCacheKey ${fullCacheKey.length}");
                log('JSONENCODE ${json.encode(additionalKeys)}');
                additionalKeys.add(fullCacheKey);

                await cacheService.createARC<List<String>>(AppResponseCacheData(
                  key: keyForCacheKey,
                  createdAt: DateTime.now(),
                  responseData: json.decode(json.encode(additionalKeys)),
                ));
              }
            }
          } catch (e) {
            log("error in save to cache  $e");
          }
          log("getDataFromRemote..... ");
          return response;
        } else {
          throw Failure(
              code: ApiInternalStatus.FAILURE,
              message: response.error?.message ?? ResponseMessage.DEFAULT);
        }
      } catch (error) {
        log("Error IN GENERIC CACHE ${error.toString()}");
        final errorHandler = await ErrorHandler.handle(error);

        throw (errorHandler.failure);
      }
    }
  }

  @override
  _getDataFromCache<T>(
      String cacheKey, int interval, fromJson2, bool isConnected) async {
    //log("interval*************** ${interval}");
    dynamic res =
        await cacheService.getDataFromCache<T>(cacheKey, isConnected, interval);
    // log("res >>>>>>> ${res.runtimeType}");
    // log("(res == null) ${(res == null)}");
    // log("(res ) ${(res)}");
    if (res == null) throw ErrorHandler.handle(DataSource.CACHE_ERROR);
    if (res.runtimeType != AppResponseCacheData) {
      log("return from cache not server");
      return res;
    }

    final cacheDataResponse = res;
    try {
      var newItem2 = fromJson2(cacheDataResponse.responseData);
      cacheDataResponse.responseData = newItem2;
      CachedItem cachedItem = CachedItem(cacheDataResponse.responseData);

      //AppShared.cacheMap[cacheKey]=  cacheDataResponse;
      cacheService.saveCacheDataToRunTimeCache(
          cacheDataResponse.responseData, cacheKey);
      if (cachedItem.isValid(interval,
          cacheDataResponse.createdAt ?? DateTime.now(), !isConnected)) {
        // return the response from cache
        return cachedItem.data;
      }
    } catch (e) {
      log("ErrorgetDataFromCache........ $e");
    }
    // return an error that cache is not there or its not valid
    throw ErrorHandler.handle(DataSource.CACHE_ERROR);
  }
}
