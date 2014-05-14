//
//  HomeViewController.m
//  DemoFPPopover
//
//  Created by TopCoder on 5/12/14.
//  Copyright (c) 2014 TCer. All rights reserved.
//

#import "HomeViewController.h"
#import "ContentViewController.h"
#import "ContentTableViewController.h"

@interface HomeViewController ()
{
    BOOL btnStatusOK;
}
@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    btnStatusOK = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popupBtnClicked:(id)sender
{
    if (btnStatusOK) {
        //self.popupBtn.titleLabel.text = @"Popover";
        [self.popupBtn setTitle:@"Popover" forState:UIControlStateNormal];
        CGRect frame = self.popupBtn.frame;
        frame.origin.x = (CGFloat)(rand()%(int)self.popupBtn.superview.frame.size.width);
        frame.origin.y = (CGFloat)(rand()%(int)self.popupBtn.superview.frame.size.height);
        //[self.popupBtn removeFromSuperview];
        self.popupBtn.frame = frame;
        //[self.contentView addSubview:self.popupBtn];
        
    } else {
        ContentTableViewController* contentVC = [[ContentTableViewController alloc] initWithStyle:UITableViewStylePlain];
        FPPopoverController* popover = [[FPPopoverController alloc] initWithViewController:contentVC
                                                                                  delegate:self];
        popover.contentSize = CGSizeMake(200, 300);
        [popover presentPopoverFromView:self.popupBtn];
        [self.popupBtn setTitle:@"OK" forState:UIControlStateNormal];
    }
    
    btnStatusOK = !btnStatusOK;
}

- (void)popoverControllerDidDismissPopover:(FPPopoverController *)popoverController
{
    [self.popupBtn setTitle:@"Popover" forState:UIControlStateNormal];
}

@end
