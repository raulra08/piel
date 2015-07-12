//
//  PLProgramme.m
//  Piel
//
//  Created by  Raul on 21/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "PLProgramme.h"
#import "PLSpeaker.h"

@implementation PLProgramme

- (id)initWithProgrammeDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _time = [dictionary objectForKey:@"time"];
        _title = [dictionary objectForKey:@"title"];
        _speakers = [[NSMutableArray alloc] init];
        
        NSArray *speakers = [dictionary objectForKey:@"speakers"];

        if (speakers) {
            for (NSDictionary *speaker in speakers) {
                [self.speakers addObject:[[PLSpeaker alloc]initWithSpeakerDictionary:speaker]];
            }
        }
    }
    return self;
}
@end
