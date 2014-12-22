//
//  ViewController31.m
//  autolayout
//
//  Created by sq on 14/12/22.
//  Copyright (c) 2014年 hello. All rights reserved.
//

#import "ViewController31.h"

@interface ViewController31 ()
@property (weak, nonatomic) IBOutlet UIImageView *ava;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController31

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeText)];
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)changeText
{
    static int i = 0;
    
    NSString *nixString = @" I'm LOFTER.";
    
    if (i < nixString.length) {
        NSMutableString *string = [NSMutableString stringWithString:self.label.text];
        [string appendString:[nixString substringWithRange:NSMakeRange(i, 1)]];
        
        i += 1;
        
        self.label.text = string;
        
        self.label.backgroundColor = [UIColor lightGrayColor];
    }
}

@end
