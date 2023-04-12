package org.sageit.bigdata

import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.types
import org.apache.spark.sql.{SparkSession, SaveMode}
object TextToParquet {
  def main(args: Array[String]): Unit = {
    println("hello world")

    val spark = SparkSession.builder().appName("TextToParquet").master("local").getOrCreate()
    val df = spark.read.csv("hdfs://cxln1.c.thelab-240901.internal:8020/user/bigdatacloudxlab14968/ssv20230314/train_NYCTF_dataset.csv")
    df.write.mode(SaveMode.Overwrite).parquet("hdfs://cxln1.c.thelab-240901.internal:8020/user/bigdatacloudxlab14968/ssv20230314/output_parquet")

    spark.stop()

  }
}

