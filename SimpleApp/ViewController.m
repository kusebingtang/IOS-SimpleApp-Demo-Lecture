//
//  ViewController.m
//  SimpleApp
//
//  Created by bin jiang on 2019/4/25.
//  Copyright © 2019 bin jiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view, typically from a nib.
    UILabel* label = [[UILabel alloc]init];
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    label.text=@"hello world";
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    [label sizeToFit];
    //让静态文本的大小自适应内容
    label.center =self.view.center;
    //让静态文本居于整个视图的中央
    [self.view addSubview:label];
    //将静态文本添加到主视图中
    
    UIView* redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100,100,100,100);
    [self.view addSubview:redView];
    
    UITapGestureRecognizer* gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureRecognizerPushController)];
    [redView addGestureRecognizer:(gestureRecognizer)];

}

-(void)gestureRecognizerPushController {
    UIViewController* viewControllerPush = [[UIViewController alloc] init];
    viewControllerPush.view.backgroundColor= [UIColor whiteColor];
    viewControllerPush.navigationItem.title=@"内容";
    viewControllerPush.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"右导航" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemAction)];
    
    [self.navigationController pushViewController:viewControllerPush animated:YES];
    
}

-(void)rightBarButtonItemAction
{
    NSLog(@"999999888");
}

@end
