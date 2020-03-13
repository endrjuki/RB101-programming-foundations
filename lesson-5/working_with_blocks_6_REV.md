```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

| Line |         Action          | Object                                                       | Side effect | Return Value                         | Rtn val used?                                         |
| ---- | :---------------------: | ------------------------------------------------------------ | ----------- | ------------------------------------ | ----------------------------------------------------- |
| 1    |  method call (select)   | [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]                  | none        | a new array                          | no, but shown on line 6                               |
| 1-5  |  outer block execution  | hash object of current iteration (sub element of outer array) | none        | boolean                              | yes, for select method (element selection)            |
| 2    |    method call(all?)    | hash object of current iteration (sub element of outer array) | none        | boolean                              | yes, determines the return value of the block         |
| 2-4  |  inner block execution  | key/value pairs of current iteration                         | none        | boolean                              | yes, determines the return value of the method `all?` |
| 3    | element reference ( []) | value of current key/value pair                              | none        | string                               | yes, for comparison                                   |
| 3    |   method call (to_s)    | key of current key/value pair                                | none        | string representation of current key | yes, for comparison                                   |
| 3    |     comparison( = )     | element at index 0 of current value out of key/value pair    | none        | boolean                              | yes, determines the return value of inner block       |
|      |                         |                                                              |             |                                      |                                                       |
|      |                         |                                                              |             |                                      |                                                       |

> What would happen if, instead of using `all?`, we used `any?`. Why would this affect the return value of `select`?

`select` would return a new array containing the same objects, because `all?` pases each element of the collection to the block and  returns true if  block ever returns a value different than `false` or `nil` 

`:a.to_s == 'ant'[0] #=> true`, therefore block returns true for the first collection `{ a: 'ant', b: 'elephant' }`

and same logic applies to second collection  `{ c: 'cat' }`,  block will also return true, therefore `select` method will collect both hashes and return them in a new array object.



`all?` on the other hand returns `true` only if the block never returns `nil` or `false` for any element passed the block

