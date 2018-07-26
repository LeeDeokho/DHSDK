//
//  NEClass.m
//  DHSDK
//
//  Created by NHNEnt on 2018. 6. 29..
//  Copyright © 2018년 NHNEnt. All rights reserved.
//

#import "NEClass.h"

@implementation NEClass

+ (instancetype)sharedInstance {
    static NEClass *instance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [[super alloc] init];
        instance.stringValue = @"";
        
    });
    
    return instance;
}

@end
