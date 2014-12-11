//
//  ViewController2.m
//  autolayout
//
//  Created by user on 14-12-4.
//  Copyright (c) 2014年 hello. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UIScrollView *myscrollView;
@property (weak, nonatomic) IBOutlet UIView *topNav;
@property (weak, nonatomic) IBOutlet UIView *photoView;

@end

@implementation ViewController2

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
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.myscrollView.pagingEnabled = YES;
    self.myscrollView.showsVerticalScrollIndicator = NO;
    //self.myscrollView.showsHorizontalScrollIndicator = NO;
    
   
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"self.topNav.frame:%@",NSStringFromCGRect(self.topNav.frame));
    NSLog(@"self.photoView.frame:%@",NSStringFromCGRect(self.photoView.frame));
    NSLog(@"self.myscrollView.frame:%@",NSStringFromCGRect(self.myscrollView.frame));
    
    CGSize newSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height);
    [self.myscrollView setContentSize:newSize];
    
    NSLog(@"self.myscrollView.frame:%@",NSStringFromCGRect(self.myscrollView.frame));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - scrollview


@end
