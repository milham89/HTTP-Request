import 'package:belajar/global_resources.dart';

class RequestServices<T> {
  Future<T> request(Future future) async {
    return await future;
    // try {} on SocketException catch (e) {
    //   print('Data Mati');
    // } on TimeoutException catch (e) {
    //   print('Data Lambat');
    // } on Error catch (e) {
    //   print('Kesalahan Data');
    // }
  }
}
