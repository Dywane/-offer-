//
//  Stack.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (strong, nonatomic) NSMutableArray<NSNumber *> *stackArray;

@end

@implementation Stack

- (instancetype)init {
    if(self = [super init]) {
        _stackArray = [NSMutableArray array];
    }
    return self;
}

- (NSNumber *)pop {
    if([self isEmpty]) {
        return nil;
    }
    NSNumber *last = self.top;
    [_stackArray removeLastObject];
    return last;
}

- (void)push: (NSNumber *)value {
    [_stackArray addObject:value];
}

#pragma mark - setter getter
- (NSNumber *)top {
    return _stackArray.lastObject;
}

- (BOOL)isEmpty {
    return !_stackArray.count;
}


- (NSUInteger)stackLength {
    return  _stackArray.count;
}

@end
