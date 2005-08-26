# $Id: 98_pod.t 450 2005-05-23 18:54:06Z struan $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
