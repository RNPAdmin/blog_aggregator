Prerequisites:
- PostgreSQL installed and running
- Go installed
- Git installed

Installation:
- Run go install https://github.com/RNPAdmin/blog_aggregator

Configuration:
- Manually create a config file in your home directory, ~/.gatorconfig.json, with the following content:

    {
    "db_url": "postgres://example"
    }

Usage:
- Run the following commands to run the blog aggregator:

    gator login <username>
    gator register <username>
    gator reset
    gator users
    gator agg <get interval in seconds (e.g., 60)>
    gator addFeed <feed URL>
    gator feeds
    gator follow <feed URL>
    gator unfollow <feed URL>
    gator following
    gator browse