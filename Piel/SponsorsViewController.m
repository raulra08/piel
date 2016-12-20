//
//  SponsorsViewController.m
//  Piel
//
//  Created by  Raul on 20/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "SponsorsViewController.h"
#import "SponsorTableViewCell.h"

@interface SponsorsViewController ()

@end

@implementation SponsorsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.topItem.title = @"Sponsors";
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SponsorTableViewCell *cell = (SponsorTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"sponsorCell"];
    
    NSString *imageName;
    NSString *labelName;
    
    switch (indexPath.row) {
        case 0:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"WWF"];
            labelName = [NSString stringWithFormat:@"WWF"];
            break;
        case 1:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"UKELA"];
            labelName = [NSString stringWithFormat:@"UKELA"];
            break;
        case 2:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"Friends of Earth"];
            labelName = [NSString stringWithFormat:@"Friends of Earth"];
            break;
        case 3:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"Center Law"];
            labelName = [NSString stringWithFormat:@"Center For Law"];
            break;
        case 4:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"Inner Temple"];
            labelName = [NSString stringWithFormat:@"The Inner Temple"];
            break;
        case 5:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"City Law"];
            labelName = [NSString stringWithFormat:@"City Law"];
            break;
        case 6:
            imageName = [NSString stringWithFormat:@"%@.png",@"School of Law"];
            labelName = [NSString stringWithFormat:@"School of Law"];
            break;
        case 7:
            imageName = [NSString stringWithFormat:@"%@.png",@"Francis Taylor"];
            labelName = [NSString stringWithFormat:@"Francis Taylor Building"];
            break;
        default:
            break;
    }
    
    if (imageName) {
        cell.sponsorImage.image = [UIImage imageNamed:imageName];
        cell.sponsorName.text = labelName;
    }

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end

