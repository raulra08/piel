//
//  ProgrammeViewController.m
//  Piel
//
//  Created by  Raul on 20/03/2015.
//  Copyright (c) 2015 PIEL. All rights reserved.
//

#import "ProgrammeViewController.h"
#import "PLProgramme.h"
#import "ProgrammeCell.h"
#import "SpeakerViewController.h"

@interface ProgrammeViewController()

@property (nonatomic, strong) PLProgramme *selectedProgramme;
@property (nonatomic, strong) NSMutableArray *tableData;

@end

@implementation ProgrammeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadProgrammeData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:NO];
    self.navigationController.navigationBar.topItem.title = @"Programme";
}

- (void)loadProgrammeData
{
    _tableData = [[NSMutableArray alloc] init];
    
    //Read locations details from plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"programme" ofType:@"plist"];
    NSMutableArray *programmeArray = [NSMutableArray arrayWithContentsOfFile:path];
    
    for (NSDictionary *event in programmeArray) {
        [self.tableData addObject:[[PLProgramme alloc] initWithProgrammeDictionary:event]];
    }
}

- (BOOL)isEventWithSpeakers:(PLProgramme*)current
{
    if ([[current speakers] count] == 0) {
        return NO;
    }
    return YES;
}

#pragma TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PLProgramme *currentProgramme = [self.tableData objectAtIndex:indexPath.row];
    
    ProgrammeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"programmeCell"];
    
    NSString *label = [NSString stringWithFormat:@"%@  %@",[currentProgramme time],[currentProgramme title]];
    cell.textLabel.text = label;
    
    if ([self isEventWithSpeakers:currentProgramme]) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PLProgramme *currentProgramme = [self.tableData objectAtIndex:indexPath.row];
    
    if ([self isEventWithSpeakers:currentProgramme]) {
        SpeakerViewController *speakerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SpeakerVC"];
        
        speakerViewController.viewTitle = [currentProgramme title];
        speakerViewController.speakersArray = [currentProgramme speakers];
        
        [[self navigationController] pushViewController:speakerViewController animated:YES];
    }

}

@end
