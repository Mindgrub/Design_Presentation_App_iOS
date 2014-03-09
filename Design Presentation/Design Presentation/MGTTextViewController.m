//
//  MGTTextViewController.m
//  Design Presentation
//
//  Created by Charles Berlin on 3/9/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTTextViewController.h"

@interface MGTTextViewController ()

@property (weak, nonatomic) IBOutlet UILabel *simpleShadow;
@property (weak, nonatomic) IBOutlet UILabel *softShadow;
@property (weak, nonatomic) IBOutlet UILabel *softShadowBelow;
@property (weak, nonatomic) IBOutlet UILabel *engravedShadow;
@property (weak, nonatomic) IBOutlet UILabel *glowingText;
@property (weak, nonatomic) IBOutlet UILabel *etherealText;
@property (weak, nonatomic) IBOutlet UILabel *spookyText;

@property (weak, nonatomic) IBOutlet UILabel *cafetaText;
@property (weak, nonatomic) IBOutlet UILabel *defaultText;
@property (weak, nonatomic) IBOutlet UILabel *myriadText;
@property (weak, nonatomic) IBOutlet UILabel *enigmaText;


@end

@implementation MGTTextViewController

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
    
    self.title = @"Text/Fonts";
    
    self.cafetaText.font = [UIFont dh_CafetaFontOfSize:17.0];
    self.myriadText.font = [UIFont dh_MyriadFontOfSize:17.0];
    self.enigmaText.font = [UIFont dh_EnigmaFontOfSize:17.0];
    
    self.simpleShadow.layer.shadowColor = [UIColor grayColor].CGColor;
    self.simpleShadow.layer.shadowOffset = CGSizeMake(3, 3);
    self.simpleShadow.layer.shadowRadius = 0.01;
    self.simpleShadow.layer.shadowOpacity = 1;
    self.simpleShadow.layer.masksToBounds = NO;
    
    self.softShadow.layer.shadowColor = [UIColor grayColor].CGColor;
    self.softShadow.layer.shadowOffset = CGSizeMake(3, 3);
    self.softShadow.layer.shadowRadius = 1.5;
    self.softShadow.layer.shadowOpacity = 1;
    self.softShadow.layer.masksToBounds = NO;
    
    self.softShadowBelow.layer.shadowColor = [UIColor grayColor].CGColor;
    self.softShadowBelow.layer.shadowOffset = CGSizeMake(3, -3);
    self.softShadowBelow.layer.shadowRadius = 1.5;
    self.softShadowBelow.layer.shadowOpacity = 1;
    self.softShadowBelow.layer.masksToBounds = NO;
    
    self.engravedShadow.backgroundColor = [UIColor grayColor];
    self.engravedShadow.shadowColor = [UIColor whiteColor];
    self.engravedShadow.shadowOffset = CGSizeMake(1, 1);
    
    self.glowingText.textColor = [UIColor yellowColor];
    self.glowingText.layer.shadowColor = [UIColor yellowColor].CGColor;
    self.glowingText.layer.shadowOffset = CGSizeMake(0, 0);
    self.glowingText.layer.shadowRadius = 3;
    self.glowingText.layer.shadowOpacity = 1;
    self.glowingText.layer.masksToBounds = NO;
    
    self.etherealText.layer.shadowColor = [UIColor whiteColor].CGColor;
    self.etherealText.layer.shadowOffset = CGSizeMake(0, 0);
    self.etherealText.layer.shadowRadius = 2;
    self.etherealText.layer.shadowOpacity = 1;
    self.etherealText.layer.masksToBounds = NO;
    
    self.spookyText.layer.shadowColor = [UIColor greenColor].CGColor;
    self.spookyText.layer.shadowOffset = CGSizeMake(0, 0);
    self.spookyText.layer.shadowRadius = 2;
    self.spookyText.layer.shadowOpacity = 1;
    self.spookyText.layer.masksToBounds = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
