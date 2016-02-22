#include <string>
#include <vector>
#include <iostream>
#include <cstdlib>

#import <Foundation/Foundation.h>

class Builder {

};

std::vector<std::string>installed_apps(void)
{
  std::vector<std::string> apps_installed;
  return apps_installed;
}

//Get iOS 9.0 to stop bothering you for an upgrade
int main(int argc, char **argv, char **envp)
{
  // NSMutableArray *wrapped_args = [[NSMutableArray alloc] init];
  // NSMutableArray *wrapped_env = [[NSMutableArray alloc] init];

  // for (int i = 0; i < argc; i++){
  //   [wrapped_args addObject:[NSString stringWithUTF8String:argv[i]]];
  // }

  // for (int i = 0; envp[i] != NULL; i++) {
  //   NSLog(@"Env: %s\n", envp[i]);
  // }

  for (auto &app : installed_apps()) {
    std::cout << app;
  }
  // std::cout << "Edgar, try this" << std::endl;
  return 0;
}
