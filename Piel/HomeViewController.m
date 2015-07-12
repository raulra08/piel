//
//  HomeViewController.m
//  Piel
//
//  Created by  Raul on 19/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bannerImage;


@end

@implementation HomeViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.topItem.title = @"Piel 9th Conference";
}

- (void)viewDidLoad
{
    double bannerWidth;
    
    bannerWidth = self.bannerImage.image.size.width;
}
@end
