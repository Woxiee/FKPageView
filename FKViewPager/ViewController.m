//
//  ViewController.m
//  FKViewPager
//
//  Created by Faker on 15/11/30.
//  Copyright © 2015年 Faker. All rights reserved.
//

#import "ViewController.h"
#import "FKPageView.h"
@interface ViewController ()

@end

@implementation ViewController
{
    FKPageView *pageView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 自定义视图
     */
    UIView *view = [[UIView alloc] init];
    
    /**
     * 标题
     */
    NSArray *titleArray = [[NSArray alloc] initWithObjects:@"title1",@"title2",@"title3" ,nil];
    
    
    NSArray *views = [[NSArray alloc] initWithObjects:
                      view,
                      view,
                      view, nil];
    
    //初始化视图
    pageView = [[FKPageView alloc] initWithFrame:self.view.bounds titles:titleArray views:views];
    pageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:pageView];
    
    //选择回调
    [pageView didSelectedBlock:^(id viewPager, NSInteger index) {
        
        switch (index) {
            case 0:
            {
                NSLog(@"点击第一个菜单");
            }
                break;
            case 1:
            {
                NSLog(@"点击第二个菜单");
            }
                break;
            case 2:
            {
                NSLog(@"点击第三个菜单");
            }
                break;
                
            default:
                break;
        }

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
