//
//  MGTStatesViewController.m
//  Design Presentation
//
//  Created by Charles Berlin on 3/9/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTStatesViewController.h"

typedef NS_ENUM(NSInteger, StatesSelectionStyle) {
    StatesSelectionStyleStandard,
    StatesSelectionStyleImage,
    StatesSelectionStyleColor
};

@interface MGTStatesViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (nonatomic) StatesSelectionStyle selectionStyle;

@end

@implementation MGTStatesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"States";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
   // [self configureSegmentControl];
}

- (void)configureSegmentControl
{
    UIImage *segmentSelected = [[UIImage imageNamed:@"tab_segment_selected"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 9, 15, 8)];
    UIImage *segmentDeselected = [[UIImage imageNamed:@"tab_deselected"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 12, 15, 11)];
    
    UIImage *segmentSelectedUnselected = [[UIImage imageNamed:@"tab_sel_desel"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 12, 15, 4)];
    UIImage *segmentUnselectedSelected = [[UIImage imageNamed:@"tab_desel_sel"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 12, 15, 4)];
    
    NSDictionary *selectedAttributes = @{NSForegroundColorAttributeName : [UIColor darkGrayColor]};
    NSDictionary *defaultAttributes = @{NSBaselineOffsetAttributeName : @(-1)};
    
    [self.segmentControl setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    [self.segmentControl setTitleTextAttributes:defaultAttributes forState:UIControlStateNormal];
    
    [self.segmentControl setBackgroundImage:segmentSelected forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [self.segmentControl setBackgroundImage:segmentDeselected forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [self.segmentControl setDividerImage:segmentSelectedUnselected forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self.segmentControl setDividerImage:segmentUnselectedSelected forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [self.segmentControl setDividerImage:segmentUnselectedSelected forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row # %d", indexPath.row];
    
    switch (self.selectionStyle)
    {
        case StatesSelectionStyleImage:
            cell.textLabel.highlightedTextColor = [UIColor whiteColor];
            cell.selectedBackgroundView = [self tileImageView];
            break;
        case StatesSelectionStyleColor:
            cell.textLabel.highlightedTextColor = [UIColor whiteColor];
            cell.selectedBackgroundView = [self colorView];
            break;
        default:
            cell.textLabel.highlightedTextColor = nil;
            cell.selectedBackgroundView = nil;
            break;
    }
    
    return cell;
}

- (UIView *)tileImageView
{
    UIImage *tile = [UIImage imageNamed:@"StateTileImage"];
    UIView *tileView = [[UIView alloc] init];
    tileView.backgroundColor = [UIColor colorWithPatternImage:tile];
    
    return tileView;
}

- (UIView *)colorView
{
    UIView *tileView = [[UIView alloc] init];
    tileView.backgroundColor = [UIColor redColor];
    
    return tileView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"state_details" sender:self];
}

- (IBAction)selectionStyleChanged:(UISegmentedControl *)sender
{
    self.selectionStyle = sender.selectedSegmentIndex;
    [self.tableView reloadData];
}

@end
