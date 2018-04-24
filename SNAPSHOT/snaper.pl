#!/usr/bin/perl
# By Ventsislav Varbanovski - nu11secur1ty
use strict;
use warnings;
use diagnostics;

   print "Create a copy of your file system type your ssh host: example: 192.168.1.1\n";
   print "And, please confirm your pub_key, or your root password, three times...\n";
        sleep 3;
my $ssh_host = <STDIN>;
    our $create_conteiner = `ssh '$ssh_host' mkdir /root/snaper/`;
our $create = `ssh '$ssh_host' mkdir /root/snaper/{bin,boot,usr,var,tmp,sys,srv,selinux,sbin,run,root,proc,opt,mnt,lib64,lib,home,etc,dev}`;
  print "Type your host or IP to send the backup there, example: 192.168.1.1\n";
my $host = <STDIN>;


our $bin = `rsync -a /bin/ '$host:'/root/snaper/bin/`;
our $boot = `rsync -a /boot/ '$host:'/root/snaper/boot/`;
our $dev = `rsync -a /dev/ '$host:'/root/snaper/dev/`;
our $etc = `rsync -a /etc/ '$host:'/root/snaper/etc/`;
 our $home = `rsync -a /home/ '$host:'/root/snaper/home/`;
our $lib = `rsync -a /lib/ '$host:'/root/snaper/lib/`;
our $lib64 = `rsync -a /lib64/ '$host:'/root/snaper/lib64/`;
our $mnt = `rsync -a /mnt/ '$host:'/root/snaper/mnt/`;
our $opt = `rsync -a /opt/ '$host:'/root/snaper/opt/`;
our $proc = `rsync -a /proc/ '$host:'/root/snaper/proc/`;
 our $root = `rsync -a /root/ '$host:'/root/snaper/root/`;
our $run = `rsync -a /run/ '$host:'/root/snaper/run/`;
our $sbin = `rsync -a /sbin/ '$host:'/root/sanper/sbin`; 
our $selinux = `rsync -a /selinux/ '$host:'/root/snaper/selinux/`;
our $srv = `rsync -a /srv/ '$host:'/root/snaper/srv/`;
our $sys = `rsync -a /sys/ '$host:'/root/snaper/sys/`;
our $tmp = `rsync -a /tmp/ '$host:'/root/snaper/tmp/`;
our $usr = `rsync -a /usr/ '$host:'/root/snaper/usr/`;
our $var = `rsync -a /var/ '$host:'/root/snaper/`;
