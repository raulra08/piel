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
    return 4;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SponsorTableViewCell *cell = (SponsorTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"sponsorCell"];
    
    NSString *imageName;
    NSString *labelName;
    
    switch (indexPath.row) {
        case 0:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"Center For Law"];
            labelName = [NSString stringWithFormat:@"Center For Law"];
            break;
        case 1:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"Environmental Jobs"];
            labelName = [NSString stringWithFormat:@"Environmental Jobs"];
            break;
        case 2:
            imageName = [NSString stringWithFormat:@"%@.jpg",@"City Law"];
            labelName = [NSString stringWithFormat:@"City Law"];
            break;
        case 3:
            imageName = [NSString stringWithFormat:@"%@.png",@"School of Law"];
            labelName = [NSString stringWithFormat:@"School of Law"];
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

