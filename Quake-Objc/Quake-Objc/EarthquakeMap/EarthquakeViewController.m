//
//  EarthquakeViewController.m
//  Quake-Objc
//
//  Created by Bradley Yin on 10/8/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "EarthquakeViewController.h"
#import <MapKit/MapKit.h>
#import "LSIQuakeFetcher.h"

@interface EarthquakeViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation EarthquakeViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _quakeFetcher = [[LSIQuakeFetcher alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.quakeFetcher fetchQuakesWithCompletionBlock:^(NSArray *quakes, NSError *error) {
        NSLog(@"Quakes: %@", quakes);
    }];
}

@end
