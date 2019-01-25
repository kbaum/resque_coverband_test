# resque_coverband_test

Simple bare bones project for running resque with coverband. 

The following will enqueue and run jobs.
```
rake enqueue_worker
```

It won't exit since it kicks off a resque daemon. Either ctrl-c or open a new shell and execute:

```
rake coverband:coverage
```
