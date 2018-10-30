//
//  MyViewViewController.m
//  ObjectiveC
//
//  Created by vishal on 31/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "MyViewViewController.h"

@interface MyViewViewController ()

@end

@implementation MyViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString = @"https://stackoverflow.com/users/5146460/vishal-vaghasiya";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_myWeb loadRequest:urlRequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonCLick:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

@end
