//
//  HomeViewController.h
//  DemoFPPopover
//
//  Created by TopCoder on 5/12/14.
//  Copyright (c) 2014 TCer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *popupBtn;

- (IBAction)popupBtnClicked:(id)sender;
@end
