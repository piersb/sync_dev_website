/* Sets the siteurl and home values on the local copy so WP will serve itself 
 * Change local_url to wherever MAMP is serving your local copy from 
 * And copy this file to ~/.sync_dev_website/localise_sql_SITENAME.sql (or similar)
 */

update wp_options set option_value="local_url"
where option_name="siteurl";

update wp_options set option_value="local_url"
where option_name="home";
