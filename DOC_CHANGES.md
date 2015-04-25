<!---
This file is reset every time a new release is done. This file describes changes that have not yet been released.

Example Doc Change:
### Headline for the required change
Description of the required change.
-->

### Resources must now use `provides` to declare recipe DSL

Resources declared in `Chef::Resource` namespace will no longer get recipe DSL
automatically.  Instead, explicit `provides` is required in order to have DSL:

```ruby
module MyModule
  class MyResource < Chef::Resource
    provides :my_resource
  end
end
```

Users are encouraged to declare resources in their own namespaces.

This is deprecated (and will emit a warning) in Chef 12, and will be removed in
Chef 13.

### LWRPs are no longer placed in the `Chef::Resource` namespace

Additionally, resources declared as LWRPs are no longer placed in the
`Chef::Resource` namespace.  This means that if your cookbook includes the LWRP
`mycookbook/resources/myresource.rb`, you will no longer be able to extend or
reference `Chef::Resource::MycookbookMyresource` in Ruby code.  LWRP recipe DSL
does not change: the LWRP will still be available to recipes as
`mycookbook_myresource`.

You can still get the LWRP class by calling `Chef::Resource.resource_matching_short_name(:mycookbook_myresource)`.

The primary aim here is clearing out the `Chef::Resource` namespace.

References to these classes is deprecated (and will emit a warning) in Chef 12, and will be removed in Chef 13.

### Chef Client and Knife `--no-listen` Flag and `listen` Config Option

Chef Client and Knife have a `--no-listen` CLI option. It is only
relevant when using local mode (`-z`). When this flag is given, Chef
Zero does not bind to a port on localhost. The same behavior can be
activated by setting `listen false` in the relevant config file.

### Chef Client, Solo, and Apply `--minimal-ohai` Flag

Chef Client, Solo, and Apply all implement a `--minimal-ohai` flag. When
set, Chef only runs the bare minimum necessary ohai plugins required for
internal functionality. This reduces the run time of ohai and might
improve Chef performance by reducing the amount of data kept in memory.
Most users should NOT use this mode, however, because cookbooks that
rely on data collected by other ohai plugins will definitely be broken
when Chef is run in this mode. It may be possible for advanced users to
work around that by using the ohai resource to collect the "missing"
data during the compile phase.
