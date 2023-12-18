TOR_PATH=/home/yrb/mnt/anna/annas-archive-ia-2023-06_torrents/
SAVE_PATH=/home/yrb/mnt/anna/

port=50001
for torrent in $(cat 2.txt);
do
  echo "${TOR_PATH}/${torrent}"
  aria2c --listen-port=$port --dir=${SAVE_PATH} --seed-time=0 "${TOR_PATH}/${torrent}"
done