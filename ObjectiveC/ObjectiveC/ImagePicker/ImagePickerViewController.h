//
//  ImagePickerViewController.h
//  ObjectiveC
//
//  Created by vishal on 19/01/18.
//  Copyright © 2018 vishalvaghasiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImagePickerViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

- (IBAction)backButtonCLick:(id)sender;
- (IBAction)selectPhotosButtonClick:(UIButton *)sender;

@end
