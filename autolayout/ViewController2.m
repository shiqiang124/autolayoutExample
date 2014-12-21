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

@property (weak, nonatomic) IBOutlet UIView *scrollContentView;


- (IBAction)clickMove:(id)sender;

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
    self.myscrollView.showsHorizontalScrollIndicator = YES;

    
    

    self.scrollContentView.layer.borderColor = UIColor.blackColor.CGColor;
    self.scrollContentView.layer.borderWidth = 2;

    /*
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.scrollContentView attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual toItem:self.myscrollView
                                 attribute:NSLayoutAttributeWidth multiplier:2.0 constant:0.0];

    [self.myscrollView addConstraint:constraint];
    */
    //[self.myscrollView updateConstraints];
    //[self.view setNeedsLayout];
    //[self.view layoutIfNeeded];

    //NSLog(@"self.topNav.frame:%@",NSStringFromCGRect(self.topNav.frame));
    //NSLog(@"self.photoView.frame:%@",NSStringFromCGRect(self.photoView.frame));
    //NSLog(@"self.myscrollView.frame:%@",NSStringFromCGRect(self.myscrollView.frame));
    /*
    [self.view.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
        //WLog(@"h:%@",constraint.description);
        if ((constraint.firstItem == self.scrollContentView) && (constraint.firstAttribute == NSLayoutAttributeWidth)) {
            //WLog(@"=====:%@",constraint.description);
            constraint.constant = 2.0f;
        }
        
    }];
   */
    
    
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


- (IBAction)clickMove:(id)sender {
    
    [self.view.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
        //WLog(@"h:%@",constraint.description);
        if ((constraint.firstItem == self.myscrollView) && (constraint.constant == 61.f)) {
            //WLog(@"=====:%@",constraint.description);
            constraint.constant = 128.0f;
        }else if((constraint.firstItem == self.myscrollView) && (constraint.constant == 128.f)){
            constraint.constant = 61.0f;
        }
        
    }];
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
    
    
}
@end
