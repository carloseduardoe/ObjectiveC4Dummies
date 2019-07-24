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
    @property NSString *name;
    @property NSDate *hiredate;
    @property int employeeNumber;

    // - is for instance methods
    // + is for static methods
    -(void) greet;
@end
