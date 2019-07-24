//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/22/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PI 3.14150265

/* primitive data types:
 *      Short int: short (2 bytes)
 *      Integers:  int (4 bytes)
 *      Long int:  long (8 bytes if compiled for 64-bits)
 *      Long Long: long long (8 bytes)
 *      Float:     float (4 bytes)
 *      Double:    double (8 bytes)
 *      Char:      char (1 byte)
 *      Boolean:   BOOL (1 byte: YES or NO)
 *                 bool (1 byte: true of false)
 *
 *
 * enumeration data types:
 *      enum options {
 *          valueOne, valueTwo, valueThree
 *      }
 *      // valueOne: 0, valueTwo: 1, valueThree...
 *
 *      enum options preference = valueTwo;
 *
 *      NSLog(@"%i", preference); // 1
 *
 *
 * using typedef:
 *      typedef enum { valueOne = 55, valueTwo = 99, valueThree = 77 } options;
 *
 *      options selected = valueTwo;
 *
 *      NSLog(@"%i", selected); // 99
 *
 *
 * working with strings:
 *      NSString *value = @"Random string...";
 *      NSLog(@"String value is: %@", value);
 */

void runBasics() {
    int months = 12;
    int weeks = (4 * months) + 4;
    int days = 7 * weeks + 1;
    int hours = 24 * days;
    int minutes = 60 * hours;
    int seconds = 60 * minutes;
    
    // arrays have a fixed size.
    // types can't be mixed in arrays.
    // Objective-C doesn't implement bound checks i.e. arr[999...]
    
    int parkingSpots[] = { 40, 32, 21 };
    NSLog(@"There are %i parking spots on the third floor!", parkingSpots[2]);
    
    NSString* stringArray[2] = { @"Hello", @"World" };
    NSLog(@"%@ %@", stringArray[0], stringArray[1]);
    
    float circleArea = PI * 24;
    NSLog(@"Circle Area: %f", circleArea);
    
    if((true && false) || (arc4random_uniform(10) < 5)) {
        NSLog(
              @"\n\nThere are:\n%i months, %i weeks, %i days, %i hours, %i minutes and %i seconds in a year!\n\n.",
              months, weeks, days, hours, minutes, seconds
              );
    } else {
        NSLog(@"Whoops, you're not supposed to be here.");
    }
    
    switch (days) {
        case 364: NSLog(@"Day miscalculation!"); break;
        case 366: NSLog(@"leap-year!"); break;
        default: NSLog(@"%i days", days); break;
    }
    
    NSLog(@"Today is an %s day!", (arc4random_uniform(10) < 5) ? "awesome" : "awful");
    
#if DEBUG
    NSLog(@"Maximum int value is %i !", INT_MAX);
#endif
    
    int a = 0;
    while (a < 3) {
        NSLog(@"a is %i", a++);
    }
    
    do {
        NSLog(@"a is %i", ++a);
    } while (a < 5);
    
    for (int i = 0; i < 10; i++) {
        if (i == 6) break;
        else if (i == 3) continue;
        
        NSLog(@"i is %i", i);
    }
}
