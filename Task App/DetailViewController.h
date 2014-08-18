//
//  DetailViewController.h
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"
#import "Tasks.h"

@protocol DetailViewControllerDelegate <NSObject>

@required

- (void)didSaveTask:(Tasks *)task atIndexPath:(NSIndexPath *)indexPath;

@end
@interface DetailViewController : UIViewController <EditViewControllerDelegate>

@property (strong, nonatomic) id <DetailViewControllerDelegate> delegate;

@property (strong, nonatomic) Tasks *task;
@property (strong, nonatomic) NSIndexPath *taskIndexPath;

@property (strong, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateTextLabel;
@property (strong, nonatomic) IBOutlet UITextView *taskTextLabel;
@property (strong, nonatomic) IBOutlet UIButton *isCompletedOutlet;

- (IBAction)completedButtonPressed:(UIButton *)sender;

- (IBAction)editButtonPresse:(UIBarButtonItem *)sender;

@end
