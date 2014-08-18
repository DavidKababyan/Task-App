//
//  AddItemViewController.m
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

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
}

#pragma  mark - Button actions

- (IBAction)dimissKeyboard:(UIButton *)sender
{
    [self.view endEditing:NO];
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

- (IBAction)saveButtonPressed:(UIButton *)sender
{
    [self.delegate didAddTask:[self makeTask]];
}

#pragma mark - helper Methods

- (Tasks *)makeTask
{
    Tasks *task = [[Tasks alloc] initWithTitle:self.titleTextField.text task:self.textView.text dueDate:self.datePicker.date isCompleted:@"NO"];
    
    return task;
}
@end
