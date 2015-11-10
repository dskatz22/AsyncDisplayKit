//
//  ImageCellNode.m
//  Sample
//
//  Created by Dan Katz on 11/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "ImageCellNode.h"

@interface ImageCellNode ()
{
  ASImageNode *_imageNode;
}

@end

@implementation ImageCellNode

  - (instancetype)init
  {
    if (!(self = [super init]))
      return nil;
    
    // create a text node
    _imageNode = [[ASImageNode alloc] init];
    _imageNode.image = [UIImage imageNamed:@"large_MonsterTaco"];
    
    [self addSubnode:_imageNode];
    
    return self;
  }

- (void)layout {
  _imageNode.frame = CGRectMake(0, 0, 200, 200);
}
  

- (CGSize)calculateSizeThatFits:(CGSize)constrainedSize {
    return CGSizeMake(200, 200);
}
@end
