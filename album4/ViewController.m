//
//  ViewController.m
//  album4
//
//  Created by kanon kitamura on 2015/03/10.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    table.delegate=self;
    table.dataSource=self;
    
    nameArray = [[NSMutableArray alloc]initWithObjects:@"りん",@"しほ",@"かのん",@"ぞの",@"みずき",@"さと",@"えりか",nil];
    
    jobArray = [[NSMutableArray alloc]initWithObjects:@"中学生",@"中学生",@"中学生",@"中学生",@"中学生",@"中学生",@"中学生",nil];
    
    profileArray=[[NSMutableArray alloc]initWithObjects:@"げんき",@"もっとげんき",@"花粉症",@"おごそか",@"努力家(会いたい)", @"やかましい",@"マイペース",nil];
    
    imageArray=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"りん.png"], [UIImage imageNamed:@"しほ.jpeg"],[UIImage imageNamed:@"かのん.png"],[UIImage imageNamed:@"ぞの.png"],[UIImage imageNamed:@"みずき.png"],[UIImage imageNamed:@"さと.png"],[UIImage imageNamed:@"プリン.png"],nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - テーブルビュー(データソースメソッド)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [nameArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
     if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text=[nameArray objectAtIndex:indexPath.row];
    cell.imageView.image=[imageArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[jobArray objectAtIndex:indexPath.row];
    
    return cell;
   
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *talentName=[nameArray objectAtIndex:indexPath.row];
    NSString *profile=[profileArray objectAtIndex:indexPath.row];
    NSString *job=[jobArray objectAtIndex:indexPath.row];
    NSString *image=[imageArray objectAtIndex:indexPath.row];
    
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:talentName message:profile delegate:self cancelButtonTitle:@"わかったわかった" otherButtonTitles:nil, nil];
    [alertView show];
}



@end
