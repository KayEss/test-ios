/**
    Copyright 2019, Felspar Co Ltd. <http://support.felspar.com/>

    Distributed under the Boost Software License, Version 1.0.
    See <http://www.boost.org/LICENSE_1_0.txt>
 */


#import <Foundation/Foundation.h>
#include <fost/core>


namespace {
    const fostlib::setting<bool> c_verbose(
            "native-lib.cpp",
            "Tests", "Display test names", true);

    fostlib::string g_results = "No tests have run yet\nPress the 'Run' button...";

}

extern "C" NSString * _Nonnull test_results() {
    return [NSString stringWithUTF8String:g_results.c_str()];
}


/**
    The following work around a link problem with Boost filesystem
    for iOS.
 */


#include <dirent.h>


extern "C" {


    DIR *opendir$INODE64(char *dirname) {
        return opendir(dirname);
    }

    struct dirent * readdir$INODE64(DIR *dirp) {
        return readdir(dirp);
    }
    
    
    int readdir_r$INODE64(DIR *dirp, struct dirent *entry, struct dirent **result) {
        return readdir_r(dirp, entry, result);
    }

    
}
