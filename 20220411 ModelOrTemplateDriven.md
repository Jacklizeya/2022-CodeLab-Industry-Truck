Model driven: validator.isRequired
Explicit, created in component class
Function validation
The component has control of input


Under the hood, they work exactly the same way
  
  
Template driven: <html required>
Less explicit, created by directives
Mutable
Directive validation
The component has no control
  
  
The ngModel directive works for an element supported by a ControlValueAccessor, angular provides value accessors for all the basic HTML form elements. 
  
To apply ngModel to a non-form build-in element or a thrid party custom component, you have to write a value accesssor, for more information, see the api of value accessor

When you write an angular component, you do not need a value accessor of ngmodel if you name the value and event properties according to angular's two way binding syntax.
  
  
Directive and its host
<p  [Directive] = "property" />
Bind property and value two in one!
  
ElementRef is the host element
TemplateRef
ViewContainer
EmbeddedViewRef
ComponentRef
  
  
  viewContainerRef
    Create a host view, Element Ref, by using createComponent()
    Create a embed view, Template Ref, by using createEmbededView()
