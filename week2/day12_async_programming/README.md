# DAY 12: Async, Future, await, Stream

## 1. SYNC vs ASYNC
🔹 Sync (Normal)
    - print('start);
    - print('edn');

output 
   - start
   - end
  
## Async (Delayed task)
- Future.delayed(Duration(seconds: 2), () {
-  print("Hello after 2 sec");
- });

- 👉 Output:
  
- Start
- End
-Hello after 2 sec

# 2.WHAT is FUTURE ? (Core Concept)

✅ Future = value that will come later

- Future<String> fetchData() {
-   return Future.delayed(Duration(seconds: 2), () {
-     return "Data loaded";
-   });
- }




