//
//  MGTCustomDrawingViewController.m
//  Design Presentation
//
//  Created by Charles Berlin on 3/9/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTCustomDrawingViewController.h"
#import "PageControl.h"
#import "MGTCircle.h"

@interface MGTCustomDrawingViewController ()

@end

@implementation MGTCustomDrawingViewController

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
    
    self.title = @"Custom Drawing";
	MGTCircle *circle = [[MGTCircle alloc] init];
    circle.frame = CGRectMake((self.view.frame.size.width - 100) / 2, (self.view.frame.size.height - 100) / 2, 100, 100);
    
    [self.view addSubview:circle];
    
    
    PageControl *pageControl = [[PageControl alloc] initWithFrame:CGRectMake(0, 140, 320, 20)];
    pageControl.numberOfPages = 5;
    pageControl.currentPage = 0;
    
    [self.view addSubview:pageControl];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
