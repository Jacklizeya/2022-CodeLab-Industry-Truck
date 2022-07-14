Finally use some playground workspace to see exactly how is everything working

How to test

parent dart file:

var primitiveVariable = 100;
var objectVariable = People("name", "age")
handleClick() {
  // will trigger refresh by itself
}


<div>
  // parent's section
  <button (click)="handleClick"> </button>
  {{primitiveVariable}}
  {{objectVariable.property}}
  <child
    [primitiveVariable] = "primitiveVariable"
    [objectVariable] = "objectVariable">
  </child>
</div>

child dart file

class Child {
  @Input() primitiveVariable;
  @Input() objectVariable

}

Verification:
If a value is NULL it will be shown as BLANK on HTML

Scenario #1:
handleClick, parent will refresh, primitive and object will be re-calculated. Because primitive input changed, Child will refresh. 

Scenario #2:
Remove primitive variable
handleClick, parent will refresh, object will be re-calculated. Because object's reference did not change. Child will NOT refresh.

Scenario #3:
Remove primitive variable, but re-assign the object variable. 
handleClick, parent will refresh, object will be re-calculated. As referene change, Child will refresh too. 

General conclusion:

Parent's view refresh will update all parents Displaying data in its view. And Child will have to decide it will refresh or not.

Change detection is really bubble up, but just saying that is over-simplify things. It could refresh child if child finds its input changed.






