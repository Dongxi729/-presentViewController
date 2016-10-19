//
//  RedView.m
//  jhjjjj
//
//  Created by 郑东喜 on 16/10/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "RedView.h"


@implementation RedView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//    [self setBackgroundColor:[UIColor redColor]];
//}


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:[UIColor redColor]];
        
        [self setupTableView];
        [self array];
        NSLog(@"%s  %d  %@",__func__,__LINE__,_array);
    }
    return self;
}

#pragma mark - 懒加载
- (NSMutableArray *)array {
    if (!_array) {
        
        _array = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            [_array addObject:@(i)];
            NSLog(@"%s  %d  %zd",__func__,__LINE__,i);
        }
        
    }
    return _array;
}

#pragma mark - 添加表格
- (void)setupTableView {
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self addSubview:tableView];
}


#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellID"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row];
    
    return cell;
}


+(void)initialize {
    NSLog(@"%s  %d  ",__func__,__LINE__);
}

@end
