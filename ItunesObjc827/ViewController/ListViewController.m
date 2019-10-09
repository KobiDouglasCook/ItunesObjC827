//
//  ListViewController.m
//  ItunesObjc827
//
//  Created by mac on 10/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

#import "ListViewController.h"
#import "AlbumTableCell.h"

@interface ListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *listTableView;


@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupList];
}

-(void)setupList {
    
    [NSNotificationCenter.defaultCenter addObserverForName:@"AlbumUpdate" object:nil queue: NSOperationQueue.mainQueue usingBlock:^(NSNotification * _Nonnull note) {
        [self.listTableView reloadData];
    }];
    
    
}


//MARK: List TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.albums.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AlbumTableCell* cell = [tableView dequeueReusableCellWithIdentifier: [AlbumTableCell identifier]  forIndexPath:indexPath]; //let cell = tableView.dequeReusableCell(with identifier: indexPath: ) as! AlbumTableCell
    
    Album * album = self.viewModel.albums[indexPath.row];
    [cell configureWith:album];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}

@end
