//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/22/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef Employee_h
#define Employee_h
#endif /* Employee_h */

@interface Employee : NSObject
    @property NSString* name;
    @property NSDate* hireDate;
    @property int employeeNumber;
//    -(void) setName: (NSString*) value;
//    -(void) setHireDate: (NSDate*) value;
//    -(void) setEmployeeNumber: (int) value;

    // - is for instance methods
    // + is for static methods
    +(int) add: (int) a to:(int) b;
    +(int) subtract: (int) a from:(int) b;

    -(id) init;
    -(id) initWith: (NSString*) nam date: (NSDate*) d number: (int) num;
    -(NSString*) greet: (NSString*) name;
@end
