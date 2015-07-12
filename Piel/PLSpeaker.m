//
//  PLSpeaker.m
//  Piel
//
//  Created by  Raul on 30/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "PLSpeaker.h"

@implementation PLSpeaker

- (id)initWithSpeakerDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _company = [dictionary objectForKey:@"company"];
        _title = [dictionary objectForKey:@"title"];
        _speaker = [dictionary objectForKey:@"speaker"];
        _imageName = [dictionary objectForKey:@"imageName"];
        
    }
    return self;
}

@end
