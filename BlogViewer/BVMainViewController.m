//
//  BVMainViewController.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/26/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVMainViewController.h"

@interface BVMainViewController ()

@property (nonatomic) UIScrollView *mainView;

@property (nonatomic) UIView *header;
@property (nonatomic) UILabel *content;
@property (nonatomic) UILabel *footer;

@end

@implementation BVMainViewController

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
    // Do any additional setup after loading the view.
}

-(void)viewDidLayoutSubviews
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
