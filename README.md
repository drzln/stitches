# stitches-cli

## Configuration

### Configuration Locations

Configuration behavior is merge behavior of directories in top/down order listed.

* /opt/share/stitches.<ext>
* /etc/stitches/stitches.<ext>
* /etc/stitches/conf.d/*.<ext>
* $XDG_CONFIG_HOME/stitches/stitches.<ext>
* $XDG_CONFIG_HOME/stitches/conf.d/*.<ext>
* stitches.<ext>
* stitches/config.d/*.<ext>
* .stitches.<ext>
* .stitches/config.d/*.<ext>

obs.

<ext> is enum rb|json|yml|yaml|toml|nix

### Configuration Notes

Top level structure is a namespace

namespaces can receive terraform commands 
namespaces have multiple projects within them
projects represent a single instance of state
projects can have multiple modules.
modules pack ruby code together to be run on a single projects
a module may be used in multiple projects but a project has a direct association to a namespace
a project cannot be present in multiple namespaces.

modules can be nested indefinitely.
its modules all the way down.

you can have modules provide only ruby functions.
you can have modules provide resources.
you can have modules call other modules.

if something is runnable then it can receive terraform commands
the smallest runnable item is a project
namespaces are also runnable

flows are groups of runnable terraform commands in a DAG
whose nodes are either namespace or namespace.project
