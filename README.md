# Debouncer

### Why need ```Debouncer```
Have you ever make a app to search something? When ever user type a character into textfield you need to make a request.
This is a point, so when the user type really fast, you just only make a request when user stop the typing or typing slow down 

### How it works?

```
let debouncer = Debouncer() // You can pass the delay value here

debouncer.dispatch {
   // Your request here
}
```