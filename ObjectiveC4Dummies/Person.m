//
//  Person.m
//  ObjectiveC4Dummies
//
//  Created by Carlos on 7/24/19.
//  Copyright © 2019 Carlos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person : NSObject
    @synthesize name;
    //    {
    //        NSString* name;
    //    }
    //
    //    -(void) setName: (NSString*) value {
    //        name = value;
    //    }

    +(int) add: (int) a to:(int) b {
        return a + b;
    }

    +(int) subtract: (int) a from:(int) b {
        return b - a;
    }

    -(id) init{
        return [self initWith: @""];
    }

    -(id) initWith: (NSString*) nam {
        self = [super init];
        if (self) {
            name = nam;
        }
        return self;
    }

    -(NSString *) greet: (NSString *) name {
        return [[NSArray arrayWithObjects: @"Hello", name, nil] componentsJoinedByString:@""];
    }
@end
