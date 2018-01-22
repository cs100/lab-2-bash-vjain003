#!/bin/sh

touch "$1".cc
touch "$1".hh

echo -e "#ifndef MyClass_hh
#define MyClass_hh

class MyClass
{
  public:
    MyClass();
    ~MyClass();

  private:
};
#endif" >> "$1".hh



echo -e "#include \“./MyClass.hh\”

MyClass::MyClass()
{}

MyClass::~MyClass()
{}" >> "$1".cc


