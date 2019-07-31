//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/22/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

#ifndef Employee_h
#define Employee_h

@interface Employee : Person
    @property NSDate* hireDate;
    @property int employeeNumber;
    //    -(void) setHireDate: (NSDate*) value;
    //    -(void) setEmployeeNumber: (int) value;

    -(id) init;
    -(id) initWith: (NSString*) nam date: (NSDate*) d number: (int) num;
@end

#endif /* Employee_h */

