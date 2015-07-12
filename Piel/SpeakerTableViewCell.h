//
//  SpeakerTableViewCell.h
//  Piel
//
//  Created by  Raul on 31/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeakerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *speakerTitle;
@property (weak, nonatomic) IBOutlet UILabel *company;
@property (weak, nonatomic) IBOutlet UIImageView *speakerImage;
@end
