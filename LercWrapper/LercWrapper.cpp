//
//  LercWrapper.cpp
//  LercSwiftMixed
//
//  Created by charlotte on 2018/1/29.
//  Copyright © 2018年 gago. All rights reserved.
//

#include "LercWrapper.hpp"
#include <iostream>
#include <stdio.h>
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cmath>
#include <vector>
#include <unistd.h>
#include "Lerc_c_api.h"
using namespace std;

unsigned char* lerc_getBlobInfo_wrapper()
{
  return new unsigned char[4 * 2048 * 2048];
}
