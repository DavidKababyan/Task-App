//
//  EditViewController.h
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tasks.h"

@protocol EditViewControllerDelegate <NSObject>

@required
- (void)didSaveTask:(Tasks *)task;

@end
@interface EditViewController : UIViewController

@property (strong, nonatomic) id <EditViewControllerDelegate> delegate;

@property (strong, nonatomic) Tasks *task;

@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)dismissKeyboardButtonPressed:(UIButton *)sender;

@end
