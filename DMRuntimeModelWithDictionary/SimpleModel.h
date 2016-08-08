//
//  SimpleModel.h
//  DMRuntimeModelWithDictionary
//
//  Created by demin on 16/8/8.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+ModelWithDictionary.h"

@interface SimpleModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) NSDictionary *hobby;
@property (nonatomic, copy) NSString *lover;


@end
