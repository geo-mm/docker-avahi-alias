# docker-avahi-alias
mdns/avahi cnames with docker

This project is orginally forked from [flqw/docker-avahi-alias](https://github.com/flqw/docker-avahi-alias). I did some modification to the orginal script to read configure files.


# Usage

Uses the host dbus socket to add avahi cname records.

```
git clone https://github.com/geo-mm/docker-avahi-alias.git
cd docker-avahi-alias
docker build -t [your_tag_name] .
docker run -d --privileged -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket -v [your_configure_directory]:/etc/avahi/service [your_tag_name]

```

You should be able to name the config file as you wish, and format is plain text with new lines.

```
name1.local
name2.local
name3.local
```

The script will generate a file called 'default' with `example.local` in `[your_configure_directory]` if there is no file in `[your_configure_directory]`

