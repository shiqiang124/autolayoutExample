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

@property (strong, nonatomic) UIView *scrollContentView;//作为myscrollView的childView

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
    self.myscrollView.showsHorizontalScrollIndicator = NO;
    //self.myscrollView.showsHorizontalScrollIndicator = NO;
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = UIColor.greenColor;
    view1.layer.borderColor = UIColor.blackColor.CGColor;
    view1.layer.borderWidth = 2;
    self.scrollContentView = view1;
    
    [self.myscrollView addSubview:self.scrollContentView];
    
    
    UIScrollView *superview = self.myscrollView;
    [self.scrollContentView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview);
        make.left.equalTo(superview);
        make.bottom.equalTo(superview);
        make.right.equalTo(superview);
        
        make.height.equalTo(superview);
        make.width.equalTo(self.view.frame.size.width * 2);
        
        
    }];
    

    NSLog(@"self.topNav.frame:%@",NSStringFromCGRect(self.topNav.frame));
    NSLog(@"self.photoView.frame:%@",NSStringFromCGRect(self.photoView.frame));
    NSLog(@"self.myscrollView.frame:%@",NSStringFromCGRect(self.myscrollView.frame));
    
   
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
     [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - scrollview


@end
