//
//  MGTColorViewController.m
//  Design Presentation
//
//  Created by Charles Berlin on 3/9/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTColorViewController.h"
#import "UIColor+DesignHandoff.h"

@interface MGTColorViewController ()

@end

@implementation MGTColorViewController

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
    
    self.title = @"Colors";
	
    self.orangeLabel.textColor = [UIColor customOrangeColor];
    self.redLabel.textColor = [UIColor customRedColor];
    self.greenLabel.textColor = [UIColor customGreenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
