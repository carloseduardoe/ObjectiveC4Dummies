//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/22/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@implementation Employee
    @synthesize name, hireDate, employeeNumber;
//    {
//        NSString* name;
//        NSDate* hireDate;
//        int employeeNumber;
//    }
//
//    -(void) setName: (NSString*) value {
//        name = value;
//    }
//
//    -(void) setHireDate: (NSDate*) value {
//        hireDate = value;
//    }
//
//    -(void) setEmployeeNumber: (int) value {
//        employeeNumber = value;
//    }

    -(id) init{
        return [self initWith: @"" date: nil number: -1];
    }

    -(id) initWith: (NSString*) nam date: (NSDate*) d number: (int) num {
        self = [super init];
        if (self) {
            name = nam;
            hireDate = d;
            employeeNumber = num;
        }
        return self;
    }
@end
