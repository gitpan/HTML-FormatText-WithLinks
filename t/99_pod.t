# $Id: 99_pod.t 381 2004-01-11 17:53:27Z struan $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
