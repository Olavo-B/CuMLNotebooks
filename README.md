# CuMLNotebooks

This project is a collection of Jupyter notebooks that demonstrate the use of the [RAPIDS](https://rapids.ai/) library, which is a suite of open-source software libraries and APIs built on CUDA.

## Installation

If this project will be used in a ssh environment, it is recommended to use the following command to enable port forwarding:

```bash
ssh -XYL 8888:localhost:8888 <username>@<hostname>
```

The following is the description of the flags used in the command:


| Option | Description |
|--------|-------------|
| **-X** | Enables X11 forwarding. Allows applications to display graphical interfaces over SSH. Use with caution, as it may expose the local X11 display to security risks. Restricted by default using the X11 SECURITY extension. Refer to `ssh -Y` and `ForwardX11Trusted` for details. |
| **-Y** | Enables trusted X11 forwarding. Bypasses X11 SECURITY extension restrictions, allowing unrestricted access to the local display. |
| **-L [bind_address:]port:host:hostport** | Forwards a local port to a specific host and port on the remote side. Creates a listening socket on the local side that forwards traffic over the secure SSH channel. Supports IPv6 and configurable binding to specific addresses. Requires superuser privileges for privileged ports. |




To install the project, run the following command in the ssh environment:

```bash
cd CuMLNotebooks
./install.sh
```

The script will set the permissions of the `run.sh` script to allow execution. And will install de docker image with the necessary dependencies.

## Usage

To run the project, run the following command in the ssh environment:

```bash
cd CuMLNotebooks
./run.sh
```

To access the jupyter notebook, open a web browser and go to the **address shown in the terminal**.

To stop the project, press `Ctrl+C` in the terminal.

## Contributing

