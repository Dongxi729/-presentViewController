//
//  RedView.h
//  jhjjjj
//
//  Created by 郑东喜 on 16/10/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RedView : UIView<UITableViewDelegate,UITableViewDataSource>

/**
 dataSource
 */
@property (nonatomic,strong) NSMutableArray *array;

@end
