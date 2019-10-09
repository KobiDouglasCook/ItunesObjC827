//
//  ViewModel.m
//  ItunesObjc827
//
//  Created by mac on 10/7/19.
//  Copyright © 2019 mac. All rights reserved.
//

#import "ViewModel.h"
#import "ItuneService.h"

@implementation ViewModel


- (void)getAlbums:(NSString*) artistName {
    [ItuneService.sharedInstance getAlbumsFor:artistName completion:^(NSMutableArray<Album *> * _Nonnull albums) {
        __weak ViewModel * weakSelf; //[weak self] - capture list of weak self - Swift
        weakSelf.albums = albums;
        [NSNotificationCenter.defaultCenter postNotificationName:@"AlbumUpdate" object:nil];
        NSLog(@"Album Count: %lu", albums.count);
    }];
}


@end
