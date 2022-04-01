A few shocking new knowledge

1. the main() function / or we call it anonymous function will execute till the end first, this initialize everything
2. Then it will start looking it into Queue, here, all the data are prepared already
3. If JS engine finds something will take time to handle, it will give to its helper, the helper will prepare it and then get the results ready in queue, V8 will pick it up when the stack is empty
4. Event.on("Button", "Click", function) will live in WebAPI, not V8! We wrote in V8 to get it started, but it lives in WebAPI
5. If there is something going on in the callstack, it can not deal with anything else, everything has to wait
6. setTimeOut is passed by main to webAPI to handle
7. render is like a callback itself, but with higher priority called microTask, whenever the call stack is empty, please give render an opportunity to run
8. initialize -> first render -> later just reactive based on callbacks
9. if one callback takes long time to process, render won't get a chance to be executed by V8
10. scroll handler needs a debounce, so it won't pass tons of callback 
11. In this case, OOD actually makes more sense, initialize it, then do callback one by one
