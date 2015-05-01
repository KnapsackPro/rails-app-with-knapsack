# Rails app with knapsack

This is example Ruby on Rails app with knapsack gem.

You can read more about free knapsack gem here:

https://github.com/ArturT/knapsack

## Parallel minitest test suite with knapsack

First generate report `knapsack_minitest_report.json` with:

    $ KNAPSACK_GENERATE_REPORT=true bundle exec rake test

After that you can use command to run tests:

    # Run this on first CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=0 bundle exec rake knapsack:minitest

    # Run this on second CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=1 bundle exec rake knapsack:minitest
