//
//  ContentViewController.m
//  DemoFPPopover
//
//  Created by TopCoder on 5/12/14.
//  Copyright (c) 2014 TCer. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()
{
    NSMutableArray* numArray;
}
@end

@implementation ContentViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        //
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Row:Index";
    numArray = [[NSMutableArray alloc] initWithCapacity:100];
    for (int i = 1; i < 100; ++i) {
        [numArray addObject:[NSString stringWithFormat:@"Row:%d", i]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [numArray count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:NSStringFromClass([self class])];
    }
    
    cell.textLabel.text = [numArray objectAtIndex:[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.title = [numArray objectAtIndex:indexPath.row];
}

@end
