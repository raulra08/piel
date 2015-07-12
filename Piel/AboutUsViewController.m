//
//  AboutUsViewController.m
//  Piel
//
//  Created by  Raul on 20/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "AboutUsViewController.h"
#import "MapViewAnnotation.h"

@interface AboutUsViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;
@property (nonatomic, strong) NSString *annotationTitle;


@end

@implementation AboutUsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.topItem.title = @"About Us";
    [self loadPielLocation];
    [self setMapRegion];
    [self createAnnotation];
}

- (IBAction)emailButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:pieluk@googlemail.com"]];

}

#pragma Map
- (void)setMapRegion
{
    // start off by default in San Francisco
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = self.latitude.doubleValue;
    newRegion.center.longitude = self.longitude.doubleValue;
    newRegion.span.latitudeDelta = 0.002;
    newRegion.span.longitudeDelta = 0.002;
    
    [self.mapView setRegion:newRegion animated:NO];
}

- (void)loadPielLocation
{
    
    _latitude = [NSNumber numberWithDouble:51.522037];
    _longitude = [NSNumber numberWithDouble:-0.090466];
    _annotationTitle = [NSString stringWithFormat:@"Cass Business School"];
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
@end
