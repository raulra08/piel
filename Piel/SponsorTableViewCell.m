//
//  SponsorTableViewCell.m
//  Piel
//
//  Created by  Raul on 04/04/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "SponsorTableViewCell.h"

@interface SponsorTableViewCell ()
{
    
}
@end

@implementation SponsorTableViewCell
@synthesize sponsorImage = _sponsorImage;
@synthesize sponsorName = _sponsorName;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
