//
//  AddItemViewController.h
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tasks.h"

@protocol AddItemViewControllerDelegate <NSObject>

@required
- (void)didCancel;
- (void)didAddTask:(Tasks *)task;

@end

@interface AddItemViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id <AddItemViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;


- (IBAction)dimissKeyboard:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)saveButtonPressed:(UIButton *)sender;
@end
