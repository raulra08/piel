//
//  LocationViewController.m
//  Piel
//
//  Created by  Raul on 20/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "LocationViewController.h"
#import "MapViewAnnotation.h"

@interface LocationViewController () <MKMapViewDelegate>

@property (nonatomic, weak) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;
@property (nonatomic, strong) NSString *annotationTitle;

@end
@implementation LocationViewController

- (void)setMapRegion
{
    // start off by default in San Francisco
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = self.latitude.doubleValue;
    newRegion.center.longitude = self.longitude.doubleValue;
    newRegion.span.latitudeDelta = 0.005;
    newRegion.span.longitudeDelta = 0.005;
    
    [self.mapView setRegion:newRegion animated:NO];
}

- (void)loadVenueLocation
{
    //Read locations details from plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"locations" ofType:@"plist"];
    NSDictionary *location = [NSDictionary dictionaryWithContentsOfFile:path];
    
    _latitude = [location objectForKey:@"latitude"];
    _longitude = [location objectForKey:@"longitude"];
    _annotationTitle = [location objectForKey:@"title"];
}

- (void)createAnnotation
{
    //Create coordinates from the latitude and longitude values
    CLLocationCoordinate2D coord;
    coord.latitude = self.latitude.doubleValue;
    coord.longitude = self.longitude.doubleValue;
    MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:self.annotationTitle AndCoordinate:coord];
        
    [self.mapView addAnnotation:annotation];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadVenueLocation];
    [self createAnnotation];
    [self setMapRegion];
}

@end
