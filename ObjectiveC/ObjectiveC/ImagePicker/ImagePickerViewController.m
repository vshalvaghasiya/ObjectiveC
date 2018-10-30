//
//  ImagePickerViewController.m
//  ObjectiveC
//
//  Created by vishal on 19/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import "ImagePickerViewController.h"

@interface ImagePickerViewController ()

@end

@implementation ImagePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)backButtonCLick:(id)sender {
     [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)selectPhotosButtonClick:(UIButton *)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
//    picker.sourceType = UIImagePickerControllerSourceTypeCamera; // For camera use
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary; // For galary use
    
    [self presentViewController:picker animated:YES completion:nil];
    
}

//MARK: Imagepickerview Delegate Methods
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    _myImageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
