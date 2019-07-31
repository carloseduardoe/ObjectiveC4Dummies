//
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/24/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef Person_h
#define Person_h

@interface Person : NSObject
    @property NSString* name;
    //    -(void) setName: (NSString*) value;

    // - is for instance methods
    // + is for static methods
    +(int) add: (int) a to:(int) b;
    +(int) subtract: (int) a from:(int) b;

    -(id) init;
    -(id) initWith: (NSString*) nam;
    -(NSString*) greet: (NSString*) name;
@end

#endif /* Person_h */
