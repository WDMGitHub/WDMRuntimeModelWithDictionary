//
//  NSObject+ModelWithDictionary.h
//  DMRuntimeModelWithDictionary
//
//  Created by demin on 16/8/8.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (ModelWithDictionary)

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
