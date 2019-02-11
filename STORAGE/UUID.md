# Understanding UUIDs

A ***UUID*** **(Universally Unique Identifier)** is a 128-bit number for a file system that is unique on both the local system and across other systems. It is randomly generated with system hardware information and time stamps as part of its seed. UUIDs are commonly used to uniquely tag devices.

Using non-persistent "traditional" device names such as /dev/sda1 may render the system unbootable when adding storage. For example, if root (/) is assigned to /dev/sda1, it might be reassigned to /dev/sdg1 after a SAN has been attached or additional hard disks have been applied to the system. In this case the boot loader configuration and the /etc/fstab file need to be adjusted, otherwise the system will no longer boot.

One way to avoid this problem is to use the UUID in the boot loader and /etc/fstab files for the boot device. This is the default in SUSE Linux Enterprise since version 12. The UUID is a property of the file system and can change if you reformat the drive. Other alternatives to using UUIDs of device names would be to identify devices by ID or label.

You can also use the UUID as criterion for assembling and activating software RAID devices. When a RAID is created, the md driver generates a UUID for the device, and stores the value in the md superblock.

You can find the UUID for any block device in the /dev/disk/by-uuid directory. For example, a UUID entry looks like this:

tux > ls -og /dev/disk/by-uuid/
lrwxrwxrwx 1 10 Dec  5 07:48 e014e482-1c2d-4d09-84ec-61b3aefde77a -> ../../sda1

----------------------------------------------------------------------------------------
# Dynamic Kernel Device Management with udev

The kernel can add or remove almost any device in a running system. Changes in the device state (whether a device is plugged in or removed) need to be propagated to user space. Devices need to be configured when they are plugged in and recognized. Users of a certain device need to be informed about any changes in this device's recognized state. udev provides the needed infrastructure to dynamically maintain the device node files and symbolic links in the /dev directory. udev rules provide a way to plug external tools into the kernel device event processing. This allows you to customize udev device handling by adding certain scripts to execute as part of kernel device handling, or request and import additional data to evaluate during device handling. 
