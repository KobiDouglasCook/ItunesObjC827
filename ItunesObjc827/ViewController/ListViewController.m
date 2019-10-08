//
//  ListViewController.m
//  ItunesObjc827
//
//  Created by mac on 10/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

#import "ListViewController.h"
#import "AlbumTableCell.h"
#import "ViewModel.h"

@interface ListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *listTableView;
@property (strong, nonatomic) ViewModel * viewModel;


@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self.listTableView setBackgroundColor: UIColor.blueColor];
}


//MARK: List TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AlbumTableCell* cell = [tableView dequeueReusableCellWithIdentifier: [AlbumTableCell identifier]  forIndexPath:indexPath]; //let cell = tableView.dequeReusableCell(with identifier: indexPath: ) as! AlbumTableCell
    
    //TODO: Configure TableCell
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}

@end
