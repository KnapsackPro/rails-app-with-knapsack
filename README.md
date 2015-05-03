# Rails app with knapsack

[![Circle CI](https://circleci.com/gh/KnapsackPro/rails-app-with-knapsack.svg)](https://circleci.com/gh/KnapsackPro/rails-app-with-knapsack)

This is example Ruby on Rails app with knapsack gem.

__You can read more about free [knapsack gem here](https://github.com/ArturT/knapsack). You will find there info how to set up your test suite and how to do it on your favorite CI server.__

## Parallel minitest test suite with knapsack

### Step 1

First generate only once a report `knapsack_minitest_report.json` on your CI with command:

    $ KNAPSACK_GENERATE_REPORT=true bundle exec rake test

Add the report into your repository and commit.

### Step 2

You can use below command on CI to run tests:

    # Run this on first CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=0 bundle exec rake knapsack:minitest

    # Run this on second CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=1 bundle exec rake knapsack:minitest

See [circle.yml](circle.yml) to see how we set up CircleCI.

## Parallel rspec test suite with knapsack

### Step 1

First generate only once a report `knapsack_rspec_report.json` on your CI with command:

    $ KNAPSACK_GENERATE_REPORT=true bundle exec rspec spec

Add the report into your repository and commit.

### Step 2

You can use below command on CI to run tests:

    # Run this on first CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=0 bundle exec rake knapsack:rspec

    # Run this on second CI server
    $ CI_NODE_TOTAL=2 CI_NODE_INDEX=1 bundle exec rake knapsack:rspec

See [circle.yml](circle.yml) to see how we set up CircleCI.
