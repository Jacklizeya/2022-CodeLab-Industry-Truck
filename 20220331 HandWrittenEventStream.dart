// Parent app_component.dart

import 'package:angular/angular.dart';
import 'package:hello_again/src/facebook_like_component/facebook_like_component.dart';
import 'package:hello_again/src/heros_component/heroes_component.dart';
import 'package:hello_again/src/jack_component/jack_component.dart';
import 'package:hello_again/src/make_it_rain/make_it_rain.dart';
import 'package:hello_again/src/more_directives/highlighter_directive.dart';
import 'package:hello_again/src/more_directives/learn_direct_component.dart';
import 'package:hello_again/src/smart_component/smart_component.dart';
import 'package:hello_again/src/student_firebase_component/student_firebase_component.dart';
import 'package:hello_again/src/student_form_component/student_form_component.dart';
import 'package:hello_again/src/student_pipe_component/student_pipe_component.dart';
import 'package:hello_again/src/todo_component/todo_component.dart';
import 'package:hello_again/src/tutorial_component/hero_form_component.dart';
import 'package:hello_again/src/user_input_component/user_input_component.dart';
import 'package:hello_again/src/jack_component/jack_component.dart';



// AngularDart info: https://angulardart.xyz
// Components info: https://angulardart.xyz/components
//
// (If the links still point to the old Dart-lang repo, go here:
// https://pub.dev/ngcomponents)

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  directives: [
    coreDirectives,
    HighLighterDirective,
    LearnDirectComponent,
    MakeItRainComponent,
    SmartComponent,
    FacebookThumb,
    ToDoComponent,
    StudentComponent,
    StudentFormComponent,
    StudentPipeComponent,
    HeroFormComponent,
    UserInputComponent,
    HeroComponent,
    JackComponent
  ],
  templateUrl: 'app_component.html'

)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.

  Map<String, dynamic> student = {
    'name' : 'Sheila',
    'isSmart' : true,
    'description': 'She is very smart!'
  };

  void onIsSmartChanged(isSmart) {
    print('OnChanged raised! $isSmart');
  }

  void onLikeThumbChanged(eventdata) {
    print('OnChanged raised! $eventdata');
  }

  int counter = 0;

  void increaseCounter() {
    counter++;
  }

  bool display = false;
  void handleChildEvent(childSingal) {
    display = childSingal;
  }

}


// app_component.html

<p highlighter> Test </p>
<jack [jackInput]="'what is up'" (stream) = "handleChildEvent($event)"> </jack>
<p *ngIf="display"> Toggle me </p>


// Child jack_component.dart

import 'dart:async';

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
  bool toggle = false;

  @Output()
  Stream<bool> get stream => _streamController.stream;
  final StreamController<bool> _streamController = StreamController();

  @Input()
  String jackInput;

  JackComponent(this.service);

  void onClick () {
    initialString = service.name;
  }

  void handleClick() {
    toggle = !toggle;
    _streamController.add(toggle);
  }
}

// jack_component.html
<p> {{initialString}} </p>
<p> {{jackInput}} </p>
<button (click) = 'onClick()'>  </button>
<br>
<br>
<button (click) = 'handleClick()'> Toggle </button>
  
// service.dart  
class Service {
  String name = 'Jack Service';
  String age = 'Jack';
}
  
  
