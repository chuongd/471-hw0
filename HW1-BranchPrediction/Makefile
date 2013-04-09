CXX=g++
CC=gcc
PIN_HOME = /cse/courses/cse471/13sp/PIN/PIN

OBJS = bp.o

DBG= -g -DVERBOSE
OPT= -O3

CXXFLAGS= -Wall -Wno-unknown-pragmas -Wno-deprecated $(DBG) $(OPT) -MMD

PIN_KIT=$(PIN_HOME)
KIT=1
include $(PIN_HOME)/source/tools/makefile.gnu.config
TARGET = bp
PLUGINS = LocalTwoLevelAdaptivePredictor.so TwoLevelAdaptivePredictor.so TwoBitSaturatingPredictor.so StaticPredictor.so

all: $(PLUGINS)
%.o : %.cpp
	$(CXX) -c  $(CXXFLAGS) $(PIN_CXXFLAGS) $(OPT) $(DBG) -o $@ $<

%.so : %.cpp Predictor.cpp
	$(CXX) -fPIC -shared $(CXXFLAGS) $(PIN_CXXFLAGS) $(OPT) $(DBG) -o $@ $^

clean:
	-rm -f *.so *.o bp *.tested *.failed *.d

-include *.d
