# selectTitle
可配置视图
由于项目经常用到  所以自己封装了一个可以配置的选择View  
初始方法如下:
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
