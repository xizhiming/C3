library("htmlwidgets")
library("devtools")
setwd("/Users/xibrook/R/R_package/")  
# create package using devtools
devtools::create("C3")  
# navigate to package dir
setwd("C3")

# create widget scaffolding
# Next, scaffoldWidget creates three more files being
# 1、an R file, see R/C3Gauge.R
# 2、a yaml file, see inst/htmlwidgets/C3Gauge.yaml
# 3、a JavaScript file, see inst/htmlwidgets/C3Gauge.js

#报错：Error in (function (name, version, src, meta = NULL, script = NULL, stylesheet = NULL,缺少参数"version",也没有缺省值
#原因：yaml文件内软件包的version信息遗漏未创建，标准格式如下：
# dependencies:
#   - name: d3
# version: 3.5.17
# src: htmlwidgets/lib/d3
# script: ./d3.min.js

htmlwidgets::scaffoldWidget("C3Gauge",'c3', edit = FALSE) 
# install package so we can test it
install()

# 第一次测试
devtools::install()
library(C3)
C3Gauge("hello,world")

#修改rendervalue后测试
devtools::install()                                      
library(C3)
C3Gauge(30)
