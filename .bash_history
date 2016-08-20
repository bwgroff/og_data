#1471563241
cd /etc/mysql/
#1471563242
l
#1471563245
v my.cnf 
#1471563861
l
#1471563863
dc
#1471563864
cd
#1471563889
cd /etc/mysql/
#1471563890
l
#1471563892
v my.cnf 
#1471563904
sudo v my.cnf 
#1471563908
sudo vim my.cnf 
#1471563939
sudo vim my.cnf 
#1471564330
l
#1471564332
sudo vim my.cnf 
#1471564364
sudo service mysql stop
#1471564369
sudo service mysql start
#1471564382
sudo service mysql start
#1471564387
sudo vim my.cnf 
#1471564399
sudo service mysql start
#1471564426
history
#1471564880
cd
#1471566097
cd /etc/init.d/
#1471566098
l
#1471566116
cd ../
#1471566117
l
#1471566120
cd rc1.d/
#1471566121
l
#1471566154
sudo service mysql status
#1471566163
cd /vagrant/
#1471566163
l
#1471566166
cd workspace/
#1471566166
l
#1471566168
cd data/
#1471566168
l
#1471566173
db
#1471566182
history
#1471566231
db CREATE DATABASE og;
#1471566239
db
#1471566251
db og < etl.sql 
#1471566264
db og < etl.sql 
#1471566418
db "drop database og;"
#1471566421
db "drop database og"
#1471566424
db
#1471566515
db "CREATE DATABASE og"
#1471566534
echo "CREATE DATABASE og" | db
#1471568788
cd workspace/
#1471568789
l
#1471568792
cd data/
#1471568792
l
#1471568803
less event_type.csv 
#1471570680
wc subscription_subscription.csv 
#1471571173
db
#1471571241
l
#1471571246
head event_log.csv | vime
#1471571249
head event_log.csv | vim
#1471571254
l
#1471571256
l
#1471571258
rm .swp 
#1471571704
l
#1471571710
vim event_type.csv 
#1471571746
file event_type.csv 
#1471571752
file event_log.csv 
#1471571759
file order_item.csv 
#1471572668
l
#1471572672
head event_log.csv 
#1471572800
head -n 20 event_log.csv 
#1471572810
man head
#1471572919
less event_log.csv 
#1471573076
l
#1471573076
..
#1471573077
notebook
#1471573271
l
#1471573276
cd data
#1471573276
l
#1471573289
head event_log.csv event_log_short.csv
#1471573294
head event_log.csv >> event_log_short.csv
#1471573299
v event_log_short.csv 
#1471573388
v event_log_short.csv 
#1471573537
head event_log.csv >> event_log_short.csv
#1471573540
v event_log_short.csv 
#1471573554
rm event_log_short.csv 
#1471573556
head event_log.csv >> event_log_short.csv
#1471573557
v event_log_short.csv 
#1471574819
l
#1471575157
head -n 300 event_log.csv 
#1471575165
head -n 300 event_log_nulls.csv.csv 
#1471575168
head -n 300 event_log_nulls.csv
#1471575355
head -n 500 event_log_nulls.csv
#1471575700
history
#1471601665
l
#1471601685
mkdir null_corrected
#1471601694
l *nulls.csv
#1471601701
mv *nulls.csv null_corrected/
#1471601702
l
#1471601708
mv *.csv raw/
#1471601709
l
#1471601712
cat checktr 
#1471601715
rm checktr 
#1471601717
l raw/
#1471601720
l
#1471601734
history
#1471601743
l
#1471601745
cd null_corrected/
#1471601749
wc ./
#1471601751
wc ./*
#1471602660
history
#1471602663
history | grep grep
#1471602689
head event_log_nulls.csv | grep ^\"[0-9]
#1471602693
head event_log_nulls.csv | grep -i ^\"[0-9]
#1471602696
head event_log_nulls.csv | grep -v ^\"[0-9]
#1471602710
grep ^\"[0-9] event_log_nulls.csv | wc
#1471610603
l
#1471610608
head -n 300 event_log_nulls.csv 
#1471610677
grep '<style type=\"\"text\/css\"\">' event_log_nulls.csv 
#1471610687
grep '<style type=\"\"text\/css\"\">' event_log_nulls.csv | wc
#1471610770
history
#1471610855
grep ^\"[0-9]{8,} event_log_nulls.csv | wc
#1471610934
grep -e '^\"[0-9]{8,}' event_log_nulls.csv | wc
#1471610957
grep -e '^\"[0-9]{8,12}' event_log_nulls.csv | wc
#1471610979
grep -E '^\"[0-9]{8,12}' event_log_nulls.csv | wc
#1471611084
grep -E -v '^\"[0-9]{8,12}' event_log_nulls.csv > mismatches
#1471611128
wc mismatches 
#1471611131
less mismatches 
#1471611304
rm mismatches 
#1471620081
l
#1471620081
..
#1471620083
l
#1471620093
v journey.sql
#1471620098
l
#1471620174
db og < journey.sql 
#1471620711
db og < journeydump.sql 
#1471620746
l
#1471620753
l
#1471620755
l ..
#1471620757
l
#1471620758
..
#1471620759
tree
#1471620797
db og < journeydump.sql 
#1471620800
l
#1471620804
cd data/
#1471620804
l
#1471620807
l raw/
#1471620812
find journey
#1471620815
find journey*
#1471620821
db og < journeydump.sql 
#1471620867
sudo db og < journeydump.sql 
#1471620872
type db
#1471620888
sudo mysql -u root --password=password og < journeydump.sql 
#1471620896
sudo aa-status
#1471620950
touch journey.csv
#1471620962
chmod 777 journey.csv 
#1471620967
db og < journeydump.sql 
#1471620975
pwd
#1471620998
db og < journeydump.sql 
#1471621015
l
#1471621109
db og < journeydump.sql 
#1471621151
cd /var/lib/mysql/
#1471621152
l
#1471621155
l og/
#1471621158
l mysql
#1471621161
tree
#1471621164
find
#1471621168
find | grep jou
#1471621173
sudo find | grep jou
#1471621180
sudo cd og
#1471621188
pwd
#1471621196
cd /vagrant/workspace/data/
#1471621216
sudo mv /var/lib/mysql/og/journey.csv ./journey.csv
#1471621219
l
#1471621225
head journey.csv 
#1471621234
less journey.csv
#1471621269
history
#1471621274
db og < journeydump.sql 
#1471621283
sudo mv /var/lib/mysql/og/journey.csv ./journey.csv
#1471621292
l
#1471621296
head journey.csv 
#1471621376
db og < journeydump.sql 
#1471621385
sudo mv /var/lib/mysql/og/journey.csv ./journey.csv
#1471621390
head journey.csv 
#1471621437
db og < journey.sql 
#1471621465
db og < journeydump.sql 
#1471621472
sudo mv /var/lib/mysql/og/journey.csv ./journey.csv
#1471621476
head journey.csv 
#1471621482
wc journey.csv
#1471621549
l
#1471621565
ps aux | jup
#1471621587
ps aux | grep jup
#1471621604
l
#1471621605
..
#1471621605
l
#1471621656
l
#1471621702
l data/
#1471622077
db og < journeydump.sql 
#1471622081
cd data/
#1471622082
db og < journeydump.sql 
#1471622092
sudo mv /var/lib/mysql/og/journey.csv ./journey.csv
#1471622094
l
#1471624741
..
#1471624743
gst
#1471624744
..
#1471628309
cd workspace/data/
#1471628309
l
#1471628315
head event_group_names.csv 
#1471628324
rm event_group_names.csv 
#1471628332
head event_type_groupings.csv 
#1471628335
rm event_type_groupings.csv 
#1471628336
l
#1471628356
l
#1471628357
..
#1471628358
l
#1471628360
rm -rf untitled\ folder/
#1471629166
cd data/
#1471629166
l
#1471629168
wc graph.json 
#1471629174
less graph.json 
#1471629191
wc graph.json 
#1471629194
less graph.json 
#1471629214
cp graph.json ../visapp/graph.json
#1471630194
l ..
#1471630214
l
#1471630219
cp graph.json ../visapp/graph.json 
#1471630636
cp graph.json ../visapp/graph.json 
#1471630661
cp graph.json ../visapp/graph.json 
#1471630719
cp graph.json ../visapp/graph.json 
#1471630743
cp graph.json ../visapp/graph.json 
#1471696492
cp graph.json ../visapp/graph.json 
#1471696514
cp graph.json ../visapp/graph.json 
#1471696873
cp graph.json ../visapp/graph.json 
#1471697098
cp graph.json ../visapp/graph.json 
#1471697115
cp graph.json ../visapp/graph.json 
#1471697212
cp graph.json ../visapp/graph.json 
#1471697305
l ../visapp/
#1471697314
time
#1471697316
date
#1471697685
cp graph.json ../visapp/graph.json 
#1471697748
wc graph.json 
#1471698265
ps aux | grep jup
#1471698269
jobs
#1471698279
kill 16824
#1471698283
kill 16791
#1471698288
l
#1471699176
cd workspace/
#1471699176
l
#1471699180
alias
#1471699196
jup --no-browser --ip-0.0.0.0
#1471699201
jup --no-browser --ip-0.0.0.0
#1471699215
alias
#1471699255
jupyter notebook --no-browser --ip=0.0.0.0
