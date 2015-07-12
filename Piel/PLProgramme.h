//
//  PLProgramme.h
//  Piel
//
//  Created by  Raul on 21/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PLProgramme : NSObject
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSMutableArray *speakers;

-(id)initWithProgrammeDictionary:(NSDictionary*)dictionary;
@end
