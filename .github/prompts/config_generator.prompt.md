---
name: config_generator
description: generating config options from lists
---

<!-- Tip: Use /create-prompt in chat to generate content with agent assistance -->

Add these config options and schemas these are case sensiteive
and use these types:

- `str` / `str(min,)` / `str(,max)` / `str(min,max)`
- `bool`
- `int` / `int(min,)` / `int(,max)` / `int(min,max)`
- `float` / `float(min,)` / `float(,max)` / `float(min,max)`
- `email`
- `url`
- `password`
- `port`
- `match(REGEX)`
- `list(val1|val2|...)`
- `device` / `device(filter)`: Device filter can be in the following format: `subsystem=TYPE` i.e. `subsystem=tty` for serial devices.

In the same folder the config.json exists create an en.yml file in a folder named translations and give these options name and description like this example:

```
configuration:
ssl:
name: Enable SSL
description: Enable usage of SSL on the webserver inside the app
```

Use question marks for optional options schema and don't generate options field for them even if there is a default value.
Assing null value to option if it isn't optional and no default value is given.