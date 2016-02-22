#include <string>

#import <Foundation/Foundation.h>

class Builder {

};


int main(int argc, char **argv, char **envp)
{
  NSMutableArray *wrapped_args = [[NSMutableArray alloc] init];
  // NSMutableArray *wrapped_env = [[NSMutableArray alloc] init];

  for (int i = 0; i < argc; i++){
    [wrapped_args addObject:[NSString stringWithUTF8String:argv[i]]];
  }

  // auto foo = "Hello World";
  std::string foo = "Hello";
  NSLog(@"%s", foo.c_str());
  // NSLog(@"%@", wrapped_args);
  return 0;
}
