void main() {
  
  var s = SampleGeneric<BaseClass>();
  s.getResponse("hello");
  s.getResponse(123);
  s.getResponse([2, 3, 4]);
}

class SampleGeneric<T extends BaseClass> {
   T getResponse<T> (T key) {print(key); return key;}
}

class BaseClass {}
class NewClass {}


abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
