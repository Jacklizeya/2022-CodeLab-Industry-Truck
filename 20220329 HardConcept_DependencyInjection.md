Dependency Injection was introduced by Martin Fowler in the blog post Inversion of Control Containers and the Dependency Injection Pattern. The principal objective is to separate the responsibility of resolving object dependency from its behavior.

Definition
Dependency Injection (DI) is a programming technique that makes a class independent of its dependencies.

“In software engineering, dependency injection is a technique whereby one object supplies the dependencies of another object. A ‘dependency’ is an object that can be used, for example as a service. Instead of a client specifying which service it will use, something tells the client what service to use. The ‘injection’ refers to the passing of a dependency (a service) into the object (a client) that would use it. The service is made part of the client's state. Passing the service to the client, rather than allowing a client to build or find the service, is the fundamental requirement of the pattern.” Source: Wikipedia

Creating objects directly within the class is inflexible because it commits the class to particular objects and makes it impossible to change the instantiation later independently from the class. It stops the class from being reusable if other objects are required and it makes the class hard to test because real objects can not be replaced with mock objects.

Depending on an interface is more flexible than depending on concrete classes. Object-oriented languages provide ways in which you can replace those abstractions with concrete implementations at runtime. You want to do this as much as possible since it is the best way to make your codebase flexible and reusable.
To learn more about the benefits of using interfaces, check out this article on “Why composition is superior to inheritance as a way of sharing code.”

Separation of Concerns
DI assumes that the tight coupling of object implementations is bad.
DI assumes that the dependent class is never a good place to create a dependency.
DI by its nature centralizes knowledge of all dependencies and their implementations.
Tight Coupling and Loose Coupling
Tight coupling is when a group of classes are highly dependent on one another. This scenario arises when a class assumes too many responsibilities, or when one concern is spread over many classes rather than having its own class.
Loose coupling is achieved by means of a design that promotes single-responsibility and separation of concerns.
A loosely-coupled class can be consumed and tested independently of other (concrete) classes.
Interfaces are a powerful tool to use for decoupling. Classes can communicate through interfaces rather than other concrete classes, and any class can be on the other end of that communication simply by implementing the interface.

Inversion of Control (IoC), Dependency Inversion
Principle (DIP) and Dependency Injection (DI)
Inversion of Control (IoC) is a design principle used to invert different kinds of controls in object-oriented design to achieve loose coupling.

Dependency Inversion Principle (DIP) says that high-level modules should not depend on low-level modules. Both should depend on the abstraction.
Abstractions should not depend on details should depend on abstractions.

Dependency Injection (DI) is a design pattern used to implement IoC.

IoC Container
When a new object is required, its dependencies need to be assigned to concrete classes. This task can be delegated to a container. When an instance of a particular type is requested to a container, it will inject the implementations required by that type. Those implementations are defined in a set of mappings that can easily be changed.

The Container creates an object of the specified class and also injects all the dependency objects through a constructor, a property, or a method at run time and disposes it at the appropriate time. This is done so that we don't have to create and manage objects manually.
Containers provide support for the following DI life cycle.

Register: Determines which dependency to instantiate when it encounters a particular type.
Resolve: We don't need to create objects manually. The container does it for us. The container includes some methods to resolve the specified type and creates an object of the specified type, injects the required dependencies, and returns the object.
Dispose: Manages the lifetime of the dependent objects.
Service lifetimes
The service life-time means how long the service will live before it's disposed of. There are currently three different lifetimes:

Transient: The service is created each time it is requested
Singleton: Created once for the lifetime of the application
Scoped: Created once per request
