//
//  MGTSatesDetailViewController.m
//  Design Presentation
//
//  Created by Kenny Roethel on 3/10/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTSatesDetailViewController.h"

@interface MGTSatesDetailViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonStanard;
@property (weak, nonatomic) IBOutlet UIButton *buttonCustom;

@end

@implementation MGTSatesDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Button States";
    
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonDefault"]
                                     forState:UIControlStateNormal];
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonSelected"]
                                     forState:UIControlStateSelected];
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonDisabled"]
                                 forState:UIControlStateSelected|UIControlStateDisabled];
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonSelected"]
                                 forState:UIControlStateSelected|UIControlStateHighlighted];
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonHighlighted"]
                                     forState:UIControlStateHighlighted];
    [self.buttonCustom setBackgroundImage:[UIImage imageNamed:@"StateButtonDisabled"]
                                 forState:UIControlStateDisabled];
    [self.buttonCustom setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
}

- (IBAction)standardEnabledStateChange:(UISwitch *)sender
{
    self.buttonStanard.enabled = sender.isOn;
}

- (IBAction)standardSelectedStateChange:(UISwitch *)sender
{
    self.buttonStanard.selected = sender.isOn;
}

- (IBAction)customEnabledStateChange:(UISwitch *)sender
{
    self.buttonCustom.enabled = sender.isOn;
}

- (IBAction)customSelectedStateChange:(UISwitch *)sender
{
    self.buttonCustom.selected = sender.isOn;
}

@end
