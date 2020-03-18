# EEC201 Final Project: Speaker Recognition System
**Winter 2020 By Chen Lu and Rongfei Li**

## Ojectives ##
Our main goal is to build an automatic speaker recognition system with MATLAB as well as a graphical user interface (GUI) for the program. On top of that, to carry out exhaustive expreriments to test and analyze the performance of the speaker recognition system.
## Overview ##
Speaker recognition is the process of automatically recognizing the speaker based on the information included in speech waves. Speaker recognition can be further classified into identification and verification. Speaker identification is the process of distinguishing the speaker on the basis of registered voice. Speaker verification, on the other hand, is the process of accepting or rejecting the identity claim of a speaker...

**To read our full project report, please click [here](Project_Report.pdf).**

**To open GUI, open 'Project_New/GUI/interface.m'.**

**To test on noise analysis, type in matlab command window:** 
```
codebooks = train('D:\MATLAB\EEC201\project_new\training data',11); 
```
and 
```
test('D:\MATLAB\EEC201\project_new\training data',11,codebooks,noise_level);
```

Note: the first entry of train and test function are dir of testing data and training data stored on the computer. argument :`noise_level`is the noise level (a number between 0 and 1) you want to add to the voice signal. for more information, please check the report.
