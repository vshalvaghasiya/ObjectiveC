//
//  PinchGestureViewController.m
//  ObjectiveC
//
//  Created by vishal on 20/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "PinchGestureViewController.h"

@interface PinchGestureViewController ()

@end

@implementation PinchGestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonClick:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)pinchGestureCall:(UIPinchGestureRecognizer *)sender {
    _gestureView.transform = CGAffineTransformScale(_gestureView.transform, sender.scale, sender.scale);
    sender.scale = 1.0;
}


@end
