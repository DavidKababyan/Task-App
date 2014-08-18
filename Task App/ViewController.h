//
//  ViewController.h
//  Task App
//
//  Created by David Kababyan on 8/11/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewController.h"
#import "Tasks.h"
#import "DetailViewController.h"

@interface ViewController : UIViewController <UITabBarDelegate, UITableViewDataSource, AddItemViewControllerDelegate, DetailViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *editButton;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *overdueTasks;
@property (strong, nonatomic) NSMutableArray *completedTasks;
@property (strong, nonatomic) NSMutableArray *allTasks;
@property (strong, nonatomic) NSDate *today;


- (IBAction)addButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)editButtonPressed:(UIBarButtonItem *)sender;

@end
