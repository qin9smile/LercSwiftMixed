//
//  LercWrapper.m
//  LercSwiftMixed
//
//  Created by charlotte on 2018/1/29.
//  Copyright © 2018年 gago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "LercWrapper.h"

@implementation LercWrapper : NSObject {

}
- (NSImage*)lerc_decode_wrapper:(int)width height:(int)height {
  NSImage* image = [NSImage alloc];
  image.size = NSMakeSize(width, height);
  return image;
}
@end
