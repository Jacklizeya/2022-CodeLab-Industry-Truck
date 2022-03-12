console.log("start");

setTimeout(function timeout() {console.log(1);}, 1000);

setTimeout(function timeout() {console.log(2);}, 2000);

setTimeout(function timeout() {console.log(3);}, 3000);

setTimeout(function timeout() {console.log(4);}, 4000);

console.log('Finish');

/*
1. normal execuction on my main at Start
2. meet setTimeOut, it does not belong to V8 Engine, let Web API handle it
3. normal execution on my main till finish
4. Now call stack with main is done, I can look into task queue
*/

/*
Reference material:

https://youtu.be/8aGhZQkoFbQ?t=1087
https://www.infiniswiss.com/blog/angular/2020/10/23/change-detection-angular/

*/
