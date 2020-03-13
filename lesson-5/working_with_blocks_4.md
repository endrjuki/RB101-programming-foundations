```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```



| line |        action         |                    object                     | side effect                                                  | return value                                   | used?                                                  |
| :--: | :-------------------: | :-------------------------------------------: | ------------------------------------------------------------ | ---------------------------------------------- | ------------------------------------------------------ |
|  1   |  variable assignment  |                      n/a                      | none                                                         | [[18, 7], [3, 12]]                             | no                                                     |
|  1   |  method call (each)   |              [[18, 7], [3, 12]]               | none                                                         | the calling object: [[18, 7], [3, 12]]         | Yes, used by variable assignment to `my_arr`           |
| 1-7  | outer block execution |                each sub-array                 | none                                                         | each sub_array                                 | no                                                     |
|  2   |  method call (each)   |                each sub_array                 | none                                                         | calling object: sub array in current iteration | yes, used to determine return value of outer block     |
| 2-6  | inner block execution | element of the sub array in current iteration | none                                                         | nil                                            | no                                                     |
|  3   |   comparison ( > )    | element of the sub array in current iteration | none                                                         | boolean                                        | yes, evaluated by if                                   |
|  3   |   conditional (if)    | element of the sub array in current iteration | none                                                         | nil                                            | yes, used to determine the return value of inner block |
|  4   |  method call (puts)   | element of the sub array in current iteration | prints string representation of each value of sub array that satisfy the conditional | nil                                            | yes, used to determine the return value of inner block |

```
#18
#7
#12
# => [[18, 7], [3, 12]]
```

4 return values that we need to pay attention here, return values of both calls to each and return values to both blocks.

In this case we know `each` always returns the object it was called on, so we can quickly determine value of `my_arr`

