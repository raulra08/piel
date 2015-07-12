//
//  SpeakerTableViewCell.m
//  Piel
//
//  Created by  Raul on 31/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "SpeakerTableViewCell.h"

@interface SpeakerTableViewCell ()

@end

@implementation SpeakerTableViewCell
@synthesize name = _name;
@synthesize speakerTitle = _speakerTitle;
@synthesize company = _company;
@synthesize speakerImage = _speakerImage;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
