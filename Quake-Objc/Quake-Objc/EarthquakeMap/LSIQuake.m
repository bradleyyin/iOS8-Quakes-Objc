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
        _magnitude = [magNumber doubleValue];
        
    }
    return self;
}

@end
