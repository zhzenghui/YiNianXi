//
//  XXUtil.h
//  YiNianXi
//
//  Created by xy on 15/11/6.
//  Copyright © 2015年 xy. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct _util {
    BOOL (*isVerified)(void);
    BOOL (*isNeedSomething)(void);
    void (*resetPassword)(NSString *password);
}XXUtil_t ;

#define XXUtil ([_XXUtil sharedUtil])

@interface _XXUtil : NSObject

+ (XXUtil_t *)sharedUtil;
@end