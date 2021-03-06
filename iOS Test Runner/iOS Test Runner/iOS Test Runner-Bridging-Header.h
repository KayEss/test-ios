/**
    Copyright 2019, Felspar Co Ltd. <http://support.felspar.com/>
 
    Distributed under the Boost Software License, Version 1.0.
    See <http://www.boost.org/LICENSE_1_0.txt>
 */

#pragma once


#import <Foundation/Foundation.h>
#include "fost/swift/messaging.h"
#include "fost/swift/settings.h"


#ifdef __cplusplus
extern "C" {
#endif

    NSString * _Nonnull test_results();
    void run_tests();

#ifdef __cplusplus
}
#endif

