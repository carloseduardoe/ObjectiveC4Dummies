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
        // runBasics();
        
        Employee* Bob = [[Employee alloc] init];
        [Bob setName: @"Bob"];
        [Bob setHireDate: [NSDate new]];
        [Bob setEmployeeNumber: 1];
        
        Employee* Alice = [[Employee alloc] initWith: @"Alice" date: [NSDate new] number: 2];
        
        NSLog(
              @"Name: %@, Hire Date: %@, Employee Number: %i",
              [Bob name], [Bob hireDate], [Bob employeeNumber]
        );
        
        NSLog(@"%@", [Bob greet: [Alice name]]);
        
        NSMutableArray* items = [NSMutableArray arrayWithObjects:
            Bob,
            Alice,
            [[Employee alloc] initWith: @"Peter" date: [NSDate new] number: 3],
            nil
        ];
        
        [items addObject: [[Employee alloc] initWith: @"John" date: [NSDate new] number: 4]];
        [items removeObjectAtIndex: 3];
        [items addObject: [[Employee alloc] initWith: @"Marie" date: [NSDate new] number: 4]];
        [items addObject: [NSDate new]];
        
        NSLog(
              @"%lu items: %@, %@, %@, %@, %@",
              (unsigned long)[items count],
              [items[0] name], [[items objectAtIndex: 1] name], [items[2] name], [items[3] name], items[4]
        );
        
        NSMutableDictionary* usStates = [NSMutableDictionary dictionaryWithObjectsAndKeys:
            @"Arizona",    @"AZ",
            @"California", @"CA",
            @"Colorado",   @"CO",
            @"Hawaii",     @"HI",
            nil
        ];

        [usStates setObject:@"Florida" forKey:@"FL"];
        
        NSLog(@"dictionary: %@", usStates);
        NSString* key = @"HI";
        NSLog(@"%@ is for %@", key, [usStates objectForKey: key]);
        
        for (NSString* key in usStates) {
            NSLog(@"%@ - %@", key, [usStates objectForKey: key]);
        }
        
        NSFileManager* fileMgr = [[NSFileManager alloc] init];
        NSString* contents = @"Lalalalalala";
        
        NSString* filepath = [[NSArray arrayWithObjects:
            [[fileMgr URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil] absoluteString],
            @"sample.txt",
            nil
        ] componentsJoinedByString:@""];
        
        NSError* error;
        if([fileMgr
            createFileAtPath:filepath
            contents:[contents dataUsingEncoding:NSUTF8StringEncoding]
            attributes:nil
        ]) {
            NSLog(@"Create Success");
        } else{
            NSLog(@"Create error: %@", error);
        }
        
        NSLog(@"%@", filepath);
    }
    return 0;
}
