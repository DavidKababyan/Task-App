//
//  EditViewController.m
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

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
    [super viewDidLoad];
    
    self.titleTextField.text = self.task.title;
    self.textView.text = self.task.task;
    self.datePicker.date = self.task.dueDate;
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender
{
    Tasks *editedTask = [[Tasks alloc] initWithTitle:self.titleTextField.text task:self.textView.text dueDate:self.datePicker.date isCompleted:self.task.isCompleted];
    
    [self.delegate didSaveTask:editedTask];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)dismissKeyboardButtonPressed:(UIButton *)sender
{
    [self.view endEditing:NO];
}
@end
