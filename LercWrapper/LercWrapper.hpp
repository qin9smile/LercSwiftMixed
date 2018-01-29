//
//  LercWrapper.hpp
//  LercSwiftMixed
//
//  Created by charlotte on 2018/1/29.
//  Copyright © 2018年 gago. All rights reserved.
//

#ifndef LercWrapper_hpp
#define LercWrapper_hpp

#include <stdio.h>
#include "Lerc_c_api.h"
class LercWrapper
{
  lerc_status status;
  int width;
  int height;
public:
  unsigned char* lerc_getBlobInfo_wrapper ();
};

#endif /* LercWrapper_hpp */
