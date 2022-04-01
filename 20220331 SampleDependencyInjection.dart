// The one who use injection
import 'package:angular/angular.dart';
import 'service.dart';

@Component (
    selector: 'jack',
    templateUrl: 'jack_component.html',
    directives: [coreDirectives],
    providers: [ClassProvider(Service)]
)

class JackComponent {
  String initialString = '';
  Service service;

  JackComponent(this.service);

  void onClick () {
    initialString = service.name;
  }
}

// The service got provided


class Service {
  String name = 'Jack Service';
  String age = 'Jack';
}

// The html
<p> {{initialString}} </p>
<button (click) = 'onClick()'>  </button>
