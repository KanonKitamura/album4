//
//  ViewController.h
//  album4
//
//  Created by kanon kitamura on 2015/03/10.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *table;
    NSMutableArray *nameArray;
    NSMutableArray *jobArray;
    NSMutableArray *profileArray;
    NSMutableArray *imageArray;
}


@end

