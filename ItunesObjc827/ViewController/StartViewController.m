//
//  ViewController.m
//  ItunesObjc827
//
//  Created by mac on 10/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@property (weak, nonatomic) IBOutlet UIView *listContainer;
@property (weak, nonatomic) IBOutlet UIView *gridContainer;

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)switchButtonTapped:(id)sender {
    [self.listContainer setHidden: ![self.listContainer isHidden]];
    [self.gridContainer setHidden: ![self.gridContainer isHidden]];
}




@end
