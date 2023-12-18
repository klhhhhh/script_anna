TOR_PATH=/home/yrb/mnt/anna/annas-archive-ia-2023-06_torrents
SAVE_PATH=/home/yrb/mnt/anna/test

port=50000
# for torrent in ${TOR_PATH}/*.torrent
# do
#   nohup aria2c --listen-port=$port --dir=${SAVE_PATH} --seed-time=0 "$torrent" &
#   port=$((port+1))
# done

for torrent in $(cat 1.txt);
do
  echo "${TOR_PATH}/${torrent}"
  # aria2c --listen-port=$port --dir=${SAVE_PATH} --seed-time=0 "${TOR_PATH}/${torrent}"
done