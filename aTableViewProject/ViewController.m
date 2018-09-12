//
//  ViewController.m
//  aTableViewProject
//
//  Created by lab on 9/12/18.
//  Copyright © 2018 Mushfiqur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSArray *tableData;
//    NSArray *imageData;
    NSArray *imageData;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableData = [NSArray arrayWithObjects:@"Bangladesh",@"Nepal", nil];
    //    tableData = [NSArray arrayWithObjects:@"Vutan",@"Maldiv",@"Srilanka",@"China",@"Japan",@"Australia",@"Brazil",@"Arjentina",@"Colombia",@"Namibia",@"Russia",@"Mynmar",@"South Africa",@"Malaysia",@"Canada",@"Pakistan",@"Poland", nil];
    
//    imageData = [NSArray arrayWithObjects:@"Bangladesh_Map",@"Nepal", nil];
    
    imageData = [NSArray arrayWithObjects:@"Bangladesh_Map",@"Nepal", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text =[tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];
    
    return cell;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    static NSString *simpleTableIdentifier = @"SimpleTableItem";
//
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//
//    if(cell == nil){
//
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//    }
//    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
//    cell.imageView.image =[UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];
    
//    return cell;
//}

@end
