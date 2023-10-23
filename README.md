## 合并音频视频文件

<!-- need download ffmpeg and add to path -->

需要下载ffmpeg并添加到系统path环境变量

powershell command 示例

```` 
main.ps1  -v "G:\Download\Media Source 提取示例 (1).mp4" -a "G:\Download\Media Source 提取示例.mp4"
````

<!-- if your can`t run ps1,you need set on powershell administrator -->
如果不能执行脚本，需要在管理员模式powershell执行以下命令
````
set-executionpolicy remotesigned
````


<!-- param -->
参数
````
-v //video input file 
-a //audio input file
-d //delete input file 可选
-out //out put filename 可选
````
