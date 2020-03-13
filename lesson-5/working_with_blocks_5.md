```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

| line | action                | object                                                     | side effect | return value                                                 | used?                                                     |
| ---- | --------------------- | ---------------------------------------------------------- | ----------- | ------------------------------------------------------------ | --------------------------------------------------------- |
| 1    | method call (map)     | outer array: [[1, 2], [3, 4]]                              | none        | **new array:** [[2, 4], [3, 4]]                              | no, but shown when returned on line 6                     |
| 1-5  | outer block execution | sub-array of the current itteration                        | none        | **new array:** sub-array of current itteration with each value multiplied by 2 | yes, used by outer level map for transformation           |
| 2    | method call (map)     | sub_array of the current itteration                        | none        | **new array:** sub-array of current itteration with each value multiplied by 2 | yes, used to determine return value of outer block        |
| 2-4  | inner block execution | current element of the sub-array of the current itteration | none        | **Integer:** current value multiplied by two                 | yes, used by inner level map for transformation           |
| 3    | method call (*)       | current element of the sub-array of the current itteration | none        | **Integer:** current element multiplied by two               | Yes, used to determine thereturn value of the inner block |

```
=> [[2, 4], [6, 8]]
```

