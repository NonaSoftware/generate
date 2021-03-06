---
metaTitle: "Objective C - Modern Objective-C"
description: "Literals, Container subscripting"
---

# Modern Objective-C




## Literals


Modern Objective C provides ways to reduce amount of code you need to initialize some common types. This new way is very similar to how NSString objects are initialized with constant strings.

### NSNumber

Old way:

```objectivec
NSNumber *number = [NSNumber numberWithInt:25];

```

Modern way:

```objectivec
NSNumber *number = @25;

```

Note: you can also store `BOOL` values in `NSNumber` objects using `@YES`, `@NO` or `@(someBoolValue)`;

### NSArray

Old way:

```objectivec
NSArray *array = [[NSArray alloc] initWithObjects:@"One", @"Two", [NSNumber numberWithInt:3], @"Four", nil]; 

```

Modern way:

```objectivec
NSArray *array = @[@"One", @"Two", @3, @"Four"];

```

### NSDictionary

Old way:

```objectivec
NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys: array, @"Object", [NSNumber numberWithFloat:1.5], @"Value", @"ObjectiveC", @"Language", nil];

```

Modern way:

```objectivec
NSDictionary *dictionary = @{@"Object": array, @"Value": @1.5, @"Language": @"ObjectiveC"};

```



## Container subscripting


In modern Objective C syntax you can get values from `NSArray` and `NSDictionary` containers using container subscripting.

Old way:

```objectivec
NSObject *object1 = [array objectAtIndex:1];
NSObject *object2 = [dictionary objectForKey:@"Value"];

```

Modern way:

```objectivec
NSObject *object1 = array[1];
NSObject *object2 = dictionary[@"Value"];

```

You can also insert objects into arrays and set objects for keys in dictionaries in a cleaner way:

Old way:

```objectivec
// replacing at specific index
[mutableArray replaceObjectAtIndex:1 withObject:@"NewValue"];
// adding a new value to the end
[mutableArray addObject:@"NewValue"];

[mutableDictionary setObject:@"NewValue" forKey:@"NewKey"];

```

Modern way:

```objectivec
mutableArray[1] = @"NewValue";
mutableArray[[mutableArray count]] = @"NewValue";

mutableDictionary[@"NewKey"] = @"NewValue";

```

