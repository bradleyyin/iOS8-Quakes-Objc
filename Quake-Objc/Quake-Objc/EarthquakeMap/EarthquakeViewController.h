//
//  EarthquakeViewController.h
//  Quake-Objc
//
//  Created by Bradley Yin on 10/8/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSIQuakeFetcher;

@interface EarthquakeViewController : UIViewController
@property LSIQuakeFetcher *quakeFetcher;

@end

