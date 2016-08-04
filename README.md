# docker-aws-billing

### Table creation

```
CREATE TABLE `billing_detail` (
  `invoice_id` varchar(255) DEFAULT NULL,
  `payer_account_id` varchar(255) DEFAULT NULL,
  `linked_account_id` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `rate_id` varchar(255) DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `pricing_plan_id` varchar(255) DEFAULT NULL,
  `usage_type` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `reserved_instance` varchar(255) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `usage_start_date` datetime DEFAULT NULL,
  `usage_end_date` datetime DEFAULT NULL,
  `usage_quantity` float DEFAULT NULL,
  `blended_rate` float DEFAULT NULL,
  `blended_cost` float DEFAULT NULL,
  `unblended_rate` float DEFAULT NULL,
  `unblended_cost` float DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `cost_center` varchar(255) DEFAULT NULL
) 
```

### Usage

```
docker run -d  \
  -e "S3_BUCKET=somes3bucket" \
  -e "MYSQL_HOST=somehost" \
  -e "MYSQL_USER=someuser" \
  -e "MYSQL_PASS=somepassword" \
  -e "AWS_ACCESS_KEY_ID=someaccesskey" \
  -e "AWS_SECRET_ACCESS_KEY=somesecretkey" \
  -e "START_MONTH=1" \
  -e "END_MONTH=7" \
  -e "YEAR-2015" 
  docker.cucloud.net/aws-building
```
