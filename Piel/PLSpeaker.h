//
//  PLSpeaker.h
//  Piel
//
//  Created by  Raul on 30/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PLSpeaker : NSObject
@property (nonatomic, strong) NSString *company;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *speaker;
@property (nonatomic, strong) NSString *imageName;

-(id)initWithSpeakerDictionary:(NSDictionary*)dictionary;
@end
