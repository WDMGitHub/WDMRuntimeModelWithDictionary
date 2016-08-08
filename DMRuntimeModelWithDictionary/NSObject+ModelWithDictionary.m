//
//  NSObject+ModelWithDictionary.m
//  DMRuntimeModelWithDictionary
//
//  Created by demin on 16/8/8.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import "NSObject+ModelWithDictionary.h"

@implementation NSObject (ModelWithDictionary)

+ (NSArray *)propertList {
    unsigned int count = 0;
    //获取模型属性，返回值是所有属性的数组 objc_property_t
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    NSMutableArray *arr = [NSMutableArray array];
    NSLog(@"属性列表的个数 %d",count);
    //遍历数组
    for (int i = 0; i < count; i++) {
        //获取属性
        objc_property_t property = propertyList[i];
        //获取属性名称
        const char *cName = property_getName(property);
        NSString *name = [[NSString alloc] initWithUTF8String:cName];
        //添加到数组中
        [arr addObject:name];
    }
    //释放属性组
    free(propertyList);
    return arr.copy;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    //遍历属性数组
    for (NSString *property in [self propertList]) {
        //判断字典中是否包含这个key
        if (dict[property]) {
            //使用KVC赋值
            [obj setValue:dict[property] forKey:property];
        }
    }
    return obj;
}

@end
