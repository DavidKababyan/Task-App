//
//  DetailViewController.m
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "DetailViewController.h"
#import "EditViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    
    //update UI
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy HH:mm"];
    
    NSString *dueDate = [dateFormatter stringFromDate:self.task.dueDate];
    self.titleTextLabel.text = self.task.title;
    self.taskTextLabel.text = self.task.task;
    self.dateTextLabel.text = dueDate;
    
    if ([self.task.isCompleted isEqualToString:@"YES"]) {
        NSLog(@"completed");
        self.isCompletedOutlet.titleLabel.text = @"Mark as incomplete";
    } else {
        self.isCompletedOutlet.titleLabel.text = @"Mark as complete";
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"to EditVC"]) {
        if ([segue.destinationViewController isKindOfClass:[EditViewController class]]) {
            
            EditViewController *editVC = segue.destinationViewController;
            editVC.delegate = self;
            
            editVC.task = self.task;
        }
    }
}

#pragma mark - ActionButtons

- (IBAction)completedButtonPressed:(UIButton *)sender
{
    if ([self.task.isCompleted isEqualToString:@"YES"]){
        self.task.isCompleted = @"NO";
    } else {
        self.task.isCompleted = @"YES";
    }
    
    [self.delegate didSaveTask:self.task atIndexPath:self.taskIndexPath];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)editButtonPresse:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"to EditVC" sender:sender];
}

#pragma mark - EditViewControllerDelegate methods

- (void)didSaveTask:(Tasks *)task
{
    NSLog(@"detailVC got the saved task %@", task);
    
    [self.delegate didSaveTask:task atIndexPath:self.taskIndexPath];
}
@end
