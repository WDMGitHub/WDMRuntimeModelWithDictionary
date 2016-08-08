//
//  ViewController.m
//  DMRuntimeModelWithDictionary
//
//  Created by demin on 16/8/8.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import "ViewController.h"
#import "SimpleModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dic = @{@"name":@"路飞",@"sex":@"男",@"age":@15,@"hobby":@{@"sleep":@"睡觉",@"eat":@"吃"}};
    SimpleModel *model = [SimpleModel modelWithDict:dic];
    NSLog(@"\n姓名:%@\n性别:%@\n年龄:%ld\n爱好:%@\n爱人:%@", model.name,model.sex,model.age,model.hobby,model.lover);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
