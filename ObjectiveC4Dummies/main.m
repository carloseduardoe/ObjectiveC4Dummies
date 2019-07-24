//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/19/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <stdlib.h>
#import <Foundation/Foundation.h>

#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Employee *Bob = [[Employee alloc] init];
        [Bob greet];
        [Bob setName:@"Bob"];
        [Bob setHiredate:[NSDate new]];
        [Bob setEmployeeNumber:1];
        
        NSLog(
              @"Name: %@, Hire Date: %@, Employee Number: %i",
              [Bob name], [Bob hiredate], [Bob employeeNumber]
        );
    }
    return 0;
}
