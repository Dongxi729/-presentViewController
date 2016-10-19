//
//  ViewController.m
//  jhjjjj
//
//  Created by 郑东喜 on 16/10/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "ViewController.h"
#import "KGModal.h"
#import "RedView.h"
#import "ViewController77.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RedView *testView = [[RedView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:testView];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    NSArray* nibView = [[NSBundle mainBundle] loadNibNamed:@"RedView" owner:nil options:nil];
//    RedView *testView = [nibView firstObject];
    RedView *testView = [[RedView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 20, [UIScreen mainScreen].bounds.size.width - 20)];
//    [testView setBackgroundColor:[UIColor blueColor]];
    [[KGModal sharedInstance] showWithContentView:testView andAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
