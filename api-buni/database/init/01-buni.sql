-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2026-02-19 14:12:46',NULL),('diagnostics.include_raw','OFF','2026-02-19 14:12:46',NULL),('ps_thread_trx_info.max_length','65535','2026-02-19 14:12:46',NULL),('statement_performance_analyzer.limit','100','2026-02-19 14:12:46',NULL),('statement_performance_analyzer.view',NULL,'2026-02-19 14:12:46',NULL),('statement_truncate_len','64','2026-02-19 14:12:46',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on(((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`) and (`bl`.`ENGINE` = `w`.`ENGINE`)))) join `performance_schema`.`data_locks` `rl` on(((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`) and (`rl`.`ENGINE` = `w`.`ENGINE`)))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`columns`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`columns`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.3' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on(((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`) and (`bl`.`ENGINE` = `w`.`ENGINE`)))) join `performance_schema`.`data_locks` `rl` on(((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`) and (`rl`.`ENGINE` = `w`.`ENGINE`)))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-27 10:25:35
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: buni
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event_phases`
--

DROP TABLE IF EXISTS `event_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_phases` (
  `id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_phases_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_phases`
--

LOCK TABLES `event_phases` WRITE;
/*!40000 ALTER TABLE `event_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `organizador` varchar(255) NOT NULL,
  `scenery` json NOT NULL,
  `programs` json NOT NULL,
  `cupos` varchar(255) NOT NULL,
  `horarioInicio` datetime NOT NULL,
  `horarioFin` datetime NOT NULL,
  `state` varchar(255) NOT NULL,
  `formAssists` json NOT NULL,
  `formInscriptions` json NOT NULL,
  `assists` json NOT NULL,
  `inscriptions` json NOT NULL,
  `formConfig` json NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(100) DEFAULT 'Académico',
  `is_recurrent` tinyint(1) DEFAULT '0',
  `recurrence_config` json DEFAULT NULL,
  `organizer_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_events_organizer` (`organizer_id`),
  CONSTRAINT `fk_events_organizer` FOREIGN KEY (`organizer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculties` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(50) DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `fields` json NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES ('1d6a3889-216b-4165-91d3-81eda48d4fc5','Nuevo Formulario 2','Descripción del formulario','[]','1','2026-03-12 21:04:42'),('2c38c1a7-9a08-4bf4-ae5e-4519ddbbd0f1','Nuevo Formulario 4','Descripción del formulario','[]','1','2026-03-16 15:09:31'),('5d8b41c0-8852-42ae-9e1f-bd78d32f2ca1','Nuevo Formulario 7','Descripción del formulario','[]','1','2026-05-19 14:35:45'),('7f46ef28-cacf-421f-8c49-1d057f043652','formulario futbol11','Torneo uni sinu 2026 inscripcion ','[{\"id\": \"nombre y apellidos _1771946755631\", \"name\": \"nombre y apellidos \", \"type\": \"text\", \"section\": \"personal\", \"required\": true}, {\"id\": \"numero de telefono _1771946776627\", \"name\": \"Numero de telefono \", \"type\": \"number\", \"section\": \"personal\", \"required\": true}, {\"id\": \"documento de identidad _1771947716921\", \"name\": \"Documento de identidad \", \"type\": \"select\", \"options\": [\"CC.\", \"TI.\"], \"section\": \"personal\", \"required\": true}, {\"id\": \"numero de identificacion_1771947802357\", \"name\": \"numero de identificacion\", \"type\": \"number\", \"section\": \"personal\", \"required\": true}, {\"id\": \"codigo estudiantil _1771947855711\", \"name\": \"Codigo estudiantil \", \"type\": \"number\", \"section\": \"academic\", \"required\": true}]','1','2026-02-24 15:24:25'),('9624360a-74c3-441f-a105-1991ac979d41','Nuevo Formulario 3','Descripción del formulario','[]','1','2026-03-12 21:04:43'),('a63c6320-1fb5-47e9-90d7-9eb3529bea2e','Nuevo Formulario 5','Descripción del formulario','[]','1','2026-03-16 15:10:06'),('af5f693e-ec01-4c9d-87e7-73959bfd2ec2','asistencia ','Descripción del formulario','[{\"id\": \"nombre completo_1772119591584\", \"name\": \"Nombre completo\", \"type\": \"text\", \"section\": \"personal\", \"required\": true}, {\"id\": \"codigo estudiantil_1772119609130\", \"name\": \"codigo estudiantil\", \"type\": \"number\", \"section\": \"academic\", \"required\": true}]','1','2026-02-24 16:00:55'),('ba8d4cc2-0bf4-4959-9484-6f9b65c3599c','super soccer','Descripción del formulario','[{\"id\": \"super soccer_1773674294823\", \"name\": \"super soccer\", \"type\": \"number\", \"section\": \"academic\", \"required\": true}]','1','2026-03-16 15:17:49'),('d28c6d29-ed51-4051-b5c2-1947a2aab4f7','Nuevo Formulario 6','Descripción del formulario','[{\"id\": \"super soccer _1773674198585\", \"name\": \"super soccer \", \"type\": \"number\", \"section\": \"personal\", \"required\": false}]','1','2026-03-16 15:14:57'),('f33fff84-8c05-4e92-a5ba-f463f2232e44','Nuevo Formulario 1','Descripción del formulario','[]','1','2026-03-05 15:27:25');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_events`
--

DROP TABLE IF EXISTS `participant_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant_events` (
  `id` varchar(255) NOT NULL,
  `participant_id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `status` enum('inscrito','asistio','no_asistio','cancelo') DEFAULT 'inscrito',
  `registration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `attendance_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_participation` (`participant_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `participant_events_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participant_events_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_events`
--

LOCK TABLES `participant_events` WRITE;
/*!40000 ALTER TABLE `participant_events` DISABLE KEYS */;
INSERT INTO `participant_events` VALUES ('94dd829e-bf2e-4a5c-a67a-12281d230167','edc128cf-af67-4e7f-8bfe-e0c5a370529b','bdc456b6-5813-42d3-a01f-7f1e516e1b1b','asistio','2026-05-17 19:52:11','2026-06-01 14:15:00');
/*!40000 ALTER TABLE `participant_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_history`
--

DROP TABLE IF EXISTS `participant_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant_history` (
  `id` varchar(255) NOT NULL,
  `participant_id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `registered` tinyint(1) DEFAULT '1',
  `attended` tinyint(1) DEFAULT '0',
  `registration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `attendance_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_participant_event` (`participant_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `participant_history_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participant_history_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_history`
--

LOCK TABLES `participant_history` WRITE;
/*!40000 ALTER TABLE `participant_history` DISABLE KEYS */;
INSERT INTO `participant_history` VALUES ('0003b37a-911b-49f6-b830-e46777710775','b65fd6a2-d81b-40f3-b0f8-a76d3b124144','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0013ede2-3110-4fa5-a733-d08cedacbe6e','0de6a2d8-85f9-4670-8d16-01ce74a339c6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('00fcdeba-88e2-4c22-ac14-2d9447726729','b1500053-9e2c-41cf-8a3e-4be87e548c08','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('011ba737-191c-4e01-b1f5-0838001c553a','2da2a0cf-9e17-4115-84bd-d657b833e11c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('0131bc8a-4739-46d5-9994-c62e2ed7e696','f9e5f06c-a574-4ed9-80e4-a7fd132f33d4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('017c5584-c87d-4ff2-aa19-c2bf3f5e2931','3735b938-2262-4d91-ae82-46a31e94b94b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('01976fbb-1212-4b45-a255-d5483574cbcd','0441fe46-9884-4db9-b60a-38ad9fc17d32','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('01bd7d35-c94f-48ae-921c-dd803ca64291','0fcd9b59-d2b2-4243-abb5-8a61002efdc0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('01d5c395-91e5-4053-8934-cd9f7f37ef68','520b1e5d-61f7-4e8f-8a07-65f3134bb57c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('01f0b44e-7700-4a65-8ccf-d7eeb780a1ab','407c30d9-d7f7-4912-92d6-ea57b5df63e3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0235e207-caa5-4e63-b6e2-7b03716fe8fb','23a5c7e1-e29f-4b0f-973f-ea70a50adf81','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('02599722-64be-45ac-b3db-0c553711723b','3bc54e6d-e3ff-4cf5-aaa0-761e51290c95','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('02a7a8a9-eea0-4527-9b18-e832446de09c','99a24871-7913-44b2-9d5c-5012464ef437','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('02e44864-0a7b-430c-83dd-9cf484f9c446','a876e359-db81-4cbc-8c62-17aa23c1b2cb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('030a4228-8a9d-40fe-9d87-e4c961bdd8f7','f636e523-53a9-49d9-9cae-2682322414f5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('03321c91-e018-4350-ac7a-e8da04f71c39','edc2e383-9a75-4f49-b941-338281a28f0a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('035df549-8c33-46d5-9be6-bdd22a4f1420','ef2b30a0-49c7-4c6b-ba49-04cfd7b8f9a4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('03aa90fb-8e6d-4d68-a9c5-805148c7490f','c47dc920-36b9-4a6d-85ba-7bc5e03288a9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('041152e4-94ad-40b7-b1ea-e6d118a0047d','e2d66d80-0ce2-4c5c-a6dc-15f062720ada','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0428fa6f-bafe-48fd-8f40-5ecb789e4385','2c87c913-73a7-4b85-80e3-a920f0229038','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('043fa6e0-1d4b-4c0b-8856-082409daf3df','a5221f46-f447-4013-8e18-9c2a23d4cdda','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('044e1428-7968-46ad-adde-408721ae8233','dfdae273-1033-4625-a2c6-0194f1b20ee2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('049aa66e-0a27-461b-886b-42be68bf3851','10548788-b1f6-4b77-814f-93797ad6bf37','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('053556a4-9d81-4831-927b-f5d3bd6ace39','d85a7853-c79c-468d-bed8-3733b8eb3b71','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('058515dc-e47b-4636-bf30-f5cac9eb7f75','508f5dd0-f6ef-4d1b-8dc8-c03af2ba67cc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('0595d289-5c22-41b8-b081-5266247906f1','c2d28f9e-9a9f-4786-afce-a14348c66463','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('05e073a1-351f-4db0-90e2-2b55f148ffe8','0ed18585-388b-4071-94a4-1d3de77d2c30','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('0679cc4f-42ec-47bf-b26a-12d2279f0638','23b11917-3b9c-430c-ae96-c3cfc38130e7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('067cd753-c7f2-48a7-82a4-88473c8e0419','996f8602-9367-4f6e-bf90-b990a38851c3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('06826ac8-fb1d-44e8-a788-d56f91cacda0','706bb1a5-05b3-4aa2-a0ae-936c98702d3a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('069936c9-b87d-42ca-894d-b2f42c2ebfc6','369bbc0b-7f97-41ca-96d0-9b4bf4c01481','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('06a2fff4-12b4-4847-ab39-4b4f152bec43','c7b59b14-813a-49be-88b7-5cbc48f0fc2c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('06bc49a1-4f16-433e-b3de-14d4b218eb68','5be02fa0-d957-4078-b089-13d2c4c5058b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('06f707b3-a092-43bc-be2d-fa13e96fb384','1ea1bcb2-0900-45d1-9c6b-78c65c0ce26c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('07f73a94-a404-46e4-85ff-12aa8870d493','64465e91-25d5-4758-ba6a-85a192d2ad47','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('07fba108-4e05-4b32-81bf-349785ada3c6','24146166-17ff-4270-99b2-bc76d857e8db','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('08187877-72cb-4175-96c9-17a44e96347b','a1c22604-5654-43aa-bbce-c744e7202682','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('0853edd2-bfbe-4e13-a4fa-70d14c500261','f7ff7f97-f727-462b-9617-c1ec323f97d4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('089e1b77-7d1f-47aa-b595-ef74e4d5cca4','65a8f2ef-9bad-4fa4-9f46-a8736b96cfa4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('08ec5863-4199-4639-ba6c-94c26ad789d5','79af4e18-032f-4559-90fa-a1b195fc2d39','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('08f2fb06-87dd-41ac-baf7-3d7d4bfc1798','5031f67d-036b-437b-afe2-7fdaffe328f2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0913e5a2-564d-4ac0-9380-d37f44cac82b','35441813-0635-41bb-8fca-0495473c180f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('094a98a5-d27e-47ab-97e2-7aa130e0320f','a92276e5-f697-4c45-b057-2c96b8746fc6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('095f7892-a5cf-48c2-91b9-82eabf4038ef','63ed2e8f-832a-42ed-ad55-0740ebbd5976','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('097101fa-b219-4d78-b0bc-104a3e41cea4','2e1967fa-7a9a-4661-9a67-4ac84156a602','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('0971bf14-c930-47c9-a8b5-1250438ff493','71ff2248-8be7-42b5-9ab8-e3d063cd4161','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('09d8c813-de4f-4a9a-8150-54929f07c8a0','8743be71-0117-48f4-958d-e50de9d813c6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('09e3df9e-a685-402b-b404-a9150dab463d','7716d14c-e4d4-4223-b826-df65f224dd07','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('09e90c88-e1df-49e3-845f-9391acb4904e','8e8df2f9-1e7b-487f-a0a6-06fd84abafa1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0ab3828c-48d1-40d2-a717-5fe74027562d','6b786ee5-f458-4a7c-953f-b654c9c84043','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('0b195546-3c4d-427a-8593-5462f50c30d5','6b82507b-748e-42d2-bb29-96a6f46cb25f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0b3406ca-e755-4f92-b549-9acfece6e0fc','3668b11f-b6f9-4078-a493-7ac6d895eec9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0b7b3876-4ee7-409e-a0f5-4ee9e5ad0db5','01e195b4-5ae1-4f5c-b63f-919cd1c3d7e9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0b879a77-60d9-4421-9e9c-18e0e64d28ff','3650b59f-99ae-44f2-be57-6c876f356892','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0c044914-8b3a-494f-98ea-cd48dde36a6b','9fb210cb-9ad2-48c7-821c-7927e8cad06b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0cc67984-fdc5-4cf9-9d7e-2ff2e518ff98','81e98832-66b1-4ec3-9cf2-e478ebe4c272','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('0ccfe0f8-7a02-4e5d-9f45-33c8205fcee1','30019287-8cea-400d-9756-671bfa798292','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0d1f588e-962d-4b70-bebd-17a38a1b47b2','1a27742f-f8a6-404d-b050-30a5e19534dc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0d4d6d4c-1c36-4f2a-bb31-83f894a066fb','51186317-5033-4ea6-b32a-7aa4ddc36d19','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0d64c48f-b82e-4122-a6e1-787406070225','da26dbb9-c35e-41ff-bc7c-5e2233fe7c8e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0d720a5e-3f5a-4e52-88cf-c2ef96ceaeed','32a7cda3-dff9-40a1-8aac-3cacb8edbf04','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('0d8d206b-fac6-4ee4-97ec-41e995fdf1d5','a4feffd4-73db-4e76-a6c2-37f18ebf2fa3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('0e13fe81-8a94-4e9e-9f3a-4eb8ca8759d1','e57386f4-2191-4174-97c2-406ebe438442','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('0ea20523-e344-48c4-8624-c02d434a0132','e7eeba8a-8d48-4866-8538-5ac1320f63e3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0ebcfb62-a305-4fa7-aa19-679fe74c618b','f7fb8d17-0a74-415b-95ae-c8e492586ace','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('0ecc1f50-7aaa-472e-92e7-04ac432ee966','e5f0bea3-14bf-4d71-905b-e9090e348345','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('0f04f498-4919-4d83-8295-a791ffc08616','7e7c79f5-644e-4365-ade8-995f248fb8a0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('0f16cd1b-75ca-4a62-b72d-34319599be87','8b1b5e86-b05c-4145-8239-2bd927ebe673','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0f1f4c00-5d4e-4a20-afa3-b792a349bedd','75c4ea9b-5e91-49aa-863c-3c2c5f4c661b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0f231cfc-a317-46a1-86b5-03c7c781e1e8','a780b889-ac8e-42dc-a432-1966a65803fb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('0f9d644e-5173-4024-8f38-22297b089015','897d3ccd-cb51-4f97-b960-fc2452cfc8df','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('0fa858d7-5dbc-434c-8781-62bb11f9b07b','81b20aa3-a4e1-4c1d-928a-52300a32e3f7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1006bf25-42e9-4fcb-9680-f4811f5504b7','b3f4cca0-98ca-4e4b-bbec-1880d5f90950','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('103c6ea4-1fde-4c4a-94f9-38d39cb94d21','f78cf8ea-34ab-4321-9e68-5e37e865c75a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('106cebf2-b8c2-43c9-81a0-14ada67b1aa3','2ad8d114-f24c-4ad4-9357-3623e7b67408','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('10759737-5229-4a47-9963-174d44952252','60c0d11b-b9ef-4f56-b25d-fd5e15bbdd9d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1090f43a-190e-41a0-8b8d-483e14108177','2b131fca-3745-48a8-90a4-3703032b2316','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('10aaa670-b5f4-4556-89db-c4cd7b2c8411','b364b39c-a9b9-4686-8d88-074f34e6d5ed','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('113a0e22-a3cc-403c-be25-85062a5ecac0','363d64e7-42f7-4111-ae2f-a9b7759e8312','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('11649838-4dcf-4461-a34d-ce1d860321d1','3f49cd49-97eb-40e1-8369-fa9fb5240dcd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('117eab26-3ffd-4fb4-8b57-2371d8d62090','a4e04d14-e534-4a2b-b78d-a6e7888dfa64','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1272efd1-a2bc-4b72-afe6-e31422086fdb','b929fde6-6b31-4f8a-8c48-376a9869e1e2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('12c10652-0e37-4d94-afc3-563751fd8387','b4d88e70-f76c-4d13-b220-d4bcb6e70cfe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('134414aa-ec39-4bf2-8cdf-6d81b92481f6','b92ab81e-2d4f-48ec-8dc5-7fc9e13251ff','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('13987600-5916-40db-a740-0487b0a63177','019991e9-b0ea-4b8c-a012-20513af24b1c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('13a417ec-d034-4b3d-afef-f8375a746e81','2952910a-8478-457e-934d-172b3cc00639','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('13d8760c-1461-43f9-aee2-bc5b043c16a7','558ba6fe-8dfe-42b3-b100-383497b5dcf0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('13ebd6ed-a24a-4b8a-b7c8-e61d61d9e9f5','487060e6-d284-4f0b-a943-fdc8d442656b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('143c86bf-73ab-4cc4-bf99-5b704a577d48','3600997e-a6c8-4fd0-8d28-da035fba6ff7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('14cf30c9-bf28-4e1e-8250-3aee42f2e3f3','5176aa8c-973d-4350-a7dc-a83447c07414','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('1501e251-4d36-4891-80cb-1e17054f528c','bf5045a1-4333-4767-828e-6ff2684c19da','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('15159b4a-a906-424e-83de-afd84581d517','100312de-463d-451a-9472-c9e75ceb012e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('15a7b1e6-1809-45ff-8e12-274b5acc5f51','4d12b7dd-fe32-46e9-b6f4-fc8620fdb461','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('15d8c27d-5924-4288-a6a4-99ad9585196f','b8a9a1ea-c33a-4567-9105-6b9ca792d906','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('162f98e7-e4e2-4cd8-89a0-fe0efec2350f','35a40c77-d568-4a9f-9bfe-3b4f85d641d3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('163c7fb2-b92b-40ee-8fdc-98345e4b986d','344ecfd5-72b7-4c8e-86b3-62f76948537f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('16812790-2bc7-47e6-a415-8f1ec6c0faa0','93362edf-b71c-4ab6-9d68-4e121a130121','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('16906f09-1939-488c-b0d4-29b050b5c8f3','b9a8f627-73a0-429d-8934-f99e82cdc14b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('16e5e56e-c09e-4115-a4a2-4622b0fe141a','00adea1a-640e-4a7d-a543-0373b490b31a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('16ea5de5-9dfb-41f0-9a5c-a3a56934312d','c8a2200d-b178-493c-8225-ccfc241ae726','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('16fde139-7379-4d46-a29c-83445d3d8292','70bdcbe9-a7d0-401c-ae20-93bb32fe55ed','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('174aa463-085d-4fcf-a32c-24926af3bb1e','1512d85d-2afd-4a4b-9343-3b5af1459dbd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('177c5608-78be-49ac-8b2d-7d287e4fdfbb','40543b4e-6297-4c59-b3da-6db665d9349d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1819ff42-8eeb-4a49-be2f-7ea05b4995e7','dfe55dc7-1e73-45e6-b63e-25949b54573a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('18361639-8424-4ee8-b906-7fea5a7e4226','61f048e5-e293-48e7-aedf-5064f5fda01d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('18cbcd4a-da23-435b-84f8-c1c59876cf9e','a5f556c1-7e14-4b2f-b0fe-eb63b3da6423','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('18ee26d5-1164-4db7-a1a2-57686c59c5df','20b49b17-1461-434a-bc21-75d08bb7b2cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1900d19a-fe99-45d9-9c86-e9ec11958d8f','6ef1cad0-edd6-4208-ac51-82e55f196279','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1983770e-2d4d-45fe-a508-25cc07288546','44abacb2-7c23-4d4c-8a8e-1b65821b318e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('19908b5e-cf24-4e9b-ac84-145ba4335616','a9542126-4bfb-4115-aa17-0a8f4ae3c5a2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('19ca86ab-57e6-413e-9cbd-6dd8638a7e65','3c2591c7-c303-4c16-a312-80cda6100ba0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('19e943fc-157f-42e4-a5ef-ad9a81533230','0b7a65e0-0304-4692-872c-082a22434364','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('19f8f2dc-3b65-4de6-a93f-8a704039a4a6','d1b59f7a-66c3-492a-90a5-9c383630ab7e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('1a3aca4a-5064-438c-934f-62b3baf49f1f','905d07ae-30e0-4e39-8caa-b0c69b0fffc4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('1a51d771-12b5-4ae2-8fe0-06c7c414a151','062a650f-f92e-4f90-bd13-64560a1c40d7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1a8a5de9-26a9-423a-9e22-bc84c84d07be','ba000524-3ba1-4585-b10b-33d3e81b92bf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('1ad74e72-b2a8-4f42-a5b2-a37a8eb8ca13','588fd0ba-b053-4246-b757-641e9995a9c7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1b10e090-c21e-4d9c-9195-1cebb19b8cb1','fce0f390-de90-4876-8450-476e1cb058cd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1b801795-3c5d-4a9a-be7a-00e43cee4387','b42f76de-a399-493b-817a-b5e5777e5068','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('1bd53ff2-7d1c-4e08-84aa-1fac3d9a2e61','0f5649c9-aa3c-462d-a5a4-710a53980e1d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1be4fdcd-818f-425a-9d61-97485d851f3f','1a626d10-7b68-4b4b-9774-0a6c3d7dbd28','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('1c88e368-b4f4-4d4b-9b1e-10c21ea83121','b3e1bb32-9a92-468d-8d16-4d125fe19233','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1d03edd8-dec6-41a5-b287-17e8a5dd70c2','5a5f9632-1b2d-483e-bd99-2c0a56855742','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('1d0aa383-9ad5-4ef3-85f4-79d30723354d','3c9fec8b-12ee-4d6b-a43a-e7668a62389e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1d156a6e-bc92-47e4-baf9-558f8f6c8c27','44b09852-f866-4497-b500-3723a5e4a778','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('1d26f9a5-72d2-46e8-b657-edb5f8a5bbb4','2dfc3fef-e098-4413-a781-4dcfc1d2ff89','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('1da787d4-d3fb-4c07-a772-9fa30cd93b12','0f228510-254b-480a-ab7e-add6fa8d1578','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('1dbc4536-b8df-47f4-a063-0cbdc70615a4','2ef7dc63-ad1f-4062-9c90-73cef62c044d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1dda3cb8-0787-49ab-86df-129237fc2b4d','2671cae6-9185-4639-8055-f7a1e12e73cb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('1e4a127a-bcbe-46ec-bbb2-a2d8d273d784','1d6600e7-5675-48d2-af8e-acdd8f65958a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1e8fe1dd-1095-4ffd-9aae-0a64a644e83f','ee146dab-553c-4878-81e2-e4469f456559','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('1ea0d494-7064-4cce-8857-979fd82ae7c7','a1474d94-58c8-454c-8f95-cc43005adb73','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('1f184ece-6663-4673-9253-d5ccb6e38836','f37a9948-d56e-4199-9146-e432c700fb89','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('1f270be3-c30f-4cfd-9278-c8d2eb9f8cb9','e4d68d8c-6301-48f0-8070-39aee34548af','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1f43fb1e-2fe6-4091-85f6-918f8ff92085','a881fe91-3fba-4192-aaa4-31ed2984c66f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1f9e5011-4f39-4576-a2ec-e34965321ea4','ec1a8ff5-5bd9-4bf5-9f75-31ed77f3c4fc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1fadba84-4ca6-4318-a680-badb1f269b2d','d6ca5076-eee0-4b1a-8197-af920d4457d6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('1ffcca08-3bea-4694-8ee2-a5332d6fa490','146aeea0-37d2-40c0-8231-6c477f283b7c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('201dc909-b3ba-44d8-b088-39e6809e45ff','6637a8d9-aa17-45e0-ba0c-e1c34c605e3c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2030d6a1-c8f8-4f85-b16e-7f15300ab367','4f557022-5ffd-43c2-b060-7e6cf78ab969','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('20ab1481-d851-4967-9080-a4916237d23e','51e9efc3-cf5d-4646-a722-f7c77fde31ac','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2127c309-1dd0-4ba0-80f0-fd4a27c96cfa','a573e5dc-4ac1-4326-bf15-1753020162fe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('21eadfc1-2383-44cd-9dc1-5086c465d66e','0ef068fa-894b-428e-ac02-73e6bd8b6543','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('220f7617-06cf-4225-a061-f826a69bab67','e6f80242-7e24-4e9d-b5d3-bde502f2f773','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('222ac1fd-47fa-4cd5-a08d-82810d3bbec5','9db09eb5-921d-4632-b39f-3cd3326ccc80','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('22b3c513-5e34-4bfa-a1da-354e2da6aa5b','fb390bd6-b638-4c9c-97f4-28858bf7c095','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2310bdf9-afd8-4bc7-bcf8-1f3076efb995','e6ac09e5-abd9-488c-9d68-34a531ccad19','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('2318d483-b74d-4a07-8831-68320c96524b','2fed5333-e9b3-4703-8430-69101ccabc41','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('23e6b27f-1fb2-4554-9dc1-3aa40aa94a79','4d84d8b0-3f40-45de-abe4-0db6306a381a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('240bc414-66b4-4e8b-8754-aa81725f87b7','1995293c-f2df-43ac-b6d6-17f791ec72e0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('24677513-eeab-4bbd-b409-888a03dac388','f2e40846-773a-4393-befe-87e94d9158bf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('24703d2e-63ba-43bd-a257-dfc9dee29d4e','0718602b-2751-478d-9c7b-7a0e67bf9fd9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('24c4214a-e050-4a55-b1d4-415a04fe7afa','8a41fc04-960f-44d9-86f0-3c918e199f84','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('24f92256-324f-4210-ae02-3e34a2b24248','c5e5a839-f2e9-498f-9d5f-02d23ef59f1d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2539910e-d703-40d7-9a8a-27fbaf1f7fac','40d81f76-549c-4187-aa36-72bbf97c6c15','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('254f5aa6-6a2c-4b66-97f3-247d1477c430','2a197539-213a-4812-a6cd-5c0ab24c98bd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('256ba0c9-6121-44d9-a83a-ca38ac57eed4','28e9b74c-a5b5-4c7a-a0ce-3f4cce7d0f3a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('256db9be-236a-4093-81d0-cc4d2a1d76b9','7d397e10-8de6-400d-bcec-12362e8043be','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('259aa771-e2a5-442f-ab44-64ca79b7bac1','e6ef8163-3964-4677-894b-1c63fefc7f94','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('25ce9b54-0e70-42bf-981f-735c9da2bf64','240a83cc-1e4d-4481-add1-94d8e8cc1207','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('25f15a8e-11e0-47a0-b4cf-0144bf8fc504','9542e449-879d-40b6-b658-0fb8aadc40c0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('26048f62-6b5f-42d2-b687-66ae0a9add65','7eafe21a-ccf0-4779-bf91-4e552ce5a012','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2629300a-648c-48c7-9744-685d80487703','6ddea471-b96d-47e7-85c9-deb18d37b184','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('262f6209-2933-4d73-94df-13774a0fbc74','d4a72163-0da0-4d42-892f-c23839e18a48','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('263f6c04-d139-4cb0-bf48-5806255cbfbe','53dd2cff-67cf-405c-b4b4-4ebca41790b3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('27936408-cbbc-4834-a132-00bc09df5bd4','a6a9fba9-d1bf-4844-8f88-21703a661ad1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('27b1ea4d-9099-4548-bd61-3d4bfa411540','f15ced24-b393-44f2-97b1-4c8b986c7e7e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('27e71039-0d46-495d-b81c-fb354285db83','566ecc01-6950-4d05-8cde-1ddbd632a168','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('27f7ac54-a796-46cb-9728-c92aa3dab460','600ad362-1e6b-408a-86a1-31a09f605aab','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('28a5eae9-0bec-4362-88e9-71940c8cbcd5','5ba4bbff-0cc9-475c-aa67-d08d855ada1c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('28ceb348-cc5c-4f56-878d-ce2142aaa3e2','a98ab503-6cda-4726-bdf9-0aef271ed7fa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('296d97cb-9613-4af9-b59d-ac202fead07e','3b05a88f-680b-4ec5-adcf-b6cbc76e24cd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('298c3d7e-39fa-42f5-99b9-38932b9838b2','475207e5-f07e-4fb9-99ed-ee8d3727adfe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('29d8098a-93dc-453d-aae7-86bd4657eff5','44a4787d-d5a9-4991-bde7-044187260b6a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('2a1a4cab-3620-4eb1-bb69-2d20b3a36848','3b155c2e-cc1f-4984-a01b-515ed6c3a5f7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('2a32b0d8-1389-4bbe-8079-b91412ee11c2','ca555018-8f26-4d51-9d85-ea31366b57be','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2a83a63c-fb80-47da-8226-64c7d67df2e5','37e5821b-4bbc-4499-af25-fa73ceecb2d8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2a989ad1-3897-4032-b0fc-c35be79e7eab','f06fe29b-7966-4e5c-b505-f62b18462cd9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2ab3ad4c-c5aa-413a-b13f-d1c519b31385','3ca467d8-01dd-4155-afde-346dffcd7513','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('2acd0077-60d8-4038-829a-593638abded8','3c753e81-3a91-48fa-bde8-bf313af1468c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2ad09b78-168b-4e9b-94d2-b38ebd0009b7','47262aff-92ce-43d4-b210-6b1a80c81438','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('2ae7fd0b-0126-4786-b144-6794d35e4e6e','cf25a8ef-556e-43fe-802c-5a25f79cc2b6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2af96670-8321-4166-9ee8-aa4a123e6abd','a66b1576-7754-4b6c-b241-84409b682b8d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2b145534-63cb-482d-902a-6d11c20da20a','0b398303-df13-4b88-9cd7-6676b3f7ed0a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2b7d51cb-303e-4411-9953-bf5eb6d61313','555be6f1-fc23-4f7a-86a8-853e4d420612','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('2bdd69c3-edcf-4fc3-96bc-99d1825304e5','3b7cd666-6157-4f46-8d48-669058251c2c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2bfb348f-6c2c-4b12-9715-e90af74ffe68','a900aa74-ce54-44a4-bc5a-ad11c1482098','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('2cef9f85-0620-465e-a6df-4e876e1623ae','134a5fd9-547f-4142-8b6c-a5c33aba6f4a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2d1233cb-4681-4438-9adc-da9ced3427f4','15de0313-0dcc-4438-8277-21ee4cca5f33','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2d17dde4-0330-40be-8c6b-d17ef50a1a67','91786041-258a-48dc-8a99-ae4657947b5f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('2d5812b6-8a3f-4763-9004-c0997447f86d','2ec1d381-20b6-49d9-be07-cfc0616fd19f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('2e1d8b7c-44a3-42e6-ba18-2e06a176a4f6','a061e2f3-edbb-4507-b5db-5254b361a584','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2e705aca-81c8-492f-abaf-d4bca4069469','bc85393a-cb2c-418f-8f6e-12d0d818e065','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('2f78270c-22bb-45d0-b918-80fb16646f81','633df8c6-3757-4e05-8ee2-72eb76d797b0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('2f96dca2-c048-41a7-a5bc-e8a05bad45bd','072307f8-815a-4926-9f77-3eb8f620a177','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2fb99c3f-b87d-42b2-ad9e-4cf285900c63','157f2dfe-6630-44ea-b8c2-dc1ecac056fb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('2fda90e4-5ac8-4a98-b1ee-30fbca04a567','d27d64ea-c62d-49d5-997a-ad8157b1114d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3025ec40-68f5-450e-810b-f1e93e3cd607','d9947147-56a6-4f24-8380-11aab2c9b67b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3030d3be-b2b9-4137-95b2-d34c865064d9','28122d1b-d248-4f32-a8b9-610c1e05a18d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('313ada0f-bdde-4c80-bc1f-f30d08cb7ee1','7d995b32-bebb-4f7b-944e-d0bea726b6bb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('31b1968c-794c-4982-bc9f-76196c59a7ea','bbe13c86-1f80-4dc8-abff-92bd42b12fbc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('3226ed89-d8ba-4fe7-9db2-8681704ff969','cc00fe0e-c310-44a5-bea7-4a14801b180a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('324d110b-0b00-477f-90fe-50a3fb42776b','a4a9cffc-b6d4-4ae3-8191-ebc073dc51c4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('32545989-b5f9-4004-a9e1-bcbaa19a0a63','59af909a-6524-439e-905e-1fe6d0e86cf9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('32641d6e-e1cf-4ce9-9dcc-98ffc9c2eb97','83914c00-8ca8-4380-b376-07825094ce93','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('33110d36-5597-45d2-993a-5b84c532d8be','04a9d971-cb06-491f-8f85-d0392d992dab','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('33229448-3112-4c3f-8420-38292bad051d','36750079-a693-4603-b521-11856cc2e0f1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('3349422b-a069-4f09-b714-371eba84d930','499fb629-ead8-446d-9d02-3a622479f4b4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('34472cad-c339-4dbe-83c0-ed1a767d8aaf','8fde2e20-3276-4539-87a9-b04900508459','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('344f2dd9-ca6d-4f0d-91e7-cd4403f70c11','7ad48ad5-e433-42d2-a7a1-1db1c0a068dc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('348df6bb-3b01-4421-a947-594c5a20e1b1','f16d924c-edb1-4a5f-a6e7-eb1f4d07352e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('350324f5-61cf-435e-9975-cfad44b081b8','5dff4e70-3fe3-4834-a977-d9dd44142dd6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3558e718-9322-4319-b483-8309b9bfb1e9','5fe21f7e-bda0-408e-bffe-f3819c6b6259','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('35c1c08b-cf58-46a5-9ca3-11f8ae3269e6','982859c6-a8be-4830-b90f-91f2b64ef1f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('360ca5c0-72e5-4673-8a49-ea658ccf56f5','53a807b3-9b3f-4dbd-bbde-2c1f142efebb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('361bab3e-4359-4d81-aa5d-630a872ddcb0','34352c4d-be83-4743-a748-4c977acefcbb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('36820b3d-ae4a-402f-a6d4-a1a080949505','5b1f7486-015e-4393-8e4f-4953d1ea9425','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('36b31f01-2d79-4a87-bbe0-fda45a111547','16002c7d-23a6-4706-87f6-3d7888d13ece','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('36e02db6-4545-416e-9555-d5bea6006720','de3ebeb1-7e50-41cf-8537-52c7d5e0bafa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('374c9982-154f-4bf1-b8ce-1f3b4f22be9b','cde941ed-4a9b-47ca-a994-d4083af431ad','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('37804e66-484b-4895-983b-959b7c11a0a6','cd31636f-1874-4910-a9b8-80ef16cd2b47','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('379b154f-49b7-489a-a106-e5b40d4c532f','5e873649-ffa8-4281-b60f-635c8487f99f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('381e49b8-7c11-4164-a2e4-e83606a03da7','cc4a7eff-3d28-4c69-a52d-79d116cfa7d4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3847e6ea-93be-4cfa-b1e4-ab9ba717bcbb','f2ba1d16-36e0-4586-8a6a-cd3dae1bb99a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3878f389-e43f-4104-8fc4-8d59188d1877','1edbd359-4695-4a45-b48e-6817cdd33244','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('38add73d-09c3-45d4-bf11-2d57ad2042ed','c152ab51-8d03-401b-ab4a-6b566ce7c8dd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('391b643e-ffdd-4740-98c5-e5adebdef259','cefa6f6f-6a6d-4129-b35f-17b7586bb847','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('39d3c619-9e10-4d42-8d60-219012bed3ae','8483a326-0bc7-40e0-9737-4eaf15209ef0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('39e0811e-a418-4320-9afe-9382691e1574','3ce10285-4876-43d6-870d-189a097bb49d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3ada71ab-c1f0-4aee-bf99-bb70bd109c10','8e752507-4485-4cea-b51a-f50d40040fd0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('3ae43a69-5515-4f40-9af8-816120c1f7f7','662ab381-848b-4bd2-bdbc-f3bd83f42e29','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3b7fdad3-257a-42b3-89b1-7e7ed6fa8c9e','7524885c-6d3c-4b7a-85ce-854a69dec634','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('3ba845ed-5c34-49e5-8ab3-bf472ab8cf43','6800cef6-1584-4fb7-921f-ad6eb256121a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('3be73136-a74a-488d-bdb5-fdd01273486f','a4c2518f-47cd-476d-8984-0dab281b3037','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3c215d04-dd9c-4481-8cb8-5c0c30cb9a62','1bdebd6b-986a-4285-97cf-eacca7252fcf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('3c8a1a33-d606-4bac-9be0-acff80daa737','dd8caa44-6986-4d73-ac5c-9daf6c32b703','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('3d3109a5-bf9a-4614-86ce-9eee1aa7f3d8','33bda26f-9e28-4b98-95d5-95333297d3fe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3d4aecfc-7003-4d31-8ca9-bc805ccaf3e3','eafc9811-4c13-4d30-910e-4f297e02add6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3d5cd8c2-b99a-4f04-943b-edc219e0848f','b974a41e-1588-4215-8fb8-e1f9e91b3a54','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3d6eaf37-c474-480b-9f40-975744b18dfc','58c4852b-517e-489f-84d9-6053eb0d190d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3e13f9ff-d902-47f4-b2c7-447a1410f59e','865eb3d0-525a-4026-8c77-843474ea8d95','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3e363ecd-5a38-450b-ac39-c384a4b27dfe','024fd744-9408-4e5d-82a9-1d245e5aa814','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3e506dda-2989-447f-a0e0-71cdeea218f1','a99678a3-d7c9-41ac-87fe-9f79431a6cec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3e78f86c-b28d-4f5a-b6f7-f304efa63b43','a56995ce-3aa1-4174-8f2e-19aabe631e41','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('3e7eee89-0559-4876-87cf-310478e873e0','40c12426-f684-4e8e-a7e8-baef1c61a1e3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3eaaf2d9-650d-4b32-acbf-bd9df877b81f','30054254-bfe2-4708-a31d-657004758800','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('3f1cb72e-1436-48e1-b3cc-831614258587','bf8d9327-9c20-4984-bf06-09c221f6870c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3f35b495-2a44-4afc-8dba-1c0b04f1ec8d','4198b5d9-e3da-4548-a9ab-0b5bff87715f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3f6ce909-dc66-4c30-9834-1cde23856152','32146f29-641d-4a81-adef-ed1d1a6e0032','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('3fd6edd8-697c-4ad8-a5d7-ab69086a0e28','ea0f2440-8e8c-4dc0-89c1-b764efe0c9d3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('3fda1089-ce13-434e-a181-11c2821268ee','1310c062-e91b-4ef2-87ed-6b29c773d18d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('401c6d82-3a14-43ad-b60a-ef9bed047833','1a71c35c-65e1-4537-9f9b-1444c1a7c76e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('4025a1ed-ad3b-4ef0-a664-868abef009d8','0df2d18f-f9c9-4b38-b168-c26281ce5d63','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('410ed0fa-e614-425b-8f22-17ff6e39cd52','2e4db053-5d19-491f-9858-41364edcc871','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('4168db52-f7d6-4553-b62c-a6ae8ae72b9e','3a422d5d-ee85-4fc4-9077-c8ce58484a2f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('41f824fd-ab56-4956-bfd6-b16c7ae8d03a','91603681-310f-45eb-9875-83bbd9185a69','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4209981b-aace-4f35-ab91-cff26e57d0c4','a2afec87-d713-4a86-a10a-39f6eae4b758','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('420fb644-5608-4357-8c84-1b2b457d6565','11b8aa8f-42e5-44cd-8d91-a8cbe32e408f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('4295cf60-cebb-4d4f-a85e-f9283e04cf55','18e1d40a-5a4f-4807-aa8d-ffb79efcabc8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('429d4dde-c146-4c12-98fb-75c8c84fb6a2','3e4441b3-12dc-4fc3-8b93-f92508946310','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('42d4ff49-35dc-4bb6-8e49-9bb59ef9a563','162d86f6-6847-4fbc-bef8-9b44c1eb5652','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('431e2616-1b94-4899-85e5-fa4ff96a714c','1c938f52-adf1-4fc8-964c-8dd0e1dce08b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4356f615-190e-4152-8fe6-dbe4e37d28f1','e5ddb5dd-5a10-4630-9e76-fba3335d05db','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('4370f4aa-bf0e-4507-b296-5f304a8a7e26','fee0966c-16c5-48ac-9393-7d106cd6c9bc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('439de147-de45-42fd-9f84-9b7083b2073a','7439e484-1950-4cd0-bb28-1b7acb1984fd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('43db30bc-250b-439d-bdc8-4ec9d534582f','ba5e4f8c-a1fe-4fcc-a407-7b4b0dc5284b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('43e50534-b990-4b74-a348-9689e47a2354','f70c1811-47f1-48e3-b890-89e41640811e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('44f73b96-ea5e-420c-b7d5-e6de4b4e1370','4d615f17-8706-43b3-be67-749479b48a28','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('45498b3d-e97e-4310-b0d9-f2761dee791c','a953b435-7f93-49ce-a052-e55399c882c0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('45a901be-556a-461c-9aef-f6f059542650','feec7bf9-9283-4fc8-a41d-80628ee2fafd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('46001cd1-3949-449a-953a-e3d982c82ff8','38102f93-33a4-437e-847c-fcf7191f5e12','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('46081580-9ed3-4f87-a1b8-0b9f261a9831','27297899-0824-4e58-81b9-49f03e4316fb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('463fbd38-dc3b-4d1e-a6f7-ec59786330c6','70915add-aadb-4eda-bf82-6f5cab9d53ec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('4652fa6f-dd3b-4575-a3b8-64a5ad517678','b0cf940b-5811-423d-99db-5fe52f038c9a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('468838c0-523e-4b29-b6d0-0cc83765ff6e','1f038399-9eea-4f4e-8cb6-8096edbe68ef','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('46ee1bbd-9863-48ac-9a56-b47041e4c836','154df1cf-f04e-48a1-aefd-4d99f2d70289','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('46f3ab57-5546-4741-a342-b3d369e5b28f','8dc36a2f-fa0e-49c9-829c-80771b908684','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4707c695-71d8-48d7-9d0b-d147416f08a9','910d9950-0feb-407f-becc-f36ac666ea1c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('47083256-7498-4857-812a-744722190253','2874538d-e7f0-45f0-895a-a00797ea8734','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('47126e07-2fbd-4ed4-9ec0-82513745e631','ae79eaba-019f-4388-9c16-2531ce8d0097','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4727c59b-46cd-4b46-a269-36c1aeacb03d','ddc0441c-de55-4e6c-acd0-3bc460be5d16','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('477ee89f-1289-48f1-82f1-c08feae18c6a','2880b954-3854-4e77-a93d-90391568e126','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('482a0b52-97d5-495c-8e21-91ccf349b354','959a2ca8-8b90-4c6b-8427-28021705b387','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4892ea11-f616-45e9-8c7c-a953c3aa5730','170987cb-f94b-4bba-810f-8a6e897fe23e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('49518602-bf5e-4282-bfab-12b3a6e517e7','3a32db81-27d2-41c7-81d8-b2e2f26615cb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('498e3d2d-97dd-44c6-ad6a-5abfcf7641d8','68d761f2-0664-42e7-92fb-93f21760e23b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('499fa58d-b2ae-490b-a27e-e29c196f0be4','3f487a53-822c-4e12-8b47-98eeda81e1ea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('49a9eb3f-3a89-449f-972d-4f727e48c87b','def5885b-d58b-41eb-801d-44b5ab91008c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('49af615e-138d-4c99-a422-79e71a4e586c','3d29d74e-2aaf-4b7f-982c-1e7a7ee9e84c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('49f20029-eec1-4497-8633-88828df9014d','d680b49b-435f-45cc-9610-98847b67a808','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4a0b951d-ccb3-4357-8c60-e4c015b2e109','5cb60f08-681d-4703-b37e-d9301a78b5f3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4a269ae2-cd24-4368-b365-36d2d7b24602','3f1285dd-ce5f-4d9e-accf-43e38a61bb32','978485b4-faa8-4573-8f43-c3de3518f597',0,1,'2026-05-17 20:36:15','2026-05-17 20:36:15'),('4b14b7d2-027f-49f4-9949-eb30f0cedd03','274c1521-f272-40f8-b911-883c91cc99bd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4b2ca181-cfa1-42b5-ade9-303906d982cb','1eb3c10c-a5c0-4a8e-8c8b-025bb3d9a7b2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4b5ab388-4689-4ad5-8c8d-d19da2c81134','c8c5fde8-df24-41e7-8145-02331ee6f101','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('4b744d06-510c-47ac-ac8f-fe54310c3a68','ca93457f-ee56-482f-8df4-6ed608e04b06','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4b8b9162-cf05-43e3-92ca-b3df8e15fa16','122b949e-3f3c-43b3-bb87-f85d6cd9cc4a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4b9043e8-55d3-4874-b559-c6b333f5b780','fd760a1e-d581-4e5a-99df-65c33659652b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4bada8e2-01d1-4aa3-bb70-76d4f879b990','0a2ab6fc-658e-4d54-a68e-1f975ab0947c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('4bb50851-e9a5-4dac-97cb-24b2fd690a17','a10086b6-b3f4-4332-9957-fe4142f61a05','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('4bf60a92-f7e7-4989-ae62-0e2230593eef','7fb6cfef-433f-44d1-b4a8-8a4aa72f1dc6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('4bfc1897-4a02-47dc-a83b-a7d9e73a2521','1238a739-1b34-4fe5-a565-f8ccbcddc431','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4c586dd3-fc11-4c8f-9a95-6eb0a3f50b55','dcfb3f00-4680-4a45-a0f8-6bcb17c8fc25','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4c944407-d302-4cfa-8cba-a5692ca0f932','a58b5f16-3f74-490d-bb30-e62eae100d93','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4c9ab99a-4c0a-402a-ad33-125fb4b8ee45','ebf6c315-955f-4cb0-8589-46dcc832d0fc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4cadf7f1-dc62-4234-89ea-8f0fafb85ce0','c32daf9d-3810-4f2e-8abb-89045366fe44','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4cd782e0-2833-4c29-ba8c-b76f017669c5','64b6830e-c428-4e9f-8c5c-aeb2a66b25e0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('4cfdb6dd-c2ab-4dd9-bacb-3ca8286f65d5','ffb797b2-b10d-482a-8a8e-c828c9917a7d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('4d1c9761-2de2-458d-931c-3c7bdf9766f0','0b20b8a7-19f7-4d29-9e53-eccf05a0f535','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('4d29897c-5b1a-4ffe-8db5-fe2167558f72','1255c2c7-65cd-4461-bcb3-15e4dbc6b27b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('4d9b3945-abf8-4c33-b351-7d5130d596e2','6f73a723-3e59-494a-a65b-da3b3995118b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('4dabf3f2-3ea5-4512-96f6-1eead1f28f12','6d4dcf7d-f51b-4504-a7b3-419fa5f139e8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4dd34851-8657-4174-ab43-18f5c5707790','8ab0b762-7efb-4d32-982c-25f84da47e19','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4dd7880d-4aaa-4411-8c36-dc1eff064cbe','df8e9991-9bbe-4701-825e-c9720e17946e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('4e01fa32-2111-455e-997f-08f8fc1d31ff','12c50996-ce4a-4458-840b-f307354a0614','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('4e4c6329-f084-4d16-bfb6-7aaaaec9bcfc','d229f149-9046-4949-873a-fc9e47ff109c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4e5a5f6d-dd87-4769-941a-4feaa6db968b','af737810-e3b6-4e5f-ac6d-2f947b5df848','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4e67a696-04e5-41e4-b6d8-922e09e7ad84','a77ae53a-fab3-4887-80d0-70e3fc5fa3e3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4ecbe194-07f6-4e50-870b-9435d97f09e4','ae79e94d-7a61-4ce8-85a2-99eba5823573','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4ee601b0-19e9-4c96-a68c-70de15597c07','3909436d-59fc-418e-8197-ed2b65baad4f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('4efff53d-5b18-47da-b11f-9758688ff282','3c2defab-82eb-4043-a2b2-b0366fd8cf81','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4f306067-8bae-4db7-85e7-04f86c042956','1f7c9b45-50f7-486a-995b-fe4d1d4e56d8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('4fb742d4-f9b2-4952-83e2-94edcb5ea3a8','43e72722-694f-413e-8b2a-8168339def39','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('4ffff983-3297-450c-ba31-733033c7e27d','70a9cb5f-a5c4-4464-8c82-82420b194cb3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('503393aa-be20-4a90-90fb-fcce02402b87','36e7f1b4-c3f9-43d8-b10a-97a1caa6392e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('50edc0ba-50dc-4785-aa38-5d4e0c24faec','1c0a794b-2a31-4f21-af0d-e5bf492299ad','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('511f24b0-4e8e-48fb-814b-1554e20fa605','5d4ba7e1-72ae-4efa-929a-078a4bf80fe2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('51decf10-a486-4c86-a47c-da372ba8b5cb','6e4924bb-6d21-4079-a43b-8605bcec1212','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('5222c5a4-98e5-49a3-b921-a48f575b6d65','d43a66e7-5fa3-44bd-986c-bfbd24db6f5f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('52427a0f-5a8d-4d7d-85dc-19af7e9574ba','662c4747-153b-4bf0-ac30-1c26ac5fc888','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5267b914-a38f-4a12-a41c-ad0b8ebba071','a2c04f8b-dacc-414c-9c9c-735c877bbfba','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('529de43e-8364-4985-9af2-ecf5b67c5c07','b3bbe125-6702-4f5e-9420-7221d9aac7f7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('52fffae8-a237-4a70-81e6-40047f0e413b','ff1fb1fc-6d50-4790-b539-710ba4e524f9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5326f146-e856-4f03-b77c-62a56e785876','8c3d85bb-1bbe-4f8f-986f-dbae84a0da12','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('5341ca40-a805-48dd-b37c-b683bc3db87c','f388f3a1-7945-48e6-81ca-2e7459c86201','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('53eccb35-de63-4b23-a31c-ac1e588c32ae','2241ecb3-ada4-4b53-ae1e-7ee3d4c4ce58','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('54558d7a-d17c-4bd7-bf19-e8cf8dc8e257','296c276c-9206-481d-a386-c55c1efc80f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('54838e9e-9fec-413c-96e0-dc4184e8c68e','9139f274-dbd9-4884-8ff7-ce49bd3a6d85','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('548a4ad2-12c6-46e7-9769-ffcf61aa0b91','91cd7984-a8bf-4fd1-8bf5-6a881836ba8a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('564e1309-ab8c-473b-8a78-cafb90997b7c','92e2a851-4603-4ba7-aca5-4ecc814641c9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('56e589e9-d80f-44b1-9a12-88014b8f13d7','01de3999-df7c-46f6-b399-7868a568234c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('572c9683-3b27-4314-b8ed-f78e04180baa','e4c529c5-5832-4099-b4d7-9862d2b85f28','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('57bcbde1-dbb1-48a2-a987-81703410a456','0c3b169b-e3b2-4047-a8ee-f076f45548a0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('57c539e9-929a-46fd-b550-a15a11321062','47c68213-66e8-4ca8-b1df-181604d9060e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('57f5eacf-3d1c-4ad4-bc41-4347eea19f73','05c530d1-415f-47ff-b24c-2b101d94ccc1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('5840e485-2b0b-46e1-8aa9-5cd6c2df2a4f','fc0579e0-939e-40c0-8951-6f169608f15e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('588b8433-38cf-405b-a72b-07d74dc75334','9b953e9d-638b-4fb7-b282-e86fd10097be','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('58adebfd-7e1d-4767-8f8f-7bba142a274e','a85af43c-7015-4b9f-a6d7-06050bff5092','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('58fb3ccd-0d55-49aa-9fd7-331ccc6e8eab','30709cc6-34f5-4ace-921b-9a9f6439b10f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('59143d09-29e9-4b3b-b93a-f695e96b4f00','bc4451a3-f2d7-4831-a2f5-1eafd59a2ea2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('594ecbcf-e5c7-44b6-b653-be1f42b98166','16cd86dc-ab0d-4b6f-bc30-ff43750eab78','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('5a355d86-4f7b-4cd4-b1cb-ab9c30a3d224','f468d96d-1968-4461-801e-4adcd9c09473','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5a688b78-33fc-4040-bd5f-76635b6ef64b','3d166962-f29f-44f0-ae67-6461618cf79d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('5aa499bc-b1cf-48d0-96f2-852ed32b8a1b','fe569baf-02f6-464a-9e6b-7c887637987b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('5b0ce6d2-69ee-47c9-a9f1-a36374045ab0','1857893a-73f0-458b-a391-448250e44a87','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('5c3d3c16-01b3-4119-a86b-9e4761bbb617','c53e534d-008c-4fa3-953b-247c147970e8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('5c41dab3-2fac-44e3-a3e0-465db2fd2bc7','471e8bef-3cb0-4ade-999a-94e29d27d81c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5c4da1a1-3f4b-447d-b2be-839c8e38e953','1ac5de4e-f9b3-4511-a962-6a7870d957c2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('5cb859ab-6580-4515-bdba-f7769dd85f46','07b21654-701f-4f66-9b6c-92ac8771ccdf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('5cc21ea2-789b-49ce-92a0-46ad95bd9719','dbf3b693-f563-40a1-9af6-393bfc7a5742','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('5d4af70c-700f-4f11-8e79-721d33448a5c','95b4e772-9381-4f0b-b09c-89ab4ecf5699','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5d685d56-3bab-418e-bdf1-6d648796a278','e1f75807-9e2e-41d9-b7f5-2fd8389b57d3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('5d7e541b-ccb7-4e1c-b3ca-216a15163fcd','81669896-2ec2-4cf1-b409-118472c317cd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('5dc10ab1-e20f-4198-bd62-036ccf8b5508','946fcda2-a5aa-4d5a-bec7-05a573295226','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('5ddc1d8d-ddc0-4e1e-8b1e-ab4ef84526db','64b9f401-5c34-442c-8fea-374cde6175b6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('5de54536-efb5-4147-b382-72cb62da299d','bdb298d1-e88f-4fd0-b82a-fddf901a965f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5e09d8e2-439e-4576-8c1b-e4945d39a2ac','009e82c3-f57b-40ea-a534-bb4af8ad4f0e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('5ea90feb-9c02-4900-993d-bbd27574eda9','0bfdb7e3-28f9-450f-98a6-f793639edaf6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('5ed3721b-e999-48cb-9ece-e67f8fa475f2','9ef1e335-11b4-488a-a0a1-c77c82ecde96','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('5eda2aaf-ab9b-48b0-83c6-f4dc399962df','887609b7-f1b2-41a2-9048-576a0258a955','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('5f7c46e8-954c-4957-9bb9-a58e22673db3','367f0a85-e853-4275-9e24-332842bb0630','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('5fcc9900-ba34-49e1-b078-12cd5ae75dfb','4975418e-f9e9-4666-b282-71c88033286d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('60be072e-21c8-45f9-a723-20252ec6641e','e2bd1ea6-b935-4427-81dd-f7c62802b765','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('60d9bb46-5a52-4611-8eec-6635d68912b1','8ff23978-9596-4236-af11-4efb170ada09','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6107d43d-330f-429d-9259-94d1aba92ad6','eff4fe14-cd9d-4e81-a63d-5cfc654cf47c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('61437a25-4bb9-4698-9733-79f3fd6933e5','c99932f5-5e5b-4cd8-9f4c-18e72e600330','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('61489492-2a74-40f7-a40a-bc55d3c4256e','a660d992-bf9f-4345-9329-c265640b445a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('61873877-71f7-4a13-91fd-1d1dd56e5005','0112e1c4-ac72-4133-bac6-5fff335ed96d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('620d6ea4-378a-4c3b-a4b5-59b380aaf0d4','608119e7-b58e-41f3-8b05-920a92067b2c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('624003f8-ca23-4589-b354-09a4e6a0e6e3','0491c96f-eea9-4de2-adc7-c78779a62894','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('62492405-0dc9-4e98-8fcb-78a6a43182dc','a090e20f-1aef-42c9-9385-e75bac20885b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('62894782-a690-4161-82e0-d170a13ef4e1','ee0d4fef-98fe-4afc-82ec-afc4550c4c93','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('628ce0cd-e900-41d7-8ef0-a75887317738','82d4346d-6647-40df-85ef-d2adba59c30b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('62d4a920-ff89-47b3-bf2d-b864975706e9','3b80a58e-7f7d-4406-b3d1-4c27f2f8d55e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('635466bd-919e-4eab-88a6-52dc2742f817','556528c4-7755-44cc-a52c-a2ac24bae610','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('647fe424-365a-4289-8835-26dc3c70dadc','a73b4754-f146-4d9b-9cce-f2fef74b801d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('64a47242-c96c-4f73-b971-2eb7fc376873','6f7dcd8e-63c4-411d-8b9c-d4a555e2d1af','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('64f7351d-767d-42fe-bb67-4a9a82877f32','239bba5a-a2b5-4ec4-85ae-f9e48a3e4255','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('656c0b2d-5d28-44e5-880d-12785a12c21a','5a68f6b6-32dc-4ac6-8790-bccc478ed5ec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('65e83ab8-4060-4fce-8970-92a762f11acb','85607a57-b72c-4b38-9c02-52510f63ca84','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('66099762-871d-47b2-b31a-651b0a115caa','19b81ba2-ec1b-48ee-943b-dd0481a14421','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('66a8ed91-3716-45a2-b5f0-f7ada7c967cc','7689ba0d-2bfa-469f-8afe-ced16e5d79e2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('673238d2-a884-4eb3-a5c0-f5a604684f40','5f94d19e-2ff6-4a2b-b0b2-13ef6aa99579','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('67323b61-b6b6-4635-afe8-11700eab4fc4','3cd1f1e2-b87b-4ab5-bf07-f45db9f39348','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('677f1a40-e896-499f-8527-751a720b1623','e08a3b5a-d998-4468-befe-a98ef25571dd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('679fce7c-45b6-4ce2-9a95-f5ad62d1be70','1f943b4d-371a-443f-9086-a41d3bd2ce3a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('67bf73f9-46f9-48dc-8936-813b7a11d2b0','c4bb244e-6e3b-4a8f-9bd7-aa8e855dbb4c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('67d2db59-cf54-4ce7-9355-4cdf16f707dc','dafa4883-8fdc-464d-ade8-9831b3d6aba4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('67d8de66-41f5-4167-b773-5f5e2d00e141','476a3378-fbd6-427b-893e-f767a5dbc42f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('67dc3fb9-e27d-4065-bcee-b2e208e53dc0','b37bb05c-6a92-4e67-9d61-0c0c39a628c0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('68955b31-f808-457a-ba26-4e7d9805a248','84946b26-436f-4a8c-b5b4-175310f55210','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('69473dc3-70e9-4737-bba6-e0e2d5e9e136','5b1f42a4-3816-45cf-b7e2-b61401af3cef','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('69f0eb5c-7d2f-4d82-b62f-ecb44ace1c6b','c94c5e06-489b-4cbd-b2f9-ace1b1a1a5d9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('6a0317e7-d796-4811-827b-3e441b3dc60e','32336a1a-9779-4bd3-9be3-cdb9ecfb1da5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('6a04cfee-ff94-4e90-9fe2-5c6e70808e3a','6b631bf2-1dca-4627-8924-ee78ffca39f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6a2113b0-7d57-49ab-89da-53299837cf28','1c743011-a5cf-46e7-aee8-30c294209e35','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('6a308599-f8ad-488b-9d57-cf6e06452e6a','85ea56ed-7411-4cb3-b430-437c0693259c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6a9566b6-29f8-4ba4-a69a-fefc6b9810a5','dd035493-c933-4bfa-b4fa-e995edb2aba2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6ab8b0b2-db75-4063-aefa-6af76b8d23b9','70a93428-6c42-4414-983c-0df1f00cc840','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6ac1a445-5aba-42f4-858f-3ea81771ea42','4a44c03e-38b5-42fd-a625-e428344d1551','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6b64b661-cb97-4505-a9fb-54bbfa3990d9','c52357e4-d90b-4b34-b432-eb1ecb28ab42','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('6c4695aa-d26f-43f7-851d-d8758306b887','944cbdc3-37ce-4f5d-8919-b942216ccf13','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6c92e07c-f06b-483e-9cac-baf6da2f7a96','a19de589-6103-41e1-95cf-72c4bbbfaaea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6cb78625-f09c-416c-91a3-fb374f990629','5b0ef2bf-44e1-4610-82f9-765666c387a7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('6cd0cc98-8b78-47ff-814f-d93b689ac3f5','6276b28b-1ad8-4b4b-bc08-ed11721185f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6cecf701-4404-4dd6-aec4-ddb875b58ce1','c09719cc-eed0-4c4f-a1c0-edb28e3908f3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('6d13f9af-c228-4ca1-a974-08058d3134f2','e2d5b73c-bdb8-49dc-a45d-f00e0f0c5046','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('6d2041b0-5e7e-42c4-ac18-4d424ad64f8e','569992ce-647f-40e3-9aef-2d8b2d8a3b43','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('6d8bb2e5-90bb-409d-87f4-74e80e4fe9f9','9bdb815d-c53e-4fdd-87c2-2f648a4fe9d7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('6e596314-6672-435c-8f78-44713e0e69ab','e6894a01-f61f-4eb9-af35-5f712ade240a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6ef35aa0-b194-4875-8430-c41f42aff527','44f1fd5d-45cd-4cd8-9aad-14fa854afaac','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('6f3fc33a-8b21-40a2-9f4f-0a5e5c05bcbc','2686bba3-6432-45fa-b0b8-ed4e2e7a315f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6f444845-bf65-486f-8474-7debec00dbf0','a871cd88-683d-4e02-9327-a5d8ae31dcca','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('6f80c872-687f-40ba-9650-991f0042d1bf','82166499-1d59-4b7a-97a7-aeea7e6efd5b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('6fdb7c3d-5e34-4b8d-b0e5-79408f6092cb','f5bb3d21-cd39-492f-a7e8-e81dfd44937b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('6fe29bc8-6a9f-4c90-a15a-a3d646dd6dc0','47062c07-b3ba-4089-9299-990d41d9579a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('703fe6b5-7ba2-4dc4-a600-94536a5decd2','99ee3234-52cc-4b19-a502-714730fa783d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('70b33c09-600d-46c1-8f4a-9e44a93e257d','f5f5cae1-24ec-4942-824f-a3efc415b689','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('70df7af9-919b-4be0-94a6-61f57ecaf5d0','0f517dbf-d336-4c9f-bca9-e0fcf45e9dd0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('713e9346-9e7f-4e14-a24a-2c514c284d22','38cfa4b8-47d6-4040-9019-97c3567c88cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('715cd089-ce9c-4cb7-bbfc-9322171f9d1f','615954c8-8b0a-44b6-bffa-4d5ff8c81b36','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('71794e39-920b-4c06-bdbe-a379cb9cc20d','57dc17c4-9a3c-4270-ac3e-59911ee32ead','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('71901352-1899-468c-a1cd-7834b9d1cd59','196eefdb-5a66-45e5-a28d-e9d1d9f1b7d3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('71b30b4c-d8f9-4062-96d1-058cb6883431','2f37d6d8-0c2f-4c7c-8c37-e6dc217d3e69','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('7211628c-9cf6-4fb9-805e-9d2c7ae514e0','d99506d2-39e8-48f3-86b1-7687286b94a1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('72700f09-be17-4291-a964-28652733d753','ed522a9e-3161-4ef9-b552-27882b8692bd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('72ae8e6c-7f1e-4dc0-9f37-629e955be3ac','1f3f7085-0bad-4e6d-b0a9-463ec5b72c46','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('731f2e26-5801-46eb-972c-3309d03b164e','a9bc5417-54a3-4c72-b49e-964e70ddf35c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('732e63dd-7e55-4751-ac8a-cf46b9359ea3','0ff86153-ce62-4f97-bf06-181fd9a6258e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('7344a3f8-2c2e-43da-bcb6-098ed70e6f15','050a2651-1964-483f-8ec8-6783dc18d8ab','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('73dea4be-22e0-49b9-ae32-c67e4b5c146c','b61f2ce5-c023-4d06-9a97-eed6ea9905f5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('73e867a4-3f2d-4fac-82d4-6c5ddca2f652','e97a7476-1995-4a1d-a601-d331f0f78548','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('73f1ca94-7bce-44ff-8872-e56ab89ba4be','f318c1e9-4eb6-42e2-abe6-39a7f63f2643','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('7414f326-f3b7-4ca0-8a6c-341d5c61e749','a828a3c2-7984-4a98-ad5f-e2f5f9755885','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('743a04cf-a7a6-4a6f-80ed-0e1bd2870462','7443b1f3-1ad0-4b87-816f-4f45cc3794b8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('74d14ba7-b2a6-424e-856b-54d104a5fcf9','b95d35ad-8fd1-47fe-9b69-6f35475fee85','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('74d50a05-5bfc-4adc-bb47-01dc68301eaf','a564fa61-bf05-4a09-98e9-fc3fe92d349b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('750de5ec-ecf8-48b7-a175-7e9a200b408b','28768ed4-1aec-4b03-976d-b67276ed2e50','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('7512d619-bf71-4309-9eed-1c24bb5a1a75','ca72cdc0-0d17-4841-81c0-8ab563003075','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('751804bf-ac66-4007-a5b5-ce43139d489c','270573a8-50ad-4084-867b-1c51125681d7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('756ea993-676c-4f50-915e-fc586652b4bd','eab62e6d-082c-4d67-aadb-75757e7c427b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('75a43d16-fabe-4025-ba4e-4c25f7aa2e7c','a5061e90-5032-4566-9bc7-dd476a5f8cfd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('763fe75a-7f03-4ba5-a181-07b09167165c','d0821549-6934-4c27-bb10-692c672dd4a5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('76489893-7209-42fe-88aa-b642e0270153','4f523296-bc85-4fcc-ac76-7e11b92518cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('765a3691-52af-44ab-af0d-75d4840586c3','6f274c1b-055b-40f9-907c-3a788651bce2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('76731638-4314-4ce5-85df-0762eaf04295','6700497b-389a-4019-a747-4f415e690d7d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('767bb0fd-f7d5-41e0-9c2a-51ad667742c4','8dcf4c12-bd2f-4151-b49c-d9f2273fbdc2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('7688e68c-4a31-472a-802d-73a9dd5fc35c','ebd8232e-5310-42d2-a477-dc5e60de0cfd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('76a03077-bdbb-4723-af12-eae432ec2682','9043f185-f5a4-4428-8afd-3cdda8b323c6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('76bfee32-bb62-4635-b8b2-bb62c68822b5','fa96340a-0c60-4008-8ac2-084a8c42b47b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('774c0010-df0d-4874-8adf-b1afe68ea1e3','7d30ec23-8753-4b3c-8be3-cd76f44384b2','aff8fcc3-a57b-47f1-a358-df083c6e830d',1,0,'2026-05-17 20:30:12',NULL),('77736def-89f8-4565-b526-d099c3e3a35d','53330430-e974-41fa-a78c-c30165b24359','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('778771b7-41e4-4427-a21d-b2e3445574f0','37eb71c4-62a4-42b3-a128-13fc5414d8b2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('778de808-9cfc-4887-aa3f-6beaafe47041','65bd88f8-ff65-4256-b8d7-3621470b6aec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('77989a34-3c2e-4a26-89ba-95fa074524f1','188bb7ee-6631-4887-8600-4aae3b0052a8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('77fc797c-2a89-4463-91b2-e2ea32a87ece','51935ae8-e49b-4784-bd7e-a4c41185ce16','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('78e0ebfb-b558-4481-9795-0583746e3fd8','fa057ae9-c698-4535-8f13-e281c9c64496','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('793bdcf8-4dc8-40ed-a100-49988f63a0c9','58826bf3-bfc5-4f18-b672-9ff762267e03','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('7993c1f3-875d-4df4-b46c-6a679d85d42b','03a51f7a-80a7-4302-b804-fa541c9c3108','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('79b2edb7-a340-4bc9-921f-8ba9ff51d224','08c90c3c-23b4-443d-8076-c71a9f8e2676','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('79c382b1-679c-4e84-b73c-7f33292f691d','828d4171-8ce8-48fc-a525-94de1cfa857c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('79fa9080-e075-4c66-9327-d00d30740ed9','7b57080b-3462-432e-a937-f556de6f2258','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7a0d186c-ba4e-4df2-86a7-19103758452c','cf8085b4-2e2d-4475-989f-ea754fb54244','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7a3d7b6f-eb86-4193-9dee-8869b427ed9f','0ac15806-33a6-4216-9d97-5894a2c411bb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('7a71d95a-8378-4630-be84-c9b43dbaa532','8ab89f3d-84e6-4930-8165-cce8fbc0b46b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7a8ae350-9686-4861-8696-68c399bf5334','40e9dd7b-d4bd-47dc-992f-702e656b8642','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('7b082ba6-fbb3-4d99-9a3d-6f84cc7c7774','a7a273c4-f543-4aa5-9bfd-09a1937f2990','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('7b65a475-e5a0-4cfd-81b2-3d0dc0538888','a4ad6afc-4cfc-40c9-990a-e88e28b9d276','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('7ba8c297-c673-4919-a072-c8b08fb615ca','1cd9b2f5-4c24-47e1-acd8-ddbd4f108973','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('7baafd7e-1d2f-41ba-8228-3e9857ac6b5f','7d65dceb-407a-4f47-b652-acbcbd961880','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7bcba695-64df-4bd2-86fe-a7871ffb3d0e','a1806d26-634a-43ea-9cf8-3fa84f9f16d2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7c18e27b-a2e8-4941-acd4-8d05e29c8824','0a8cef60-4843-4d1d-a08d-30911f204dc3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('7c656c98-5f05-4df4-a37b-b3797e0861c7','12237465-7eb7-4a3a-8b7d-1cd05fa1327e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('7c85d3dd-ccd2-432b-891a-577ab66f6f0a','2595677d-e6ea-4da1-b8cc-6296411ca641','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('7c90fd64-6555-414f-a5eb-0968b85db09e','a90012c3-3d02-439c-ac04-87569c45e7e1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('7d70a01b-953f-4b40-9ee7-1d01ca4869eb','6b7fdd34-a1fa-4842-af1a-375ceb30f041','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('7d777ad8-853b-4bcb-b7cd-d0ce735a1acf','e52999ec-6344-42a7-b272-7cb40b2abfe8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('7deaf946-ab19-4425-b978-8d23de4c409e','8acbf3f2-51e8-4040-ba67-720d02208751','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('7efe8667-27ab-4cc4-8cb9-147c515aa9e0','c07e959b-de82-433e-a29b-8e3658906cdf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('7f2d6d06-9690-4a38-bb03-0c0b52f1ff1a','fb99718d-d352-43f0-9065-ad9c176701d2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('7fcc7fe0-becd-4586-8e4f-187699787b47','1afaf23e-2533-4ce7-9502-be8c6ada1852','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('803b2014-edb4-4529-b905-db45947c23ff','0bdeb7f2-4f13-4ae3-b881-68171cb15af1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('80551800-c484-423f-9ba2-32712215408f','90dc6c81-cb37-4856-89c0-4d2d289cdff0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('8064200a-9612-4a72-bbba-4f0fae6834d2','ece6f91e-183b-43ec-885e-288fd92e86f0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('807cc637-8cf2-4841-bcb9-406681a05ef6','e271b04d-adb1-4fd7-9f51-48e5e83bb044','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('80aa5cd9-ab40-4c5b-81db-29106cb782a4','17b9a7b5-3168-40ce-9fa7-4ffd6380bef4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('80ec2846-ab3d-44c0-9ca7-b290d53e3256','9c3e2a8e-71a1-4942-be30-aefba684ebf4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('80ef9569-98f8-4ba6-ad2d-e54915f7e779','27f0578c-08a3-4a5b-b441-99ce8fd9fc86','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('81175e5a-89db-4219-abbb-2184a663cf52','c86363e2-d8a0-4782-9e2d-58c8c141edee','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('811a7eeb-9a44-40ef-a934-85d2db251603','60d67f60-b3e8-4c92-95a0-668d23e315bf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('817af42e-0ad8-45db-b7b0-c5dfbd6451d6','ba13e7e3-d466-4996-8340-c9e125749fe6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('81a450cb-5253-4d0e-871b-917c62f26802','d07589c4-25ae-4ed0-a406-bc1632d7c8d8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('81a86f18-b623-4ad5-8a05-a824dee8d70c','b68cd3f8-4286-4f8b-b36b-181b1c0f450a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('81bf1361-6298-4318-9633-b94fd3f936b3','bd4efa64-f984-487c-ac21-b31a23e5973f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('81f8eca2-74f6-46b2-802b-09b72d14a3f9','db7a2a78-9bd7-4705-a167-85f36a435c2a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('82af5a3a-d9a7-4598-967d-da8bc6ebc0ec','0647244a-7dfd-4f1e-a023-6f6c1935f0ec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('83436cc2-4b23-46eb-b97e-d31138cbbc37','a3d1dd78-4495-433d-be5c-67ff7e69bd89','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('83ca5843-5b09-4673-a966-cd165030861a','b8271c4b-ba9e-4f1f-a261-2a72248b4355','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8441b23e-7ff4-4693-8824-f3ecab64258d','f1bbf5fe-fdb9-4d24-b6a2-8acce5001edb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('84bf4c20-5db1-4228-aa25-9b3d60ca86f9','18ca1648-f503-40f2-a077-9b658e66f318','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8554c5f1-dca0-4bc7-b84e-405c46f55585','a9a99976-bfc5-4aff-b45f-63249449f04c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8558034e-8297-454a-bccd-e5398ec7c8c7','8e14eb81-aaea-4573-8ebb-629f645a1c69','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('857d0625-f8eb-45bf-9a30-9b4f8c27b4d2','ed8f4a90-fb15-4f59-92ec-d90c4a8d0bc9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('85a38468-fad1-4974-9a76-3ccd8fad5c5b','25402cde-fa64-4470-b0d3-c06db8bd160b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('85f5f818-c9c4-4519-92ed-506fa01f241a','531ee682-bcc4-438b-8528-cd29c219c6f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8676f38f-d465-470e-bcc4-2409b806d5dc','e749ea48-d1f3-4133-a346-94e809a069bd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('869454db-67b8-40e2-a929-f2fcbf234446','fe8ffe9f-3b5a-484c-a229-c4c6f748f451','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('87a27f8e-35b6-42a5-b1c2-9a2bb031bd79','914c80ae-ae0e-4c36-93fa-cffe3e26cb92','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('87e92c40-7aea-4d97-a02f-1eb17f8e5e91','97cadd99-ba43-402b-b65f-8719d83488e0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8855f2a2-5682-45bf-9613-567f469ca94f','a6361ee2-eed0-4575-bab7-85df18a40d40','ce2cca7a-84a4-411d-9b6a-168c5e260f7a',1,1,'2026-05-17 20:30:12','2026-05-17 20:30:13'),('8874d11e-8792-494b-97af-bf08ec0ac1d2','1dd76e65-8349-4913-b9c9-9ab2c1924353','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('88a2e9ff-49fb-4d80-8a5f-1a1336d878de','73b97258-0781-45c8-9e32-bcd200a46935','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('88a9460c-f4f9-491f-8c77-fd427d796028','b73c35f8-65d8-4a84-ae5e-1c98e1c22b2c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('88c3bd90-8734-4355-a011-fbb35492608c','9b6010b7-9836-460b-a9bc-dd6b3f65cfb9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('89b8154b-cf74-4ab9-b9ef-aef067785c3c','619702ff-1ffa-4b54-9f8c-4691b8611a54','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('89c65229-3d18-43b9-b664-e868d6e2184b','9dec9a5f-fb36-449c-a2c4-26e0cdd9e806','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('89fb38f4-35a1-4bd3-a973-20971f8949ea','d2626e6c-970c-4b63-a2de-e8d2d61ce82f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8a010a1c-836a-49b9-bfcb-f72f58cfa513','3709a6a6-9142-4b72-ae5e-60bed3b681a4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8a04ae07-0d5a-496c-920d-13bd34f07408','32415b3d-a8c9-48c6-ba79-4b52288c3529','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8a11f3d9-faeb-4601-9ba2-6ac68f676c63','d2dce41e-1793-460b-b407-a9120b3fea2d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8a1bcefc-3a46-4f86-b2c3-d0711fc69830','4bbaeb7f-da18-4f1e-93f1-c4a2019f55fc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8a6460e7-062e-4c76-a62e-29e32ca81289','a8e72adf-5c77-4f5b-a68c-bc75d7e71ffa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8a6be807-5a89-4c5f-9eb9-89804a0afe38','95059f36-0682-4ea8-9ed9-fa9c9d7a2d2d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8a93a447-b71c-40aa-affd-dc97382271eb','dbc845d0-992c-4292-a5f7-798b794f8c66','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8a968b4b-0be8-479e-bb8e-81f9fe97cda5','eba99753-c1b3-4f91-b86a-2f4cd73873e6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8ab8fe1b-8a3c-4d4d-8c3c-c3abb646deb0','6e48e7d9-63c9-483a-8faf-4272a1d20413','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8b623de3-a8c0-449d-9e29-0a933f97731b','fd2b8a93-924c-4afd-931a-660338d9d7ca','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('8b79cac4-c3bb-4be2-bdea-00c26fe0b4cd','915043c5-d55d-4c59-81fa-ebd1bf5ea7f5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('8b9f0327-4210-4414-ae3d-5fcaa31834d7','4cfb8cb4-9900-4600-964a-c5414a1c38fd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8bc7736f-9823-4100-b3a5-b18e0be6f71e','7ca90dbc-76f6-4501-aea9-c0c0e85de629','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('8c00496f-b2ef-4363-a565-5e51d9929643','4757c3ee-3be1-4ba9-9e9a-caaa76a7278d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8c778c72-5e30-46e5-9fc7-80ed8c1d8de5','84d61e7b-fec0-43e8-b192-8dce64af2be4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('8ce71631-1ec0-4529-b357-1a75dd29e56f','f8c80990-0def-4c6b-a117-b3510015063c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8d270aaf-0ed6-466a-b8c7-5b6314c1883d','93ffa8fa-5ec6-4b04-9165-e6da09aa37ea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8da1588d-07e6-4e35-9608-bc249e48f91a','94aa059f-903a-426c-9222-244ae3600867','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8dbbb516-b60e-4486-887f-b6227c5ea523','31a29150-0184-48b9-8e4c-21b3c55e6ef4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8e0e76f9-b900-4ffb-b33f-bbd0aa48770a','1f04cbd6-e8d9-4ea8-a93e-da22bade50ba','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('8e15504b-3f52-49be-9d9c-bd3f8a80ffe8','c984d66d-7555-4824-bd24-3389e736b9e5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8e2797da-739a-497a-a432-3a01478efff9','944f5c52-4ca5-4620-a4b7-1cc78c37d8d4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8e459410-57b0-4965-9696-96b755f57db5','2138bc54-edf9-4f5a-b76e-97eabbd14553','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('8e4bd2c3-b9f2-4535-a388-71be455f722e','088d2245-79ad-4455-8b15-9a39ec9e89ae','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('8e4eca7c-a71f-4e35-85fc-abf7d4d882b5','a7731a01-9c5b-4a80-b298-fd40aed2092c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8e92b0ca-e8ea-4886-bc00-99e885566b3e','62ab3efe-6de9-4ecf-baa1-021dd1daa278','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8ea3c281-205c-4233-a86a-aeab4c99d8fe','b7190f9f-efa5-47e2-8fd7-3329ebd05a5e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8eaa84e0-ad3d-49d4-a367-3c2bebd9d26d','e08c3918-4f5a-4eff-b8ab-bb5cd755832e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8eaacd4f-1b13-4dfa-9999-f7fb49e806e7','f520e734-d73d-4d98-972f-35ef0ae78a55','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8eb109a7-3d0c-41bd-84e4-13870350156b','25ffe990-e00e-461b-9ea3-3fa2e886d79c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8ee98a7a-80bd-4dde-8ca8-2d506f7d3293','35db2fb4-d691-481b-84c8-a759e9f931dc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8f00e926-1e92-45cd-b593-cdb17b936661','6470a629-5cb6-47b3-a1f7-9532596392f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('8f1e4025-fec9-432c-a114-0fef668c68ef','84fba877-995d-4a3b-8f15-9d0290f9df44','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('8f60b2dd-742e-4059-9d08-d976133341d3','54d19200-13b5-47b5-bf81-147e6ca1b87c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('8fdf237c-4ba6-4509-aa28-8636e73ee589','16bb9f91-a4c4-46a5-8105-bb780aac57d1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8fe05166-2a5b-4286-8b87-80bd823025f0','2c5485ff-e7aa-4fd8-b3e9-e21b2cd6bb31','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('8fe81c96-08fc-41cc-9da1-73a060951067','420d3444-ffe1-42f9-a99d-6ec9bd0ff47a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('8ff05019-7720-4842-ad20-c2c27873c060','120b1ac4-368e-4ba3-a627-b79fa4d54eda','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('904511cd-890c-497d-aef4-9085e28f29cc','69443838-fe79-428e-bc77-2ddc2c94ef8f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('90737d54-2680-4a1b-a8d5-38ccf84145fa','dc99d911-be80-45f1-959b-c54564a33421','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('90999859-02f5-4c46-8e9e-0222adae037c','8f1cf07f-e8f9-4607-b27f-355a482b8dba','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('90bbd5ce-4787-4c86-a046-a8810ed50e43','527bf5b0-55c7-489a-9692-89927dce7afe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('91303568-2548-4cb2-b18c-e181f65e5ab0','37720b87-e02b-457b-aa4e-7f3ccabdf23a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('9146f813-a8f3-4b45-be73-dcb514093e6d','db7ec21d-35f2-4d4f-a732-547e9230f7fa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9179aa3a-a05b-4e5a-8ae5-e90db0ec7201','110cb33a-926c-44ec-b698-e3d9ad664c01','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('91e600da-7101-48d4-b812-8f754c5839e1','cdf72b95-f978-42f2-b726-6b435e3c29e7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('91fb0b99-d1a4-4c1c-80a5-cfad52326a00','5d6d04eb-b75a-4cdc-9dc8-c72f7a8efae0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('927d318f-a021-4ae1-9515-36079d3a589a','5bc5b988-f7c5-4e70-980c-d4de5e4b01df','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('928b08a7-974d-45e3-8288-aeee8201c7ae','ea9ff70b-fbec-4233-bb9a-b645c9b92277','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('92bc4814-d83a-41dd-81bd-d0d8a7ae06ae','859a2b01-c754-421c-a618-6e320d166813','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('92c699d8-5ba8-40c0-8878-3bc7b82f7074','0f0fd015-4801-46aa-82b9-8deec084f728','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('92c8a7e8-8b82-487c-8d65-45945c13b875','3c9c5f51-d85e-454c-acd9-ff2a6ab8e35e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('93c6bccd-d861-4ed7-8c5c-99e00e18acaa','1e93e949-cab1-485a-8c76-f2071e1af0c2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9430b615-6592-4f21-a602-089455ee9de3','dcf9b996-2f29-4b57-8fab-7c3a6b71b015','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('9542c3d9-5e8c-4233-a061-7a3e70a3634f','64745f47-59e2-4fdb-965c-4d8c9a35eee1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('95cac33c-d33b-42e0-96a5-48957e238251','c3e9e785-a9b5-4be8-b629-34f951ae50e5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('95e1427f-51be-4f0f-a217-6236dc71515e','6a7bf258-702d-475f-8eda-852130405739','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('9608036f-615c-4c5d-b121-56f82ef9999b','21de00c4-d6cd-4450-8083-dc991ba05da1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('962a6cdd-c93e-4b54-95e5-522a68ec8fbb','aafa9199-bd33-4b69-8fce-a70c2b7ae9ce','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('96377d33-62c7-4624-9aad-ffc4f239266e','c5b28c77-24b6-4906-8ad3-65b273a5a581','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('963a6c8a-6808-4a9a-b3ba-eee1f6625c3a','aa7898c1-4bbd-426a-9417-62b194b5f4e9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('96ca09cc-2f20-49a5-ab6d-76d6d08fa706','fdb7ecef-aa63-418f-a38a-b10835873dd6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9703f662-9458-49ba-b807-113de8f5744c','866fe873-6055-45ad-b094-d956f498c444','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('971eefd6-ab84-4794-b4f8-f7d22393f571','7acd6939-7c96-452b-bf77-1f24d4e0e53d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('972a6d2b-edbb-47dd-9269-be602c61b4a7','0e684c38-f70f-4795-acb4-36526ea4977e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('976c7ec6-361a-42b6-a7f0-299ebefecd97','7bef5a16-38df-458c-acf8-6c31a39a3e45','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('97ad8394-dd4f-47a1-b7f2-d4ccafaf1be7','8b1dc1af-3c25-49d4-aed5-2017ede4ded6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('97c7ed07-f010-466e-bbef-9eacd34bed3b','51b40d67-6882-4637-b29a-f3a688786e4f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('9807d3e1-3274-4e70-88b6-d98ed806d593','c38ec827-3ebc-43d7-82c8-533c52e11cf3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('98636617-3366-4ff4-871c-908a18874330','8796b2d2-cb86-4484-8059-e3c5a51fb324','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('987e9631-f639-4af2-9865-aa3ea63213a3','620b5fc3-1e81-47ff-a113-4cdc7bd40f4e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('98943b7a-edf0-492c-a0b9-033338f66c19','9236512e-1b2f-4bde-aa97-476b301985fa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('98d91460-e4fa-4c6e-ac78-0c92bef2968d','7dbc9ead-3366-493f-a68f-b5309b30e969','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('990d4c52-7885-4787-b67e-8c9d189031d7','7fdd94a4-fdea-448f-bad7-e4fe33f35211','aff8fcc3-a57b-47f1-a358-df083c6e830d',1,0,'2026-05-17 20:30:12',NULL),('9922e218-51e2-4c5f-accf-bc2fcf446ff0','55bbe693-5fbf-4336-bf70-304eb7c84266','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('993d1b1f-bf95-415d-b370-790cc1916f5b','93291c6b-85d2-4b89-a41d-585acef650a6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('997163b2-42cd-4c7c-b112-f471add993f8','1fa074a1-4f41-4f55-be85-88e217becbe8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('997e8701-8193-491e-a97c-15c7e59af7fd','389f0c3a-3da3-4d37-8e0d-a4f9c6ae5a64','ce2cca7a-84a4-411d-9b6a-168c5e260f7a',1,1,'2026-05-17 20:30:12','2026-05-17 20:30:13'),('99bb6404-72a0-422e-98cb-6a896804d286','4783ba3c-e2ca-448e-9f36-8a424c0fd154','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('99f64f0c-5abf-4fe5-aa25-0c25174c6c87','3199079f-377c-49e5-82d0-7fa4dc8f9543','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9a73362e-6562-46f1-b263-5abb461d1771','5e788147-2875-457b-a6e3-b6c7a3d9482b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9a813871-dbd9-44a6-9d65-ce737fce3165','cdf6adf6-5a4b-44af-a431-f909d1e2aa3c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('9b1b3adc-4ab8-485b-853f-66e91f814697','3422505b-7ecc-4d18-93d0-b0a0e9c64f16','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('9b4775d2-6463-457b-9fce-c37304dd58cc','e88377a7-d529-4170-aadb-9ea57bed3277','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('9b4bbb37-a5e5-45d7-bcbb-47108bec783b','c8fb938a-bf54-494a-8444-43326762ccb9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('9b7e9576-ae7c-42c0-a9bc-b30608878879','e3a70848-7b14-4675-ab48-e0747d67ea4e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('9ba6e70f-bbde-479f-988c-9ad349a54623','2051c3f3-e60f-4696-90b5-b3428768fbcc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9c080294-c6dd-4f73-928b-bb477d76af63','de8979db-cef6-43b2-bf1f-5e83ce9ee32a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9c719e3b-1bd2-4abd-837e-98c25bae64e2','4ffdc906-aee3-4ea4-bd30-e32b979eedb5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('9cccac1f-daf9-4ee5-83fc-277a05be5893','3ac15df2-2b2f-47b6-9073-0795ed8880c7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('9ce2126f-a7e6-4e09-8742-44981d3b75e5','fedc7592-4a31-48d5-a016-5b4ebbd63edd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('9d14016c-24bb-4c07-82ab-133f1c222077','2ebaaac2-d19c-44c0-b9d2-a54f71d45800','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9d412746-0e2f-4a7b-a097-86290404e71b','98ac5df2-ddb8-4d2b-b0b7-b0814f0fe405','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('9d9b19be-b7ed-44d6-9764-04c7e392a715','4870cc69-853d-4cd0-8305-8de21b7e680d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9dd6774b-dcb4-49fc-a184-3ea732fdffd0','00fb4782-5b7d-4c2f-a955-9b4c3533471c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('9ded9b72-e307-4692-8692-b130046f6ac3','d464c7c7-a6c8-4453-b5df-edf318b89138','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('9e8605a3-c3e9-4ddd-a8bc-3344224c1b66','d760b42b-6eb3-4695-89c2-fc952e70b0ab','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('9f40820a-7b67-48c2-b1ab-30231fd511de','3f78f658-441e-4938-a1cd-ef140a910035','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('9f8f440c-0b03-4aa0-b7aa-005d9a6f2306','9c28849d-0efc-43f1-9720-ad063124387f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('9f925487-ecf4-413b-af7c-0091b4c766da','61504398-4c47-417e-b220-84380c8bc2fa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('9fba6506-6c85-4bdb-b2b2-199a218b2d59','b89af1d3-cd3d-4b8f-9a98-8a6466c25804','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('9ffdafdc-15a0-4d57-88f5-e777d8c90ce1','8cb9761f-4d73-49b2-aad3-280a6a6d27c9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a076d28e-911d-4dea-a691-150edb1286bf','d8598fe8-0169-4e22-ab0a-5dbf4bbd0c2b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('a115bab4-1ebc-4cd6-931d-178fef1eb3b8','48d2fed6-073c-4c4d-981b-9156f5341559','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a163eb22-7e7f-4bea-a4ba-113d330ee2c3','015e4f23-f802-450c-aed7-9806fd22bb5b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a1a30853-3fa0-4e98-8358-8a4bedace5b8','a065ec82-a4d9-4f06-9c81-eaa2eb578a36','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a24052de-6446-4437-a47a-57f25e5f632d','4bd6b719-7423-4c53-910f-67ca8d75fcdf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('a29f6729-ae80-4f7a-9bac-9c52fea3cee7','50450ba6-1834-4211-97ec-298435110f92','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a2b67d5f-b0b0-4945-9d4c-062719f57c01','a97f1520-3b27-48dd-b2c6-7caa67f843e9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a2c3abe2-972d-4a70-a155-7e6950fd61dc','a2568de1-d535-40b9-ab6b-cada1d3fc8a6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a2d15728-1b05-4eed-9f5e-4a694123f315','000c377e-d576-460e-a31f-82ee81651068','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a34483ea-2603-4e2e-879d-846db1d0593c','b90d7196-80ad-4dfc-840f-ca85ca840f77','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a397743d-dc83-44b4-b1bf-014f3a6e026a','bc1cbcf2-ab42-44c0-b423-b0eea3d9f37c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a3a1ea7c-c80e-468a-88b6-cda62ede0bce','25d2a67a-60c0-4954-ada5-cb697c0f5551','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a4176bd7-bbfb-42c5-b627-76c2d3a0fcca','ea8f2487-86ab-4220-9548-1e7e3c501e9e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('a434c003-c069-48b1-8331-d318f35b17d7','8726c0e9-ba14-4f1b-b763-14f4bee049c0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a49b5587-383d-47d1-859c-92e14cb12c5b','3784508b-d4a0-4dd9-a014-c76cd07dee2b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a4a1a873-f32c-495d-92d2-e2bcae0ea4ea','5cc3b439-0f44-4e2d-bf94-cd61b2aec7b8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a4e17174-f6c5-4529-9f51-7086363bdac8','988440a7-4604-4228-94c8-7ed1394eab9f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('a556e5c8-0103-4aac-9e2a-f3a4f752b2e4','dec2dc40-ae40-4116-9ed1-098a96081e8a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('a583f0fd-91c3-4eb0-b839-760e186de5b1','9853eeac-4a06-41a0-947e-0185253185c2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('a5cf1985-5cf1-45be-bc10-32e962cd5bad','922b4b0f-299e-44dd-9369-74dfc61b13dd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a603b81f-0ad9-4973-8c91-df07ec78c3dc','d41d1d05-65fa-47ee-998b-622ae4d37cfe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a677bd97-e057-4ff1-98ae-364cae9ce684','9be5b45a-d4ba-4e0e-b80c-3ba51e426c70','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a69d5920-d00a-4128-a90f-b64835503f62','25514912-c7af-4745-9e3a-2d6deb777f29','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('a6b50213-f5e0-4e03-897a-91efd5cbcabd','ce2401ce-846d-4059-bf8d-a150df4685ec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a6c3e169-b21d-437a-afa7-95b57a57fdd1','fdf2bf0d-ba95-45b2-b1f1-c453958873f0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a6e44799-b91b-4a01-b627-542333f17619','64999e83-bf65-4474-81b8-10a4f6a98eb6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a702b73a-d7fb-40fa-a2a9-76a8f90665fd','f2c32e73-f9f8-4eb4-9d26-a3a2ccff1c64','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a768b4b3-7e66-460d-9e0f-08e99da19dea','6f98d90b-9b6f-4fe9-b830-8878dd86dbf1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a78a6a30-a2da-4b7c-a09e-2ad659733cb6','4bf45760-adeb-49a6-ab92-7cadfaaf14ff','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('a78c8810-9f03-41e4-9f62-ed69548a937c','5112158c-7c62-4d09-a7d0-551b5a02ce04','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a7ae6ff1-1c52-43db-ace8-7f572bbacc4a','21176186-754f-4633-a213-7e03731dc09b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a7aed284-3fc5-4e43-aebf-bb6387bd0572','40b67e99-9b8f-4ab0-b766-e924724a3101','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a7e21b0d-5f71-455b-861b-ef8601eb554e','524d6f9c-13fb-4d02-9755-84331f9291b1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a7ebb890-e4ba-4aaf-83a5-8a1acb631428','1ae1444f-f7f0-4baa-b367-2ce7dbadb173','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a7fa4f6b-ec82-4f5b-bb49-c16f7af9f22b','252e4942-ae9b-4a51-ab04-e0a31e9f3408','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a8160009-a0b3-4c13-a09b-ea320d496b6c','7412c244-1b01-4b41-bf65-eecabd38c1b7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a82583fa-2862-4569-8b03-be530723446c','9b710ff2-ff62-4074-8c72-62fded8f8f99','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('a8b3ef1a-aac7-4a7b-a2e7-08774041ef31','bb48654a-819b-4578-84e2-37048c5c75d6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a8cc8e1e-d0d1-40e4-a321-bf5aa0f7b1ff','2c11e58f-115e-4b70-9714-9cf1327a14b6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a94aaab2-3ab6-4fa4-a40f-b126986e77a7','4066cd81-b9cc-4ef9-b67c-7bf73faca39b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('a9daa33c-4cc2-4208-a7b0-b4058cb59191','74b0608a-483b-4a84-b603-b03298af657e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('a9e4de9c-c9e5-4570-b358-a1138534fa75','a1f03632-fce3-4793-9148-3279861fb70d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('a9f87321-69bf-49c4-bea4-8064b01a6cee','9582aee8-e34b-4cc2-b418-f59b9f15c3cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aa74f38b-02ba-4355-9dcd-79c5381c3f88','ff13a237-6cd0-46cb-b315-99fca5ec5532','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aaa26bfb-3a3e-4a8d-8998-f97ce4018279','69941430-70bc-4bf2-be13-58ca7ea33ced','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aaa6a78b-423d-4bed-a9f1-89badccfd9af','5d75b981-b49b-4f82-ab89-7b51e009e671','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('aaa715bd-03ab-4610-8211-42b61facf5c6','6dbb8338-b75d-4a37-a214-22a4ee7e9c5e','aff8fcc3-a57b-47f1-a358-df083c6e830d',1,0,'2026-05-17 20:36:15',NULL),('aab9b495-1357-45b2-a125-90508afbba97','d22d7ba1-56f8-441a-91f9-0061f0772607','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ab133b7f-407d-4c1d-b29d-44da2bf0557e','083ddf5c-ae9a-4d00-9f63-0030ef26d589','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ab4a44a4-5a1c-40c1-bd90-ae0bf0819599','ff1d18d6-0945-491b-bb8b-dff25a2624e1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ab5e354d-a362-46d7-a114-d66643cbac59','86bd0db5-5cc9-42b8-aca3-e5985d97252e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('ab8aa400-aa2f-45ce-8e37-d46d01c4d293','db47c704-2731-4bc9-9628-cca886af3a06','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ab935b59-69d0-49d2-960d-9ad90df87ed9','a4532c8b-41cd-4c71-adac-2838da6eaeb9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('abafab8b-5ee1-4062-87c7-5ed2280f2e0f','4c22ef7a-b1d0-4cf5-bc53-97fe7b6b6582','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('ac1fa4e9-738f-4af1-8ee3-af828ed00fe4','3e655b65-474a-426b-81fd-a3ff68adaed0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ac2ceb2d-d05a-4853-9ef1-287034363ba8','2ad7f42d-19de-477d-8cb8-23fe7ea37b93','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('ac3d2776-937c-45bf-87ca-db2e5ecdd612','005cca7f-816a-4b1f-9381-557f12ab0958','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ac5d8992-efe9-4049-9a69-19767ba14114','eb4ffc5e-9da2-40a1-9ef1-636be1ee4332','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('acadc5a1-eb14-4e67-93c5-ce5adeb93976','d73be17c-d513-4503-8af4-aa70c35036f9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('acc6fa93-78e1-4f4f-81f0-223fe4c12035','335fc8f5-e06c-4b5d-913e-13da129e8b89','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ad3a04bc-e3c1-42c9-b9dd-58281d936859','2baea832-fba7-404b-8bf2-20379d59736d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('adabc002-e6fc-4160-bacc-df90047395a0','5408e21e-c036-4b34-a2ec-4b8b401c2fd2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ae4fa7a0-b80e-4071-a52c-f9e660e90792','376a8f2a-a9bc-4dbb-ba48-1174a387b1ca','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aec24bbb-4fd3-425e-a603-41aa8656e46b','4a73725c-f181-4ed4-adb6-e57171fb1ce4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aece8e14-af45-4c73-8a6b-1ed85412860f','32677f97-5660-4358-99ee-713fb4439834','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('aefcee52-097c-4470-a762-4b633afb3cb0','e6a6deb2-46cb-42a2-996a-7172709430a0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('af2040db-403f-42d5-a7da-4e2a55843937','a3aceffb-e2e3-4fea-be0b-05ed5592bbb9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('af405193-6b75-4c0c-9b8a-113c92d20319','9f81af4c-ab54-4df5-a517-98037bd53177','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('af7faa78-7655-46e5-8ade-3b33e7a64adc','eb473ffd-5102-4bab-9ff7-1770ecfd478f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('afb9063f-3d24-4d8e-8315-30faf14ba9c1','e6b687fb-5464-4475-9a0d-676946eb997c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('afb977e5-e097-4354-9441-11f407668cc4','d5c0c8d8-3746-43f2-8574-022406116940','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('b009e576-c0a9-48b8-8938-2315acb20b6f','7fe026a6-0a8b-4487-980b-43ea78318639','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b04c4765-c3c5-4c5d-a580-10db261d582e','97eab467-dd28-47cf-9d28-630971313c0a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b08f6ac4-e01c-42e3-9f60-9384eb613507','9ea2f25d-40f9-44de-a9e7-c06cc1347c4f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('b14d5f5c-287d-42bf-b59d-9ad5641e3d57','176719c5-e714-4c71-b97b-13e71bac63d8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b153ff32-741b-4118-bf59-d5ac874f9022','ba4549c6-cc7a-4c5f-a8a6-a3141e7fa3a6','978485b4-faa8-4573-8f43-c3de3518f597',0,1,'2026-05-17 20:30:12','2026-05-17 20:30:13'),('b1823b75-0842-48ac-8eae-c0c5cf072099','c469665b-d449-41a3-8530-5d6609e17d83','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('b1be642f-4689-41db-83f9-c1fd29b9f351','4f32d862-dec5-465d-b44a-2359393511b9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b1c8f47a-88ec-47c3-8d78-5583f43b6910','e3269141-f6ed-46d5-8129-cd45f85ebf44','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b1dd79de-2dec-4d6c-8680-591ff24b296d','c002fdff-7a52-4e5f-8a90-e73c584d2ee9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('b1e6afb9-1837-44a0-b4f9-633bee2b0400','8e6fbc8a-2df0-4887-89ba-273f5e178567','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('b1f3e273-af85-4cfc-9d50-1ba79d799a08','ae8519ac-11ae-493c-b29e-a9d8d4c27485','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('b2106461-d0c6-469d-af00-b596121d641a','4a9839ae-0a97-491b-b23e-ba0e86334de7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b237e1cf-c9b4-49e6-9221-f23e7a2c57b4','e3c37aad-892f-4cf4-a8b3-1136a7b788ed','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b23ac691-d933-4fdb-bd94-f67e486260f9','bb976646-8426-4c83-ae9b-b5857f4746bf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b252f2c3-ddb2-4b92-8bd9-50e4080d85ea','a51001c9-2268-4de8-93dd-2c2fc3088290','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b3034a89-4580-407d-aac2-27c46be976cc','edef6ada-417b-4a89-aa55-a748c6b7a7c4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('b34f478b-6f74-4895-98cf-56ce61a2f7d6','8994d180-08f0-425a-8b12-8be7e6b5556b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b37f2ca4-52d7-4c0b-a4e5-1bbc3d946e21','7c2514d4-6113-4bfb-8da8-3f3aa6aef16a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('b3dd21be-870b-46ef-9528-e3dddee5de2d','632f34d3-b00a-4ec0-8d91-48478e1e867a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('b46af2a4-bfe7-4539-888e-efedd7b9e50a','b98ba029-1d8e-43e8-bd07-8384f3caf965','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b5dd5266-572d-48a4-a89b-3d4706247eb2','1adb9a34-0d99-43f0-8ad7-1a3a6b52b5cb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b5ec055c-960c-400e-8b15-40e89cdf93ef','fb40c453-ecc2-45a3-a052-3a73945a7165','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b5fbbf24-dbd1-459a-a3a5-2d5c2a301466','f3f069f2-4e2d-4609-9b89-2335075728f6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b67eebf0-ba4a-4721-a8ba-2475915212ab','2077c28b-f276-4cd6-a49e-cfd9f9855ba5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b769e8e5-7a0a-48e2-8322-bd9cc951a513','5af86b53-9ac3-47e2-a108-6c37d63bfee1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b7e1d64c-55ec-48c2-bff5-87e30454192b','5170dcf2-b031-4453-9886-58ace5fde31a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('b7fbe168-511e-4217-8dad-af27d6b54875','4848803b-889e-4557-9670-abbf092de332','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('b8042b1d-893a-4c9e-9509-fa338d08ee3a','08c75c19-4759-46db-8583-0e69d4bb1559','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b823b0cf-36f2-4b7f-896f-091f0653dd6e','9e1c4b68-6f03-4b9f-ab64-42117ed0e274','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b8d7aed8-961f-4592-a791-d5598ffa0feb','8e4fcb66-366d-4121-971f-13685f3988cb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b8f39ee5-3eec-41f8-b750-344d2cc79efb','69e88a5b-8431-4328-8c37-732de4ad5c2f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('b8ff4d55-543c-43ce-b5f9-935fac32aa40','0f07d31e-65a9-4cda-b379-0ad22f0ef596','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b936e384-7104-41fd-80a3-9c053d03e1fc','55363be8-5cb2-49d7-b252-feb173679014','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('b9c8c76e-92fc-43c1-9d68-0a91b285d6fc','22f8c07d-dfd1-41c5-80d7-f25037d21f18','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ba0f969d-8e36-4ab2-9438-a9f3904962b2','b9d26492-0589-49e1-b293-cd283c97a22d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ba5be02a-aaca-431e-9c5d-9d2194d40251','82fe09d5-90bf-4bea-8e44-37a276ebf19c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ba81e41a-71a4-47ad-93c8-eb2249b88c8a','33196026-78e2-48e7-9e77-01478d1afb34','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bab38fae-4b66-4ad7-8e8b-a1d337171ac5','48b9efe4-8f6b-4593-9ea0-eb26d6885314','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('baf25c86-1f30-4de7-b147-df30fa58030a','09eb610e-05a6-42da-97b0-f123f3036bb8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('bb75df29-018d-45e2-9f61-4cf1f1a7fcef','44a011e5-c17e-4e56-99b4-277941c0f4d3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('bbe2df52-3774-473c-9ed5-b465d328fce4','47c426f1-225e-4e54-b376-9b73a16c2818','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bbf8750e-f635-45af-8484-c58165b92715','b513751d-8d6f-4bec-bfb9-1ccd08e19063','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('bc829a4f-3b7b-4f76-9229-58cd91c83a11','b1d5360e-75dc-49a8-9312-c12e0e9c0e4e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('bc8c64b1-6424-4c45-a0ac-7f970f19f9fc','7836d85a-1b16-46f0-a0c0-08037b2f2cf7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('bcf3ec3f-5c19-4b2c-a928-5570e587a8cb','2a666740-46c6-406d-86e9-2fdfddfbe55b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bd1abbc5-a534-46ba-a164-4ddb89220caf','1e8f949f-8417-4267-afff-0b2d2840aee0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('bd1ce1d0-079f-4201-ad36-7d803d6588c3','a2258560-295a-481d-8ee8-cf7eb7e13578','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('bd94166b-ca9d-4f3f-8c71-39f5318bd726','ada68057-15a2-4272-95a7-e66456176362','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('bda350f8-c56b-4916-a927-ef1473d54c7f','c3648fd0-88a2-4063-af0b-80e5cfbd5a46','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('bdbd0a22-de0d-4f14-80e0-b628e19b9e78','184e3d5d-2568-4b9c-ac30-4271b1def8a4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('bdd299e7-8e42-4555-9669-56364c2a2bcf','5139ebef-22a9-429a-b002-595450fad1f6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('bde89ff2-f385-4c52-b67f-7d4aef4e7392','7dbf3de7-c6f1-4aa7-802d-8574f0192e6d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bdfafaaa-2263-4441-b816-7840999ae46d','59ba1871-080a-49fd-9e38-d92ec5725391','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('be1e77ba-e957-4df1-b6d6-baadca4487fd','2053eb45-fabb-4d59-86e2-af52d2e13dc5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('be649b5c-c5e9-41bc-b9a6-af23c73f624e','047a9d37-e2fc-400b-8cff-73a9f857d724','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('be8c17cc-d314-4e87-8812-20acea039166','cd59e128-3a55-4f97-b985-218892bdf779','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('beae4868-b431-40a3-a0eb-9021ed26213b','6932ba02-118b-4c54-a00b-75a755740d06','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('becdbbd3-1042-49b4-bba7-3df70bbc5123','6ed3980c-c66a-46f5-8af1-44a57a36fbd2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bf9b2e5e-58e7-4426-8dea-5ea9b18c67e4','ec002d0c-7b18-4078-a0b5-37c1f5c335d0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('bfadb6ee-792b-4ba3-a198-df97e403652a','0dde48f1-264b-4f7a-a638-346851301a4e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('bfc5e6ba-d0e0-44b8-bd49-fd2d3686033f','6fa9b884-d97a-45be-9e6c-ea0ff05db143','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('bffaa8a2-d519-4448-80d6-7aa1ca97f88c','287ec3e8-a125-4bce-bb26-fb00622fe97e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c01ff4ab-f9fc-44a2-a13e-244a94a707a3','85bd27c0-0ce2-4945-8a3a-be999c1526fb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c0570ab1-841b-4cbd-ac00-a763025563b2','93909345-e437-4a5b-b207-f48d13a2d8d2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c06542ad-1c89-4ec6-a834-32e2df5a8822','2ab0a521-4e6a-4a3a-bea7-b28688ef6244','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c08b6299-6fee-4069-b23f-cd804abe2227','21929a59-1c74-40ef-9e75-b0d5c30f66d0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c0c0204e-1201-4107-81ce-d94222385931','520e33d5-62f4-4353-8324-0d6a3511cc17','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('c0e62bb6-d88d-4eab-986a-c52f56c05ebd','cf2fd874-aa7a-4d93-a579-c4845f9880eb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('c0edac61-ed5b-470e-b667-d405a7cd3a1c','73d7902c-bd1c-4b1a-ac61-962794d2faad','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c1389948-f162-40fe-9ad2-48424934775f','9c7ef3aa-eaa8-4317-ba09-403d2148a83b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c1446d3a-cfd3-40e1-80bd-476f7b7e5d65','a8fd8cb7-2e28-4013-bcd3-62373645a3f2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('c241cd68-7e52-4d49-87d4-71d54dee83a9','a152f93e-98fc-493d-bfc3-0cc3de840a2f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c264db83-b0d9-4cb5-a69f-45fc59c46104','e444efdc-4324-4cd8-b535-ca8cf6893744','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c2a84494-8fad-4f07-9500-049a77fba183','cd303898-e146-4d8e-a5c5-41620e02a3e6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c2ee5ca9-4d9b-40e4-9b78-3a4d79a03dc3','a1b9e35e-1ab6-4d0b-b712-b9a1d038c487','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c3335e9a-ab86-48ce-986e-39719e0d9911','79dc726f-e01b-4412-b993-88817fe9d495','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('c372affb-a0b2-4dc4-9d92-c703f51c1d2d','bab3404d-dd93-43e6-82a6-62f5af0f4d87','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c3b6cbee-3687-4d8f-8de3-d58cbe4bbcd4','e133ff6c-7241-4664-bf9e-1ad05cda7bfc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c3d2f7ba-a7d0-4487-9ffb-df2d4d722c2c','8b8e28c2-c111-49ab-9dcf-b4ab48a8f97f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c41f3345-8d58-49c7-a225-84ba7e7579ff','a877b10e-2874-466b-b231-15fff12d81a6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c42eb2c8-49ae-4f88-96cf-607ef42d602d','33461e46-a255-416f-b4a1-317d8245039e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c4332648-fcb2-4725-977b-e7a7456b1dbf','2a6fa23a-cec2-452c-9a47-00374465fc99','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c4688d94-6dee-4e21-9876-ca0c9e4439ce','7f533596-7c27-42fb-b943-66b665f24948','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c4ce9c68-05ba-431d-82fc-9f488a1f48fe','fa1369a9-ee09-41f4-acd9-43d6342f5662','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c4da9997-12ac-4179-bc06-fa1743d33b38','0a86edbe-2869-4153-869a-c5ce5800ae83','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c511794c-f354-4356-a1f7-0225b52ebad1','1bd0f2b1-6aa9-42b7-85ff-3e32a7f2e7cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c5228b21-9cb5-4a8c-b733-f4e01f1ebb5a','6a0fedba-9166-4b6b-9b76-c23af78e06c3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c574e8c1-952e-4ac6-8921-58150e4c8b0e','22312e5d-3f10-421e-8497-0c66efdb1477','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('c5b202c2-cd07-4a02-b05b-f93bdf0c841b','77e58025-b4fd-473c-b63a-0f07737e43de','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c5e5f009-c9f0-40b6-bd95-ecb2dfb7f4c0','ce7c69dc-5291-48d4-b8ad-1a6d997967ac','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c603cbaf-10a9-446f-b723-1ae7a51e9187','9e0cd4cb-4724-414c-b54d-70ae372b29a9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c6537664-5b53-4b15-b704-9406118473a9','a438657f-bd99-4ced-929e-e1225b442695','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c6e84d75-53d0-4136-b0f4-ecfbfa326a7f','62eb90af-67d8-4460-bd2f-919c46e6f3bf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c70b7ab3-f8e8-4c7d-9897-9ce605e0b804','5bacfdbc-de88-449b-be47-312fc5e3f982','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c78e66be-9be7-43db-90ab-e5e9370bdf19','7fdaed76-8054-4c25-a0c6-d19c241efd24','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c836002e-347e-4855-864c-cb802a92afab','a9956c73-2df2-47b5-91af-6202b55c9601','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c86b97e4-7731-4ba7-9089-bdcf94cd3378','beefdef0-22e0-429f-b0d9-c047235095af','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c878fbb1-15f0-42b6-ac64-672efbc85b0a','9893453d-9846-4b27-b6d3-903dc2a82780','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c958518e-94c9-4721-8995-335ca5e6527c','115e06e7-d8f4-41e1-a2a2-de96baf2283c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c95a48db-86d9-4c2d-b3ef-61dbeeecfb15','bebac628-b7b7-46fe-896e-d9e6d561069a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c9933dc1-27ee-4671-8747-f1ee8264ed4d','3c6777bf-b8d5-4b9b-a852-f598fd1ca964','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('c9a10fdd-2b33-473e-8c4c-e1c425b9344d','dbc252f0-eaa3-45f0-9edd-e8c53065a603','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('c9b08f0a-a8f3-49d0-b180-2d4575efd214','23fe6b00-4442-4a9d-b753-03b174a7e950','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('c9db990c-a0a9-45fb-bfdd-bcf7cb2d74a9','bf7eb9ce-d66d-44c8-8000-3ffc6eae8935','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('c9f12dab-cbc9-4355-b0ca-f762cedba08b','f4f08394-e129-411e-9857-b33bfb2c6f6d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ca093a0d-1385-4cb0-b121-dd906bd1a818','8a478faa-5a70-4a6d-83ea-22635a2c01b2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ca41b5d1-bf8f-4ee9-8bd5-8983d816a2ed','7b16a3c9-4d50-4577-b748-f507819411ea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('caad8108-8876-48c1-9756-c00c9a2ea431','811a640d-6042-4278-a444-0638fbb60e83','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('cac9dc8b-bd4e-4666-aadb-5cc656793e05','0267718b-eb9f-4766-869b-bae7575dc455','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('caf19d44-e8be-44f9-9f97-d2b6798063b5','6e353316-de4f-4c95-88f6-24c200988bcf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cb659248-3e8e-45db-b56d-624b842fd86a','b1e36109-b9a0-4533-a67b-e422cae781c0','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('cb6a8ee9-eb44-46d7-830a-3b38cdfc47d6','c81c73ae-e17e-4b39-9ee6-5c5239b67d53','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('cb76cad4-8343-4c5c-bd96-dd24dd878aab','0786c4fb-3f7b-468a-8848-d0461b4c2432','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('cbe0ea41-f327-48d0-a02f-40147265e68c','feb78853-c72f-4102-9716-e5de7c300177','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cc538b60-14fb-49cc-974a-ddb2d84a0776','222ab1bf-dca1-4e4f-a908-5cde97a0af2d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cc959483-652d-437e-98bf-9578e678b0d0','5bccc8fc-23d8-4cee-8cf7-ac5e69084674','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cd2131d0-5315-454d-8f2a-beca7b11adc0','8ed6215d-946f-41df-91d3-e73e6b5b2af1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('ce25456c-c7cd-478d-aa63-0096a5514d8b','62d3c2c8-68f5-475d-8b8b-eed36caca37f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ce83e1a9-a6e8-4146-9595-9f9b83b14f8a','1189ec09-337e-4dda-b2a1-26846af6ab7e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ce8e77ee-5534-4b6f-8244-d9e00727d9f7','b11dbe4c-36bc-4c4e-abf4-7fb24faace52','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ce919ec9-4474-4088-9719-57b51e413ff3','50a66f03-95d6-4d94-870a-29fd596c7c6e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('cecffb03-34cf-4a8a-994d-d7dc3aa593d5','956a148e-d5f8-4dd9-a6bd-e4f53056ab86','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('cef3f188-36f3-4c20-b044-4491fd446bb4','a1c93bfa-a49a-4d85-bfed-1d00fd5f61b5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cefe76bb-b6c0-4fc7-a611-600dbfaa4304','f0ebca73-e597-4acb-9b0e-c76a9b8e1ba1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('cf2359c1-2b60-438b-bae4-3c7b51f727d8','52f58c83-2295-4799-a289-cde907d834ce','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('cf2d08d6-31e1-4168-bc78-1cdf78cc7f54','65e99649-ef0a-45b6-87f2-81d66b74cfdb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('cf5b8c96-5825-45ee-8dc3-2eeaba9fdd00','18fa147f-f952-4882-ad8d-490721a6615c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('cf75ad3d-b78b-430f-9102-05191424a50d','35026c65-1941-46bc-8b1f-c600ac6cab12','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('cf7bbc98-4828-4477-aa6f-b34cf1274a3e','44a5133f-0938-481b-b354-54cc7871001c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('cf9d11f3-5942-4cef-b063-104dac7c02f1','7e5321e1-88f9-4b22-93ef-935b76348215','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('cfee3d49-61c9-42b9-95d3-b5324672921a','2e8de5ad-27fa-4201-b753-3466a6f0cba1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d0084eae-fbba-4bcc-9735-92e8e7cbab84','bb973a4f-7957-41da-bb9c-5e4f9f6484bd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d057bbc5-b1f3-493d-a91e-ae5f0e519097','74f93cf6-9b7d-4eb7-9e4d-24ee39b1bb3d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('d0b1b54b-c02e-457c-8477-09b34221a874','7291c463-de58-4690-aaab-206e57186a8a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('d0f9b30e-2d7d-4e40-83da-b4caae8315a0','7200630c-a139-4e7a-9655-10cc5e7c7b6c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d10e3a6e-55cf-42a0-86b5-790934969306','29896cf6-f52d-4891-8320-29d44d82b7ec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d168e0d7-3cd9-4bdf-985d-486d9a2a6829','003e91bb-2da1-4806-83a4-4960c0a71762','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d197e358-aeb7-4aa4-8bf3-c33c2b85cf8e','9cec385c-9a5a-4b70-b07e-a42c9805f32a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d1d76784-6ccd-46a1-9148-42941f6652a5','19bf7698-ab9c-4ee7-b6fc-7372cf1a7d4a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d21865e0-c513-42ae-9172-b5ef3853f231','4414bf06-27bb-4a38-bc22-0009181434df','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d21e29ba-113d-4a60-8de7-74e1191846bc','6dfd2b4c-747f-4e50-9c1b-0c24f9807137','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d2adc053-b1d1-4cea-9308-c92c69dc7de7','bd4058c3-3ae0-43bf-8a72-00f100564035','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d2bae0ee-9f2d-4f8a-9ccf-8d8725f2f56c','3a4c8376-cfca-4b95-be6e-8c6dbf5ca45e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d2e2299b-da5e-4d4a-b6cd-10827b28c472','41aa8735-51f2-4909-9acc-8a864de8ec13','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('d309ddfa-ad8c-43de-8193-9f31f7afdcae','362ee827-7c5c-4a5f-aa83-15e6e621a701','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d36a7d36-4439-4dd1-a760-0c9e783f2bbe','d2065a26-dd74-4355-8f74-18425b4f8ca3','ce2cca7a-84a4-411d-9b6a-168c5e260f7a',1,1,'2026-05-17 20:36:15','2026-05-17 20:36:15'),('d378f12c-bab5-462a-b413-c0f736e6d1c1','d6fcbe5d-6556-45d4-acca-d7cb444cba51','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d44e96df-3c47-4885-b04d-ebb73695679c','f3fe63da-187c-45ae-834b-0d3f2037810e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d45578f7-884f-4f4a-b9ab-f54a2a485d37','c0a50935-eab8-41e6-869c-5898f71a18f7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d45c2c84-20de-4be0-b966-6ce59509a476','4cf70a5f-c27c-4c69-9ec2-e3b6194d80db','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('d45c8a72-9912-4823-88f0-5d7558dbceb9','fc10b0cd-49a3-41c6-8c7e-67b265416bad','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d46ee692-9ebe-4d80-849d-c29c621ede3c','6ef260c9-6902-478e-bae1-e9c166657f1c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('d48d2e37-ca0e-476b-a4c8-8092ca72361d','47d358b0-0739-4b28-bd7a-4afd6c6916fd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('d53c72cf-d464-4431-a2a3-dfdd8f9050b2','2f8bf513-f8f0-4bd8-913c-e1d0348e71fe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('d568e664-402a-449b-acd4-63d169597c89','81a82b97-2707-4a12-8f07-add3c380bec1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d5708fee-414b-48ff-a60b-66f9a6ec6e77','80bfccf4-0f5e-4f5d-b723-7468f421d116','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d5c56e57-4eef-4201-b92d-9a0c2190a613','a534d05c-965a-42a5-b00d-0b4f9e8e92a8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('d638a6f0-e923-4f2a-b5ac-f1b2020fa878','52590d6f-b16e-4825-b70d-29396e273484','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d6bdd28c-5491-43cd-97ec-d943bbd5374b','d9a9aba9-9f08-43be-8303-7bd0f5483846','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d7a80b70-0da7-4ee4-b103-f3437ba60662','26624ba1-2aaf-4d46-9792-50e41a4a5f14','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d84a9a4c-2b37-4604-9fba-88300de25910','c7ea4989-b789-47a7-a34d-d402473a952a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d8d77cdb-d554-469f-a5e9-edfb14c6dc19','af56b5dd-177b-45a8-b5a0-73e84818d1ee','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d9167797-3d87-4786-b479-515659e6224c','e55e66af-8c69-4213-bcf5-b8315a3d0c39','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d91eec56-0203-4d50-be4f-685ac798ac15','753ef095-5bdb-4c04-a6d7-94abe9169647','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d95cf707-6632-46f9-a9bd-79158f0bcef8','433c00e6-55bc-4531-80d9-a0ebc992c759','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('d95d8293-b607-45f7-88e0-4eee626a3308','f4e2c476-5031-499e-846c-cb621b7c36ad','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d9a5e1fb-cad0-46c5-ab9b-bb4907cd8695','2d70308e-15e1-42e4-ba2a-95a8ee7c9544','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d9bfa4ba-675d-434b-92f6-fd82ad64a306','4d4be8d0-d3d5-4889-900c-b4c90cefbb06','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('d9c62a55-f37e-403b-a4aa-de9582d662a1','816ca2e4-13bf-4035-8856-69c53ff49d41','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('d9c89793-09f2-4d70-9ba1-9d1bd807a95e','357cb787-55eb-42a8-937d-f17fc964fb6b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('d9db592f-ad94-4661-a45c-f5f810507cf8','1cf2c350-0660-45d3-824e-6739e42975b3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('dac487c5-b495-49d5-8942-facb81af6fdc','d7c6e054-cf1e-4797-8730-ce8c5aafd96e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('dae14f66-ae8c-408d-b53e-367594865e9f','c8f9a823-ef9a-4bd2-82ca-4d69693ab2f4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('db007482-4710-4e4a-98ef-78371ee82a23','4a7f8859-a42f-4a90-aebb-f0b7211d65d1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('db24571e-1120-4894-b187-e4e5f185f237','64d0b997-0f1a-4278-8cf9-9260b242daa8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('db3c1d96-388f-4405-8ec4-92d816c78ea3','0797cd75-fa61-4e09-8c58-52e42b0b1f5d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('db44144d-1700-495a-baee-d077a588e201','b971f1c9-48e5-4ffa-97ed-5f3664bf35ba','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('dbbf97d1-6f7f-49b3-92dc-1be7e743b396','ccea6804-a17b-4fa3-ae2f-150503f7db49','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('dbd08a8e-4cdc-4dff-b781-354da8dd707d','97bc7fdc-a15c-492b-85ed-7324b1c3dfd2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('dbe23fd2-8d68-4be9-801d-344a578d57e0','7d5465f7-5e96-4479-87ec-cfba2f7ee89a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('dc64bff3-43bf-42e5-8792-5116f1bbbc72','651fde69-bb18-49d4-97fa-16813a7e5b65','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('dc84b9fa-ce95-4265-99c3-3e35d736e51e','07030ee9-2b5c-4a4d-81d3-d53310c07ceb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('dc931680-c139-405a-8b68-6be47965d939','570d81a6-68cc-4d9c-836f-77eeeec650c3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('dd05ed1e-80c8-4dd0-9715-0291764e3c43','e1d4be95-8e87-4483-bccf-04e9b73c89cd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('dd6a54f7-b0de-46a5-94c9-49e789341ca0','2a362d62-9da2-455f-b72e-5bc1c663802d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('ddf35bb9-60cb-4a6d-a5e0-947574f6ae82','45a5e1c3-cc28-47e6-b249-56347190d6fa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('defa4f87-172b-4d5e-a86b-052cff8e2306','921be17a-877d-4789-881c-78d85230dd00','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('df1a212b-dc0e-47bd-b06f-d5d2282c91e7','5400f1e6-62ae-4149-8233-9eaa7cf86efd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('df4c8407-47b1-4ed0-a8d1-7b388f595311','74143469-ba3d-48d0-8a5e-66ba1f691797','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('dfb5f7a5-f6ff-4d8f-be81-c96511796646','b37402c5-1b04-4b01-81e8-2f308e0dc5d5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e0393abc-56e2-479f-ad35-e73a166c6d78','a5719aec-aa62-49d6-bb70-44bd97b7e9d7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e0b1aa0d-9ef8-4e7e-97ec-d0c83c290b70','29d20d80-a5e7-4619-a4a1-9be181304de4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e179e0c4-dd96-4e95-893d-25f2bd087f00','ef5375ba-757b-49ad-9139-195bf9df2a4a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e2108558-f6a5-4c98-88b7-701bcfa3654e','4e0b4030-307b-4db2-ac62-3d35872ba29a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e2354400-c31b-4dfd-a39e-037f45fc1c7f','a8fa86c1-8c1d-4467-afbf-6aa5914582f9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e24a29fe-bba1-4e5c-ae8d-026a74590ffd','fa03c6ee-f2d3-4130-b5c3-33158e63ce90','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e260fd58-f85f-453b-bbb7-09f44671f313','44dcbee0-0147-4585-ae99-10069ddb91cf','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('e2642774-1eea-49d3-959d-b740dfe4fab5','79e086a2-61d7-47b3-95f2-fcf79c7f541b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e2af1b40-cea9-48fb-af50-29be8a7cc675','55755dfc-c78d-4780-81cf-b7097a0c2948','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e2cd9f61-92fe-46ec-a9d8-08e0aa6382ee','0d2b582e-b283-4a17-8c9b-85e00975832e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e2f2b3d8-b41d-4289-ae22-b716d47705a9','521bca2d-328f-4871-a478-c63f2ec58d89','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e3113c36-5ae2-46fc-97aa-a10c5fa5879c','b9330792-5300-45a3-9a02-df0940191306','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e33bb55f-efe9-4235-8c44-dad02e7e6d39','974eb152-9738-4dcd-a3c8-635ee5d594aa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e37ec217-f71e-4783-b694-9a0a678e7998','01410125-0251-4035-bf03-d1c81754df96','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e3ab53d8-cf17-4e2d-8c81-796f93d8c5b7','52b1b924-d03a-42f5-b365-9bf2c7264b43','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e3b24daa-d075-4f81-ab20-82eb6ca626ed','2202f30a-6bde-4e41-9ef4-b2208d03e8db','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e3dccff9-b212-44c5-a70c-69a4d769e8a7','5e013f64-d064-4867-9ec3-5541b2fa76bc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e4326722-bdee-4911-a0fd-b278452358df','1b13506e-4e6c-4a63-ac51-53f35b2b9a15','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e45fa2d9-6b0e-464c-99ec-64100a3c4c0a','a47e5b7c-2257-4a44-9e5e-1361f29c5120','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e46fdb1d-8b7f-4ff7-8bc4-3d7148019bf5','48899c61-1db5-437c-ae19-703cd67e4259','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e4c67eaa-0f16-4ea6-8cc3-e0d177137f3e','a2e1d4b9-8dad-4597-bf57-8d026e2dffc2','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e503cca1-2778-44b4-b883-d54e8855a370','5381653c-9376-4ea2-a5ec-4454d6347117','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('e559d1f1-1761-450d-af0f-d72afd8cbb83','df444708-409f-4c3c-afec-18b28b663a42','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e5d88a04-abc1-4d34-89fd-05c47036035b','a6a1dbeb-c1a6-4554-b37c-49ed028fec99','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e5e06cf7-4bd1-4b57-8a68-692a3c4d3dbf','52bd2289-a474-48de-bef7-874ffd088d7c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e5e5f2c3-60ba-433b-bf8d-19e7d2551d6e','61b29606-2dfb-4d9b-a32a-189188da3027','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e67b48a4-38ca-4e5a-b9bb-191b89d1d62d','d32e181c-d55f-4d7a-8d32-0ac281be66d6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e6931920-54ff-448c-a469-e9f79a77f8ff','baa224ba-43e8-4fa2-9e9b-b3e0e66ccf62','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('e6b39d10-e608-411f-b7c3-14b779ca5590','1cc807e4-9e88-4ba3-a5bd-623d0ae9965d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('e6fae0df-f294-4d00-a0f4-722ba6fcd61d','dff3c0b3-663f-4da9-9481-b34852177a78','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e70f9e39-a198-40e3-a39a-47063f24fc0b','920df826-473e-4858-a160-66b86f699867','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e7242f56-3d1d-40ff-8da8-546c45d75a5a','1a7a7b3d-3014-475e-a73b-3ae4d613c710','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e801fb52-b21b-482b-9e8d-9657c32e0adf','04f88fbc-718c-4a02-82c4-6100c7dd6dbe','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e8141980-20d0-428f-96a8-13a2dc82d26f','5d43014f-0700-431c-be52-f801f12edf5e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('e827d3d0-9800-4d44-bd06-42384c19f68a','beb9909e-6aaa-41c8-8ae1-13320e2e82ea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e86caab9-939e-4dde-8d28-9b9f91930144','0aebbf19-35db-490a-a7c6-8c5bc68eb593','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e877153f-1554-4dc8-8913-417d0fa2dfea','795c0c83-39a3-45d6-9049-2d737cf74258','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('e8b99f1d-45d6-4d08-b62d-f5251b2a4018','941cb833-6a60-433d-a051-560f14fe39c8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e8d4ebf8-3ae8-4afc-8f47-a421cf05bcae','f8fa2720-dc5d-425d-bd56-e0ef44aea78f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e91f8945-620a-4f79-bee0-decc7cfaa9e2','b2adc466-ada2-4558-83dd-da38ec3302f8','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('e984dcf2-18f2-41e9-bd80-425c44b90786','20293e11-c925-493f-aefc-764c17a53012','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('e9ec56d9-c287-406d-8d37-512a1ade9574','311bef73-87ad-487b-9064-513c0a01e020','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ea177920-6d1a-45ee-ac80-83df4dd60fe9','dea2d25a-e56b-4198-b7da-ec4d48464687','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('eb3f1d42-c16d-4da8-8a03-ab9b8eeeff20','4275616a-1284-48dd-91f3-b3628038a35b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('eb8a18b7-7bc2-46cb-a0bf-1e95006e94e0','22dbc73a-530d-4363-9cd0-abb06c95d13f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ebaf5d49-d4f5-478f-a28f-449cde3be71e','7e053659-cf8f-4689-bc31-3dca16699c0e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('ec15d7b2-17dc-4061-9c07-5f6bd0828517','1bffc657-29fd-4deb-961e-6222cd6888d6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('ec31480c-9fa0-40d8-9b01-191e0ff1e5cd','14e61d01-d905-44b8-bfc2-db0cb941b402','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ec35bd12-30f6-41a0-9839-c6ce6db17ad5','39f97aa4-effe-4f94-a2fe-48bf062d5e3e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ec68ddeb-a3a4-47ae-bee1-4213255e3186','259807f8-bffc-410e-9cff-baa1ba7a4e60','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('ec6b4511-ee23-4311-b011-45db0a88a991','8c4b8b03-9e06-4991-8fa1-8cf44174bcd7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('ec8e55e9-d441-4f46-ab59-3fd3b758950a','8ec2b6aa-4a33-47fc-856b-75fd8e9e0ea3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ecf112ba-d730-462e-9112-2715642e94fd','82ffd169-1d98-481b-926f-363c76e50214','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ed37c177-653c-41ae-824f-32197cc462d0','902c04fa-c4b6-4702-b1fd-d20b0244d6d1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('ed660241-ebef-411c-9ebc-42323e90a48e','ddb4aa18-70a7-4d02-9b5f-c803415dcb9d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('edcd3530-0a38-42d1-83e8-f95456708ae8','856fdc9f-e2ae-4ab5-8b53-5a2a0fa38e08','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('ee29ce30-cc4b-43ec-9294-2b4d63c517d7','72ca0846-45ab-4e54-962f-42a4f67a8381','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('eeb70883-f54a-4774-8c17-b41ea2f39a8c','45a30bae-ce07-40df-934f-959dfe5edbf9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('eed4f74a-bdbe-4dcf-ae62-9dea36906c26','17d624c9-fcc1-4db7-8892-516e36921212','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('eed82dfd-d22e-4819-8748-73306be01e3e','471ab589-7a27-4ab3-9080-55253064edc7','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('ef638681-2ffd-4eea-bfda-1a424250df1a','455deb8b-856e-4e85-a5ca-391c5efb3853','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('effe70c9-1982-4f95-b3b9-756c935f7968','20415d86-b8bb-454f-a3c0-1dd3dbbd022d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('f012061e-7e34-4e31-ab81-f5253a3b4dd2','54bf3ea2-fd2e-4093-a1bc-66729e99d57c','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f0503259-5e0f-4845-86d5-c3d032a85da5','1df91147-03f9-476b-8bcc-beda4cbafccc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('f060bac3-e058-4849-a22b-9f638ec3b736','068e38cb-a41d-4dde-8341-b77c850b690a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f0ca8fb1-adcf-46f9-b94a-c12e9b569ed8','965075bc-8f4d-4bba-b732-818d616658b9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f10432bc-7237-4bed-ab07-1fea67337f21','4e226204-050a-47ce-bab1-d0cbcd352887','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f1089d4f-ce79-469e-903b-e85d058f16cc','d81e376d-96f4-40e0-9d7c-583d82d0be71','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f1814b24-c622-479c-b3a9-c5aa76fee047','bf1043d4-5064-42b9-8676-f75459a30468','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f1a40d99-3823-4619-b128-8c1e926d9d95','b313917f-a6cc-4b52-883f-c5f070411b7f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('f1e1c1ce-4d58-424f-8b41-ddfd25776979','d7cbb0b0-ac06-41c6-90ea-9f9eedd2e3e3','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f1ee3165-2538-48fe-9f5e-9775f2a66288','5f584f54-e244-4203-95e3-cbbb8908059b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f219893c-75e1-4bd8-8615-df9e6e69c56c','78952e89-db06-4079-88ea-bf8ce5d3205d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f240bf0a-e9d4-4ff6-adaf-fb202f43188f','f48c31e9-50b0-4dc1-9ead-008b1d3c2a8f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f34ee02f-62d5-4faa-bfb1-f80d199c095e','0f1b92ab-61d1-462f-8a8a-400f7fcf821a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f389649b-9aa2-4a21-aca6-09d4586c1484','62419c92-2439-4518-b2c7-3657ffdf88e4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f39939cd-3800-4142-baf0-12fdc1b52840','a7904938-34c7-475e-bd57-ac377db6152e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f3efcc30-266d-411a-b8be-da5f40dce97a','46a03a97-de90-4f4a-9b60-63529a41d092','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f3fd519c-f427-4ce6-933d-896fa4cc000b','34e61cb8-a489-4738-ac39-6840f026a930','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f41dea6f-e5cb-48be-a51a-298a5440bc05','522c3dfa-35a2-4878-a05a-790761383baa','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f429757d-eeb1-4ed7-b694-882ba98d5e3c','e6e08361-14af-4749-b052-bb62ae7ee4a4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f575266d-c2c2-4401-8451-343b6804c2e0','3b3825f7-0be2-47b5-81ee-65e72ff65830','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f5869093-e807-4b07-ae90-a529d0fe4c4b','1854187e-d04f-4ee1-8203-9c4458bc0d7e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f5914679-6807-4cb9-85a9-4dd0d5e8ee94','862173a4-83b8-4c25-81bc-a54fe6ffeea1','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('f623b5c3-ffea-4c7e-ab45-3ff3b5e4e700','a2c6374b-3495-4266-86f4-dd0be23d5ac6','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f63f2338-8214-4cff-9061-a63847cb5e31','bea1e3d9-47b9-4479-8d2e-a645e634ff8b','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f695b037-46b2-468a-9451-27a62b8935cf','79705fa0-1a01-4c32-ae2c-bbf6647069ff','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('f69c474a-3270-4e8c-ae40-5f8738800d31','a6707f5a-35af-467c-a475-22062935db56','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f6af0e1e-5579-4ebd-8d2a-19794331745e','99b55e7a-8aaa-490a-b614-708c8248f57a','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f6d21ca9-5b51-4901-b6f8-1c3c1e8818f6','f95c2edf-6f29-4b65-a0d4-33edbab6be98','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f6d46bda-658f-4cb8-a825-341ba84df10f','4870b375-2686-4e3e-8e35-30f5eecfd2c4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f7125380-3b58-4dc0-a29a-2be537c8a0ef','6a1dacc6-654e-4056-b082-424137305ffc','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f79cfdf3-29e9-4180-862c-a6736b4d35fd','31664b62-8ae1-43dc-ba7e-f74b8d04bf57','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f7e6add7-bc70-4528-9b07-e94c48dd290d','2225e3d0-a4c0-4a87-9bf0-013743793fec','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('f871f849-8032-4319-9df3-5ef078d9d7b3','c8229cd3-67cb-4305-a1d0-023d502134ce','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f883c101-ea2b-4114-9e71-61778344782f','9e184314-e84d-4cf6-936a-66f2d3f963ea','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f8927a52-9b19-42e4-ab49-0cc9214a0b8e','0453135e-7b22-4790-af53-605db44b6379','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f8b59497-d622-44bf-8b6a-e6d487a00bdf','9b2e568f-f285-4bd0-97d9-c7f2939dc0d5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('f9468cd8-d217-433f-84ea-54137ccedb91','ce1bb1ef-5ed1-4344-b817-113a5cc01dcd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('f98b18b2-5144-40fb-83ed-c60c910118c3','f2f374b1-3076-4943-bdbd-fa5c777918a4','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f9b32f87-36d6-4604-a2d9-9cb891bea0d2','042c73ca-2d5d-4b2c-8844-4d4b08827c63','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('f9cb90d8-87e7-4b3b-8cd1-08fc9f4d4f47','9859f703-2e5d-4972-b4e6-125d5a985188','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('f9f2c2f2-40bf-410c-a55c-b078b6eccc04','1371cf1c-3a54-498d-b86f-dd4bc11e1c46','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('fa08c54a-01a9-4b96-989c-abf426966345','c55cfb82-e66d-4200-b55a-d6e3513bf73d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('fad52591-5fff-4958-b54c-d63e2ddfdab9','ccc14ca2-45d9-42b6-bbf8-4c1abd83f633','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fb011511-916b-4a5d-8c05-d145ec0a2e84','e1514ef2-2baa-4303-a042-9543f205bbc9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fb8f12b2-83ed-433e-a2d9-3f085a660037','d4102ed6-03ed-4c4e-b115-c9baa6d4e42d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fb93f582-033d-454e-b579-eb7e01d5dba9','99cfe3ab-e0bf-4b8f-be77-a18a18b11efb','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('fc089954-6b60-4c81-8ad6-9d41b58d9d23','f364eb70-1f99-4a9c-a04e-3cbbab237de5','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fc38e71f-653c-4f61-85fa-f95db38a258e','776c3c7d-a89b-4b5e-9347-4a429c3c6f0f','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('fc5b6df2-3b37-4208-9c68-5797b8b23bb7','fdf21e6a-8db5-4626-a97c-9c6ab8d1b424','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('fc89869f-868e-440d-985c-b5dd88dd932c','7b6928a6-a1c0-4417-83f5-0ae540cdc192','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('fca1231a-e23f-48bb-9ecd-ed6018410ce7','675d2212-3965-4746-a09b-48379a84da5e','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:17',NULL),('fcc6cff3-013f-427a-bfa1-bb8e016f9133','342533e0-5b0a-485c-b4f8-d57a1b051015','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('fce181d1-baeb-4e4f-9135-2aa7714a15e7','849d2370-31fd-405f-8c00-3abd01e594ba','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('fced6eb6-5995-42bc-8d72-4c6be9556ff8','b060a425-3a8e-47b2-8605-f590df958fbd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:16',NULL),('fd292355-274a-4274-aa6f-89c2de6f3b11','18547d92-d999-4e23-8adc-03d315be3a71','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fd2dc39b-402e-4e18-b178-f5a7095af55e','663de3d3-d695-4ffe-af3b-19110760c834','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:14',NULL),('fd517be8-be35-4cb3-b15c-862db1886922','1a85e408-772d-45b9-8b05-2c363be6dc16','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL),('fd92a99c-475e-4449-bd71-6b51334d7ee8','65c27eef-d367-40d1-9afc-fd0f3f5d1a33','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:36:15',NULL),('fdbee6ce-fd85-40aa-8912-1cf8e3327bc7','2df02d8d-a6a8-43f5-bc22-b16b9acc61b9','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fdfc35d9-7d92-45d2-a91e-5eef68164086','bebde1d8-7e9b-4a38-aa4f-fe0de64e85dd','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:13',NULL),('fe54afeb-4480-4ee8-a68e-f33eacb03275','c06c89c4-2720-4081-b5ac-133201071a4d','dfce2ad1-7d03-479b-8364-2d6a39ea52c3',1,0,'2026-05-17 20:30:12',NULL);
/*!40000 ALTER TABLE `participant_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type` enum('estudiante','docente','externo','otro') DEFAULT 'estudiante',
  `faculty_id` varchar(255) DEFAULT NULL,
  `program_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `email` (`email`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES ('000c377e-d576-460e-a31f-82ee81651068','Sin nombre','a1f7c11d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('003e91bb-2da1-4806-83a4-4960c0a71762','Sin nombre','14d54abe',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('005cca7f-816a-4b1f-9381-557f12ab0958','Mejia','100179',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('009e82c3-f57b-40ea-a534-bb4af8ad4f0e','Sin nombre','c9278828',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('00adea1a-640e-4a7d-a543-0373b490b31a','Son Goku','100339',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('00fb4782-5b7d-4c2f-a955-9b4c3533471c','Sin nombre','eadab499',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('0112e1c4-ac72-4133-bac6-5fff335ed96d','Mejia','100497',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('01410125-0251-4035-bf03-d1c81754df96','Sin nombre','31b27363',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('015e4f23-f802-450c-aed7-9806fd22bb5b','Sin nombre','7657f30d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('019991e9-b0ea-4b8c-a012-20513af24b1c','Son Goku','100300',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('01de3999-df7c-46f6-b399-7868a568234c','Son Goku','100001',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('01e195b4-5ae1-4f5c-b63f-919cd1c3d7e9','Mejia','100275',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('024fd744-9408-4e5d-82a9-1d245e5aa814','Son Goku','100247',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0267718b-eb9f-4766-869b-bae7575dc455','Son Goku','100082',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('03a51f7a-80a7-4302-b804-fa541c9c3108','Son Goku','100478',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('042c73ca-2d5d-4b2c-8844-4d4b08827c63','Mejia','100089',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('0441fe46-9884-4db9-b60a-38ad9fc17d32','Son Goku','100169',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0453135e-7b22-4790-af53-605db44b6379','Son Goku','100175',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('047a9d37-e2fc-400b-8cff-73a9f857d724','Son Goku','100052',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('0491c96f-eea9-4de2-adc7-c78779a62894','Sin nombre','dc237ff7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('04a9d971-cb06-491f-8f85-d0392d992dab','Sin nombre','c024940f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('04f88fbc-718c-4a02-82c4-6100c7dd6dbe','Mejia','100128',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('050a2651-1964-483f-8ec8-6783dc18d8ab','Sin nombre','7088e3e4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('05c530d1-415f-47ff-b24c-2b101d94ccc1','Sin nombre','a068915f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('062a650f-f92e-4f90-bd13-64560a1c40d7','Son Goku','100370',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0647244a-7dfd-4f1e-a023-6f6c1935f0ec','Mejia','100344',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('068e38cb-a41d-4dde-8341-b77c850b690a','Son Goku','100465',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('07030ee9-2b5c-4a4d-81d3-d53310c07ceb','Son Goku','100430',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0718602b-2751-478d-9c7b-7a0e67bf9fd9','Son Goku','100384',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('072307f8-815a-4926-9f77-3eb8f620a177','Mejia','100203',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0786c4fb-3f7b-468a-8848-d0461b4c2432','Mejia','100266',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0797cd75-fa61-4e09-8c58-52e42b0b1f5d','Son Goku','100418',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('07b21654-701f-4f66-9b6c-92ac8771ccdf','Sin nombre','f52a7872',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('083ddf5c-ae9a-4d00-9f63-0030ef26d589','Sin nombre','e794e062',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('088d2245-79ad-4455-8b15-9a39ec9e89ae','Son Goku','100468',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('08c75c19-4759-46db-8583-0e69d4bb1559','Mejia','100185',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('08c90c3c-23b4-443d-8076-c71a9f8e2676','Sin nombre','b53f8af2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('09eb610e-05a6-42da-97b0-f123f3036bb8','Sin nombre','dc23711c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('0a2ab6fc-658e-4d54-a68e-1f975ab0947c','Sin nombre','843017e4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('0a86edbe-2869-4153-869a-c5ce5800ae83','Son Goku','100376',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0a8cef60-4843-4d1d-a08d-30911f204dc3','Son Goku','100423',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0ac15806-33a6-4216-9d97-5894a2c411bb','Sin nombre','a256c0cd',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('0aebbf19-35db-490a-a7c6-8c5bc68eb593','Sin nombre','fec61373',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0b20b8a7-19f7-4d29-9e53-eccf05a0f535','Son Goku','100469',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0b398303-df13-4b88-9cd7-6676b3f7ed0a','Sin nombre','9d693673',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('0b7a65e0-0304-4692-872c-082a22434364','Son Goku','100496',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0bdeb7f2-4f13-4ae3-b881-68171cb15af1','Sin nombre','85f98b5a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('0bfdb7e3-28f9-450f-98a6-f793639edaf6','Mejia','100044',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('0c3b169b-e3b2-4047-a8ee-f076f45548a0','Son Goku','100208',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0d2b582e-b283-4a17-8c9b-85e00975832e','Sin nombre','f74ec081',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0dde48f1-264b-4f7a-a638-346851301a4e','Sin nombre','664a20e8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0de6a2d8-85f9-4670-8d16-01ce74a339c6','Sin nombre','cbaafe41',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0df2d18f-f9c9-4b38-b168-c26281ce5d63','Sin nombre','a82735f7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('0e684c38-f70f-4795-acb4-36526ea4977e','Sin nombre','53696bda',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0ed18585-388b-4071-94a4-1d3de77d2c30','Son Goku','100420',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0ef068fa-894b-428e-ac02-73e6bd8b6543','Sin nombre','2533bcd2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0f07d31e-65a9-4cda-b379-0ad22f0ef596','Sin nombre','56f22529',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('0f0fd015-4801-46aa-82b9-8deec084f728','Son Goku','100429',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0f1b92ab-61d1-462f-8a8a-400f7fcf821a','Son Goku','100088',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('0f228510-254b-480a-ab7e-add6fa8d1578','Son Goku','100442',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0f517dbf-d336-4c9f-bca9-e0fcf45e9dd0','Son Goku','100498',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('0f5649c9-aa3c-462d-a5a4-710a53980e1d','Sin nombre','ee52763e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('0fcd9b59-d2b2-4243-abb5-8a61002efdc0','Son Goku','100394',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('0ff86153-ce62-4f97-bf06-181fd9a6258e','Son Goku','100475',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('100312de-463d-451a-9472-c9e75ceb012e','Sin nombre','0b8262e8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('10548788-b1f6-4b77-814f-93797ad6bf37','Sin nombre','7aa281a5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('110cb33a-926c-44ec-b698-e3d9ad664c01','Sin nombre','007f576e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('115e06e7-d8f4-41e1-a2a2-de96baf2283c','Son Goku','100151',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1189ec09-337e-4dda-b2a1-26846af6ab7e','Sin nombre','cbcfefb1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('11b8aa8f-42e5-44cd-8d91-a8cbe32e408f','Sin nombre','568cfa40',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('120b1ac4-368e-4ba3-a627-b79fa4d54eda','Son Goku','100192',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('12237465-7eb7-4a3a-8b7d-1cd05fa1327e','Son Goku','100318',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('122b949e-3f3c-43b3-bb87-f85d6cd9cc4a','Mejia','100347',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1238a739-1b34-4fe5-a565-f8ccbcddc431','Son Goku','100246',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1255c2c7-65cd-4461-bcb3-15e4dbc6b27b','Son Goku','100010',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('12c50996-ce4a-4458-840b-f307354a0614','Mejia','100491',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('1310c062-e91b-4ef2-87ed-6b29c773d18d','Son Goku','100484',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('134a5fd9-547f-4142-8b6c-a5c33aba6f4a','Son Goku','100403',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1371cf1c-3a54-498d-b86f-dd4bc11e1c46','Son Goku','100009',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('146aeea0-37d2-40c0-8231-6c477f283b7c','Mejia','100158',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('14e61d01-d905-44b8-bfc2-db0cb941b402','Son Goku','100154',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1512d85d-2afd-4a4b-9343-3b5af1459dbd','Sin nombre','2db04ec5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('154df1cf-f04e-48a1-aefd-4d99f2d70289','Sin nombre','30baed7a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('157f2dfe-6630-44ea-b8c2-dc1ecac056fb','Son Goku','100400',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('15de0313-0dcc-4438-8277-21ee4cca5f33','Sin nombre','9577ae1c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('16002c7d-23a6-4706-87f6-3d7888d13ece','Sin nombre','a080e656',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('162d86f6-6847-4fbc-bef8-9b44c1eb5652','Mejia','100473',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('16bb9f91-a4c4-46a5-8105-bb780aac57d1','Son Goku','100222',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('16cd86dc-ab0d-4b6f-bc30-ff43750eab78','Mejia','100449',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('170987cb-f94b-4bba-810f-8a6e897fe23e','Sin nombre','0e82ba85',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('176719c5-e714-4c71-b97b-13e71bac63d8','Sin nombre','64a698e8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('17b9a7b5-3168-40ce-9fa7-4ffd6380bef4','Mejia','100377',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('17d624c9-fcc1-4db7-8892-516e36921212','Sin nombre','b0d0b814',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('184e3d5d-2568-4b9c-ac30-4271b1def8a4','Son Goku','100211',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1854187e-d04f-4ee1-8203-9c4458bc0d7e','Son Goku','100451',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('18547d92-d999-4e23-8adc-03d315be3a71','Sin nombre','64c577e6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1857893a-73f0-458b-a391-448250e44a87','Son Goku','100460',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('188bb7ee-6631-4887-8600-4aae3b0052a8','Sin nombre','0ab2e5e8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('18ca1648-f503-40f2-a077-9b658e66f318','Son Goku','100190',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('18e1d40a-5a4f-4807-aa8d-ffb79efcabc8','Son Goku','100097',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('18fa147f-f952-4882-ad8d-490721a6615c','Son Goku','100307',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('196eefdb-5a66-45e5-a28d-e9d1d9f1b7d3','Son Goku','100198',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1995293c-f2df-43ac-b6d6-17f791ec72e0','Son Goku','100057',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('19b81ba2-ec1b-48ee-943b-dd0481a14421','Son Goku','100448',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('19bf7698-ab9c-4ee7-b6fc-7372cf1a7d4a','Mejia','100248',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1a27742f-f8a6-404d-b050-30a5e19534dc','Son Goku','100274',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1a626d10-7b68-4b4b-9774-0a6c3d7dbd28','Son Goku','100139',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('1a71c35c-65e1-4537-9f9b-1444c1a7c76e','Sin nombre','53a2b41f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('1a7a7b3d-3014-475e-a73b-3ae4d613c710','Son Goku','100144',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('1a85e408-772d-45b9-8b05-2c363be6dc16','Sin nombre','03ef68d2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('1ac5de4e-f9b3-4511-a962-6a7870d957c2','Sin nombre','b09655bc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1adb9a34-0d99-43f0-8ad7-1a3a6b52b5cb','Mejia','100389',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1ae1444f-f7f0-4baa-b367-2ce7dbadb173','Sin nombre','4ecc3163',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1afaf23e-2533-4ce7-9502-be8c6ada1852','Mejia','100269',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1b13506e-4e6c-4a63-ac51-53f35b2b9a15','Son Goku','100399',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1bd0f2b1-6aa9-42b7-85ff-3e32a7f2e7cf','Son Goku','100226',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1bdebd6b-986a-4285-97cf-eacca7252fcf','Sin nombre','13901dbc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('1bffc657-29fd-4deb-961e-6222cd6888d6','Sin nombre','0c8252dc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('1c0a794b-2a31-4f21-af0d-e5bf492299ad','Sin nombre','022bc5fb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1c743011-a5cf-46e7-aee8-30c294209e35','Sin nombre','e0ba1715',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('1c938f52-adf1-4fc8-964c-8dd0e1dce08b','Sin nombre','9642840e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1cc807e4-9e88-4ba3-a5bd-623d0ae9965d','Son Goku','100249',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1cd9b2f5-4c24-47e1-acd8-ddbd4f108973','Mejia','100110',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('1cf2c350-0660-45d3-824e-6739e42975b3','Sin nombre','d433c627',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1d6600e7-5675-48d2-af8e-acdd8f65958a','Son Goku','100334',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1dd76e65-8349-4913-b9c9-9ab2c1924353','Son Goku','100397',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1df91147-03f9-476b-8bcc-beda4cbafccc','Sin nombre','fae99701',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('1e8f949f-8417-4267-afff-0b2d2840aee0','Mejia','100116',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('1e93e949-cab1-485a-8c76-f2071e1af0c2','Sin nombre','f3db080f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1ea1bcb2-0900-45d1-9c6b-78c65c0ce26c','Sin nombre','7e5adabd',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('1eb3c10c-a5c0-4a8e-8c8b-025bb3d9a7b2','Sin nombre','ac269839',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1edbd359-4695-4a45-b48e-6817cdd33244','Sin nombre','01660c8b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1f038399-9eea-4f4e-8cb6-8096edbe68ef','Son Goku','100202',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1f04cbd6-e8d9-4ea8-a93e-da22bade50ba','Sin nombre','35522bfc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('1f3f7085-0bad-4e6d-b0a9-463ec5b72c46','Son Goku','100328',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('1f7c9b45-50f7-486a-995b-fe4d1d4e56d8','Sin nombre','9ed1d022',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1f943b4d-371a-443f-9086-a41d3bd2ce3a','Sin nombre','bf820eb1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('1fa074a1-4f41-4f55-be85-88e217becbe8','Son Goku','100309',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('20293e11-c925-493f-aefc-764c17a53012','Son Goku','100132',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('20415d86-b8bb-454f-a3c0-1dd3dbbd022d','Sin nombre','a9d475f5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2051c3f3-e60f-4696-90b5-b3428768fbcc','Sin nombre','59c1490c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2053eb45-fabb-4d59-86e2-af52d2e13dc5','Sin nombre','24de9593',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2077c28b-f276-4cd6-a49e-cfd9f9855ba5','Sin nombre','51f40cc6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('20b49b17-1461-434a-bc21-75d08bb7b2cf','Son Goku','100237',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('21176186-754f-4633-a213-7e03731dc09b','Sin nombre','58c14858',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2138bc54-edf9-4f5a-b76e-97eabbd14553','Son Goku','100141',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('21929a59-1c74-40ef-9e75-b0d5c30f66d0','Mejia','100335',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('21de00c4-d6cd-4450-8083-dc991ba05da1','Sin nombre','0a251e24',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2202f30a-6bde-4e41-9ef4-b2208d03e8db','Sin nombre','82acf2a6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2225e3d0-a4c0-4a87-9bf0-013743793fec','Sin nombre','90c12b3c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('222ab1bf-dca1-4e4f-a908-5cde97a0af2d','Sin nombre','07e58606',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('22312e5d-3f10-421e-8497-0c66efdb1477','Son Goku','100426',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('2241ecb3-ada4-4b53-ae1e-7ee3d4c4ce58','Son Goku','100480',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('22dbc73a-530d-4363-9cd0-abb06c95d13f','Son Goku','100205',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('22f8c07d-dfd1-41c5-80d7-f25037d21f18','Son Goku','100165',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('239bba5a-a2b5-4ec4-85ae-f9e48a3e4255','Sin nombre','338bda47',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('23a5c7e1-e29f-4b0f-973f-ea70a50adf81','Sin nombre','a5f94e37',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('23b11917-3b9c-430c-ae96-c3cfc38130e7','Son Goku','100271',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('23fe6b00-4442-4a9d-b753-03b174a7e950','Sin nombre','f9001367',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('240a83cc-1e4d-4481-add1-94d8e8cc1207','Mejia','100356',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('24146166-17ff-4270-99b2-bc76d857e8db','Son Goku','100285',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('252e4942-ae9b-4a51-ab04-e0a31e9f3408','Sin nombre','2eb6085a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('25402cde-fa64-4470-b0d3-c06db8bd160b','Son Goku','100378',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('25514912-c7af-4745-9e3a-2d6deb777f29','Sin nombre','1d1a4d0a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('2595677d-e6ea-4da1-b8cc-6296411ca641','Sin nombre','84040348',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('259807f8-bffc-410e-9cff-baa1ba7a4e60','Mejia','100017',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('25d2a67a-60c0-4954-ada5-cb697c0f5551','Sin nombre','9e5e55b7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('25ffe990-e00e-461b-9ea3-3fa2e886d79c','Sin nombre','0c12ba9e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('26624ba1-2aaf-4d46-9792-50e41a4a5f14','Son Goku','100280',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2671cae6-9185-4639-8055-f7a1e12e73cb','Sin nombre','63155452',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('2686bba3-6432-45fa-b0b8-ed4e2e7a315f','Son Goku','100388',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('270573a8-50ad-4084-867b-1c51125681d7','Son Goku','100024',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('27297899-0824-4e58-81b9-49f03e4316fb','Son Goku','100268',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('274c1521-f272-40f8-b911-883c91cc99bd','Sin nombre','32fa9728',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('27f0578c-08a3-4a5b-b441-99ce8fd9fc86','Son Goku','100094',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('28122d1b-d248-4f32-a8b9-610c1e05a18d','Son Goku','100228',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2874538d-e7f0-45f0-895a-a00797ea8734','Mejia','100077',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('28768ed4-1aec-4b03-976d-b67276ed2e50','Sin nombre','491da111',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('287ec3e8-a125-4bce-bb26-fb00622fe97e','Sin nombre','5f714d55',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2880b954-3854-4e77-a93d-90391568e126','Sin nombre','0224dc5e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('28e9b74c-a5b5-4c7a-a0ce-3f4cce7d0f3a','Son Goku','100445',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('2952910a-8478-457e-934d-172b3cc00639','Sin nombre','d05804b7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('296c276c-9206-481d-a386-c55c1efc80f8','Son Goku','100123',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('29896cf6-f52d-4891-8320-29d44d82b7ec','Sin nombre','10addde2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('29d20d80-a5e7-4619-a4a1-9be181304de4','Sin nombre','0f065f10',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2a197539-213a-4812-a6cd-5c0ab24c98bd','Sin nombre','aaa693aa',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2a362d62-9da2-455f-b72e-5bc1c663802d','Son Goku','100108',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('2a666740-46c6-406d-86e9-2fdfddfbe55b','Sin nombre','ef408a80',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2a6fa23a-cec2-452c-9a47-00374465fc99','Son Goku','100279',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2ab0a521-4e6a-4a3a-bea7-b28688ef6244','Mejia','100227',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2ad7f42d-19de-477d-8cb8-23fe7ea37b93','Son Goku','100042',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('2ad8d114-f24c-4ad4-9357-3623e7b67408','Sin nombre','89804d7e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2b131fca-3745-48a8-90a4-3703032b2316','Sin nombre','646746ef',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2baea832-fba7-404b-8bf2-20379d59736d','Son Goku','100046',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('2c11e58f-115e-4b70-9714-9cf1327a14b6','Sin nombre','4e0737eb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2c5485ff-e7aa-4fd8-b3e9-e21b2cd6bb31','Son Goku','100207',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2c87c913-73a7-4b85-80e3-a920f0229038','Mejia','100167',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2d70308e-15e1-42e4-ba2a-95a8ee7c9544','Son Goku','100030',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('2da2a0cf-9e17-4115-84bd-d657b833e11c','Son Goku','100433',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('2df02d8d-a6a8-43f5-bc22-b16b9acc61b9','Sin nombre','0d9d2819',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2dfc3fef-e098-4413-a781-4dcfc1d2ff89','Sin nombre','b32386cc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2e1967fa-7a9a-4661-9a67-4ac84156a602','Sin nombre','db7a7746',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('2e4db053-5d19-491f-9858-41364edcc871','Sin nombre','0fb9c186',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2e8de5ad-27fa-4201-b753-3466a6f0cba1','Son Goku','100355',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('2ebaaac2-d19c-44c0-b9d2-a54f71d45800','Sin nombre','3f2d0fb0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2ec1d381-20b6-49d9-be07-cfc0616fd19f','Sin nombre','51d2864d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2ef7dc63-ad1f-4062-9c90-73cef62c044d','Sin nombre','775969b9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('2f37d6d8-0c2f-4c7c-8c37-e6dc217d3e69','Son Goku','100481',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('2f8bf513-f8f0-4bd8-913c-e1d0348e71fe','Sin nombre','da16500d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('2fed5333-e9b3-4703-8430-69101ccabc41','Mejia','100023',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('30019287-8cea-400d-9756-671bfa798292','Sin nombre','578c148e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('30054254-bfe2-4708-a31d-657004758800','Son Goku','100033',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('30709cc6-34f5-4ace-921b-9a9f6439b10f','Sin nombre','1f230e18',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('311bef73-87ad-487b-9064-513c0a01e020','Sin nombre','70635462',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('31664b62-8ae1-43dc-ba7e-f74b8d04bf57','Mejia','100293',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3199079f-377c-49e5-82d0-7fa4dc8f9543','Sin nombre','f6f3a2e5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('31a29150-0184-48b9-8e4c-21b3c55e6ef4','Sin nombre','5abcea05',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('32146f29-641d-4a81-adef-ed1d1a6e0032','Son Goku','100495',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('32336a1a-9779-4bd3-9be3-cdb9ecfb1da5','Sin nombre','27d1780c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('32415b3d-a8c9-48c6-ba79-4b52288c3529','Sin nombre','ff3b6fb0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('32677f97-5660-4358-99ee-713fb4439834','Son Goku','100156',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('32a7cda3-dff9-40a1-8aac-3cacb8edbf04','Sin nombre','db59f331',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('33196026-78e2-48e7-9e77-01478d1afb34','Sin nombre','8bd87922',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('33461e46-a255-416f-b4a1-317d8245039e','Mejia','100146',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('335fc8f5-e06c-4b5d-913e-13da129e8b89','Mejia','100233',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('33bda26f-9e28-4b98-95d5-95333297d3fe','Sin nombre','c3cf0b78',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3422505b-7ecc-4d18-93d0-b0a0e9c64f16','Mejia','100155',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('342533e0-5b0a-485c-b4f8-d57a1b051015','Sin nombre','1ca140f2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('34352c4d-be83-4743-a748-4c977acefcbb','Son Goku','100487',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('344ecfd5-72b7-4c8e-86b3-62f76948537f','Mejia','100218',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('34e61cb8-a489-4738-ac39-6840f026a930','Sin nombre','651b3ae6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('35026c65-1941-46bc-8b1f-c600ac6cab12','Sin nombre','45837f96',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('35441813-0635-41bb-8fca-0495473c180f','Son Goku','100240',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('357cb787-55eb-42a8-937d-f17fc964fb6b','Sin nombre','4051d23e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('35a40c77-d568-4a9f-9bfe-3b4f85d641d3','Son Goku','100066',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('35db2fb4-d691-481b-84c8-a759e9f931dc','Sin nombre','57706fe0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('3600997e-a6c8-4fd0-8d28-da035fba6ff7','Sin nombre','e2d7a3f3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('362ee827-7c5c-4a5f-aa83-15e6e621a701','Mejia','100365',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('363d64e7-42f7-4111-ae2f-a9b7759e8312','Sin nombre','ba620192',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3650b59f-99ae-44f2-be57-6c876f356892','Mejia','100047',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3668b11f-b6f9-4078-a493-7ac6d895eec9','Sin nombre','6d615799',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('36750079-a693-4603-b521-11856cc2e0f1','Son Goku','100483',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('367f0a85-e853-4275-9e24-332842bb0630','Sin nombre','1f367590',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('369bbc0b-7f97-41ca-96d0-9b4bf4c01481','Sin nombre','2fde0c40',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('36e7f1b4-c3f9-43d8-b10a-97a1caa6392e','Sin nombre','f7de6fe1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3709a6a6-9142-4b72-ae5e-60bed3b681a4','Sin nombre','78d09de5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3735b938-2262-4d91-ae82-46a31e94b94b','Sin nombre','a8ab5764',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('376a8f2a-a9bc-4dbb-ba48-1174a387b1ca','Son Goku','100258',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('37720b87-e02b-457b-aa4e-7f3ccabdf23a','Son Goku','100120',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3784508b-d4a0-4dd9-a014-c76cd07dee2b','Mejia','100245',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('37e5821b-4bbc-4499-af25-fa73ceecb2d8','Sin nombre','3f710568',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('37eb71c4-62a4-42b3-a128-13fc5414d8b2','Sin nombre','e4cabba5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('38102f93-33a4-437e-847c-fcf7191f5e12','Sin nombre','77d5216c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('389f0c3a-3da3-4d37-8e0d-a4f9c6ae5a64','Sin nombre','685e03b7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('38cfa4b8-47d6-4040-9019-97c3567c88cf','Sin nombre','a7b8b343',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('3909436d-59fc-418e-8197-ed2b65baad4f','Son Goku','100313',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('39f97aa4-effe-4f94-a2fe-48bf062d5e3e','Mejia','100338',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3a32db81-27d2-41c7-81d8-b2e2f26615cb','Mejia','100383',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3a422d5d-ee85-4fc4-9077-c8ce58484a2f','Mejia','100359',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3a4c8376-cfca-4b95-be6e-8c6dbf5ca45e','Sin nombre','0343c073',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3ac15df2-2b2f-47b6-9073-0795ed8880c7','Sin nombre','61c40d9d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('3b05a88f-680b-4ec5-adcf-b6cbc76e24cd','Son Goku','100294',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3b155c2e-cc1f-4984-a01b-515ed6c3a5f7','Son Goku','100018',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3b3825f7-0be2-47b5-81ee-65e72ff65830','Son Goku','100025',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3b7cd666-6157-4f46-8d48-669058251c2c','Sin nombre','24d39f0e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3b80a58e-7f7d-4406-b3d1-4c27f2f8d55e','Sin nombre','196b9abe',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3bc54e6d-e3ff-4cf5-aaa0-761e51290c95','Sin nombre','df7ba58e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3c2591c7-c303-4c16-a312-80cda6100ba0','Sin nombre','c109bffb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('3c2defab-82eb-4043-a2b2-b0366fd8cf81','Sin nombre','0b41af94',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3c6777bf-b8d5-4b9b-a852-f598fd1ca964','Son Goku','100462',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('3c753e81-3a91-48fa-bde8-bf313af1468c','Sin nombre','82d67b0d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3c9c5f51-d85e-454c-acd9-ff2a6ab8e35e','Son Goku','100213',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3c9fec8b-12ee-4d6b-a43a-e7668a62389e','Mejia','100236',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3ca467d8-01dd-4155-afde-346dffcd7513','Mejia','100431',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('3cd1f1e2-b87b-4ab5-bf07-f45db9f39348','Mejia','100056',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3ce10285-4876-43d6-870d-189a097bb49d','Sin nombre','8225fab5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3d166962-f29f-44f0-ae67-6461618cf79d','Son Goku','100186',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3d29d74e-2aaf-4b7f-982c-1e7a7ee9e84c','Mejia','100422',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('3e4441b3-12dc-4fc3-8b93-f92508946310','Sin nombre','902a26e5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3e655b65-474a-426b-81fd-a3ff68adaed0','Sin nombre','13c13586',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('3f1285dd-ce5f-4d9e-accf-43e38a61bb32','Sin nombre','0000114165',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('3f487a53-822c-4e12-8b47-98eeda81e1ea','Son Goku','100312',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('3f49cd49-97eb-40e1-8369-fa9fb5240dcd','Sin nombre','f153b731',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('3f78f658-441e-4938-a1cd-ef140a910035','Sin nombre','4a62f1fa',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('40543b4e-6297-4c59-b3da-6db665d9349d','Son Goku','100408',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4066cd81-b9cc-4ef9-b67c-7bf73faca39b','Mejia','100032',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('407c30d9-d7f7-4912-92d6-ea57b5df63e3','Son Goku','100217',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('40b67e99-9b8f-4ab0-b766-e924724a3101','Mejia','100350',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('40c12426-f684-4e8e-a7e8-baef1c61a1e3','Son Goku','100180',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('40d81f76-549c-4187-aa36-72bbf97c6c15','Sin nombre','bd8af33e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('40e9dd7b-d4bd-47dc-992f-702e656b8642','Sin nombre','fe583ca8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('4198b5d9-e3da-4548-a9ab-0b5bff87715f','Mejia','100323',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('41aa8735-51f2-4909-9acc-8a864de8ec13','Sin nombre','9b7d2e44',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('420d3444-ffe1-42f9-a99d-6ec9bd0ff47a','Sin nombre','25c749ae',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('4275616a-1284-48dd-91f3-b3628038a35b','Sin nombre','b54b892c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('433c00e6-55bc-4531-80d9-a0ebc992c759','Son Goku','100471',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('43e72722-694f-413e-8b2a-8168339def39','Son Goku','100499',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('4414bf06-27bb-4a38-bc22-0009181434df','Son Goku','100360',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('44a011e5-c17e-4e56-99b4-277941c0f4d3','Son Goku','100283',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('44a4787d-d5a9-4991-bde7-044187260b6a','Son Goku','100055',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('44a5133f-0938-481b-b354-54cc7871001c','Sin nombre','decb9f08',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('44abacb2-7c23-4d4c-8a8e-1b65821b318e','Son Goku','100214',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('44b09852-f866-4497-b500-3723a5e4a778','Sin nombre','1f721328',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('44dcbee0-0147-4585-ae99-10069ddb91cf','Sin nombre','754023f9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('44f1fd5d-45cd-4cd8-9aad-14fa854afaac','Son Goku','100438',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('455deb8b-856e-4e85-a5ca-391c5efb3853','Sin nombre','c8c44b72',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('45a30bae-ce07-40df-934f-959dfe5edbf9','Mejia','100392',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('45a5e1c3-cc28-47e6-b249-56347190d6fa','Mejia','100428',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('46a03a97-de90-4f4a-9b60-63529a41d092','Son Goku','100340',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('47062c07-b3ba-4089-9299-990d41d9579a','Sin nombre','5019b130',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('471ab589-7a27-4ab3-9080-55253064edc7','Sin nombre','fe45d948',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('471e8bef-3cb0-4ade-999a-94e29d27d81c','Mejia','100002',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('47262aff-92ce-43d4-b210-6b1a80c81438','Son Goku','100084',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('475207e5-f07e-4fb9-99ed-ee8d3727adfe','Sin nombre','e39b49b7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('4757c3ee-3be1-4ba9-9e9a-caaa76a7278d','Sin nombre','ba3c7643',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('476a3378-fbd6-427b-893e-f767a5dbc42f','Mejia','100194',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4783ba3c-e2ca-448e-9f36-8a424c0fd154','Sin nombre','b62710ca',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('47c426f1-225e-4e54-b376-9b73a16c2818','Sin nombre','d7effa4f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('47c68213-66e8-4ca8-b1df-181604d9060e','Son Goku','100225',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('47d358b0-0739-4b28-bd7a-4afd6c6916fd','Sin nombre','33a4fe68',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('4848803b-889e-4557-9670-abbf092de332','Sin nombre','e6c6736b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('487060e6-d284-4f0b-a943-fdc8d442656b','Sin nombre','681d7fa0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4870b375-2686-4e3e-8e35-30f5eecfd2c4','Son Goku','100124',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('4870cc69-853d-4cd0-8305-8de21b7e680d','Sin nombre','ffc078d1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('48899c61-1db5-437c-ae19-703cd67e4259','Sin nombre','9cefa618',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('48b9efe4-8f6b-4593-9ea0-eb26d6885314','Son Goku','100114',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('48d2fed6-073c-4c4d-981b-9156f5341559','Son Goku','100373',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4975418e-f9e9-4666-b282-71c88033286d','Son Goku','100361',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('499fb629-ead8-446d-9d02-3a622479f4b4','Sin nombre','a5be6469',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('4a44c03e-38b5-42fd-a625-e428344d1551','Sin nombre','b193630f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4a73725c-f181-4ed4-adb6-e57171fb1ce4','Mejia','100263',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4a7f8859-a42f-4a90-aebb-f0b7211d65d1','Son Goku','100385',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4a9839ae-0a97-491b-b23e-ba0e86334de7','Sin nombre','664f1802',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('4bbaeb7f-da18-4f1e-93f1-c4a2019f55fc','Sin nombre','8b6d5d68',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4bd6b719-7423-4c53-910f-67ca8d75fcdf','Mejia','100125',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('4bf45760-adeb-49a6-ab92-7cadfaaf14ff','Son Goku','100447',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('4c22ef7a-b1d0-4cf5-bc53-97fe7b6b6582','Mejia','100113',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('4cf70a5f-c27c-4c69-9ec2-e3b6194d80db','Sin nombre','a4edc71b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('4cfb8cb4-9900-4600-964a-c5414a1c38fd','Son Goku','100184',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4d12b7dd-fe32-46e9-b6f4-fc8620fdb461','Mejia','100092',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('4d4be8d0-d3d5-4889-900c-b4c90cefbb06','Mejia','100137',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('4d615f17-8706-43b3-be67-749479b48a28','Son Goku','100331',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4d84d8b0-3f40-45de-abe4-0db6306a381a','Sin nombre','a24df334',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4e0b4030-307b-4db2-ac62-3d35872ba29a','Son Goku','100256',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4e226204-050a-47ce-bab1-d0cbcd352887','Sin nombre','89d8121a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4f32d862-dec5-465d-b44a-2359393511b9','Sin nombre','ebf0b4b6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('4f523296-bc85-4fcc-ac76-7e11b92518cf','Son Goku','100282',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4f557022-5ffd-43c2-b060-7e6cf78ab969','Son Goku','100231',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('4ffdc906-aee3-4ea4-bd30-e32b979eedb5','Son Goku','100369',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5031f67d-036b-437b-afe2-7fdaffe328f2','Mejia','100290',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('50450ba6-1834-4211-97ec-298435110f92','Son Goku','100253',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('508f5dd0-f6ef-4d1b-8dc8-c03af2ba67cc','Sin nombre','b97bf1e9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('50a66f03-95d6-4d94-870a-29fd596c7c6e','Sin nombre','c08e086a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5112158c-7c62-4d09-a7d0-551b5a02ce04','Sin nombre','be27c1ad',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('51186317-5033-4ea6-b32a-7aa4ddc36d19','Son Goku','100204',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5139ebef-22a9-429a-b002-595450fad1f6','Sin nombre','43d3886b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5170dcf2-b031-4453-9886-58ace5fde31a','Son Goku','100436',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('5176aa8c-973d-4350-a7dc-a83447c07414','Son Goku','100085',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('51935ae8-e49b-4784-bd7e-a4c41185ce16','Son Goku','100444',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('51b40d67-6882-4637-b29a-f3a688786e4f','Son Goku','100336',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('51e9efc3-cf5d-4646-a722-f7c77fde31ac','Sin nombre','012002b1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('520b1e5d-61f7-4e8f-8a07-65f3134bb57c','Sin nombre','540b40a5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('520e33d5-62f4-4353-8324-0d6a3511cc17','Son Goku','100427',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('521bca2d-328f-4871-a478-c63f2ec58d89','Sin nombre','0e89ec10',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('522c3dfa-35a2-4878-a05a-790761383baa','Sin nombre','bf3a7c15',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('524d6f9c-13fb-4d02-9755-84331f9291b1','Son Goku','100396',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('52590d6f-b16e-4825-b70d-29396e273484','Sin nombre','02df1fb4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('527bf5b0-55c7-489a-9692-89927dce7afe','Sin nombre','ba4b6599',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('52b1b924-d03a-42f5-b365-9bf2c7264b43','Mejia','100374',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('52bd2289-a474-48de-bef7-874ffd088d7c','Son Goku','100195',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('52f58c83-2295-4799-a289-cde907d834ce','Sin nombre','d3f0bc23',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('531ee682-bcc4-438b-8528-cd29c219c6f8','Sin nombre','81c8a615',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('53330430-e974-41fa-a78c-c30165b24359','Mejia','100470',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('5381653c-9376-4ea2-a5ec-4454d6347117','Mejia','100452',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('53a807b3-9b3f-4dbd-bbde-2c1f142efebb','Sin nombre','a7cce0ec',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('53dd2cff-67cf-405c-b4b4-4ebca41790b3','Sin nombre','36747cb4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5400f1e6-62ae-4149-8233-9eaa7cf86efd','Son Goku','100303',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5408e21e-c036-4b34-a2ec-4b8b401c2fd2','Mejia','100341',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('54bf3ea2-fd2e-4093-a1bc-66729e99d57c','Mejia','100467',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('54d19200-13b5-47b5-bf81-147e6ca1b87c','Mejia','100035',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('55363be8-5cb2-49d7-b252-feb173679014','Sin nombre','735ce0b1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('555be6f1-fc23-4f7a-86a8-853e4d420612','Sin nombre','07b32369',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('556528c4-7755-44cc-a52c-a2ac24bae610','Sin nombre','6a8566d7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('55755dfc-c78d-4780-81cf-b7097a0c2948','Sin nombre','fb000af4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('558ba6fe-8dfe-42b3-b100-383497b5dcf0','Sin nombre','0470ce8a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('55bbe693-5fbf-4336-bf70-304eb7c84266','Sin nombre','e1a5d7db',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('566ecc01-6950-4d05-8cde-1ddbd632a168','Sin nombre','d1d01cc8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('569992ce-647f-40e3-9aef-2d8b2d8a3b43','Sin nombre','35583ad5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('570d81a6-68cc-4d9c-836f-77eeeec650c3','Sin nombre','1c133732',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('57dc17c4-9a3c-4270-ac3e-59911ee32ead','Mejia','100104',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('58826bf3-bfc5-4f18-b672-9ff762267e03','Sin nombre','fc86300e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('588fd0ba-b053-4246-b757-641e9995a9c7','Sin nombre','140b3a22',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('58c4852b-517e-489f-84d9-6053eb0d190d','Mejia','100353',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('59af909a-6524-439e-905e-1fe6d0e86cf9','Son Goku','100031',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('59ba1871-080a-49fd-9e38-d92ec5725391','Sin nombre','e079e268',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5a5f9632-1b2d-483e-bd99-2c0a56855742','Son Goku','100004',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5a68f6b6-32dc-4ac6-8790-bccc478ed5ec','Sin nombre','6423963d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5af86b53-9ac3-47e2-a108-6c37d63bfee1','Sin nombre','b29a8174',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5b0ef2bf-44e1-4610-82f9-765666c387a7','Son Goku','100058',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5b1f42a4-3816-45cf-b7e2-b61401af3cef','Mejia','100041',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5b1f7486-015e-4393-8e4f-4953d1ea9425','Sin nombre','9d47dcab',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5ba4bbff-0cc9-475c-aa67-d08d855ada1c','Son Goku','100349',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5bacfdbc-de88-449b-be47-312fc5e3f982','Son Goku','100048',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5bc5b988-f7c5-4e70-980c-d4de5e4b01df','Sin nombre','1740c63b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5bccc8fc-23d8-4cee-8cf7-ac5e69084674','Sin nombre','e416991e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5be02fa0-d957-4078-b089-13d2c4c5058b','Sin nombre','da2e3822',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('5cb60f08-681d-4703-b37e-d9301a78b5f3','Sin nombre','7837f66d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5cc3b439-0f44-4e2d-bf94-cd61b2aec7b8','Sin nombre','e1b6ef43',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5d43014f-0700-431c-be52-f801f12edf5e','Sin nombre','419dc79c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('5d4ba7e1-72ae-4efa-929a-078a4bf80fe2','Sin nombre','fbb3043d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('5d6d04eb-b75a-4cdc-9dc8-c72f7a8efae0','Mejia','100071',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5d75b981-b49b-4f82-ab89-7b51e009e671','Mejia','100140',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('5dff4e70-3fe3-4834-a977-d9dd44142dd6','Sin nombre','59f58f45',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5e013f64-d064-4867-9ec3-5541b2fa76bc','Mejia','100161',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5e788147-2875-457b-a6e3-b6c7a3d9482b','Sin nombre','2e90e170',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('5e873649-ffa8-4281-b60f-635c8487f99f','Son Goku','100292',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5f584f54-e244-4203-95e3-cbbb8908059b','Son Goku','100477',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('5f94d19e-2ff6-4a2b-b0b2-13ef6aa99579','Son Goku','100238',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('5fe21f7e-bda0-408e-bffe-f3819c6b6259','Sin nombre','6192fd6b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('600ad362-1e6b-408a-86a1-31a09f605aab','Son Goku','100126',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('608119e7-b58e-41f3-8b05-920a92067b2c','Sin nombre','d83f75ad',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('60c0d11b-b9ef-4f56-b25d-fd5e15bbdd9d','Son Goku','100382',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('60d67f60-b3e8-4c92-95a0-668d23e315bf','Sin nombre','fb3dfee5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('61504398-4c47-417e-b220-84380c8bc2fa','Son Goku','100000',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('615954c8-8b0a-44b6-bffa-4d5ff8c81b36','Son Goku','100319',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('619702ff-1ffa-4b54-9f8c-4691b8611a54','Son Goku','100421',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('61b29606-2dfb-4d9b-a32a-189188da3027','Mejia','100008',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('61f048e5-e293-48e7-aedf-5064f5fda01d','Sin nombre','d40279f7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('620b5fc3-1e81-47ff-a113-4cdc7bd40f4e','Son Goku','100363',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('62419c92-2439-4518-b2c7-3657ffdf88e4','Sin nombre','450918cb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6276b28b-1ad8-4b4b-bc08-ed11721185f8','Mejia','100296',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('62ab3efe-6de9-4ecf-baa1-021dd1daa278','Sin nombre','9c3506ab',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('62d3c2c8-68f5-475d-8b8b-eed36caca37f','Sin nombre','fa52ddd2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('62eb90af-67d8-4460-bd2f-919c46e6f3bf','Mejia','100173',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('632f34d3-b00a-4ec0-8d91-48478e1e867a','Mejia','100029',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('633df8c6-3757-4e05-8ee2-72eb76d797b0','Sin nombre','d1196118',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('63ed2e8f-832a-42ed-ad55-0740ebbd5976','Sin nombre','d985e9b9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('64465e91-25d5-4758-ba6a-85a192d2ad47','Mejia','100239',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6470a629-5cb6-47b3-a1f7-9532596392f8','Son Goku','100145',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('64745f47-59e2-4fdb-965c-4d8c9a35eee1','Son Goku','100493',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('64999e83-bf65-4474-81b8-10a4f6a98eb6','Son Goku','100232',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('64b6830e-c428-4e9f-8c5c-aeb2a66b25e0','Son Goku','100745',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('64b9f401-5c34-442c-8fea-374cde6175b6','Sin nombre','5e6ca5ef',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('64d0b997-0f1a-4278-8cf9-9260b242daa8','Sin nombre','c7a3b8b9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('651fde69-bb18-49d4-97fa-16813a7e5b65','Mejia','100260',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('65a8f2ef-9bad-4fa4-9f46-a8736b96cfa4','Mejia','100176',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('65bd88f8-ff65-4256-b8d7-3621470b6aec','Sin nombre','e27b00f0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('65c27eef-d367-40d1-9afc-fd0f3f5d1a33','Son Goku','100070',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('65e99649-ef0a-45b6-87f2-81d66b74cfdb','Sin nombre','59615394',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('662ab381-848b-4bd2-bdbc-f3bd83f42e29','Mejia','100215',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('662c4747-153b-4bf0-ac30-1c26ac5fc888','Son Goku','100106',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('6637a8d9-aa17-45e0-ba0c-e1c34c605e3c','Sin nombre','b38e40b9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('663de3d3-d695-4ffe-af3b-19110760c834','Sin nombre','e281ac38',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('6700497b-389a-4019-a747-4f415e690d7d','Son Goku','100079',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('675d2212-3965-4746-a09b-48379a84da5e','Son Goku','100432',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('6800cef6-1584-4fb7-921f-ad6eb256121a','Sin nombre','8cd6b213',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('68d761f2-0664-42e7-92fb-93f21760e23b','Sin nombre','a71f1747',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6932ba02-118b-4c54-a00b-75a755740d06','Sin nombre','4f7d35c6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('69443838-fe79-428e-bc77-2ddc2c94ef8f','Mejia','100362',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('69941430-70bc-4bf2-be13-58ca7ea33ced','Son Goku','100387',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('69e88a5b-8431-4328-8c37-732de4ad5c2f','Son Goku','100150',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6a0fedba-9166-4b6b-9b76-c23af78e06c3','Sin nombre','9e771177',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6a1dacc6-654e-4056-b082-424137305ffc','Son Goku','100075',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('6a7bf258-702d-475f-8eda-852130405739','Son Goku','100364',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6b631bf2-1dca-4627-8924-ee78ffca39f8','Sin nombre','be53fad7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6b786ee5-f458-4a7c-953f-b654c9c84043','Sin nombre','76269c40',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('6b7fdd34-a1fa-4842-af1a-375ceb30f041','Mejia','100026',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('6b82507b-748e-42d2-bb29-96a6f46cb25f','Sin nombre','515bafc6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6d4dcf7d-f51b-4504-a7b3-419fa5f139e8','Sin nombre','e48e0abf',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('6dbb8338-b75d-4a37-a214-22a4ee7e9c5e','jonathan rossi','100778',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('6ddea471-b96d-47e7-85c9-deb18d37b184','Son Goku','100244',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6dfd2b4c-747f-4e50-9c1b-0c24f9807137','Sin nombre','a9a3a9e3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6e353316-de4f-4c95-88f6-24c200988bcf','Sin nombre','ef3f84cd',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('6e48e7d9-63c9-483a-8faf-4272a1d20413','Sin nombre','c99b25d6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6e4924bb-6d21-4079-a43b-8605bcec1212','Son Goku','100172',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6ed3980c-c66a-46f5-8af1-44a57a36fbd2','Sin nombre','b68d5a5f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6ef1cad0-edd6-4208-ac51-82e55f196279','Sin nombre','635f6318',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6ef260c9-6902-478e-bae1-e9c166657f1c','Sin nombre','35edcef7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('6f274c1b-055b-40f9-907c-3a788651bce2','Son Goku','100115',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('6f73a723-3e59-494a-a65b-da3b3995118b','Sin nombre','8bd98c0f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('6f7dcd8e-63c4-411d-8b9c-d4a555e2d1af','Sin nombre','8b1be69e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('6f98d90b-9b6f-4fe9-b830-8878dd86dbf1','Mejia','100191',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('6fa9b884-d97a-45be-9e6c-ea0ff05db143','Sin nombre','c3ffd09f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('706bb1a5-05b3-4aa2-a0ae-936c98702d3a','Sin nombre','8c7461b2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('70915add-aadb-4eda-bf82-6f5cab9d53ec','Son Goku','100096',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('70a93428-6c42-4414-983c-0df1f00cc840','Sin nombre','c79427f7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('70a9cb5f-a5c4-4464-8c82-82420b194cb3','Sin nombre','4ee54fe9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('70bdcbe9-a7d0-401c-ae20-93bb32fe55ed','Mejia','100320',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('71ff2248-8be7-42b5-9ab8-e3d063cd4161','Son Goku','100090',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('7200630c-a139-4e7a-9655-10cc5e7c7b6c','Son Goku','100189',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7291c463-de58-4690-aaab-206e57186a8a','Sin nombre','4d079d61',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('72ca0846-45ab-4e54-962f-42a4f67a8381','Sin nombre','f55a5692',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('73b97258-0781-45c8-9e32-bcd200a46935','Sin nombre','629f9309',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('73d7902c-bd1c-4b1a-ac61-962794d2faad','Sin nombre','071dc89b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('7412c244-1b01-4b41-bf65-eecabd38c1b7','Sin nombre','91a9f517',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('74143469-ba3d-48d0-8a5e-66ba1f691797','Sin nombre','1fab3639',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7439e484-1950-4cd0-bb28-1b7acb1984fd','Sin nombre','cffdc236',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7443b1f3-1ad0-4b87-816f-4f45cc3794b8','Sin nombre','5cd860a9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('74b0608a-483b-4a84-b603-b03298af657e','Sin nombre','43e1fc66',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('74f93cf6-9b7d-4eb7-9e4d-24ee39b1bb3d','Sin nombre','dcc9beae',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7524885c-6d3c-4b7a-85ce-854a69dec634','Mejia','100488',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('753ef095-5bdb-4c04-a6d7-94abe9169647','Son Goku','100229',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('75c4ea9b-5e91-49aa-863c-3c2c5f4c661b','Mejia','100053',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('7689ba0d-2bfa-469f-8afe-ced16e5d79e2','Sin nombre','62be9975',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7716d14c-e4d4-4223-b826-df65f224dd07','Sin nombre','21c96761',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('776c3c7d-a89b-4b5e-9347-4a429c3c6f0f','Sin nombre','cc0f7965',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('77e58025-b4fd-473c-b63a-0f07737e43de','Son Goku','100277',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7836d85a-1b16-46f0-a0c0-08037b2f2cf7','Sin nombre','f0c8d91a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('78952e89-db06-4079-88ea-bf8ce5d3205d','Son Goku','100177',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('795c0c83-39a3-45d6-9049-2d737cf74258','Sin nombre','e3e4bf1a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('79705fa0-1a01-4c32-ae2c-bbf6647069ff','Sin nombre','3d3d258d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('79af4e18-032f-4559-90fa-a1b195fc2d39','Sin nombre','e88ed3e4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('79dc726f-e01b-4412-b993-88817fe9d495','Sin nombre','525714ee',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('79e086a2-61d7-47b3-95f2-fcf79c7f541b','Sin nombre','1936c2f3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('7acd6939-7c96-452b-bf77-1f24d4e0e53d','Son Goku','100060',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('7ad48ad5-e433-42d2-a7a1-1db1c0a068dc','Son Goku','100490',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('7b16a3c9-4d50-4577-b748-f507819411ea','Mejia','100209',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7b57080b-3462-432e-a937-f556de6f2258','Son Goku','100286',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7b6928a6-a1c0-4417-83f5-0ae540cdc192','Sin nombre','9b907433',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7bef5a16-38df-458c-acf8-6c31a39a3e45','Sin nombre','71bcd4c8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7c2514d4-6113-4bfb-8da8-3f3aa6aef16a','Sin nombre','bc789c7d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7ca90dbc-76f6-4501-aea9-c0c0e85de629','Mejia','100074',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('7d30ec23-8753-4b3c-8be3-cd76f44384b2','Sin nombre','7321dc1c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7d397e10-8de6-400d-bcec-12362e8043be','Son Goku','100259',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7d5465f7-5e96-4479-87ec-cfba2f7ee89a','Sin nombre','655b51d8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('7d65dceb-407a-4f47-b652-acbcbd961880','Son Goku','100411',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7d995b32-bebb-4f7b-944e-d0bea726b6bb','Son Goku','100343',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7dbc9ead-3366-493f-a68f-b5309b30e969','Son Goku','100466',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('7dbf3de7-c6f1-4aa7-802d-8574f0192e6d','Sin nombre','3dca39ee',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('7e053659-cf8f-4689-bc31-3dca16699c0e','Mejia','100419',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('7e5321e1-88f9-4b22-93ef-935b76348215','Mejia','100107',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('7e7c79f5-644e-4365-ade8-995f248fb8a0','Sin nombre','a31bde85',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7eafe21a-ccf0-4779-bf91-4e552ce5a012','Sin nombre','0899dace',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7f533596-7c27-42fb-b943-66b665f24948','Son Goku','100160',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('7fb6cfef-433f-44d1-b4a8-8a4aa72f1dc6','Sin nombre','3f276933',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('7fdaed76-8054-4c25-a0c6-d19c241efd24','Sin nombre','2161d550',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('7fdd94a4-fdea-448f-bad7-e4fe33f35211','Sin nombre','ed786cef',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('7fe026a6-0a8b-4487-980b-43ea78318639','Sin nombre','a1a39104',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('80bfccf4-0f5e-4f5d-b723-7468f421d116','Sin nombre','82d8c231',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('811a640d-6042-4278-a444-0638fbb60e83','Son Goku','100019',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('81669896-2ec2-4cf1-b409-118472c317cd','Sin nombre','2b568a9e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('816ca2e4-13bf-4035-8856-69c53ff49d41','Mejia','100380',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('81a82b97-2707-4a12-8f07-add3c380bec1','Sin nombre','95a0e580',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('81b20aa3-a4e1-4c1d-928a-52300a32e3f7','Sin nombre','efa2aaf5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('81e98832-66b1-4ec3-9cf2-e478ebe4c272','Son Goku','100417',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('82166499-1d59-4b7a-97a7-aeea7e6efd5b','Sin nombre','75ffa80c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('828d4171-8ce8-48fc-a525-94de1cfa857c','Sin nombre','154c4a81',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('82d4346d-6647-40df-85ef-d2adba59c30b','Sin nombre','9817a59b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('82fe09d5-90bf-4bea-8e44-37a276ebf19c','Sin nombre','3ebfeca2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('82ffd169-1d98-481b-926f-363c76e50214','Sin nombre','231554a2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('83914c00-8ca8-4380-b376-07825094ce93','Sin nombre','f904b206',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('8483a326-0bc7-40e0-9737-4eaf15209ef0','Mejia','100059',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('84946b26-436f-4a8c-b5b4-175310f55210','Sin nombre','4e041448',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('849d2370-31fd-405f-8c00-3abd01e594ba','Mejia','100206',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('84d61e7b-fec0-43e8-b192-8dce64af2be4','Mejia','100482',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('84fba877-995d-4a3b-8f15-9d0290f9df44','Sin nombre','8c7a4d16',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('85607a57-b72c-4b38-9c02-52510f63ca84','Sin nombre','b119dafa',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('856fdc9f-e2ae-4ab5-8b53-5a2a0fa38e08','Sin nombre','a70a11d6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('859a2b01-c754-421c-a618-6e320d166813','Mejia','100065',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('85bd27c0-0ce2-4945-8a3a-be999c1526fb','Son Goku','100255',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('85ea56ed-7411-4cb3-b430-437c0693259c','Son Goku','100168',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('862173a4-83b8-4c25-81bc-a54fe6ffeea1','Sin nombre','eb1bb4ef',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('865eb3d0-525a-4026-8c77-843474ea8d95','Sin nombre','9730016d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('866fe873-6055-45ad-b094-d956f498c444','Son Goku','100316',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('86bd0db5-5cc9-42b8-aca3-e5985d97252e','Son Goku','100013',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('8726c0e9-ba14-4f1b-b763-14f4bee049c0','Sin nombre','574d6603',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8743be71-0117-48f4-958d-e50de9d813c6','Sin nombre','e3598aea',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8796b2d2-cb86-4484-8059-e3c5a51fb324','Mejia','100443',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('887609b7-f1b2-41a2-9048-576a0258a955','Sin nombre','26b3445b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('897d3ccd-cb51-4f97-b960-fc2452cfc8df','Sin nombre','be62ebff',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8994d180-08f0-425a-8b12-8be7e6b5556b','Sin nombre','4ecbe94d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8a41fc04-960f-44d9-86f0-3c918e199f84','Sin nombre','471607f6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('8a478faa-5a70-4a6d-83ea-22635a2c01b2','Sin nombre','9a03daa8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8ab0b762-7efb-4d32-982c-25f84da47e19','Mejia','100329',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8ab89f3d-84e6-4930-8165-cce8fbc0b46b','Son Goku','100390',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8acbf3f2-51e8-4040-ba67-720d02208751','Son Goku','100450',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('8b1b5e86-b05c-4145-8239-2bd927ebe673','Son Goku','100111',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('8b1dc1af-3c25-49d4-aed5-2017ede4ded6','Son Goku','100486',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('8b8e28c2-c111-49ab-9dcf-b4ab48a8f97f','Mejia','100197',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8c3d85bb-1bbe-4f8f-986f-dbae84a0da12','Sin nombre','16e50c07',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('8c4b8b03-9e06-4991-8fa1-8cf44174bcd7','Son Goku','100216',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8cb9761f-4d73-49b2-aad3-280a6a6d27c9','Son Goku','100415',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8dc36a2f-fa0e-49c9-829c-80771b908684','Sin nombre','e7b7cefe',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8dcf4c12-bd2f-4151-b49c-d9f2273fbdc2','Son Goku','100105',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('8e14eb81-aaea-4573-8ebb-629f645a1c69','Mejia','100317',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('8e4fcb66-366d-4121-971f-13685f3988cb','Sin nombre','8b0b2593',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('8e6fbc8a-2df0-4887-89ba-273f5e178567','Mejia','100101',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('8e752507-4485-4cea-b51a-f50d40040fd0','Son Goku','100492',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('8e8df2f9-1e7b-487f-a0a6-06fd84abafa1','Son Goku','100067',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('8ec2b6aa-4a33-47fc-856b-75fd8e9e0ea3','Sin nombre','8786872f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('8ed6215d-946f-41df-91d3-e73e6b5b2af1','Son Goku','100424',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('8f1cf07f-e8f9-4607-b27f-355a482b8dba','Sin nombre','499faba2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('8fde2e20-3276-4539-87a9-b04900508459','Sin nombre','c39aed6b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('8ff23978-9596-4236-af11-4efb170ada09','Son Goku','100405',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('902c04fa-c4b6-4702-b1fd-d20b0244d6d1','Sin nombre','0ab9bef3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('9043f185-f5a4-4428-8afd-3cdda8b323c6','Sin nombre','4268492e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('905d07ae-30e0-4e39-8caa-b0c69b0fffc4','Sin nombre','f512ce5f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('90dc6c81-cb37-4856-89c0-4d2d289cdff0','Son Goku','100007',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('910d9950-0feb-407f-becc-f36ac666ea1c','Sin nombre','623341dd',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('9139f274-dbd9-4884-8ff7-ce49bd3a6d85','Son Goku','100162',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('914c80ae-ae0e-4c36-93fa-cffe3e26cb92','Son Goku','100295',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('915043c5-d55d-4c59-81fa-ebd1bf5ea7f5','Mejia','100440',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('91603681-310f-45eb-9875-83bbd9185a69','Mejia','100257',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('91786041-258a-48dc-8a99-ae4657947b5f','Mejia','100479',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('91cd7984-a8bf-4fd1-8bf5-6a881836ba8a','Mejia','100278',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('920df826-473e-4858-a160-66b86f699867','Sin nombre','2872e001',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('921be17a-877d-4789-881c-78d85230dd00','Sin nombre','abdaab12',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('922b4b0f-299e-44dd-9369-74dfc61b13dd','Son Goku','100310',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9236512e-1b2f-4bde-aa97-476b301985fa','Sin nombre','f0e982c5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('92e2a851-4603-4ba7-aca5-4ecc814641c9','Sin nombre','dfba4b62',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('93291c6b-85d2-4b89-a41d-585acef650a6','Sin nombre','0ab6e8e0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('93362edf-b71c-4ab6-9d68-4e121a130121','Sin nombre','f04b24b9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('93909345-e437-4a5b-b207-f48d13a2d8d2','Mejia','100398',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('93ffa8fa-5ec6-4b04-9165-e6da09aa37ea','Sin nombre','95d76b12',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('941cb833-6a60-433d-a051-560f14fe39c8','Sin nombre','80bee019',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('944cbdc3-37ce-4f5d-8919-b942216ccf13','Son Goku','100183',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('944f5c52-4ca5-4620-a4b7-1cc78c37d8d4','Mejia','100404',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('946fcda2-a5aa-4d5a-bec7-05a573295226','Sin nombre','e86c3ab3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('94aa059f-903a-426c-9222-244ae3600867','Mejia','100251',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('95059f36-0682-4ea8-9ed9-fa9c9d7a2d2d','Son Goku','100345',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9542e449-879d-40b6-b658-0fb8aadc40c0','Sin nombre','6f5c1d2d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('956a148e-d5f8-4dd9-a6bd-e4f53056ab86','Son Goku','100298',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9582aee8-e34b-4cc2-b418-f59b9f15c3cf','Son Goku','100210',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('959a2ca8-8b90-4c6b-8427-28021705b387','Sin nombre','6c230cbc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('95b4e772-9381-4f0b-b09c-89ab4ecf5699','Mejia','100131',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('965075bc-8f4d-4bba-b732-818d616658b9','Sin nombre','bfdc8f5f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('974eb152-9738-4dcd-a3c8-635ee5d594aa','Sin nombre','a49b226b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('97bc7fdc-a15c-492b-85ed-7324b1c3dfd2','Sin nombre','875f3600',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('97cadd99-ba43-402b-b65f-8719d83488e0','Son Goku','100306',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('97eab467-dd28-47cf-9d28-630971313c0a','Son Goku','100393',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('982859c6-a8be-4830-b90f-91f2b64ef1f8','Mejia','100254',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9853eeac-4a06-41a0-947e-0185253185c2','Son Goku','100456',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('9859f703-2e5d-4972-b4e6-125d5a985188','Sin nombre','bc95840e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('988440a7-4604-4228-94c8-7ed1394eab9f','Son Goku','100127',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('9893453d-9846-4b27-b6d3-903dc2a82780','Son Goku','100199',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('98ac5df2-ddb8-4d2b-b0b7-b0814f0fe405','Sin nombre','296273e2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('996f8602-9367-4f6e-bf90-b990a38851c3','Sin nombre','7ad748c5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('99a24871-7913-44b2-9d5c-5012464ef437','Sin nombre','3ca1df78',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('99b55e7a-8aaa-490a-b614-708c8248f57a','Son Goku','100439',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('99cfe3ab-e0bf-4b8f-be77-a18a18b11efb','Sin nombre','f36b4c58',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('99ee3234-52cc-4b19-a502-714730fa783d','Sin nombre','e3b9d48b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9b2e568f-f285-4bd0-97d9-c7f2939dc0d5','Son Goku','100454',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('9b6010b7-9836-460b-a9bc-dd6b3f65cfb9','Sin nombre','28fbf2ca',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('9b710ff2-ff62-4074-8c72-62fded8f8f99','Sin nombre','9bdbae5f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9b953e9d-638b-4fb7-b282-e86fd10097be','Sin nombre','b150ebc6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('9bdb815d-c53e-4fdd-87c2-2f648a4fe9d7','Sin nombre','9f1e35b4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9be5b45a-d4ba-4e0e-b80c-3ba51e426c70','Sin nombre','32fa68d9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9c28849d-0efc-43f1-9720-ad063124387f','Sin nombre','77f6ab22',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('9c3e2a8e-71a1-4942-be30-aefba684ebf4','Mejia','100287',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9c7ef3aa-eaa8-4317-ba09-403d2148a83b','Sin nombre','2dd1e3ed',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9cec385c-9a5a-4b70-b07e-a42c9805f32a','Mejia','100083',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('9db09eb5-921d-4632-b39f-3cd3326ccc80','Sin nombre','d63c4f64',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9dec9a5f-fb36-449c-a2c4-26e0cdd9e806','Mejia','100272',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9e0cd4cb-4724-414c-b54d-70ae372b29a9','Mejia','100134',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('9e184314-e84d-4cf6-936a-66f2d3f963ea','Mejia','100455',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('9e1c4b68-6f03-4b9f-ab64-42117ed0e274','Sin nombre','eaf0a92a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('9ea2f25d-40f9-44de-a9e7-c06cc1347c4f','Son Goku','100016',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('9ef1e335-11b4-488a-a0a1-c77c82ecde96','Sin nombre','cf8444b5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('9f81af4c-ab54-4df5-a517-98037bd53177','Son Goku','100315',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('9fb210cb-9ad2-48c7-821c-7927e8cad06b','Son Goku','100133',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a061e2f3-edbb-4507-b5db-5254b361a584','Mejia','100371',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a065ec82-a4d9-4f06-9c81-eaa2eb578a36','Sin nombre','d3719978',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a090e20f-1aef-42c9-9385-e75bac20885b','Son Goku','100103',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a10086b6-b3f4-4332-9957-fe4142f61a05','Sin nombre','e58acdf6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a1474d94-58c8-454c-8f95-cc43005adb73','Mejia','100098',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a152f93e-98fc-493d-bfc3-0cc3de840a2f','Sin nombre','174dda90',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a1806d26-634a-43ea-9cf8-3fa84f9f16d2','Son Goku','100322',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a19de589-6103-41e1-95cf-72c4bbbfaaea','Sin nombre','94664dee',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a1b9e35e-1ab6-4d0b-b712-b9a1d038c487','Sin nombre','c5bd85b8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a1c22604-5654-43aa-bbce-c744e7202682','Sin nombre','8360cf00',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a1c93bfa-a49a-4d85-bfed-1d00fd5f61b5','Sin nombre','8ee2e098',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a1f03632-fce3-4793-9148-3279861fb70d','Son Goku','100409',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a2258560-295a-481d-8ee8-cf7eb7e13578','Son Goku','100147',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a2568de1-d535-40b9-ab6b-cada1d3fc8a6','Son Goku','100267',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a2afec87-d713-4a86-a10a-39f6eae4b758','Mejia','100461',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('a2c04f8b-dacc-414c-9c9c-735c877bbfba','Son Goku','100375',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a2c6374b-3495-4266-86f4-dd0be23d5ac6','Sin nombre','6c861453',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a2e1d4b9-8dad-4597-bf57-8d026e2dffc2','Son Goku','100223',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a3aceffb-e2e3-4fea-be0b-05ed5592bbb9','Mejia','100086',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a3d1dd78-4495-433d-be5c-67ff7e69bd89','Mejia','15151565151',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a438657f-bd99-4ced-929e-e1225b442695','Son Goku','100166',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a4532c8b-41cd-4c71-adac-2838da6eaeb9','Sin nombre','bd90d621',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a47e5b7c-2257-4a44-9e5e-1361f29c5120','Sin nombre','e36f551f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a4a9cffc-b6d4-4ae3-8191-ebc073dc51c4','Sin nombre','77bc3af6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a4ad6afc-4cfc-40c9-990a-e88e28b9d276','Sin nombre','29cd348e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a4c2518f-47cd-476d-8984-0dab281b3037','Mejia','100311',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a4e04d14-e534-4a2b-b78d-a6e7888dfa64','Sin nombre','efd58e01',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a4feffd4-73db-4e76-a6c2-37f18ebf2fa3','Sin nombre','dde8ad29',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a5061e90-5032-4566-9bc7-dd476a5f8cfd','Sin nombre','fa68e323',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a51001c9-2268-4de8-93dd-2c2fc3088290','Son Goku','100297',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a5221f46-f447-4013-8e18-9c2a23d4cdda','Mejia','100281',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a534d05c-965a-42a5-b00d-0b4f9e8e92a8','Sin nombre','eafb3aae',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a564fa61-bf05-4a09-98e9-fc3fe92d349b','Son Goku','100453',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('a56995ce-3aa1-4174-8f2e-19aabe631e41','Sin nombre','2f3eb7e5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a5719aec-aa62-49d6-bb70-44bd97b7e9d7','Son Goku','100234',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a573e5dc-4ac1-4326-bf15-1753020162fe','Sin nombre','b7d37b11',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a58b5f16-3f74-490d-bb30-e62eae100d93','Sin nombre','64214da7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a5f556c1-7e14-4b2f-b0fe-eb63b3da6423','Son Goku','100342',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a6361ee2-eed0-4575-bab7-85df18a40d40','Sin nombre','88949792',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a660d992-bf9f-4345-9329-c265640b445a','Sin nombre','37e72b15',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a66b1576-7754-4b6c-b241-84409b682b8d','Mejia','100308',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a6707f5a-35af-467c-a475-22062935db56','Son Goku','100178',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a6a1dbeb-c1a6-4554-b37c-49ed028fec99','Sin nombre','d5e01550',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a6a9fba9-d1bf-4844-8f88-21703a661ad1','Sin nombre','9ef1d13d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a73b4754-f146-4d9b-9cce-f2fef74b801d','Mejia','100038',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a7731a01-9c5b-4a80-b298-fd40aed2092c','Son Goku','100346',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a77ae53a-fab3-4887-80d0-70e3fc5fa3e3','Sin nombre','0af3b7e8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a780b889-ac8e-42dc-a432-1966a65803fb','Mejia','100143',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a7904938-34c7-475e-bd57-ac377db6152e','Son Goku','100064',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('a7a273c4-f543-4aa5-9bfd-09a1937f2990','Sin nombre','1d1aa821',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a828a3c2-7984-4a98-ad5f-e2f5f9755885','Sin nombre','ac5dfae5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a85af43c-7015-4b9f-a6d7-06050bff5092','Son Goku','100171',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a871cd88-683d-4e02-9327-a5d8ae31dcca','Son Goku','100153',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a876e359-db81-4cbc-8c62-17aa23c1b2cb','Son Goku','100250',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a877b10e-2874-466b-b231-15fff12d81a6','Son Goku','100357',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a881fe91-3fba-4192-aaa4-31ed2984c66f','Sin nombre','8a26673f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a8e72adf-5c77-4f5b-a68c-bc75d7e71ffa','Sin nombre','738e150b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a8fa86c1-8c1d-4467-afbf-6aa5914582f9','Son Goku','100330',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a8fd8cb7-2e28-4013-bcd3-62373645a3f2','Sin nombre','d0f3f5a8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a90012c3-3d02-439c-ac04-87569c45e7e1','Sin nombre','333ea90f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a900aa74-ce54-44a4-bc5a-ad11c1482098','Sin nombre','4652b660',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('a92276e5-f697-4c45-b057-2c96b8746fc6','Son Goku','100472',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('a953b435-7f93-49ce-a052-e55399c882c0','Sin nombre','62193a3c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('a9542126-4bfb-4115-aa17-0a8f4ae3c5a2','Son Goku','100327',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a97f1520-3b27-48dd-b2c6-7caa67f843e9','Sin nombre','1437ac24',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a98ab503-6cda-4726-bdf9-0aef271ed7fa','Son Goku','100379',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a9956c73-2df2-47b5-91af-6202b55c9601','Mejia','100242',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a99678a3-d7c9-41ac-87fe-9f79431a6cec','Son Goku','100193',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('a9a99976-bfc5-4aff-b45f-63249449f04c','Sin nombre','007aeb06',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('a9bc5417-54a3-4c72-b49e-964e70ddf35c','Mejia','100221',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('aa7898c1-4bbd-426a-9417-62b194b5f4e9','Son Goku','100087',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('aafa9199-bd33-4b69-8fce-a70c2b7ae9ce','Sin nombre','fe71925d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ada68057-15a2-4272-95a7-e66456176362','Sin nombre','38b7c566',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('ae79e94d-7a61-4ce8-85a2-99eba5823573','Sin nombre','03fcf788',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ae79eaba-019f-4388-9c16-2531ce8d0097','Son Goku','100381',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ae8519ac-11ae-493c-b29e-a9d8d4c27485','Son Goku','100489',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('af56b5dd-177b-45a8-b5a0-73e84818d1ee','Sin nombre','68daae00',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('af737810-e3b6-4e5f-ac6d-2f947b5df848','Sin nombre','ae2d061d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b060a425-3a8e-47b2-8605-f590df958fbd','Son Goku','100264',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('b0cf940b-5811-423d-99db-5fe52f038c9a','Sin nombre','286f44f7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b11dbe4c-36bc-4c4e-abf4-7fb24faace52','Son Goku','100181',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('b1500053-9e2c-41cf-8a3e-4be87e548c08','Sin nombre','6a01702c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b1d5360e-75dc-49a8-9312-c12e0e9c0e4e','Son Goku','100354',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('b1e36109-b9a0-4533-a67b-e422cae781c0','Sin nombre','150d1c83',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b2adc466-ada2-4558-83dd-da38ec3302f8','Sin nombre','234073f7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b313917f-a6cc-4b52-883f-c5f070411b7f','Sin nombre','6f2176f9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b364b39c-a9b9-4686-8d88-074f34e6d5ed','Son Goku','100027',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b37402c5-1b04-4b01-81e8-2f308e0dc5d5','Son Goku','100078',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b37bb05c-6a92-4e67-9d61-0c0c39a628c0','Sin nombre','2e453c71',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b3bbe125-6702-4f5e-9420-7221d9aac7f7','Sin nombre','333a586e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b3e1bb32-9a92-468d-8d16-4d125fe19233','Sin nombre','3d8f929b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b3f4cca0-98ca-4e4b-bbec-1880d5f90950','Sin nombre','9ced4bd8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b42f76de-a399-493b-817a-b5e5777e5068','Sin nombre','a1a88635',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b4d88e70-f76c-4d13-b220-d4bcb6e70cfe','Sin nombre','68c825d8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b513751d-8d6f-4bec-bfb9-1ccd08e19063','Sin nombre','83aa23a9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b61f2ce5-c023-4d06-9a97-eed6ea9905f5','Sin nombre','2200b2ac',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b65fd6a2-d81b-40f3-b0f8-a76d3b124144','Son Goku','100142',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b68cd3f8-4286-4f8b-b36b-181b1c0f450a','Son Goku','100034',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b7190f9f-efa5-47e2-8fd7-3329ebd05a5e','Sin nombre','3a4271f3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b73c35f8-65d8-4a84-ae5e-1c98e1c22b2c','Sin nombre','f4ae8b71',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b8271c4b-ba9e-4f1f-a261-2a72248b4355','Sin nombre','cd0f5440',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b89af1d3-cd3d-4b8f-9a98-8a6466c25804','Son Goku','100391',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('b8a9a1ea-c33a-4567-9105-6b9ca792d906','Sin nombre','2b411aa0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b90d7196-80ad-4dfc-840f-ca85ca840f77','Sin nombre','e9e0a21c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b929fde6-6b31-4f8a-8c48-376a9869e1e2','Son Goku','100099',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b92ab81e-2d4f-48ec-8dc5-7fc9e13251ff','Mejia','100476',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('b9330792-5300-45a3-9a02-df0940191306','Son Goku','100102',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b95d35ad-8fd1-47fe-9b69-6f35475fee85','Son Goku','100412',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('b971f1c9-48e5-4ffa-97ed-5f3664bf35ba','Sin nombre','8acb3a8b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b974a41e-1588-4215-8fb8-e1f9e91b3a54','Sin nombre','819257a9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('b98ba029-1d8e-43e8-bd07-8384f3caf965','Sin nombre','5c0e1c67',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('b9a8f627-73a0-429d-8934-f99e82cdc14b','Son Goku','100012',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('b9d26492-0589-49e1-b293-cd283c97a22d','Sin nombre','8bf91c06',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ba000524-3ba1-4585-b10b-33d3e81b92bf','Son Goku','100043',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('ba13e7e3-d466-4996-8340-c9e125749fe6','Mejia','100368',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ba4549c6-cc7a-4c5f-a8a6-a3141e7fa3a6','Sin nombre','93199ec6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('ba5e4f8c-a1fe-4fcc-a407-7b4b0dc5284b','Son Goku','100118',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('baa224ba-43e8-4fa2-9e9b-b3e0e66ccf62','Mejia','100416',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bab3404d-dd93-43e6-82a6-62f5af0f4d87','Mejia','100062',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bb48654a-819b-4578-84e2-37048c5c75d6','Sin nombre','4d427aa0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('bb973a4f-7957-41da-bb9c-5e4f9f6484bd','Son Goku','100348',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bb976646-8426-4c83-ae9b-b5857f4746bf','Son Goku','100276',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bbe13c86-1f80-4dc8-abff-92bd42b12fbc','Mejia','100437',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('bc1cbcf2-ab42-44c0-b423-b0eea3d9f37c','Sin nombre','a40b758c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('bc4451a3-f2d7-4831-a2f5-1eafd59a2ea2','Sin nombre','68e4862c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('bc85393a-cb2c-418f-8f6e-12d0d818e065','Son Goku','100069',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bd4058c3-3ae0-43bf-8a72-00f100564035','Son Goku','100121',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bd4efa64-f984-487c-ac21-b31a23e5973f','Son Goku','100289',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bdb298d1-e88f-4fd0-b82a-fddf901a965f','Mejia','100080',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bea1e3d9-47b9-4479-8d2e-a645e634ff8b','Sin nombre','9d4534bf',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('beb9909e-6aaa-41c8-8ae1-13320e2e82ea','Son Goku','100076',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bebac628-b7b7-46fe-896e-d9e6d561069a','Son Goku','100061',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bebde1d8-7e9b-4a38-aa4f-fe0de64e85dd','Sin nombre','3a1fc270',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('beefdef0-22e0-429f-b0d9-c047235095af','Son Goku','100148',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('bf1043d4-5064-42b9-8676-f75459a30468','Son Goku','100196',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bf5045a1-4333-4767-828e-6ff2684c19da','Mejia','100164',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bf7eb9ce-d66d-44c8-8000-3ffc6eae8935','Son Goku','100159',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('bf8d9327-9c20-4984-bf06-09c221f6870c','Son Goku','100367',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c002fdff-7a52-4e5f-8a90-e73c584d2ee9','Sin nombre','8229a702',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('c06c89c4-2720-4081-b5ac-133201071a4d','Sin nombre','67a27ecd',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('c07e959b-de82-433e-a29b-8e3658906cdf','Sin nombre','b73c1a62',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('c09719cc-eed0-4c4f-a1c0-edb28e3908f3','Son Goku','100021',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c0a50935-eab8-41e6-869c-5898f71a18f7','Mejia','100068',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c152ab51-8d03-401b-ab4a-6b566ce7c8dd','Mejia','100152',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c2d28f9e-9a9f-4786-afce-a14348c66463','Mejia','100395',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c32daf9d-3810-4f2e-8abb-89045366fe44','Sin nombre','a43318fc',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('c3648fd0-88a2-4063-af0b-80e5cfbd5a46','Mejia','100446',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('c38ec827-3ebc-43d7-82c8-533c52e11cf3','Son Goku','100040',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c3e9e785-a9b5-4be8-b629-34f951ae50e5','Son Goku','100219',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c469665b-d449-41a3-8530-5d6609e17d83','Son Goku','100474',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('c47dc920-36b9-4a6d-85ba-7bc5e03288a9','Sin nombre','dd3a144c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('c4bb244e-6e3b-4a8f-9bd7-aa8e855dbb4c','Mejia','100119',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c52357e4-d90b-4b34-b432-eb1ecb28ab42','Sin nombre','c75dabcf',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('c53e534d-008c-4fa3-953b-247c147970e8','Son Goku','100157',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c55cfb82-e66d-4200-b55a-d6e3513bf73d','Sin nombre','a14abeed',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('c5b28c77-24b6-4906-8ad3-65b273a5a581','Son Goku','100112',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c5e5a839-f2e9-498f-9d5f-02d23ef59f1d','Sin nombre','fe75929d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('c7b59b14-813a-49be-88b7-5cbc48f0fc2c','Sin nombre','f93d1167',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('c7ea4989-b789-47a7-a34d-d402473a952a','Mejia','100326',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c81c73ae-e17e-4b39-9ee6-5c5239b67d53','Sin nombre','f34302c0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('c8229cd3-67cb-4305-a1d0-023d502134ce','Mejia','100284',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c86363e2-d8a0-4782-9e2d-58c8c141edee','Sin nombre','1a89fbbf',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('c8a2200d-b178-493c-8225-ccfc241ae726','Sin nombre','4e39d94c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('c8c5fde8-df24-41e7-8145-02331ee6f101','Mejia','100095',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('c8f9a823-ef9a-4bd2-82ca-4d69693ab2f4','Mejia','100230',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c8fb938a-bf54-494a-8444-43326762ccb9','Mejia','100494',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('c94c5e06-489b-4cbd-b2f9-ace1b1a1a5d9','Sin nombre','ed43f3ba',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('c984d66d-7555-4824-bd24-3389e736b9e5','Mejia','100332',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('c99932f5-5e5b-4cd8-9f4c-18e72e600330','Mejia','100407',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ca555018-8f26-4d51-9d85-ea31366b57be','Sin nombre','eda4d4d0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ca72cdc0-0d17-4841-81c0-8ab563003075','Sin nombre','9c7078af',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ca93457f-ee56-482f-8df4-6ed608e04b06','Mejia','100413',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('cc00fe0e-c310-44a5-bea7-4a14801b180a','Son Goku','100301',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('cc4a7eff-3d28-4c69-a52d-79d116cfa7d4','Sin nombre','5e3dfbb6',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ccc14ca2-45d9-42b6-bbf8-4c1abd83f633','Sin nombre','cea1c01f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ccea6804-a17b-4fa3-ae2f-150503f7db49','Sin nombre','70d5e0a8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('cd303898-e146-4d8e-a5c5-41620e02a3e6','Son Goku','100351',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('cd31636f-1874-4910-a9b8-80ef16cd2b47','Son Goku','100037',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('cd59e128-3a55-4f97-b985-218892bdf779','Son Goku','100036',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('cde941ed-4a9b-47ca-a994-d4083af431ad','Sin nombre','2f4989cb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('cdf6adf6-5a4b-44af-a431-f909d1e2aa3c','Sin nombre','500537b7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('cdf72b95-f978-42f2-b726-6b435e3c29e7','Sin nombre','6f1ce308',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('ce1bb1ef-5ed1-4344-b817-113a5cc01dcd','Son Goku','100163',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ce2401ce-846d-4059-bf8d-a150df4685ec','Mejia','100188',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ce7c69dc-5291-48d4-b8ad-1a6d997967ac','Sin nombre','cfc45e86',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('cefa6f6f-6a6d-4129-b35f-17b7586bb847','Sin nombre','d403697f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('cf25a8ef-556e-43fe-802c-5a25f79cc2b6','Mejia','100212',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('cf2fd874-aa7a-4d93-a579-c4845f9880eb','Sin nombre','325bf907',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('cf8085b4-2e2d-4475-989f-ea754fb54244','Son Goku','100273',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d07589c4-25ae-4ed0-a406-bc1632d7c8d8','Sin nombre','14e8b13c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d0821549-6934-4c27-bb10-692c672dd4a5','Sin nombre','cbe4cfec',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d1b59f7a-66c3-492a-90a5-9c383630ab7e','Sin nombre','4b4dda40',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('d2065a26-dd74-4355-8f74-18425b4f8ca3','diego Buni','100885',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('d229f149-9046-4949-873a-fc9e47ff109c','Son Goku','100402',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d22d7ba1-56f8-441a-91f9-0061f0772607','Sin nombre','6826a36a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('d2626e6c-970c-4b63-a2de-e8d2d61ce82f','Son Goku','100321',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d27d64ea-c62d-49d5-997a-ad8157b1114d','Sin nombre','8d1bf84f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d2dce41e-1793-460b-b407-a9120b3fea2d','Sin nombre','10ac8aab',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d32e181c-d55f-4d7a-8d32-0ac281be66d6','Son Goku','100045',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('d4102ed6-03ed-4c4e-b115-c9baa6d4e42d','Sin nombre','58a6c441',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d41d1d05-65fa-47ee-998b-622ae4d37cfe','Sin nombre','6fe8b6d1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('d43a66e7-5fa3-44bd-986c-bfbd24db6f5f','Sin nombre','35338c22',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d464c7c7-a6c8-4453-b5df-edf318b89138','Sin nombre','1c57d82e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d4a72163-0da0-4d42-892f-c23839e18a48','Mejia','100464',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('d5c0c8d8-3746-43f2-8574-022406116940','Son Goku','100051',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('d680b49b-435f-45cc-9610-98847b67a808','Sin nombre','13f3a77c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d6ca5076-eee0-4b1a-8197-af920d4457d6','Sin nombre','1047ffa3',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d6fcbe5d-6556-45d4-acca-d7cb444cba51','Son Goku','100324',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d73be17c-d513-4503-8af4-aa70c35036f9','Sin nombre','d02c00f2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d760b42b-6eb3-4695-89c2-fc952e70b0ab','Son Goku','100136',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('d7c6e054-cf1e-4797-8730-ce8c5aafd96e','Sin nombre','b516f5d5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('d7cbb0b0-ac06-41c6-90ea-9f9eedd2e3e3','Sin nombre','077717b0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('d81e376d-96f4-40e0-9d7c-583d82d0be71','Son Goku','100235',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d8598fe8-0169-4e22-ab0a-5dbf4bbd0c2b','Son Goku','100459',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('d85a7853-c79c-468d-bed8-3733b8eb3b71','Sin nombre','48db41e2',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('d9947147-56a6-4f24-8380-11aab2c9b67b','Son Goku','100261',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('d99506d2-39e8-48f3-86b1-7687286b94a1','Son Goku','100135',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('d9a9aba9-9f08-43be-8303-7bd0f5483846','Son Goku','100117',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('da26dbb9-c35e-41ff-bc7c-5e2233fe7c8e','Sin nombre','8b21bbc1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dafa4883-8fdc-464d-ade8-9831b3d6aba4','Mejia','100011',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('db47c704-2731-4bc9-9628-cca886af3a06','Son Goku','100270',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('db7a2a78-9bd7-4705-a167-85f36a435c2a','Sin nombre','0dd89686',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('db7ec21d-35f2-4d4f-a732-547e9230f7fa','Sin nombre','0088652d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dbc252f0-eaa3-45f0-9edd-e8c53065a603','Son Goku','100049',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('dbc845d0-992c-4292-a5f7-798b794f8c66','Mejia','100314',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('dbf3b693-f563-40a1-9af6-393bfc7a5742','Mejia','100485',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('dc99d911-be80-45f1-959b-c54564a33421','Sin nombre','0b2231bb',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('dcf9b996-2f29-4b57-8fab-7c3a6b71b015','Son Goku','100054',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('dcfb3f00-4680-4a45-a0f8-6bcb17c8fc25','Mejia','100182',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('dd035493-c933-4bfa-b4fa-e995edb2aba2','Sin nombre','3568ea1c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dd8caa44-6986-4d73-ac5c-9daf6c32b703','Son Goku','100138',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('ddb4aa18-70a7-4d02-9b5f-c803415dcb9d','Sin nombre','a4d3864d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('ddc0441c-de55-4e6c-acd0-3bc460be5d16','Sin nombre','c02c76ae',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('de3ebeb1-7e50-41cf-8537-52c7d5e0bafa','Sin nombre','ad6ffe94',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('de8979db-cef6-43b2-bf1f-5e83ce9ee32a','Sin nombre','7bbe101f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dea2d25a-e56b-4198-b7da-ec4d48464687','Mejia','100005',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('dec2dc40-ae40-4116-9ed1-098a96081e8a','Sin nombre','b76b3609',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('def5885b-d58b-41eb-801d-44b5ab91008c','Sin nombre','863ed927',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('df444708-409f-4c3c-afec-18b28b663a42','Mejia','100014',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('df8e9991-9bbe-4701-825e-c9720e17946e','Son Goku','100093',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('dfdae273-1033-4625-a2c6-0194f1b20ee2','Sin nombre','e033f01d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dfe55dc7-1e73-45e6-b63e-25949b54573a','Sin nombre','f4961d8b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('dff3c0b3-663f-4da9-9481-b34852177a78','Mejia','100122',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e08a3b5a-d998-4468-befe-a98ef25571dd','Son Goku','100039',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e08c3918-4f5a-4eff-b8ab-bb5cd755832e','Sin nombre','85c23447',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e133ff6c-7241-4664-bf9e-1ad05cda7bfc','Sin nombre','6240326e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e1514ef2-2baa-4303-a042-9543f205bbc9','Sin nombre','fe909eaf',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e1d4be95-8e87-4483-bccf-04e9b73c89cd','Sin nombre','ec457786',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('e1f75807-9e2e-41d9-b7f5-2fd8389b57d3','Son Goku','100304',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e271b04d-adb1-4fd7-9f51-48e5e83bb044','Sin nombre','def0661d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('e2bd1ea6-b935-4427-81dd-f7c62802b765','Son Goku','100265',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e2d5b73c-bdb8-49dc-a45d-f00e0f0c5046','Son Goku','100091',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e2d66d80-0ce2-4c5c-a6dc-15f062720ada','Sin nombre','13b156e9',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e3269141-f6ed-46d5-8129-cd45f85ebf44','Sin nombre','c0c4884f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e3a70848-7b14-4675-ab48-e0747d67ea4e','Sin nombre','e11f998a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('e3c37aad-892f-4cf4-a8b3-1136a7b788ed','Son Goku','100241',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e444efdc-4324-4cd8-b535-ca8cf6893744','Mejia','100305',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e4c529c5-5832-4099-b4d7-9862d2b85f28','Sin nombre','ccd8b880',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e4d68d8c-6301-48f0-8070-39aee34548af','Sin nombre','d2045495',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e52999ec-6344-42a7-b272-7cb40b2abfe8','Sin nombre','fde916ca',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e55e66af-8c69-4213-bcf5-b8315a3d0c39','Son Goku','100288',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e57386f4-2191-4174-97c2-406ebe438442','Sin nombre','e02d59e7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('e5ddb5dd-5a10-4630-9e76-fba3335d05db','Son Goku','100457',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('e5f0bea3-14bf-4d71-905b-e9090e348345','Sin nombre','289026a0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('e6894a01-f61f-4eb9-af35-5f712ade240a','Son Goku','100372',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e6a6deb2-46cb-42a2-996a-7172709430a0','Son Goku','100100',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e6ac09e5-abd9-488c-9d68-34a531ccad19','Son Goku','100015',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e6b687fb-5464-4475-9a0d-676946eb997c','Son Goku','100130',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e6e08361-14af-4749-b052-bb62ae7ee4a4','Sin nombre','99f38222',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e6ef8163-3964-4677-894b-1c63fefc7f94','Son Goku','100072',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('e6f80242-7e24-4e9d-b5d3-bde502f2f773','Son Goku','100414',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e749ea48-d1f3-4133-a346-94e809a069bd','Mejia','100170',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('e7eeba8a-8d48-4866-8538-5ac1320f63e3','Sin nombre','0f0eb016',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('e88377a7-d529-4170-aadb-9ea57bed3277','Son Goku','100463',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('e97a7476-1995-4a1d-a601-d331f0f78548','Sin nombre','dd098a1e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('ea0f2440-8e8c-4dc0-89c1-b764efe0c9d3','Son Goku','100358',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ea8f2487-86ab-4220-9548-1e7e3c501e9e','Son Goku','100441',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('ea9ff70b-fbec-4233-bb9a-b645c9b92277','Sin nombre','219d9b34',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('eab62e6d-082c-4d67-aadb-75757e7c427b','Son Goku','100291',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('eafc9811-4c13-4d30-910e-4f297e02add6','Sin nombre','e72cd58a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('eb473ffd-5102-4bab-9ff7-1770ecfd478f','Son Goku','100109',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('eb4ffc5e-9da2-40a1-9ef1-636be1ee4332','Son Goku','100435',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('eba99753-c1b3-4f91-b86a-2f4cd73873e6','Sin nombre','c2c26b6f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ebd8232e-5310-42d2-a477-dc5e60de0cfd','Sin nombre','a57c5e0e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ebf6c315-955f-4cb0-8589-46dcc832d0fc','Son Goku','100243',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ec002d0c-7b18-4078-a0b5-37c1f5c335d0','Son Goku','100063',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('ec1a8ff5-5bd9-4bf5-9f75-31ed77f3c4fc','Sin nombre','8a8c927b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ece6f91e-183b-43ec-885e-288fd92e86f0','Son Goku','100220',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ed522a9e-3161-4ef9-b552-27882b8692bd','Sin nombre','59b740aa',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('ed8f4a90-fb15-4f59-92ec-d90c4a8d0bc9','Sin nombre','467a3137',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('edc128cf-af67-4e7f-8bfe-e0c5a370529b','Juan Pérez','2026001','juan.perez@universidad.edu.co','estudiante',NULL,'211bd001-0157-4c2a-a3ee-fc16b390ca16','2026-05-17 19:52:11'),('edc2e383-9a75-4f49-b941-338281a28f0a','Sin nombre','9153b0fe',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('edef6ada-417b-4a89-aa55-a748c6b7a7c4','Mejia','100458',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('ee0d4fef-98fe-4afc-82ec-afc4550c4c93','Mejia','100299',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ee146dab-553c-4878-81e2-e4469f456559','Mejia','100434',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('ef2b30a0-49c7-4c6b-ba49-04cfd7b8f9a4','Son Goku','100333',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ef5375ba-757b-49ad-9139-195bf9df2a4a','Sin nombre','baaabd5d',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('eff4fe14-cd9d-4e81-a63d-5cfc654cf47c','Mejia','100149',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f06fe29b-7966-4e5c-b505-f62b18462cd9','Sin nombre','6aa2aa05',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f0ebca73-e597-4acb-9b0e-c76a9b8e1ba1','Sin nombre','04e183a7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('f15ced24-b393-44f2-97b1-4c8b986c7e7e','Sin nombre','4539cb61',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('f16d924c-edb1-4a5f-a6e7-eb1f4d07352e','Sin nombre','3917c8ca',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('f1bbf5fe-fdb9-4d24-b6a2-8acce5001edb','Sin nombre','efd6fc96',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f2ba1d16-36e0-4586-8a6a-cd3dae1bb99a','Son Goku','100201',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f2c32e73-f9f8-4eb4-9d26-a3a2ccff1c64','Sin nombre','b8f8e205',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f2e40846-773a-4393-befe-87e94d9158bf','Sin nombre','38dd69ed',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f2f374b1-3076-4943-bdbd-fa5c777918a4','Sin nombre','29305c8f',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f318c1e9-4eb6-42e2-abe6-39a7f63f2643','Son Goku','100129',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('f364eb70-1f99-4a9c-a04e-3cbbab237de5','Sin nombre','56cffa60',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f37a9948-d56e-4199-9146-e432c700fb89','Son Goku','100187',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f388f3a1-7945-48e6-81ca-2e7459c86201','Sin nombre','49a498b5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f3f069f2-4e2d-4609-9b89-2335075728f6','Son Goku','100406',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f3fe63da-187c-45ae-834b-0d3f2037810e','Mejia','100200',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f468d96d-1968-4461-801e-4adcd9c09473','Son Goku','100006',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('f48c31e9-50b0-4dc1-9ead-008b1d3c2a8f','Son Goku','100252',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f4e2c476-5031-499e-846c-cb621b7c36ad','Sin nombre','76539a38',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f4f08394-e129-411e-9857-b33bfb2c6f6d','Son Goku','100325',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f520e734-d73d-4d98-972f-35ef0ae78a55','Sin nombre','846ca9f8',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f5bb3d21-cd39-492f-a7e8-e81dfd44937b','Son Goku','100003',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('f5f5cae1-24ec-4942-824f-a3efc415b689','Son Goku','100022',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('f636e523-53a9-49d9-9cae-2682322414f5','Son Goku','100028',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('f70c1811-47f1-48e3-b890-89e41640811e','Son Goku','100262',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f78cf8ea-34ab-4321-9e68-5e37e865c75a','Son Goku','100366',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f7fb8d17-0a74-415b-95ae-c8e492586ace','Mejia','100302',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f7ff7f97-f727-462b-9617-c1ec323f97d4','Sin nombre','2709752c',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f8c80990-0def-4c6b-a117-b3510015063c','Son Goku','100352',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('f8fa2720-dc5d-425d-bd56-e0ef44aea78f','Sin nombre','e4a70bd7',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('f95c2edf-6f29-4b65-a0d4-33edbab6be98','Sin nombre','aa813d5a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('f9e5f06c-a574-4ed9-80e4-a7fd132f33d4','Son Goku','100073',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('fa03c6ee-f2d3-4130-b5c3-33158e63ce90','Sin nombre','05401f02',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fa057ae9-c698-4535-8f13-e281c9c64496','Mejia','100410',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('fa1369a9-ee09-41f4-acd9-43d6342f5662','Mejia','100020',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('fa96340a-0c60-4008-8ac2-084a8c42b47b','Sin nombre','d7a4aea5',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fb390bd6-b638-4c9c-97f4-28858bf7c095','Sin nombre','6ef15c55',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fb40c453-ecc2-45a3-a052-3a73945a7165','Sin nombre','0a24b09a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fb99718d-d352-43f0-9065-ad9c176701d2','Sin nombre','1a1a3e2e',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('fc0579e0-939e-40c0-8951-6f169608f15e','Sin nombre','dd07e445',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('fc10b0cd-49a3-41c6-8c7e-67b265416bad','Sin nombre','a4fdc7d4',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fce0f390-de90-4876-8450-476e1cb058cd','Sin nombre','19e3c2a1',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fd2b8a93-924c-4afd-931a-660338d9d7ca','Sin nombre','db626515',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('fd760a1e-d581-4e5a-99df-65c33659652b','Son Goku','100174',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('fdb7ecef-aa63-418f-a38a-b10835873dd6','Sin nombre','df48bee0',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('fdf21e6a-8db5-4626-a97c-9c6ab8d1b424','Son Goku','100337',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('fdf2bf0d-ba95-45b2-b1f1-c453958873f0','Mejia','100386',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('fe569baf-02f6-464a-9e6b-7c887637987b','Sin nombre','afe5f928',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:12'),('fe8ffe9f-3b5a-484c-a229-c4c6f748f451','Mejia','100224',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('feb78853-c72f-4102-9716-e5de7c300177','Sin nombre','e493348a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14'),('fedc7592-4a31-48d5-a016-5b4ebbd63edd','Son Goku','100081',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('fee0966c-16c5-48ac-9393-7d106cd6c9bc','Mejia','100425',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:17'),('feec7bf9-9283-4fc8-a41d-80628ee2fafd','Sin nombre','5f3ba22b',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ff13a237-6cd0-46cb-b315-99fca5ec5532','Mejia','100401',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:16'),('ff1d18d6-0945-491b-bb8b-dff25a2624e1','Sin nombre','7c381fbe',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:13'),('ff1fb1fc-6d50-4790-b539-710ba4e524f9','Mejia','100050',NULL,'estudiante',NULL,NULL,'2026-05-17 20:36:15'),('ffb797b2-b10d-482a-8a8e-c828c9917a7d','Sin nombre','2c94276a',NULL,'estudiante',NULL,NULL,'2026-05-17 20:30:14');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` varchar(255) NOT NULL,
  `participant_id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(50) DEFAULT 'efectivo',
  `status` enum('completado','pendiente','reembolsado') DEFAULT 'completado',
  `reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('14d4e134-57ac-42ff-9710-42825b839a80','edc128cf-af67-4e7f-8bfe-e0c5a370529b','bdc456b6-5813-42d3-a01f-7f1e516e1b1b',50000.00,'2026-05-17 19:52:11','transferencia','completado',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phase_attendances`
--

DROP TABLE IF EXISTS `phase_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phase_attendances` (
  `id` varchar(255) NOT NULL,
  `participant_id` varchar(255) NOT NULL,
  `phase_id` varchar(255) NOT NULL,
  `attended` tinyint(1) DEFAULT '0',
  `registered_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_participant_phase` (`participant_id`,`phase_id`),
  KEY `phase_id` (`phase_id`),
  CONSTRAINT `phase_attendances_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phase_attendances_ibfk_2` FOREIGN KEY (`phase_id`) REFERENCES `event_phases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phase_attendances`
--

LOCK TABLES `phase_attendances` WRITE;
/*!40000 ALTER TABLE `phase_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `phase_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES ('211bd001-0157-4c2a-a3ee-fc16b390ca16','ING Sistemas','true','2026-02-19 16:09:53'),('d317e9a7-900e-4906-a14a-b5d18a15c5f9','medicina ','true','2026-03-05 16:49:41');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permissions` json NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('f41c1333-e525-4228-b8ee-e6721183fffa','secretario jonathan','{\"forms\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}, \"roles\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}, \"users\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}, \"events\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}, \"scenery\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}, \"programs\": {\"edit\": true, \"view\": true, \"create\": true, \"delete\": true}}','2026-02-24 15:18:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sceneries`
--

DROP TABLE IF EXISTS `sceneries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sceneries` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sceneries`
--

LOCK TABLES `sceneries` WRITE;
/*!40000 ALTER TABLE `sceneries` DISABLE KEYS */;
INSERT INTO `sceneries` VALUES ('84b11204-d600-4e2f-b2ab-e9f22ae46536','Auditorio pc ','true','2026-03-12 21:10:28');
/*!40000 ALTER TABLE `sceneries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('b2e3c65a-3e6e-44ad-8ddf-60b2745a0c07','f41c1333-e525-4228-b8ee-e6721183fffa','jonathan','jonathan@buni.com','$2b$10$H1YJcjxfl/t.uDL.tgdHCe/pgNEolmi9QbUTJUSRzbLO80Aab6F8C','2026-02-24 15:19:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-27 10:25:35
