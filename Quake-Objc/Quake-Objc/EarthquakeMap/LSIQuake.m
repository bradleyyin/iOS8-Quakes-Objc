//
//  LSIQuake.m
//  Quake-Objc
//
//  Created by Bradley Yin on 10/8/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "LSIQuake.h"

@implementation LSIQuake

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super self];
    if (self) {
        
        //TODO: Replace with constants for key
        NSDictionary *properties = dictionary[@"properties"];
        NSNumber *magNumber = properties[@"mag"];
        NSString *placeString = properties[@"place"];
        long timeInMilliseconds = [properties[@"time"] longValue];
        NSTimeInterval timeInSeconds = timeInMilliseconds / 1000.0;
        
        if (magNumber && placeString && timeInSeconds) {
            _magnitude = [magNumber doubleValue];
            _place = placeString;
            _time = [NSDate dateWithTimeIntervalSince1970:timeInSeconds];
        } else {
            NSLog(@"Error: unable to parse earthquake: %@", dictionary);
            return nil;
        }
        
        
    }
    return self;
}

@end
