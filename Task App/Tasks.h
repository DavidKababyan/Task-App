//
//  Tasks.h
//  Task App
//
//  Created by David Kababyan on 8/12/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tasks : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *task;
@property (nonatomic, strong) NSDate *dueDate;
@property (nonatomic, strong) NSString *isCompleted;

- (id)initWithTitle:(NSString *)title task:(NSString *)task dueDate:(NSDate *)dueDate isCompleted:(NSString *)isCompleted;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
