#!/bin/sh

$HADOOP_HOME/bin/hadoop fs -mkdir /user/hive/tmp
$HADOOP_HOME/bin/hadoop fs -mkdir /user/hive/warehouse
$HADOOP_HOME/bin/hadoop fs -chmod g+w /user/hive/tmp
$HADOOP_HOME/bin/hadoop fs -chmod g+w /user/hive/warehouse

$HIVE_HOME/bin/schematool -initSchema -dbType mysql
$HIVE_HOME/bin/hiveserver2