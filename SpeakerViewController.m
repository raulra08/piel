//
//  SpeakerViewController.m
//  Piel
//
//  Created by  Raul on 30/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "SpeakerViewController.h"
#import "SpeakerTableViewCell.h"
#import "PLSpeaker.h"

@interface SpeakerViewController ()

@end

@implementation SpeakerViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //self.navigationItem.title = (self.viewTitle) ? self.viewTitle:@"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.speakersArray count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SpeakerTableViewCell *cell = (SpeakerTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"speakerCell"];
    
    PLSpeaker *speaker = (PLSpeaker*)[self.speakersArray objectAtIndex:indexPath.row];
    
    cell.name.text = speaker.speaker;
    cell.speakerTitle.text = speaker.title;
    cell.company.text = speaker.company;
    
    if (speaker.imageName) {
        NSString *imageName = [NSString stringWithFormat:@"%@.png",speaker.imageName];
        cell.speakerImage.image = [UIImage imageNamed:imageName];
    }
    
    
    return cell;
}


@end
