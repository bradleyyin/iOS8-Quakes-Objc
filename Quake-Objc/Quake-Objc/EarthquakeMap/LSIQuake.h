//
//  LSIQuake.h
//  Quake-Objc
//
//  Created by Bradley Yin on 10/8/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LSIQuake : NSObject

@property double magnitude;
@property NSString *place;
@property NSDate *time;
//@property double *latitude;
//@property double *longitude; TODO:implement these later

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
