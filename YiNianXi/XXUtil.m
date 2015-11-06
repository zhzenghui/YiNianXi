//
//  XXUtil.m
//  YiNianXi
//
//  Created by xy on 15/11/6.
//  Copyright © 2015年 xy. All rights reserved.
//
//XXUtil.m
#import "XXUtil.h"

static BOOL _isVerified(void)
{
    //bala bala ...
    return YES;
}

static BOOL _isNeedSomething(void)
{
    //bala bala ...
    return YES;
}

static void _resetPassword(NSString *password)
{
    //bala bala ...
}

static XXUtil_t * util = NULL;
@implementation _XXUtil

+(XXUtil_t *)sharedUtil
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        util = malloc(sizeof(XXUtil_t));
        util->isVerified = _isVerified;
        util->isNeedSomething = _isNeedSomething;
        util->resetPassword = _resetPassword;
    });
    return util;
}

+ (void)destroy
{
    util ? free(util): 0;
    util = NULL;
}
@end



