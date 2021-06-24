# gs_usb_fd

A modified gs_usb driver which supports CAN-FD.

## Supported Devices

- [CANtact Pro](https://cantact.io)

## Building

1. Install the kernel sources for your platform:

Fedora:

```
sudo dnf install -y kernel-devel
```

Ubuntu:

```
sudo apt install kernel-headers-$(uname -r)
```

2. Use `make` to build the driver

3. Load the driver:

```
sudo modprobe can-dev
sudo insmod gs_usb_fd.ko
```

## Credits

Thanks to Maximilian Schneider for authoring the original gs_usb driver.
