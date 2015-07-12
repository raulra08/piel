//
//  MapViewAnnotation.m
//  Piel
//
//  Created by  Raul on 29/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if (self)
    {
        _title = title;
        _coordinate = coordinate;
    }
    return self;
}

@end
