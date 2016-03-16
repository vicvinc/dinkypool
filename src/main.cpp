#include <iostream>
#include <string>
#include "DinkyPool.hxx"

int main(int argc, const char *argv[])
{
  if(argc == 0){
    std::cout << "no argc" << std::endl;
  }
  if(argv == NULL){
    std::cout << "no argv" << std::endl;
  }
  std::cout << "env ok" << std::endl;
  resip::DinkyPool<2968> mPool;
  size_t sPool = sizeof(mPool);
  void *iptr = mPool.allocate(sizeof(int)*4);
  std::cout << "size of void*: " << sizeof(void *) << std::endl;
  std::cout << "size of iptr*: " << sizeof(iptr) << std::endl;
  std::cout << "size of DinkyPool 2968: " << sPool << std::endl;
#ifdef __cplusplus
  std::cout << "__cplusplus: " << __cplusplus << std::endl;
#endif
  return 0;
}
