//
//  TapGestureViewController.m
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "TapGestureViewController.h"

@interface TapGestureViewController ()

@end

@implementation TapGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapGestureCall:(UITapGestureRecognizer *)sender {
    _gestureView.backgroundColor = [self randomColor];
}

- (IBAction)backButtonClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (UIColor *)randomColor
{
    
    CGFloat h = (arc4random() % 128 / 256.0) + 0.5;
    CGFloat s = (arc4random() % 128 / 256.0) + 0.5;
    CGFloat b = (arc4random() % 128 / 256.0) + 0.5;
    UIColor *color = [UIColor colorWithHue:h saturation:s brightness:b alpha:1.0f];
    
//    int red = arc4random() % 255 / 255.0;
//    int green = arc4random() % 255 / 255.0;
//    int blue = arc4random() % 255 / 255.0;
//    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    NSLog(@"%@", color);
    return color;
}

@end
