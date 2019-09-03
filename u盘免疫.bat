@echo off
title 帅哥的免疫批处理只给女神

if exist autorun.inf (
   echo=
   echo 　有疑似病毒文件存在！！！
   echo 　请保存重要文件，格式化u盘，再次运行免疫程序！
   echo= 
   echo 　未完成U免疫！按任意键退出~
   echo 　By 赵湘民
   pause>nul
   exit
)

md autorun.inf
attrib autorun.inf +s +h +r
cd autorun.inf
md 防病毒文件不要删除...\

rem 该语句指定文件夹拒绝一个不存在的用户‘ruery’访问，引起系统错误，谁都无法访问 
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md $RECYCLE.BIN.exe
attrib $RECYCLE.BIN.exe +s +h +r
cd $RECYCLE.BIN.exe
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md Desktop.ini
attrib Desktop.ini +s +h +r
cd Desktop.ini
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md Folder.htt
attrib Folder.htt +s +h +r
cd Folder.htt
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md recycled
attrib recycled +s +h +r
cd recycled
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md recycled.exe
attrib recycled.exe +s +h +r
cd recycled.exe
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md RECYCLER
attrib RECYCLER +s +h +r
cd RECYCLER
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul

cd  \
md RECYCLER.exe
attrib RECYCLER.exe +s +h +r
cd RECYCLER.exe
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery>nul
pause

if 1=0(
pause
echo 注释开始
rem 不对System Volume Information文件夹进行处理
cd  \
if not exist "System Volume Information" (
   md "System Volume Information"
   attrib "System Volume Information" +s +h +r
)

rem 允许任何人访问System Volume Information文件夹
cacls "System Volume Information" /e /c /g Everyone:F

cd System Volume Information
md 防病毒文件不要删除...\
cacls 防病毒文件不要删除...\ /t /e /c /d ruery

rem  撤销任何人访问文件夹的权限
cacls "System Volume Information" /e /c /r Everyone

rem 修改文件夹图标
set dir=D:\123abc
set ico=C:\my.ico
(echo [.ShellClassInfo]
echo IconResource=%ico%)>"%dir%\desktop.ini"
attrib +s +h "%dir%\desktop.ini"
attrib +s "%dir%"
echo 注释
pause
)

echo U免疫完成！按任意键退出~
echo By 赵湘民
pause>nul

rem 此句话用来删除免疫程序
del %0