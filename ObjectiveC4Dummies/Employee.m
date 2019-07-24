//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/22/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import "Employee.h"
#import <Foundation/Foundation.h>

@implementation Employee
    @synthesize name, hiredate, employeeNumber;

    -(void) greet {
        NSLog(@"Hello!");
    }
@end
