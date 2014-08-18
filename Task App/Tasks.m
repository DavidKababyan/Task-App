//
//  Tasks.m
//  Task App
//
//  Created by David Kababyan on 8/12/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "Tasks.h"

@implementation Tasks

- (id)init
{
    self = [self initWithTitle:nil task:nil dueDate:nil isCompleted:nil];
    
    return self;
}

//designated initializer
-(id)initWithTitle:(NSString *)title task:(NSString *)task dueDate:(NSDate *)dueDate isCompleted:(NSString *)isCompleted
{
    self = [super init];
    
    self.title = title;
    self.task = task;
    self.dueDate = dueDate;
    self.isCompleted = isCompleted;
    
    return self;
    
}

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [self initWithTitle:dictionary[TITLE] task:dictionary[TASK] dueDate:dictionary[DUE_DATE] isCompleted:dictionary[IS_COMPLETED]];
    
    return self;
}



@end
