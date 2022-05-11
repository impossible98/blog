---
title: "FFmpeg 视频转码"
date: 2022-05-11T14:50:01+08:00
draft: false
---

## 视频转码

输出单视频流单音频流

```bash
ffmpeg -i input.mkv -map 0:0 -map 0:1 -vcodec copy -acodec copy -map_chapters -1 -map_metadata -1 -metadata:s:a:0 language=eng out.mkv
```

- `-i`： 输入文件
- `-map 0:0`： 输入文件中的第 1 个流
- `-map 0:1`： 输入文件中的第 2 个流
- `-vcodec copy`： 拷贝选择的视频流
- `-acodec copy`： 拷贝选择的音频流
- `-map_chapters -1`： 输出文件中的字幕流
- `-map_metadata -1`： 删除文件中的元数据流
- `-metadata:s:a:0 language=eng`： 输出文件中的音频流的语言为英语
- `out.mkv`： 输出文件

输出字幕

```bash
ffmpeg -i input.mkv -map 0:2 ouput.srt
```

- `-i`： 输入文件
- `-map 0:2`： 输入文件中的第 3 个流
- `ouput.srt`： 输出文件
