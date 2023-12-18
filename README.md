以script_1.sh为示例
```
TOR_PATH=/home/yrb/mnt/anna/annas-archive-ia-2023-06_torrents/
SAVE_PATH=/home/yrb/mnt/anna/

port=50000
for torrent in $(cat 1.txt);
do
  echo "${TOR_PATH}/${torrent}"
  aria2c --listen-port=$port --dir=${SAVE_PATH} --seed-time=0 "${TOR_PATH}/${torrent}"
done
```
TOR_PATH表示种子文件所在的路径，SAVE_PATH表示下载的文件所存储的路径
1.txt中包含了一个脚本所需要负责下载的种子文件对应的名称，64个文件在6核cpu的机器上下载一共开启6个进程，
所以需要对应在脚本目录下根据六个脚本开启六个terminal运行并下载数据即可。
