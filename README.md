# DI4R 2016 - Visualising Operational Informatics Data Using R

----------------------------------------------------
Dr. Leslie McIntosh & Connie Zabarouskaya
Center for Biomedical Informatics
Washington University in St. Louis
----------------------------------------------------

R installable files

R Installer
For Windows:
R-3.3.1-win.exe
For Macs:
R-3.3.1.pkg
- R 3.3.1 binary for Mac OS X 10.9 (Mavericks) and higher, signed package. Contains R 3.3.1 framework, 
R.app GUI 1.68 in 64-bit for Intel Macs, Tcl/Tk 8.6.0 X11 libraries and Texinfo 5.2. 
The latter two components are optional and can be ommitted when choosing "custom install", 
it is only needed if you want to use the tcltk R package or build package documentation from sources.
Note: the use of X11 (including tcltk) requires XQuartz to be installed since it is no longer part of OS X. 
Always re-install XQuartz when upgrading your OS X to a new major version. 

RStudio Installer
For Windows:
RStudio-0.99.903.exe
For Macs:
RStudio-0.99.903.dmg
(RStudio 0.99.903 - Mac OS X 10.6+ (64-bit)) 

R Packages
If you are not able to install R packages using install.packages() command from R due to internet connection difficulties, 
you may try to use the following approach. We installed only the necessary R packages on a fresh R installation
and archived all the packages, including packages those depend on, into one zip file. You could try to unzip 
that archive into R library directory, where R would by default install packages. For example, a 
path to library for packages on R of version 3.3.1 on Windows:
C:\Users\Username\My Documents\R\win-library\3.3
If you don't have such a folder, unzip them into "library" folder inside directory where R is installed, e.g.:
C:\Program Files\R\R-3.3.1\library
The archive is called: R_3.3_DI4R_tutorial_packages.zip
This worked for a Windows machine, but we cannot guarantee this would work on a Mac.

We would like to thank developers of the following products for the opportunity to use their great tools: 
- RStudio team - Shiny and shinydashboard packages
- Ramnath Vaidyanathan - rCharts package  
- Simon Muller - BulletGraphSipemu.txt
- Hadley Wickham - plyr package

