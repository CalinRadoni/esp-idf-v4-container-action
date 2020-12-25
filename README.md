# ESP-IDF v4.x build

GitHub Action to build your ESP32 code using the official Docker container from Espressif.

From [espressif/idf tags](https://hub.docker.com/r/espressif/idf/tags) I will implement:

- latest
- v4.2 and release-v4.2
- v4.1 and release-v4.1
- v4.0.2 and release-v4.0

This is *work-in-progress* and only v4.1 is implemented by now !

## Outputs

### `result`

The exit code of `idf.py build` command.

## Example usage

Use the tag
```yml
uses: CalinRadoni/esp-idf-v4-container-action@v4.1
```

To get display the exit code use:

```yml
- name: Build the code
  uses: CalinRadoni/esp-idf-v4-container-action@v4.1
  id: esp-idf-build

- name: Show the exit code
  run: echo "The exit code was ${{ steps.esp-idf-build.outputs.result }}"
```

For a more complex usage, including the overriding of the entrypoint script see [ESP32BoardManager](https://github.com/CalinRadoni/ESP32BoardManager) repository.
